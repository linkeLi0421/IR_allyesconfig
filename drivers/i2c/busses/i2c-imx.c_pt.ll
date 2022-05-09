; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-imx.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.imx_i2c_hwdata = type { i32, i32, ptr, i32, i32, i32 }
%struct.imx_i2c_clk_pair = type { i16, i16 }
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
%struct.imx_i2c_struct = type { %struct.i2c_adapter, ptr, %struct.notifier_block, ptr, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr, %struct.i2c_bus_recovery_info, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.hrtimer }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx_i2c_dma = type { ptr, ptr, ptr, %struct.completion, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_i2c_imx__325_1615_i2c_adap_imx_init4 = internal global ptr @i2c_adap_imx_init, section ".initcall4.init", align 4
@i2c_imx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i2c_imx_probe, ptr @i2c_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_imx_dt_ids, ptr @i2c_imx_acpi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_imx_pm_ops, ptr null, ptr null }, ptr @imx_i2c_devtype, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_i2c_adap_imx_exit = internal global ptr @i2c_adap_imx_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file326 = internal constant [40 x i8] c"i2c_imx.file=drivers/i2c/busses/i2c-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [20 x i8] c"i2c_imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author328 = internal constant [30 x i8] c"i2c_imx.author=Darius Augulis\00", section ".modinfo", align 1
@__UNIQUE_ID_description329 = internal constant [55 x i8] c"i2c_imx.description=I2C adapter driver for IMX I2C bus\00", section ".modinfo", align 1
@__UNIQUE_ID_alias330 = internal constant [31 x i8] c"i2c_imx.alias=platform:imx-i2c\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-i2c\00", [24 x i8] zeroinitializer }, align 32
@i2c_imx_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx1_i2c_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx21_i2c_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_i2c_hwdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@i2c_imx_acpi_ids = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"NXP0001\00\00", i32 ptrtoint (ptr @vf610_i2c_hwdata to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@i2c_imx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_imx_runtime_suspend, ptr @i2c_imx_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_i2c_devtype = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"imx1-i2c\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @imx1_i2c_hwdata to i32) }, %struct.platform_device_id { [20 x i8] c"imx21-i2c\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @imx21_i2c_hwdata to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@i2c_imx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&i2c_imx->slave_lock\00", [43 x i8] zeroinitializer }, align 32
@i2c_imx_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_imx_xfer, ptr @i2c_imx_xfer_atomic, ptr null, ptr null, ptr @i2c_imx_func, ptr @i2c_imx_reg_slave, ptr @i2c_imx_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't get I2C clock\0A\00", [43 x i8] zeroinitializer }, align 32
@i2c_imx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1458, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't enable I2C clock, ret=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_imx_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/i2c/busses/i2c-imx.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_imx_probe._entry_ptr = internal global ptr @i2c_imx_probe._entry, section ".printk_index", align 4
@i2c_imx_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&i2c_imx->queue\00", [16 x i8] zeroinitializer }, align 32
@i2c_imx_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 1484, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't claim irq %d\0A\00", [44 x i8] zeroinitializer }, align 32
@i2c_imx_probe._entry_ptr.12 = internal global ptr @i2c_imx_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@i2c_imx_probe.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.4, ptr @.str.5, ptr @.str.15, i8 1, i8 122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_imx\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"claimed irq %d\0A\00", [16 x i8] zeroinitializer }, align 32
@i2c_imx_probe.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.4, ptr @.str.5, ptr @.str.16, i8 1, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device resources: %pR\0A\00", [41 x i8] zeroinitializer }, align 32
@i2c_imx_probe.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.4, ptr @.str.5, ptr @.str.17, i8 1, i8 123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adapter name: \22%s\22\0A\00", [44 x i8] zeroinitializer }, align 32
@i2c_imx_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 1518, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IMX I2C adapter registered\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i2c_imx_probe._entry_ptr.21 = internal global ptr @i2c_imx_probe._entry.18, section ".printk_index", align 4
@i2c_imx_slave_handle.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 0, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_imx_slave_handle\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read requested\00", [17 x i8] zeroinitializer }, align 32
@i2c_imx_slave_handle.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.22, ptr @.str.5, ptr @.str.24, i8 0, i8 -69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"write requested\00", [16 x i8] zeroinitializer }, align 32
@i2c_imx_xfer_common.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 1, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_imx_xfer_common\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"<%s> repeated start\0A\00", [43 x i8] zeroinitializer }, align 32
@i2c_imx_xfer_common.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.25, ptr @.str.5, ptr @.str.27, i8 1, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"<%s> transfer message: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_imx_xfer_common.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.25, ptr @.str.5, ptr @.str.28, i8 1, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"<%s> CONTROL: IEN=%d, IIEN=%d, MSTA=%d, MTX=%d, TXAK=%d, RSTA=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@i2c_imx_xfer_common.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.25, ptr @.str.5, ptr @.str.29, i8 1, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"<%s> STATUS: ICF=%d, IAAS=%d, IBB=%d, IAL=%d, SRW=%d, IIF=%d, RXAK=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@i2c_imx_xfer_common.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.25, ptr @.str.5, ptr @.str.30, i8 1, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"<%s> exit with: %s: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"success msg\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@i2c_imx_bus_busy.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_imx_bus_busy\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"<%s> I2C bus is busy\0A\00", [42 x i8] zeroinitializer }, align 32
@i2c_imx_read.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.35, ptr @.str.5, ptr @.str.36, i8 1, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_imx_read\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"<%s> write slave address: addr=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@i2c_imx_read.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.35, ptr @.str.5, ptr @.str.37, i8 1, i8 23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"<%s> setup bus\0A\00", [16 x i8] zeroinitializer }, align 32
@i2c_imx_read.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.35, ptr @.str.5, ptr @.str.38, i8 1, i8 27, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"<%s> read data\0A\00", [16 x i8] zeroinitializer }, align 32
@i2c_imx_read.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.35, ptr @.str.5, ptr @.str.39, i8 1, i8 33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"<%s> read length: 0x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@i2c_imx_read.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.35, ptr @.str.5, ptr @.str.40, i8 1, i8 35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"<%s> clear MSTA\0A\00", [47 x i8] zeroinitializer }, align 32
@i2c_imx_read.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.35, ptr @.str.5, ptr @.str.41, i8 1, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"<%s> set TXAK\0A\00", [17 x i8] zeroinitializer }, align 32
@i2c_imx_read.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.35, ptr @.str.5, ptr @.str.42, i8 1, i8 44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"<%s> read byte: B%d=0x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@i2c_imx_trx_complete.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.43, ptr @.str.5, ptr @.str.44, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_imx_trx_complete\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"<%s> Timeout\0A\00", [18 x i8] zeroinitializer }, align 32
@i2c_imx_trx_complete.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.43, ptr @.str.5, ptr @.str.45, i8 0, i8 -125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"<%s> Arbitration lost\0A\00", [41 x i8] zeroinitializer }, align 32
@i2c_imx_trx_complete.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.43, ptr @.str.5, ptr @.str.46, i8 0, i8 -124, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"<%s> TRX complete\0A\00", [45 x i8] zeroinitializer }, align 32
@i2c_imx_acked.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 0, i8 -122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_imx_acked\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"<%s> No ACK\0A\00", [19 x i8] zeroinitializer }, align 32
@i2c_imx_acked.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.47, ptr @.str.5, ptr @.str.49, i8 0, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"<%s> ACK received\0A\00", [45 x i8] zeroinitializer }, align 32
@i2c_imx_dma_read.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.50, ptr @.str.5, ptr @.str.44, i8 0, i8 -4, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_imx_dma_read\00", [47 x i8] zeroinitializer }, align 32
@i2c_imx_dma_read.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.50, ptr @.str.5, ptr @.str.40, i8 1, i8 3, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@i2c_imx_dma_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 410, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA mapping failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_imx_dma_xfer\00", [47 x i8] zeroinitializer }, align 32
@i2c_imx_dma_xfer._entry_ptr = internal global ptr @i2c_imx_dma_xfer._entry, section ".printk_index", align 4
@i2c_imx_dma_xfer._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.5, i32 418, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Not able to get desc for DMA xfer\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_imx_dma_xfer._entry_ptr.55 = internal global ptr @i2c_imx_dma_xfer._entry.53, section ".printk_index", align 4
@i2c_imx_dma_xfer._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.5, i32 426, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA submit failed\0A\00", [45 x i8] zeroinitializer }, align 32
@i2c_imx_dma_xfer._entry_ptr.58 = internal global ptr @i2c_imx_dma_xfer._entry.56, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@i2c_imx_dma_write.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.62, ptr @.str.5, ptr @.str.44, i8 0, i8 -17, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_imx_dma_write\00", [46 x i8] zeroinitializer }, align 32
@i2c_imx_write.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.63, ptr @.str.5, ptr @.str.36, i8 1, i8 11, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_imx_write\00", [18 x i8] zeroinitializer }, align 32
@i2c_imx_write.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.63, ptr @.str.5, ptr @.str.64, i8 1, i8 13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"<%s> write data\0A\00", [47 x i8] zeroinitializer }, align 32
@i2c_imx_write.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.63, ptr @.str.5, ptr @.str.65, i8 1, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"<%s> write byte: B%d=0x%X\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_imx_reg_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 841, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to resume i2c controller\00", [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_imx_reg_slave\00", [46 x i8] zeroinitializer }, align 32
@i2c_imx_reg_slave._entry_ptr = internal global ptr @i2c_imx_reg_slave._entry, section ".printk_index", align 4
@i2c_imx_unreg_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.5, i32 868, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to suspend i2c controller\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_imx_unreg_slave\00", [44 x i8] zeroinitializer }, align 32
@i2c_imx_unreg_slave._entry_ptr = internal global ptr @i2c_imx_unreg_slave._entry, section ".printk_index", align 4
@i2c_imx_set_clk.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.70, ptr @.str.5, ptr @.str.71, i8 0, i8 -111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_imx_set_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I2C_CLK=%d, REQ DIV=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@i2c_imx_set_clk.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.70, ptr @.str.5, ptr @.str.72, i8 0, i8 -110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IFDR[IC]=0x%x, REAL DIV=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@i2c_imx_init_recovery_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 1358, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"can't get pinctrl, bus recovery not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c_imx_init_recovery_info\00", [37 x i8] zeroinitializer }, align 32
@i2c_imx_init_recovery_info._entry_ptr = internal global ptr @i2c_imx_init_recovery_info._entry, section ".printk_index", align 4
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sda\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scl\00", [28 x i8] zeroinitializer }, align 32
@i2c_imx_init_recovery_info.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.74, ptr @.str.5, ptr @.str.79, i8 1, i8 88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"recovery information incomplete\0A\00", [63 x i8] zeroinitializer }, align 32
@i2c_imx_init_recovery_info.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.74, ptr @.str.5, ptr @.str.80, i8 1, i8 89, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"using scl%s for recovery\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",sda\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@i2c_imx_dma_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.5, i32 340, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't request DMA tx channel (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_imx_dma_request\00", [44 x i8] zeroinitializer }, align 32
@i2c_imx_dma_request._entry_ptr = internal global ptr @i2c_imx_dma_request._entry, section ".printk_index", align 4
@i2c_imx_dma_request._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.5, i32 351, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't configure tx channel (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@i2c_imx_dma_request._entry_ptr.88 = internal global ptr @i2c_imx_dma_request._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@i2c_imx_dma_request._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.85, ptr @.str.5, i32 359, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't request DMA rx channel (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_imx_dma_request._entry_ptr.92 = internal global ptr @i2c_imx_dma_request._entry.90, section ".printk_index", align 4
@i2c_imx_dma_request._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.85, ptr @.str.5, i32 370, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't configure rx channel (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@i2c_imx_dma_request._entry_ptr.95 = internal global ptr @i2c_imx_dma_request._entry.93, section ".printk_index", align 4
@i2c_imx_dma_request._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.85, ptr @.str.5, i32 377, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"using %s (tx) and %s (rx) for DMA transfers\0A\00", [51 x i8] zeroinitializer }, align 32
@i2c_imx_dma_request._entry_ptr.98 = internal global ptr @i2c_imx_dma_request._entry.96, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@i2c_imx_remove.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.100, ptr @.str.5, ptr @.str.101, i8 1, i8 -125, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_imx_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adapter removed\0A\00", [47 x i8] zeroinitializer }, align 32
@imx1_i2c_hwdata = internal constant { %struct.imx_i2c_hwdata, [40 x i8] } { %struct.imx_i2c_hwdata { i32 0, i32 2, ptr @imx_i2c_clk_div, i32 50, i32 0, i32 128 }, [40 x i8] zeroinitializer }, align 32
@imx21_i2c_hwdata = internal constant { %struct.imx_i2c_hwdata, [40 x i8] } { %struct.imx_i2c_hwdata { i32 1, i32 2, ptr @imx_i2c_clk_div, i32 50, i32 0, i32 128 }, [40 x i8] zeroinitializer }, align 32
@vf610_i2c_hwdata = internal global { %struct.imx_i2c_hwdata, [40 x i8] } { %struct.imx_i2c_hwdata { i32 2, i32 0, ptr @vf610_i2c_clk_div, i32 60, i32 18, i32 0 }, [40 x i8] zeroinitializer }, align 32
@imx_i2c_clk_div = internal global { [50 x %struct.imx_i2c_clk_pair], [56 x i8] } { [50 x %struct.imx_i2c_clk_pair] [%struct.imx_i2c_clk_pair { i16 22, i16 32 }, %struct.imx_i2c_clk_pair { i16 24, i16 33 }, %struct.imx_i2c_clk_pair { i16 26, i16 34 }, %struct.imx_i2c_clk_pair { i16 28, i16 35 }, %struct.imx_i2c_clk_pair { i16 30, i16 0 }, %struct.imx_i2c_clk_pair { i16 32, i16 36 }, %struct.imx_i2c_clk_pair { i16 36, i16 37 }, %struct.imx_i2c_clk_pair { i16 40, i16 38 }, %struct.imx_i2c_clk_pair { i16 42, i16 3 }, %struct.imx_i2c_clk_pair { i16 44, i16 39 }, %struct.imx_i2c_clk_pair { i16 48, i16 40 }, %struct.imx_i2c_clk_pair { i16 52, i16 5 }, %struct.imx_i2c_clk_pair { i16 56, i16 41 }, %struct.imx_i2c_clk_pair { i16 60, i16 6 }, %struct.imx_i2c_clk_pair { i16 64, i16 42 }, %struct.imx_i2c_clk_pair { i16 72, i16 43 }, %struct.imx_i2c_clk_pair { i16 80, i16 44 }, %struct.imx_i2c_clk_pair { i16 88, i16 9 }, %struct.imx_i2c_clk_pair { i16 96, i16 45 }, %struct.imx_i2c_clk_pair { i16 104, i16 10 }, %struct.imx_i2c_clk_pair { i16 112, i16 46 }, %struct.imx_i2c_clk_pair { i16 128, i16 47 }, %struct.imx_i2c_clk_pair { i16 144, i16 12 }, %struct.imx_i2c_clk_pair { i16 160, i16 48 }, %struct.imx_i2c_clk_pair { i16 192, i16 49 }, %struct.imx_i2c_clk_pair { i16 224, i16 50 }, %struct.imx_i2c_clk_pair { i16 240, i16 15 }, %struct.imx_i2c_clk_pair { i16 256, i16 51 }, %struct.imx_i2c_clk_pair { i16 288, i16 16 }, %struct.imx_i2c_clk_pair { i16 320, i16 52 }, %struct.imx_i2c_clk_pair { i16 384, i16 53 }, %struct.imx_i2c_clk_pair { i16 448, i16 54 }, %struct.imx_i2c_clk_pair { i16 480, i16 19 }, %struct.imx_i2c_clk_pair { i16 512, i16 55 }, %struct.imx_i2c_clk_pair { i16 576, i16 20 }, %struct.imx_i2c_clk_pair { i16 640, i16 56 }, %struct.imx_i2c_clk_pair { i16 768, i16 57 }, %struct.imx_i2c_clk_pair { i16 896, i16 58 }, %struct.imx_i2c_clk_pair { i16 960, i16 23 }, %struct.imx_i2c_clk_pair { i16 1024, i16 59 }, %struct.imx_i2c_clk_pair { i16 1152, i16 24 }, %struct.imx_i2c_clk_pair { i16 1280, i16 60 }, %struct.imx_i2c_clk_pair { i16 1536, i16 61 }, %struct.imx_i2c_clk_pair { i16 1792, i16 62 }, %struct.imx_i2c_clk_pair { i16 1920, i16 27 }, %struct.imx_i2c_clk_pair { i16 2048, i16 63 }, %struct.imx_i2c_clk_pair { i16 2304, i16 28 }, %struct.imx_i2c_clk_pair { i16 2560, i16 29 }, %struct.imx_i2c_clk_pair { i16 3072, i16 30 }, %struct.imx_i2c_clk_pair { i16 3840, i16 31 }], [56 x i8] zeroinitializer }, align 32
@vf610_i2c_clk_div = internal global { [60 x %struct.imx_i2c_clk_pair], [48 x i8] } { [60 x %struct.imx_i2c_clk_pair] [%struct.imx_i2c_clk_pair { i16 20, i16 0 }, %struct.imx_i2c_clk_pair { i16 22, i16 1 }, %struct.imx_i2c_clk_pair { i16 24, i16 2 }, %struct.imx_i2c_clk_pair { i16 26, i16 3 }, %struct.imx_i2c_clk_pair { i16 28, i16 4 }, %struct.imx_i2c_clk_pair { i16 30, i16 5 }, %struct.imx_i2c_clk_pair { i16 32, i16 9 }, %struct.imx_i2c_clk_pair { i16 34, i16 6 }, %struct.imx_i2c_clk_pair { i16 36, i16 10 }, %struct.imx_i2c_clk_pair { i16 40, i16 7 }, %struct.imx_i2c_clk_pair { i16 44, i16 12 }, %struct.imx_i2c_clk_pair { i16 48, i16 13 }, %struct.imx_i2c_clk_pair { i16 52, i16 67 }, %struct.imx_i2c_clk_pair { i16 56, i16 14 }, %struct.imx_i2c_clk_pair { i16 60, i16 69 }, %struct.imx_i2c_clk_pair { i16 64, i16 18 }, %struct.imx_i2c_clk_pair { i16 68, i16 15 }, %struct.imx_i2c_clk_pair { i16 72, i16 19 }, %struct.imx_i2c_clk_pair { i16 80, i16 20 }, %struct.imx_i2c_clk_pair { i16 88, i16 21 }, %struct.imx_i2c_clk_pair { i16 96, i16 25 }, %struct.imx_i2c_clk_pair { i16 104, i16 22 }, %struct.imx_i2c_clk_pair { i16 112, i16 26 }, %struct.imx_i2c_clk_pair { i16 128, i16 23 }, %struct.imx_i2c_clk_pair { i16 136, i16 79 }, %struct.imx_i2c_clk_pair { i16 144, i16 28 }, %struct.imx_i2c_clk_pair { i16 160, i16 29 }, %struct.imx_i2c_clk_pair { i16 176, i16 85 }, %struct.imx_i2c_clk_pair { i16 192, i16 30 }, %struct.imx_i2c_clk_pair { i16 208, i16 86 }, %struct.imx_i2c_clk_pair { i16 224, i16 34 }, %struct.imx_i2c_clk_pair { i16 228, i16 36 }, %struct.imx_i2c_clk_pair { i16 240, i16 31 }, %struct.imx_i2c_clk_pair { i16 256, i16 35 }, %struct.imx_i2c_clk_pair { i16 288, i16 92 }, %struct.imx_i2c_clk_pair { i16 320, i16 37 }, %struct.imx_i2c_clk_pair { i16 384, i16 38 }, %struct.imx_i2c_clk_pair { i16 448, i16 42 }, %struct.imx_i2c_clk_pair { i16 480, i16 39 }, %struct.imx_i2c_clk_pair { i16 512, i16 43 }, %struct.imx_i2c_clk_pair { i16 576, i16 44 }, %struct.imx_i2c_clk_pair { i16 640, i16 45 }, %struct.imx_i2c_clk_pair { i16 768, i16 49 }, %struct.imx_i2c_clk_pair { i16 896, i16 50 }, %struct.imx_i2c_clk_pair { i16 960, i16 47 }, %struct.imx_i2c_clk_pair { i16 1024, i16 51 }, %struct.imx_i2c_clk_pair { i16 1152, i16 52 }, %struct.imx_i2c_clk_pair { i16 1280, i16 53 }, %struct.imx_i2c_clk_pair { i16 1536, i16 54 }, %struct.imx_i2c_clk_pair { i16 1792, i16 58 }, %struct.imx_i2c_clk_pair { i16 1920, i16 55 }, %struct.imx_i2c_clk_pair { i16 2048, i16 59 }, %struct.imx_i2c_clk_pair { i16 2304, i16 60 }, %struct.imx_i2c_clk_pair { i16 2560, i16 61 }, %struct.imx_i2c_clk_pair { i16 3072, i16 62 }, %struct.imx_i2c_clk_pair { i16 3584, i16 122 }, %struct.imx_i2c_clk_pair { i16 3840, i16 63 }, %struct.imx_i2c_clk_pair { i16 4096, i16 123 }, %struct.imx_i2c_clk_pair { i16 5120, i16 125 }, %struct.imx_i2c_clk_pair { i16 6144, i16 126 }], [48 x i8] zeroinitializer }, align 32
@i2c_imx_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.102, ptr @.str.5, i32 1589, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i2c_imx_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@i2c_imx_runtime_resume._entry_ptr = internal global ptr @i2c_imx_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.105 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.106 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.107 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"i2c_imx_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1599, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1603, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"i2c_imx_dt_ids\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 266, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"i2c_imx_acpi_ids\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 274, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"i2c_imx_pm_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1594, i32 32 }
@___asan_gen_.123 = private unnamed_addr constant [16 x i8] c"imx_i2c_devtype\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 253, i32 40 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1429, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"i2c_imx_algo\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1397, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1454, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1458, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1463, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1484, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1491, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1514, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1515, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1516, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1518, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 737, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 748, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1235, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1244, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1249, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1256, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1281, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 481, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1104, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1117, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1134, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1155, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1166, i32 5 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1188, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1198, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 518, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 524, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 531, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 539, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 543, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1011, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 410, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 418, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 426, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 326, i32 6 }
@___asan_gen_.307 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1169, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 956, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1067, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1078, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1082, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 841, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 868, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 582, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 584, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1358, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1363, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1365, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1366, i32 48 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1367, i32 48 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1376, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1380, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 336, i32 39 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 340, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 351, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 355, i32 39 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 359, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 370, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 376, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 87, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1549, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [16 x i8] c"imx1_i2c_hwdata\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 223, i32 36 }
@___asan_gen_.435 = private unnamed_addr constant [17 x i8] c"imx21_i2c_hwdata\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 233, i32 36 }
@___asan_gen_.438 = private unnamed_addr constant [17 x i8] c"vf610_i2c_hwdata\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 243, i32 30 }
@___asan_gen_.441 = private unnamed_addr constant [16 x i8] c"imx_i2c_clk_div\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 134, i32 32 }
@___asan_gen_.444 = private unnamed_addr constant [18 x i8] c"vf610_i2c_clk_div\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 151, i32 32 }
@___asan_gen_.447 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.451 = private constant [32 x i8] c"../drivers/i2c/busses/i2c-imx.c\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1589, i32 3 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_alias330, ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__exitcall_i2c_adap_imx_exit, ptr @__initcall__kmod_i2c_imx__325_1615_i2c_adap_imx_init4, ptr @i2c_adap_imx_exit, ptr @i2c_imx_dma_request._entry, ptr @i2c_imx_dma_request._entry.86, ptr @i2c_imx_dma_request._entry.90, ptr @i2c_imx_dma_request._entry.93, ptr @i2c_imx_dma_request._entry.96, ptr @i2c_imx_dma_request._entry_ptr, ptr @i2c_imx_dma_request._entry_ptr.88, ptr @i2c_imx_dma_request._entry_ptr.92, ptr @i2c_imx_dma_request._entry_ptr.95, ptr @i2c_imx_dma_request._entry_ptr.98, ptr @i2c_imx_dma_xfer._entry, ptr @i2c_imx_dma_xfer._entry.53, ptr @i2c_imx_dma_xfer._entry.56, ptr @i2c_imx_dma_xfer._entry_ptr, ptr @i2c_imx_dma_xfer._entry_ptr.55, ptr @i2c_imx_dma_xfer._entry_ptr.58, ptr @i2c_imx_init_recovery_info._entry, ptr @i2c_imx_init_recovery_info._entry_ptr, ptr @i2c_imx_probe._entry, ptr @i2c_imx_probe._entry.10, ptr @i2c_imx_probe._entry.18, ptr @i2c_imx_probe._entry_ptr, ptr @i2c_imx_probe._entry_ptr.12, ptr @i2c_imx_probe._entry_ptr.21, ptr @i2c_imx_reg_slave._entry, ptr @i2c_imx_reg_slave._entry_ptr, ptr @i2c_imx_runtime_resume._entry, ptr @i2c_imx_runtime_resume._entry_ptr, ptr @i2c_imx_unreg_slave._entry, ptr @i2c_imx_unreg_slave._entry_ptr, ptr @i2c_imx_driver, ptr @.str, ptr @i2c_imx_dt_ids, ptr @i2c_imx_acpi_ids, ptr @i2c_imx_pm_ops, ptr @imx_i2c_devtype, ptr @i2c_imx_probe.__key, ptr @.str.1, ptr @i2c_imx_algo, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @i2c_imx_probe.__key.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @init_completion.__key, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @imx1_i2c_hwdata, ptr @imx21_i2c_hwdata, ptr @vf610_i2c_hwdata, ptr @imx_i2c_clk_div, ptr @vf610_i2c_clk_div, ptr @.str.102], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_acpi_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_i2c_devtype to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_dma_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_dma_xfer._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_dma_xfer._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_reg_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_unreg_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_init_recovery_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_dma_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_dma_request._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_dma_request._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_dma_request._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_dma_request._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx1_i2c_hwdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx21_i2c_hwdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_i2c_hwdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_i2c_clk_div to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_i2c_clk_div to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_imx_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_adap_imx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_imx_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_adap_imx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_imx_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call2) #8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call2, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1632, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %do.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end8
  %slave_lock = getelementptr inbounds %struct.imx_i2c_struct, ptr %call.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %slave_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @i2c_imx_probe.__key, i16 noundef signext 3) #8
  %slave_timer = getelementptr inbounds %struct.imx_i2c_struct, ptr %call.i, i32 0, i32 20
  tail call void @hrtimer_init(ptr noundef %slave_timer, i32 noundef 1, i32 noundef 0) #8
  %function = getelementptr inbounds %struct.imx_i2c_struct, ptr %call.i, i32 0, i32 20, i32 2
  %5 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @i2c_imx_slave_timeout, ptr %function, align 8
  %call16 = tail call ptr @device_get_match_data(ptr noundef %dev) #8
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.else, label %do.body.if.end20_crit_edge

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %10 = inttoptr i32 %9 to ptr
  br label %if.end20

if.end20:                                         ; preds = %if.else, %do.body.if.end20_crit_edge
  %call16.sink = phi ptr [ %10, %if.else ], [ %call16, %do.body.if.end20_crit_edge ]
  %11 = getelementptr inbounds %struct.imx_i2c_struct, ptr %call.i, i32 0, i32 11
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16.sink, ptr %11, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %call22 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %14, i32 noundef 48) #8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @i2c_imx_algo, ptr %algo, align 8
  %dev27 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %parent, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 11
  %20 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %nr, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %of_node32 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %23 = ptrtoint ptr %of_node32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %of_node32, align 8
  %base33 = getelementptr inbounds %struct.imx_i2c_struct, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %base33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call4, ptr %base33, align 8
  %call38 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.imx_i2c_struct, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call38, ptr %clk, align 8
  %cmp.i283 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call38 to i32
  %call45 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %26, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end20
  %call.i284 = tail call i32 @clk_prepare(ptr noundef %call38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %tobool.not.i = icmp eq i32 %call.i284, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end46.do.end53_crit_edge

if.end46.do.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

if.end.i:                                         ; preds = %if.end46
  %call1.i = tail call i32 @clk_enable(ptr noundef %call38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body56, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call38) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then3.i, %if.end46.do.end53_crit_edge
  %retval.0.i285.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i284, %if.end46.do.end53_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i285.ph) #11
  br label %cleanup

do.body56:                                        ; preds = %if.end.i
  %queue = getelementptr inbounds %struct.imx_i2c_struct, ptr %call.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.9, ptr noundef nonnull @i2c_imx_probe.__key.8) #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i286 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i286 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i286, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 10) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i287 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i288 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %cmp67 = icmp slt i32 %call.i288, 0
  br i1 %cmp67, label %do.body56.rpm_disable_crit_edge, label %if.end69

do.body56.rpm_disable_crit_edge:                  ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_disable

if.end69:                                         ; preds = %do.body56
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %call71 = tail call i32 @request_threaded_irq(i32 noundef %call1, ptr noundef nonnull @i2c_imx_isr, ptr noundef null, i32 noundef 128, ptr noundef %30, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end78, label %do.end76

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call1) #11
  br label %rpm_disable

if.end78:                                         ; preds = %if.end69
  %bitrate = getelementptr inbounds %struct.imx_i2c_struct, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 100000, ptr %bitrate, align 4
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.13, ptr noundef %bitrate, i32 noundef 1, i32 noundef 0) #8
  %34 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp83 = icmp sgt i32 %34, -1
  %tobool84.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp83, i1 true, i1 %tobool84.not
  br i1 %or.cond, label %if.end78.if.end91_crit_edge, label %land.lhs.true85

if.end78.if.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

land.lhs.true85:                                  ; preds = %if.end78
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool87.not = icmp eq i32 %36, 0
  br i1 %tobool87.not, label %land.lhs.true85.if.end91_crit_edge, label %if.then88

land.lhs.true85.if.end91_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then88:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %bitrate, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %land.lhs.true85.if.end91_crit_edge, %if.end78.if.end91_crit_edge
  %clk_change_nb = getelementptr inbounds %struct.imx_i2c_struct, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %clk_change_nb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @i2c_imx_clk_notifier_call, ptr %clk_change_nb, align 4
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 8
  %call94 = tail call i32 @clk_notifier_register(ptr noundef %40, ptr noundef %clk_change_nb) #8
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk, align 8
  %call96 = tail call i32 @clk_get_rate(ptr noundef %42) #8
  tail call fastcc void @i2c_imx_set_clk(ptr noundef nonnull %call.i, i32 noundef %call96)
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %11, align 8
  %i2cr_ien_opcode.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %i2cr_ien_opcode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i2cr_ien_opcode.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %47 = trunc i32 %46 to i8
  %conv.i.i = xor i8 %47, -128
  %48 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base33, align 8
  %50 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %11, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 2, %53
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i.i) #8, !srcloc !262
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %11, align 8
  %i2sr_clr_opcode.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %i2sr_clr_opcode.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i2sr_clr_opcode.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %58 = trunc i32 %57 to i8
  %conv.i.i.i = xor i8 %58, -19
  %59 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base33, align 8
  %61 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %11, align 8
  %regshift.i.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %regshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %regshift.i.i.i, align 4
  %shl.i.i.i = shl i32 3, %64
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 %shl.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv.i.i.i) #8, !srcloc !262
  %call97 = tail call fastcc i32 @i2c_imx_init_recovery_info(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call97)
  %cmp98 = icmp eq i32 %call97, -517
  br i1 %cmp98, label %if.end91.clk_notifier_unregister_crit_edge, label %if.end100

if.end91.clk_notifier_unregister_crit_edge:       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_notifier_unregister

if.end100:                                        ; preds = %if.end91
  %call102 = tail call i32 @i2c_add_numbered_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.end100.clk_notifier_unregister_crit_edge, label %if.end105

if.end100.clk_notifier_unregister_crit_edge:      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_notifier_unregister

if.end105:                                        ; preds = %if.end100
  %call.i289 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %65 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store volatile i64 %call.i289, ptr %last_busy.i, align 8
  %call.i290 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_probe.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_probe, %do.body121)) #8
          to label %if.then115 [label %do.body121], !srcloc !263

if.then115:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_probe.__UNIQUE_ID_ddebug321, ptr noundef %dev27, ptr noundef nonnull @.str.15, i32 noundef %call1) #8
  br label %do.body121

do.body121:                                       ; preds = %if.then115, %if.end105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_probe.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_probe, %do.body141)) #8
          to label %if.then135 [label %do.body141], !srcloc !263

if.then135:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_probe.__UNIQUE_ID_ddebug322, ptr noundef %dev27, ptr noundef nonnull @.str.16, ptr noundef %call2) #8
  br label %do.body141

do.body141:                                       ; preds = %if.then135, %do.body121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_probe.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_probe, %do.end166)) #8
          to label %if.then155 [label %do.end166], !srcloc !263

if.then155:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_probe.__UNIQUE_ID_ddebug323, ptr noundef %dev27, ptr noundef nonnull @.str.17, ptr noundef %name) #8
  br label %do.end166

do.end166:                                        ; preds = %if.then155, %do.body141
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev27, ptr noundef nonnull @.str.19) #11
  tail call fastcc void @i2c_imx_dma_request(ptr noundef nonnull %call.i, i32 noundef %4)
  br label %cleanup

clk_notifier_unregister:                          ; preds = %if.end100.clk_notifier_unregister_crit_edge, %if.end91.clk_notifier_unregister_crit_edge
  %ret.0 = phi i32 [ -517, %if.end91.clk_notifier_unregister_crit_edge ], [ %call102, %if.end100.clk_notifier_unregister_crit_edge ]
  %66 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk, align 8
  %call171 = tail call i32 @clk_notifier_unregister(ptr noundef %67, ptr noundef %clk_change_nb) #8
  %call172 = tail call ptr @free_irq(i32 noundef %call1, ptr noundef nonnull %call.i) #8
  br label %rpm_disable

rpm_disable:                                      ; preds = %clk_notifier_unregister, %do.end76, %do.body56.rpm_disable_crit_edge
  %ret.1 = phi i32 [ %call.i288, %do.body56.rpm_disable_crit_edge ], [ %call71, %do.end76 ], [ %ret.0, %clk_notifier_unregister ]
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !265
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %rpm_disable.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

rpm_disable.pm_runtime_put_noidle.exit_crit_edge: ; preds = %rpm_disable
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %rpm_disable
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !266
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %rpm_disable.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i291 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  %69 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %70) #8
  tail call void @clk_unprepare(ptr noundef %70) #8
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %do.end166, %do.end53, %if.then41, %if.end8.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %call45, %if.then41 ], [ %retval.0.i285.ph, %do.end53 ], [ %ret.1, %pm_runtime_put_noidle.exit ], [ 0, %do.end166 ], [ %call1, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !265
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !266
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave_timer = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 20
  %call2 = tail call i32 @hrtimer_cancel(ptr noundef %slave_timer) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_remove.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_remove, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !263

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_remove.__UNIQUE_ID_ddebug324, ptr noundef %dev8, ptr noundef nonnull @.str.101) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  %dma = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %do.end.if.end13_crit_edge, label %if.then12

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dma_buf.i = getelementptr inbounds %struct.imx_i2c_dma, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dma_buf.i, align 4
  %dma_len.i = getelementptr inbounds %struct.imx_i2c_dma, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dma_len.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  tail call void @dma_release_channel(ptr noundef %8) #8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 4
  %chan_rx.i = getelementptr inbounds %struct.imx_i2c_dma, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan_rx.i, align 4
  tail call void @dma_release_channel(ptr noundef %11) #8
  %12 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %chan_rx.i, align 4
  %chan_using.i = getelementptr inbounds %struct.imx_i2c_dma, ptr %4, i32 0, i32 2
  %13 = ptrtoint ptr %chan_using.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %chan_using.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end.if.end13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 0) #8, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %18 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwdata.i, align 8
  %regshift.i46 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regshift.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regshift.i46, align 4
  %shl.i = shl nuw i32 1, %21
  %add.ptr.i = getelementptr i8, ptr %17, i32 %shl.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #8, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 8
  %24 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwdata.i, align 8
  %regshift.i49 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %regshift.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regshift.i49, align 4
  %shl.i50 = shl i32 2, %27
  %add.ptr.i51 = getelementptr i8, ptr %23, i32 %shl.i50
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i51, i8 0) #8, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 8
  %30 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwdata.i, align 8
  %regshift.i54 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %regshift.i54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regshift.i54, align 4
  %shl.i55 = shl i32 3, %33
  %add.ptr.i56 = getelementptr i8, ptr %29, i32 %shl.i55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i56, i8 0) #8, !srcloc !262
  %clk = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk, align 8
  %clk_change_nb = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 2
  %call14 = tail call i32 @clk_notifier_unregister(ptr noundef %35, ptr noundef %clk_change_nb) #8
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %if.then17, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call ptr @free_irq(i32 noundef %call15, ptr noundef %1) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13.if.end19_crit_edge
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %37) #8
  tail call void @clk_unprepare(ptr noundef %37) #8
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !265
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end19.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end19.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !266
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end19.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_put_noidle.exit ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_slave_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1584
  %slave_lock = getelementptr i8, ptr %t, i32 -48
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slave_lock) #8
  %base.i = getelementptr i8, ptr %t, i32 -208
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %hwdata.i = getelementptr i8, ptr %t, i32 -128
  %2 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwdata.i, align 8
  %regshift.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regshift.i, align 4
  %shl.i = shl i32 3, %5
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv7 = zext i8 %6 to i32
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  %9 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwdata.i, align 8
  %regshift.i18 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %regshift.i18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regshift.i18, align 4
  %shl.i19 = shl i32 2, %12
  %add.ptr.i20 = getelementptr i8, ptr %8, i32 %shl.i19
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i20) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv9 = zext i8 %13 to i32
  tail call fastcc void @i2c_imx_slave_handle(ptr noundef %add.ptr, i32 noundef %conv7, i32 noundef %conv9)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slave_lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_lock = getelementptr inbounds %struct.imx_i2c_struct, ptr %dev_id, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slave_lock) #8
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %dev_id, i32 0, i32 11
  %2 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwdata.i, align 8
  %regshift.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regshift.i, align 4
  %shl.i = shl i32 3, %5
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv6 = zext i8 %6 to i32
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  %9 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwdata.i, align 8
  %regshift.i41 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %regshift.i41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regshift.i41, align 4
  %shl.i42 = shl i32 2, %12
  %add.ptr.i43 = getelementptr i8, ptr %8, i32 %shl.i42
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i43) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv8 = zext i8 %13 to i32
  %and = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwdata.i, align 8
  %i2sr_clr_opcode.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %i2sr_clr_opcode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i2sr_clr_opcode.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %18 = trunc i32 %17 to i8
  %conv.i.i = xor i8 %18, -3
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 8
  %21 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 3, %24
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i.i) #8, !srcloc !262
  %slave = getelementptr inbounds %struct.imx_i2c_struct, ptr %dev_id, i32 0, i32 17
  %25 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave, align 8
  %tobool9.not = icmp eq ptr %26, null
  br i1 %tobool9.not, label %if.then.if.end16_crit_edge, label %if.then10

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then10:                                        ; preds = %if.then
  %and11 = and i32 %conv8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @i2c_imx_slave_handle(ptr noundef %dev_id, i32 noundef %conv6, i32 noundef %conv8)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slave_lock, i32 noundef %call2) #8
  br label %cleanup

if.end:                                           ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %val.i, align 1
  %last_slave_event.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %dev_id, i32 0, i32 18
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end
  %28 = ptrtoint ptr %last_slave_event.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_slave_event.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %while.cond.i.while.cond.i.backedge_crit_edge [
    i32 4, label %i2c_imx_slave_finish_op.exit
    i32 0, label %sw.bb.i
    i32 1, label %while.cond.i.sw.bb2.i_crit_edge
    i32 2, label %while.cond.i.sw.bb2.i_crit_edge45
    i32 3, label %while.cond.i.sw.bb2.i_crit_edge46
  ]

while.cond.i.sw.bb2.i_crit_edge46:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

while.cond.i.sw.bb2.i_crit_edge45:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

while.cond.i.sw.bb2.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

while.cond.i.while.cond.i.backedge_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.backedge

sw.bb.i:                                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %slave, align 8
  %slave_cb.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %slave_cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slave_cb.i.i.i, align 8
  %call.i.i.i = call i32 %34(ptr noundef %32, i32 noundef 2, ptr noundef nonnull %val.i) #8
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %while.cond.i.sw.bb2.i_crit_edge, %while.cond.i.sw.bb2.i_crit_edge45, %while.cond.i.sw.bb2.i_crit_edge46
  %35 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slave, align 8
  %slave_cb.i.i7.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %slave_cb.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slave_cb.i.i7.i, align 8
  %call.i.i8.i = call i32 %38(ptr noundef %36, i32 noundef 4, ptr noundef nonnull %val.i) #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %sw.bb.i
  %.sink.i = phi i32 [ 4, %sw.bb2.i ], [ 2, %sw.bb.i ]
  %39 = ptrtoint ptr %last_slave_event.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink.i, ptr %last_slave_event.i, align 4
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %sw.epilog.sink.split.i, %while.cond.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

i2c_imx_slave_finish_op.exit:                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %if.end16

if.end16:                                         ; preds = %i2c_imx_slave_finish_op.exit, %if.then.if.end16_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slave_lock, i32 noundef %call2) #8
  %i2csr.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %dev_id, i32 0, i32 5
  %40 = ptrtoint ptr %i2csr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv6, ptr %i2csr.i, align 8
  %queue.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %dev_id, i32 0, i32 4
  call void @__wake_up(ptr noundef %queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slave_lock, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end16, %if.then13
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 1, %if.then13 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_clk_notifier_call(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %action, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -1364
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_rate, align 4
  tail call fastcc void @i2c_imx_set_clk(ptr noundef %add.ptr, i32 noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_imx_set_clk(ptr noundef %i2c_imx, i32 noundef %i2c_clk_rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwdata = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %0 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwdata, align 8
  %clk_div = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_div, align 4
  %cur_clk = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 9
  %4 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_clk, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %i2c_clk_rate)
  %cmp = icmp eq i32 %5, %i2c_clk_rate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %cur_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %i2c_clk_rate, ptr %cur_clk, align 8
  %bitrate = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 10
  %7 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bitrate, align 4
  %add = add i32 %i2c_clk_rate, -1
  %sub = add i32 %add, %8
  %div3 = udiv i32 %sub, %8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 2
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div3, i32 %conv)
  %cmp5 = icmp ult i32 %div3, %conv
  br i1 %cmp5, label %if.end.if.end26_crit_edge, label %if.else

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.else:                                          ; preds = %if.end
  %ndivs = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %ndivs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndivs, align 4
  %sub9 = add i32 %12, -1
  %arrayidx10 = getelementptr %struct.imx_i2c_clk_pair, ptr %3, i32 %sub9
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx10, align 2
  %conv12 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div3, i32 %conv12)
  %cmp13 = icmp ugt i32 %div3, %conv12
  br i1 %cmp13, label %if.else.if.end26_crit_edge, label %if.else.for.cond_crit_edge

if.else.for.cond_crit_edge:                       ; preds = %if.else
  br label %for.cond

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.else.for.cond_crit_edge
  %i.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %if.else.for.cond_crit_edge ]
  %arrayidx20 = getelementptr %struct.imx_i2c_clk_pair, ptr %3, i32 %i.0
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx20, align 2
  %conv22 = zext i16 %16 to i32
  %cmp23 = icmp ugt i32 %div3, %conv22
  %inc = add i32 %i.0, 1
  br i1 %cmp23, label %for.cond.for.cond_crit_edge, label %for.cond.if.end26_crit_edge

for.cond.if.end26_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end26:                                         ; preds = %for.cond.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %i.1 = phi i32 [ 0, %if.end.if.end26_crit_edge ], [ %sub9, %if.else.if.end26_crit_edge ], [ %i.0, %for.cond.if.end26_crit_edge ]
  %arrayidx27 = getelementptr %struct.imx_i2c_clk_pair, ptr %3, i32 %i.1
  %val = getelementptr %struct.imx_i2c_clk_pair, ptr %3, i32 %i.1, i32 1
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %val, align 2
  %conv28 = zext i16 %18 to i32
  %ifdr = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 8
  %19 = ptrtoint ptr %ifdr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv28, ptr %ifdr, align 4
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx27, align 2
  %conv31 = zext i16 %21 to i32
  %mul = mul i32 %conv31, 500000
  %div3299 = lshr i32 %i2c_clk_rate, 1
  %add33 = add nsw i32 %div3299, -1
  %sub34 = add i32 %add33, %mul
  %div36 = udiv i32 %sub34, %div3299
  %disable_delay = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 6
  %22 = ptrtoint ptr %disable_delay to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div36, ptr %disable_delay, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_set_clk.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_set_clk, %do.body42)) #8
          to label %if.then40 [label %do.body42], !srcloc !263

if.then40:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_set_clk.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %i2c_clk_rate, i32 noundef %div3) #8
  br label %do.body42

do.body42:                                        ; preds = %if.then40, %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_set_clk.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_set_clk, %cleanup)) #8
          to label %if.then56 [label %cleanup], !srcloc !263

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %dev58 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %val, align 2
  %conv61 = zext i16 %24 to i32
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx27, align 2
  %conv64 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_set_clk.__UNIQUE_ID_ddebug298, ptr noundef %dev58, ptr noundef nonnull @.str.72, i32 noundef %conv61, i32 noundef %conv64) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.body42, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_init_recovery_info(ptr noundef %i2c_imx, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rinfo1 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #8
  %pinctrl = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 13
  %0 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %pinctrl, align 8
  %tobool.not = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.73) #11
  %1 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pinctrl, align 8
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call ptr @pinctrl_lookup_state(ptr noundef nonnull %call, ptr noundef nonnull @.str.75) #8
  %pinctrl_pins_default = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 14
  %4 = ptrtoint ptr %pinctrl_pins_default to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %pinctrl_pins_default, align 4
  %5 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pinctrl, align 8
  %call11 = tail call ptr @pinctrl_lookup_state(ptr noundef %6, ptr noundef nonnull @.str.76) #8
  %pinctrl_pins_gpio = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 15
  %7 = ptrtoint ptr %pinctrl_pins_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %pinctrl_pins_gpio, align 8
  %call13 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef 1) #8
  %sda_gpiod = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 12, i32 9
  %8 = ptrtoint ptr %sda_gpiod to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %sda_gpiod, align 4
  %call15 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef 15) #8
  %scl_gpiod = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 12, i32 8
  %9 = ptrtoint ptr %scl_gpiod to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call15, ptr %scl_gpiod, align 4
  %10 = ptrtoint ptr %sda_gpiod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sda_gpiod, align 4
  %cmp = icmp eq ptr %11, inttoptr (i32 -517 to ptr)
  %cmp21 = icmp eq ptr %call15, inttoptr (i32 -517 to ptr)
  %or.cond104 = select i1 %cmp, i1 true, i1 %cmp21
  br i1 %or.cond104, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp.i98 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %cmp.i99 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  %or.cond105 = select i1 %cmp.i98, i1 true, i1 %cmp.i99
  br i1 %or.cond105, label %if.else.do.body35_crit_edge, label %lor.lhs.false28

if.else.do.body35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

lor.lhs.false28:                                  ; preds = %if.else
  %12 = ptrtoint ptr %pinctrl_pins_default to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pinctrl_pins_default, align 4
  %cmp.i100 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %lor.lhs.false28.do.body35_crit_edge, label %lor.lhs.false31

lor.lhs.false28.do.body35_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %14 = ptrtoint ptr %pinctrl_pins_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pinctrl_pins_gpio, align 8
  %cmp.i101 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %lor.lhs.false31.do.body35_crit_edge, label %do.body48

lor.lhs.false31.do.body35_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

do.body35:                                        ; preds = %lor.lhs.false31.do.body35_crit_edge, %lor.lhs.false28.do.body35_crit_edge, %if.else.do.body35_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_init_recovery_info.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_init_recovery_info, %cleanup)) #8
          to label %if.then41 [label %cleanup], !srcloc !263

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_init_recovery_info.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.79) #8
  br label %cleanup

do.body48:                                        ; preds = %lor.lhs.false31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_init_recovery_info.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_init_recovery_info, %do.end68)) #8
          to label %if.then62 [label %do.end68], !srcloc !263

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %sda_gpiod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sda_gpiod, align 4
  %tobool65.not = icmp eq ptr %17, null
  %cond = select i1 %tobool65.not, ptr @.str.82, ptr @.str.81
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_init_recovery_info.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef nonnull %cond) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then62, %do.body48
  %prepare_recovery = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 12, i32 6
  %18 = ptrtoint ptr %prepare_recovery to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @i2c_imx_prepare_recovery, ptr %prepare_recovery, align 4
  %unprepare_recovery = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 12, i32 7
  %19 = ptrtoint ptr %unprepare_recovery to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @i2c_imx_unprepare_recovery, ptr %unprepare_recovery, align 4
  %20 = ptrtoint ptr %rinfo1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @i2c_generic_scl_recovery, ptr %rinfo1, align 4
  %bus_recovery_info = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 16
  %21 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rinfo1, ptr %bus_recovery_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %if.then41, %do.body35, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %3, %do.end ], [ 0, %do.end68 ], [ -517, %if.end.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %do.body35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_imx_dma_request(ptr noundef %i2c_imx, i32 noundef %phy_addr) unnamed_addr #2 align 64 {
entry:
  %dma_sconfig = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_sconfig) #8
  %0 = call ptr @memset(ptr %dma_sconfig, i32 255, i32 48)
  %dev1 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 84, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.83) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %2 = ptrtoint ptr %call2 to i32
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %2, label %do.end [
    i32 -19, label %if.then5.fail_al_crit_edge
    i32 -517, label %if.then5.fail_al_crit_edge118
  ]

if.then5.fail_al_crit_edge118:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_al

if.then5.fail_al_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_al

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.84, i32 noundef %2) #11
  br label %fail_al

if.end11:                                         ; preds = %if.end
  %hwdata = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %4 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwdata, align 8
  %regshift = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regshift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regshift, align 4
  %shl = shl i32 4, %7
  %add = add i32 %shl, %phy_addr
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 2
  %8 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 4
  %9 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 6
  %10 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %dst_maxburst, align 4
  %11 = ptrtoint ptr %dma_sconfig to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %dma_sconfig, align 4
  %12 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call2, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end11.do.end18_crit_edge, label %dmaengine_slave_config.exit

if.end11.do.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

dmaengine_slave_config.exit:                      ; preds = %if.end11
  %call.i97 = call i32 %15(ptr noundef %call2, ptr noundef nonnull %dma_sconfig) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp14 = icmp slt i32 %call.i97, 0
  br i1 %cmp14, label %dmaengine_slave_config.exit.do.end18_crit_edge, label %if.end19

dmaengine_slave_config.exit.do.end18_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end18:                                         ; preds = %dmaengine_slave_config.exit.do.end18_crit_edge, %if.end11.do.end18_crit_edge
  %retval.0.i114 = phi i32 [ %call.i97, %dmaengine_slave_config.exit.do.end18_crit_edge ], [ -38, %if.end11.do.end18_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.87, i32 noundef %retval.0.i114) #11
  br label %fail_tx

if.end19:                                         ; preds = %dmaengine_slave_config.exit
  %call20 = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.89) #8
  %chan_rx = getelementptr inbounds %struct.imx_i2c_dma, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %chan_rx, align 4
  %cmp.i98 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %if.then23, label %if.end34

if.then23:                                        ; preds = %if.end19
  %17 = ptrtoint ptr %call20 to i32
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %17, label %do.end32 [
    i32 -19, label %if.then23.fail_tx_crit_edge
    i32 -517, label %if.then23.fail_tx_crit_edge119
  ]

if.then23.fail_tx_crit_edge119:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_tx

if.then23.fail_tx_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_tx

do.end32:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.91, i32 noundef %17) #11
  br label %fail_tx

if.end34:                                         ; preds = %if.end19
  %19 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwdata, align 8
  %regshift36 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %regshift36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regshift36, align 4
  %shl37 = shl i32 4, %22
  %add38 = add i32 %shl37, %phy_addr
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 1
  %23 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add38, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 3
  %24 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 5
  %25 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %src_maxburst, align 4
  %26 = ptrtoint ptr %dma_sconfig to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %dma_sconfig, align 4
  %27 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call20, align 4
  %device_config.i99 = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %device_config.i99 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_config.i99, align 4
  %tobool.not.i100 = icmp eq ptr %30, null
  br i1 %tobool.not.i100, label %if.end34.do.end46_crit_edge, label %dmaengine_slave_config.exit104

if.end34.do.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46

dmaengine_slave_config.exit104:                   ; preds = %if.end34
  %call.i101 = call i32 %30(ptr noundef %call20, ptr noundef nonnull %dma_sconfig) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp42 = icmp slt i32 %call.i101, 0
  br i1 %cmp42, label %dmaengine_slave_config.exit104.do.end46_crit_edge, label %if.end47

dmaengine_slave_config.exit104.do.end46_crit_edge: ; preds = %dmaengine_slave_config.exit104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46

do.end46:                                         ; preds = %dmaengine_slave_config.exit104.do.end46_crit_edge, %if.end34.do.end46_crit_edge
  %retval.0.i103117 = phi i32 [ %call.i101, %dmaengine_slave_config.exit104.do.end46_crit_edge ], [ -38, %if.end34.do.end46_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.94, i32 noundef %retval.0.i103117) #11
  %31 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan_rx, align 4
  call void @dma_release_channel(ptr noundef %32) #8
  br label %fail_tx

if.end47:                                         ; preds = %dmaengine_slave_config.exit104
  %dma48 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 16
  %33 = ptrtoint ptr %dma48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %dma48, align 4
  %cmd_complete = getelementptr inbounds %struct.imx_i2c_dma, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.imx_i2c_dma, ptr %call.i, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @init_completion.__key) #8
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end47.dma_chan_name.exit_crit_edge

if.end47.dma_chan_name.exit_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %if.end47.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %42, %if.end.i.i ], [ %40, %if.end47.dma_chan_name.exit_crit_edge ]
  %43 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan_rx, align 4
  %dev.i105 = getelementptr inbounds %struct.dma_chan, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %dev.i105 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i105, align 4
  %init_name.i.i106 = getelementptr inbounds %struct.dma_chan_dev, ptr %46, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %init_name.i.i106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i106, align 8
  %tobool.not.i.i107 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i107, label %if.end.i.i109, label %dma_chan_name.exit.dma_chan_name.exit111_crit_edge

dma_chan_name.exit.dma_chan_name.exit111_crit_edge: ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_chan_name.exit111

if.end.i.i109:                                    ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %device.i108 = getelementptr inbounds %struct.dma_chan_dev, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %device.i108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device.i108, align 4
  br label %dma_chan_name.exit111

dma_chan_name.exit111:                            ; preds = %if.end.i.i109, %dma_chan_name.exit.dma_chan_name.exit111_crit_edge
  %retval.0.i.i110 = phi ptr [ %50, %if.end.i.i109 ], [ %48, %dma_chan_name.exit.dma_chan_name.exit111_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i.i110) #11
  br label %cleanup

fail_tx:                                          ; preds = %do.end46, %do.end32, %if.then23.fail_tx_crit_edge, %if.then23.fail_tx_crit_edge119, %do.end18
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  call void @dma_release_channel(ptr noundef %52) #8
  br label %fail_al

fail_al:                                          ; preds = %fail_tx, %do.end, %if.then5.fail_al_crit_edge, %if.then5.fail_al_crit_edge118
  call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_al, %dma_chan_name.exit111, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_sconfig) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_imx_slave_handle(ptr noundef %i2c_imx, i32 noundef %status, i32 noundef %ctl) unnamed_addr #2 align 64 {
entry:
  %val.i75 = alloca i8, align 1
  %val.i4 = alloca i8, align 1
  %val.i = alloca i8, align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %value, align 1
  %and = and i32 %status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %1 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwdata.i, align 8
  %i2sr_clr_opcode.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %i2sr_clr_opcode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i2sr_clr_opcode.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %5 = trunc i32 %4 to i8
  %conv.i.i = xor i8 %5, -17
  %base.i.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 8
  %8 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 3, %11
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i.i) #8, !srcloc !262
  %and1 = and i32 %status, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %and5 = and i32 %status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %val.i, align 1
  %last_slave_event.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 18
  %slave.i6.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 17
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.then7
  %13 = ptrtoint ptr %last_slave_event.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_slave_event.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %14, label %while.cond.i.while.cond.i.backedge_crit_edge [
    i32 4, label %i2c_imx_slave_finish_op.exit
    i32 0, label %sw.bb.i
    i32 1, label %while.cond.i.sw.bb2.i_crit_edge
    i32 2, label %while.cond.i.sw.bb2.i_crit_edge92
    i32 3, label %while.cond.i.sw.bb2.i_crit_edge93
  ]

while.cond.i.sw.bb2.i_crit_edge93:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

while.cond.i.sw.bb2.i_crit_edge92:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

while.cond.i.sw.bb2.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

while.cond.i.while.cond.i.backedge_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.backedge

sw.bb.i:                                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %slave.i6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slave.i6.i, align 8
  %slave_cb.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %slave_cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave_cb.i.i.i, align 8
  %call.i.i.i = call i32 %19(ptr noundef %17, i32 noundef 2, ptr noundef nonnull %val.i) #8
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %while.cond.i.sw.bb2.i_crit_edge, %while.cond.i.sw.bb2.i_crit_edge92, %while.cond.i.sw.bb2.i_crit_edge93
  %20 = ptrtoint ptr %slave.i6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slave.i6.i, align 8
  %slave_cb.i.i7.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %slave_cb.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slave_cb.i.i7.i, align 8
  %call.i.i8.i = call i32 %23(ptr noundef %21, i32 noundef 4, ptr noundef nonnull %val.i) #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %sw.bb.i
  %.sink.i = phi i32 [ 4, %sw.bb2.i ], [ 2, %sw.bb.i ]
  %24 = ptrtoint ptr %last_slave_event.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i, ptr %last_slave_event.i, align 4
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %sw.epilog.sink.split.i, %while.cond.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

i2c_imx_slave_finish_op.exit:                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %and9 = and i32 %status, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %if.end12

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %if.end8
  %and13 = and i32 %status, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else48, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i4) #8
  %25 = ptrtoint ptr %val.i4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %val.i4, align 1
  %last_slave_event.i5 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 18
  %slave.i6.i6 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 17
  br label %while.cond.i7

while.cond.i7:                                    ; preds = %while.cond.i7.backedge, %if.then15
  %26 = ptrtoint ptr %last_slave_event.i5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last_slave_event.i5, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %27, label %while.cond.i7.while.cond.i7.backedge_crit_edge [
    i32 4, label %i2c_imx_slave_finish_op.exit17
    i32 0, label %sw.bb.i10
    i32 1, label %while.cond.i7.sw.bb2.i13_crit_edge
    i32 2, label %while.cond.i7.sw.bb2.i13_crit_edge94
    i32 3, label %while.cond.i7.sw.bb2.i13_crit_edge95
  ]

while.cond.i7.sw.bb2.i13_crit_edge95:             ; preds = %while.cond.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i13

while.cond.i7.sw.bb2.i13_crit_edge94:             ; preds = %while.cond.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i13

while.cond.i7.sw.bb2.i13_crit_edge:               ; preds = %while.cond.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i13

while.cond.i7.while.cond.i7.backedge_crit_edge:   ; preds = %while.cond.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i7.backedge

sw.bb.i10:                                        ; preds = %while.cond.i7
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %slave.i6.i6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slave.i6.i6, align 8
  %slave_cb.i.i.i8 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %slave_cb.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %slave_cb.i.i.i8, align 8
  %call.i.i.i9 = call i32 %32(ptr noundef %30, i32 noundef 2, ptr noundef nonnull %val.i4) #8
  br label %sw.epilog.sink.split.i15

sw.bb2.i13:                                       ; preds = %while.cond.i7.sw.bb2.i13_crit_edge, %while.cond.i7.sw.bb2.i13_crit_edge94, %while.cond.i7.sw.bb2.i13_crit_edge95
  %33 = ptrtoint ptr %slave.i6.i6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slave.i6.i6, align 8
  %slave_cb.i.i7.i11 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %slave_cb.i.i7.i11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slave_cb.i.i7.i11, align 8
  %call.i.i8.i12 = call i32 %36(ptr noundef %34, i32 noundef 4, ptr noundef nonnull %val.i4) #8
  br label %sw.epilog.sink.split.i15

sw.epilog.sink.split.i15:                         ; preds = %sw.bb2.i13, %sw.bb.i10
  %.sink.i14 = phi i32 [ 4, %sw.bb2.i13 ], [ 2, %sw.bb.i10 ]
  %37 = ptrtoint ptr %last_slave_event.i5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.i14, ptr %last_slave_event.i5, align 4
  br label %while.cond.i7.backedge

while.cond.i7.backedge:                           ; preds = %sw.epilog.sink.split.i15, %while.cond.i7.while.cond.i7.backedge_crit_edge
  br label %while.cond.i7

i2c_imx_slave_finish_op.exit17:                   ; preds = %while.cond.i7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i4) #8
  %and16 = and i32 %status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body25, label %do.body

do.body:                                          ; preds = %i2c_imx_slave_finish_op.exit17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_slave_handle.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_slave_handle, %do.end)) #8
          to label %if.then23 [label %do.end], !srcloc !263

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_slave_handle.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %38 = ptrtoint ptr %slave.i6.i6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %slave.i6.i6, align 8
  %slave_cb.i.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %slave_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slave_cb.i.i, align 8
  %call.i.i = call i32 %41(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %value) #8
  %42 = ptrtoint ptr %last_slave_event.i5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %last_slave_event.i5, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  call void @arm_heavy_mb() #8
  %43 = trunc i32 %ctl to i8
  %conv.i = or i8 %43, 16
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 8
  %hwdata.i19 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %46 = ptrtoint ptr %hwdata.i19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hwdata.i19, align 8
  %regshift.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %regshift.i, align 4
  %shl.i = shl i32 2, %49
  %add.ptr.i = getelementptr i8, ptr %45, i32 %shl.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #8, !srcloc !262
  %50 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %value, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 8
  %54 = ptrtoint ptr %hwdata.i19 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hwdata.i19, align 8
  %regshift.i22 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %regshift.i22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %regshift.i22, align 4
  %shl.i23 = shl i32 4, %57
  %add.ptr.i24 = getelementptr i8, ptr %53, i32 %shl.i23
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i24, i8 %51) #8, !srcloc !262
  br label %out

do.body25:                                        ; preds = %i2c_imx_slave_finish_op.exit17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_slave_handle.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_slave_handle, %do.end44)) #8
          to label %if.then39 [label %do.end44], !srcloc !263

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_slave_handle.__UNIQUE_ID_ddebug300, ptr noundef %dev41, ptr noundef nonnull @.str.24) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body25
  %58 = ptrtoint ptr %slave.i6.i6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %slave.i6.i6, align 8
  %slave_cb.i.i26 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %slave_cb.i.i26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %slave_cb.i.i26, align 8
  %call.i.i27 = call i32 %61(ptr noundef %59, i32 noundef 1, ptr noundef nonnull %value) #8
  %62 = ptrtoint ptr %last_slave_event.i5 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %last_slave_event.i5, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  call void @arm_heavy_mb() #8
  %63 = trunc i32 %ctl to i8
  %conv.i29 = and i8 %63, -17
  %base.i30 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %64 = ptrtoint ptr %base.i30 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i30, align 8
  %hwdata.i31 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %66 = ptrtoint ptr %hwdata.i31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hwdata.i31, align 8
  %regshift.i32 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %regshift.i32 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %regshift.i32, align 4
  %shl.i33 = shl i32 2, %69
  %add.ptr.i34 = getelementptr i8, ptr %65, i32 %shl.i33
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i34, i8 %conv.i29) #8, !srcloc !262
  %70 = ptrtoint ptr %base.i30 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i30, align 8
  %72 = ptrtoint ptr %hwdata.i31 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hwdata.i31, align 8
  %regshift.i37 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %regshift.i37 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %regshift.i37, align 4
  %shl.i38 = shl i32 4, %75
  %add.ptr.i39 = getelementptr i8, ptr %71, i32 %shl.i38
  %76 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i39) #8, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  br label %out

if.else48:                                        ; preds = %if.end12
  %and49 = and i32 %ctl, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  %base.i40 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %77 = ptrtoint ptr %base.i40 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i40, align 8
  %hwdata.i41 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %79 = ptrtoint ptr %hwdata.i41 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hwdata.i41, align 8
  %regshift.i42 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %regshift.i42 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %regshift.i42, align 4
  %shl.i43 = shl i32 4, %82
  %add.ptr.i44 = getelementptr i8, ptr %78, i32 %shl.i43
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i44) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %84 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %value, align 1
  %slave.i45 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 17
  %85 = ptrtoint ptr %slave.i45 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %slave.i45, align 8
  %slave_cb.i.i46 = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %slave_cb.i.i46 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %slave_cb.i.i46, align 8
  %call.i.i47 = call i32 %88(ptr noundef %86, i32 noundef 3, ptr noundef nonnull %value) #8
  %last_slave_event.i48 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 18
  %89 = ptrtoint ptr %last_slave_event.i48 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3, ptr %last_slave_event.i48, align 4
  br label %out

if.else53:                                        ; preds = %if.else48
  %and54 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %90 = trunc i32 %ctl to i8
  br i1 %tobool55.not, label %if.then56, label %if.else59

if.then56:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i49 = or i8 %90, 16
  %base.i50 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %91 = ptrtoint ptr %base.i50 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i50, align 8
  %hwdata.i51 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %93 = ptrtoint ptr %hwdata.i51 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hwdata.i51, align 8
  %regshift.i52 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %regshift.i52 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %regshift.i52, align 4
  %shl.i53 = shl i32 2, %96
  %add.ptr.i54 = getelementptr i8, ptr %92, i32 %shl.i53
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i54, i8 %conv.i49) #8, !srcloc !262
  %slave.i55 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 17
  %97 = ptrtoint ptr %slave.i55 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %slave.i55, align 8
  %slave_cb.i.i56 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %slave_cb.i.i56 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %slave_cb.i.i56, align 8
  %call.i.i57 = call i32 %100(ptr noundef %98, i32 noundef 2, ptr noundef nonnull %value) #8
  %last_slave_event.i58 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 18
  %101 = ptrtoint ptr %last_slave_event.i58 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %last_slave_event.i58, align 4
  %102 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %value, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  call void @arm_heavy_mb() #8
  %104 = ptrtoint ptr %base.i50 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i50, align 8
  %106 = ptrtoint ptr %hwdata.i51 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hwdata.i51, align 8
  %regshift.i61 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %regshift.i61 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %regshift.i61, align 4
  %shl.i62 = shl i32 4, %109
  %add.ptr.i63 = getelementptr i8, ptr %105, i32 %shl.i62
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i63, i8 %103) #8, !srcloc !262
  br label %out

if.else59:                                        ; preds = %if.else53
  %conv.i64 = and i8 %90, -17
  %base.i65 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %110 = ptrtoint ptr %base.i65 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i65, align 8
  %hwdata.i66 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %112 = ptrtoint ptr %hwdata.i66 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hwdata.i66, align 8
  %regshift.i67 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %regshift.i67 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %regshift.i67, align 4
  %shl.i68 = shl i32 2, %115
  %add.ptr.i69 = getelementptr i8, ptr %111, i32 %shl.i68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i69, i8 %conv.i64) #8, !srcloc !262
  %116 = ptrtoint ptr %base.i65 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i65, align 8
  %118 = ptrtoint ptr %hwdata.i66 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hwdata.i66, align 8
  %regshift.i72 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %regshift.i72 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %regshift.i72, align 4
  %shl.i73 = shl i32 4, %121
  %add.ptr.i74 = getelementptr i8, ptr %117, i32 %shl.i73
  %122 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i74) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i75) #8
  %123 = ptrtoint ptr %val.i75 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %val.i75, align 1
  %last_slave_event.i76 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 18
  %slave.i6.i77 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 17
  br label %while.cond.i78

while.cond.i78:                                   ; preds = %while.cond.i78.backedge, %if.else59
  %124 = ptrtoint ptr %last_slave_event.i76 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %last_slave_event.i76, align 4
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %125, label %while.cond.i78.while.cond.i78.backedge_crit_edge [
    i32 4, label %i2c_imx_slave_finish_op.exit88
    i32 0, label %sw.bb.i81
    i32 1, label %while.cond.i78.sw.bb2.i84_crit_edge
    i32 2, label %while.cond.i78.sw.bb2.i84_crit_edge96
    i32 3, label %while.cond.i78.sw.bb2.i84_crit_edge97
  ]

while.cond.i78.sw.bb2.i84_crit_edge97:            ; preds = %while.cond.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i84

while.cond.i78.sw.bb2.i84_crit_edge96:            ; preds = %while.cond.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i84

while.cond.i78.sw.bb2.i84_crit_edge:              ; preds = %while.cond.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i84

while.cond.i78.while.cond.i78.backedge_crit_edge: ; preds = %while.cond.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i78.backedge

sw.bb.i81:                                        ; preds = %while.cond.i78
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %slave.i6.i77 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %slave.i6.i77, align 8
  %slave_cb.i.i.i79 = getelementptr inbounds %struct.i2c_client, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %slave_cb.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %slave_cb.i.i.i79, align 8
  %call.i.i.i80 = call i32 %130(ptr noundef %128, i32 noundef 2, ptr noundef nonnull %val.i75) #8
  br label %sw.epilog.sink.split.i86

sw.bb2.i84:                                       ; preds = %while.cond.i78.sw.bb2.i84_crit_edge, %while.cond.i78.sw.bb2.i84_crit_edge96, %while.cond.i78.sw.bb2.i84_crit_edge97
  %131 = ptrtoint ptr %slave.i6.i77 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %slave.i6.i77, align 8
  %slave_cb.i.i7.i82 = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %slave_cb.i.i7.i82 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %slave_cb.i.i7.i82, align 8
  %call.i.i8.i83 = call i32 %134(ptr noundef %132, i32 noundef 4, ptr noundef nonnull %val.i75) #8
  br label %sw.epilog.sink.split.i86

sw.epilog.sink.split.i86:                         ; preds = %sw.bb2.i84, %sw.bb.i81
  %.sink.i85 = phi i32 [ 4, %sw.bb2.i84 ], [ 2, %sw.bb.i81 ]
  %135 = ptrtoint ptr %last_slave_event.i76 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %.sink.i85, ptr %last_slave_event.i76, align 4
  br label %while.cond.i78.backedge

while.cond.i78.backedge:                          ; preds = %sw.epilog.sink.split.i86, %while.cond.i78.while.cond.i78.backedge_crit_edge
  br label %while.cond.i78

i2c_imx_slave_finish_op.exit88:                   ; preds = %while.cond.i78
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i75) #8
  br label %cleanup

out:                                              ; preds = %if.then56, %if.then51, %do.end44, %do.end, %if.end8.out_crit_edge
  %slave_timer = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 20
  %call65 = call i32 @hrtimer_try_to_cancel(ptr noundef %slave_timer) #8
  %base.i89 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 20, i32 3
  %136 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i89, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %137, i32 0, i32 6
  %138 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %get_time.i, align 4
  %call.i = call i64 %139() #8
  %call1.i = call i64 @hrtimer_forward(ptr noundef %slave_timer, i64 noundef %call.i, i64 noundef 30000) #8
  %_softexpires.i.i.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 20, i32 1
  %140 = ptrtoint ptr %_softexpires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %_softexpires.i.i.i, align 8
  %expires.i.i.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 20, i32 0, i32 1
  %142 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %expires.i.i.i, align 8
  %sub.i.i = sub i64 %143, %141
  call void @hrtimer_start_range_ns(ptr noundef %slave_timer, i64 noundef %141, i64 noundef %sub.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %i2c_imx_slave_finish_op.exit88, %i2c_imx_slave_finish_op.exit, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !265
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !266
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @i2c_imx_xfer_common(ptr noundef %adapter, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext false)
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i17 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i17, ptr %last_busy.i, align 8
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i18 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_xfer_atomic(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @i2c_imx_xfer_common(ptr noundef %adapter, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext true)
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i2c_imx_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268369929
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_reg_slave(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %slave, align 8
  %last_slave_event = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %last_slave_event to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %last_slave_event, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end7

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !264
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !265
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !266
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @i2c_imx_slave_init(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_unreg_slave(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %3, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 0) #8, !srcloc !262
  %8 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwdata.i, align 8
  %i2cr_ien_opcode.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %i2cr_ien_opcode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2cr_ien_opcode.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %12 = trunc i32 %11 to i8
  %conv.i.i = xor i8 %12, -128
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %15 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 2, %18
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i.i) #8, !srcloc !262
  %19 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwdata.i, align 8
  %i2sr_clr_opcode.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %i2sr_clr_opcode.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i2sr_clr_opcode.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %23 = trunc i32 %22 to i8
  %conv.i.i.i = xor i8 %23, -19
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 8
  %26 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %regshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regshift.i.i.i, align 4
  %shl.i.i.i = shl i32 3, %29
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %shl.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv.i.i.i) #8, !srcloc !262
  %30 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %slave, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %32, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_xfer_common(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %msgs, i32 noundef %num, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @i2c_imx_start(ptr noundef %1, i1 noundef zeroext %atomic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %brmerge = or i1 %tobool2.not, %atomic
  br i1 %brmerge, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %bus_recovery_info = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_recovery_info, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.fail0_crit_edge, label %if.then6

land.lhs.true.fail0_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail0

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @i2c_recover_bus(ptr noundef %1) #8
  %call10 = tail call fastcc i32 @i2c_imx_start(ptr noundef %1, i1 noundef zeroext false)
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %entry.if.end11_crit_edge
  %result.0 = phi i32 [ %call10, %if.then6 ], [ %call1, %entry.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool12.not = icmp eq i32 %result.0, 0
  br i1 %tobool12.not, label %for.cond.preheader, label %if.end11.fail0_crit_edge

if.end11.fail0_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail0

for.cond.preheader:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp302.not = icmp eq i32 %num, 0
  br i1 %cmp302.not, label %for.cond.preheader.fail0_crit_edge, label %for.body.lr.ph

for.cond.preheader.fail0_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail0

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add i32 %num, -1
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 3
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 11
  %dma = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 16
  br label %for.body

for.cond:                                         ; preds = %if.end161
  %inc = add nuw i32 %i.0304, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond.fail0_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.fail0_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail0

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0304 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %is_lastmsg.0.off0303 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0304, i32 %sub)
  %cmp15 = icmp eq i32 %i.0304, %sub
  %spec.select = select i1 %cmp15, i1 true, i1 %is_lastmsg.0.off0303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0304)
  %tobool18.not = icmp eq i32 %i.0304, 0
  br i1 %tobool18.not, label %for.body.do.body36_crit_edge, label %do.body

for.body.do.body36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_xfer_common.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_xfer_common, %do.end)) #8
          to label %if.then26 [label %do.end], !srcloc !263

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_xfer_common.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25) #8
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %6 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwdata.i, align 8
  %regshift.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regshift.i, align 4
  %shl.i = shl i32 2, %9
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %11 = or i8 %10, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %14 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwdata.i, align 8
  %regshift.i282 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %regshift.i282 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regshift.i282, align 4
  %shl.i283 = shl i32 2, %17
  %add.ptr.i284 = getelementptr i8, ptr %13, i32 %shl.i283
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i284, i8 %11) #8, !srcloc !262
  %call31 = tail call fastcc i32 @i2c_imx_bus_busy(ptr noundef %1, i32 noundef 1, i1 noundef zeroext %atomic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end.do.body36_crit_edge, label %do.end.fail0_crit_edge

do.end.fail0_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail0

do.end.do.body36_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

do.body36:                                        ; preds = %do.end.do.body36_crit_edge, %for.body.do.body36_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_xfer_common.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_xfer_common, %do.end55)) #8
          to label %if.then50 [label %do.end55], !srcloc !263

if.then50:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_xfer_common.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %i.0304) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %do.body36
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  %20 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwdata.i, align 8
  %regshift.i287 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %regshift.i287 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regshift.i287, align 4
  %shl.i288 = shl i32 2, %23
  %add.ptr.i289 = getelementptr i8, ptr %19, i32 %shl.i288
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i289) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_xfer_common.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_xfer_common, %do.end93)) #8
          to label %if.then72 [label %do.end93], !srcloc !263

if.then72:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  %conv57 = zext i8 %24 to i32
  %and.lobit = lshr i32 %conv57, 7
  %and76 = lshr i32 %conv57, 6
  %and76.lobit = and i32 %and76, 1
  %and79 = lshr i32 %conv57, 5
  %and79.lobit = and i32 %and79, 1
  %and82 = lshr i32 %conv57, 4
  %and82.lobit = and i32 %and82, 1
  %and85 = lshr i32 %conv57, 3
  %and85.lobit = and i32 %and85, 1
  %and88 = lshr i32 %conv57, 2
  %and88.lobit = and i32 %and88, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_xfer_common.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef %and.lobit, i32 noundef %and76.lobit, i32 noundef %and79.lobit, i32 noundef %and82.lobit, i32 noundef %and85.lobit, i32 noundef %and88.lobit) #8
  br label %do.end93

do.end93:                                         ; preds = %if.then72, %do.end55
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 8
  %27 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwdata.i, align 8
  %regshift.i292 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %regshift.i292 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regshift.i292, align 4
  %shl.i293 = shl i32 3, %30
  %add.ptr.i294 = getelementptr i8, ptr %26, i32 %shl.i293
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i294) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_xfer_common.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_xfer_common, %do.end136)) #8
          to label %if.then110 [label %do.end136], !srcloc !263

if.then110:                                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #10
  %conv95 = zext i8 %31 to i32
  %and113.lobit = lshr i32 %conv95, 7
  %and116 = lshr i32 %conv95, 6
  %and116.lobit = and i32 %and116, 1
  %and119 = lshr i32 %conv95, 5
  %and119.lobit = and i32 %and119, 1
  %and122 = lshr i32 %conv95, 4
  %and122.lobit = and i32 %and122, 1
  %and125 = lshr i32 %conv95, 2
  %and125.lobit = and i32 %and125, 1
  %and128 = lshr i32 %conv95, 1
  %and128.lobit = and i32 %and128, 1
  %and131 = and i32 %conv95, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_xfer_common.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25, i32 noundef %and113.lobit, i32 noundef %and116.lobit, i32 noundef %and119.lobit, i32 noundef %and122.lobit, i32 noundef %and125.lobit, i32 noundef %and128.lobit, i32 noundef %and131) #8
  br label %do.end136

do.end136:                                        ; preds = %if.then110, %do.end93
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0304
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0304, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags, align 2
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool139.not = icmp eq i16 %34, 0
  br i1 %tobool139.not, label %if.else, label %if.then140

if.then140:                                       ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #10
  %call144 = tail call fastcc i32 @i2c_imx_read(ptr noundef %1, ptr noundef %arrayidx, i1 noundef zeroext %spec.select, i1 noundef zeroext %atomic)
  br label %if.end161

if.else:                                          ; preds = %do.end136
  br i1 %atomic, label %if.else.if.else156_crit_edge, label %land.lhs.true146

if.else.if.else156_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else156

land.lhs.true146:                                 ; preds = %if.else
  %35 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma, align 4
  %tobool147.not = icmp eq ptr %36, null
  br i1 %tobool147.not, label %land.lhs.true146.if.else156_crit_edge, label %land.lhs.true148

land.lhs.true146.if.else156_crit_edge:            ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else156

land.lhs.true148:                                 ; preds = %land.lhs.true146
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0304, i32 2
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %38)
  %cmp151 = icmp ugt i16 %38, 15
  br i1 %cmp151, label %if.then153, label %land.lhs.true148.if.else156_crit_edge

land.lhs.true148.if.else156_crit_edge:            ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else156

if.then153:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #10
  %call155 = tail call fastcc i32 @i2c_imx_dma_write(ptr noundef %1, ptr noundef %arrayidx)
  br label %if.end161

if.else156:                                       ; preds = %land.lhs.true148.if.else156_crit_edge, %land.lhs.true146.if.else156_crit_edge, %if.else.if.else156_crit_edge
  %call159 = tail call fastcc i32 @i2c_imx_write(ptr noundef %1, ptr noundef %arrayidx, i1 noundef zeroext %atomic)
  br label %if.end161

if.end161:                                        ; preds = %if.else156, %if.then153, %if.then140
  %result.2 = phi i32 [ %call144, %if.then140 ], [ %call159, %if.else156 ], [ %call155, %if.then153 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.2)
  %tobool162.not = icmp eq i32 %result.2, 0
  br i1 %tobool162.not, label %for.cond, label %if.end161.fail0_crit_edge

if.end161.fail0_crit_edge:                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail0

fail0:                                            ; preds = %if.end161.fail0_crit_edge, %do.end.fail0_crit_edge, %for.cond.fail0_crit_edge, %for.cond.preheader.fail0_crit_edge, %if.end11.fail0_crit_edge, %land.lhs.true.fail0_crit_edge
  %result.3 = phi i32 [ %result.0, %if.end11.fail0_crit_edge ], [ %call1, %land.lhs.true.fail0_crit_edge ], [ 0, %for.cond.preheader.fail0_crit_edge ], [ %call31, %do.end.fail0_crit_edge ], [ %result.2, %if.end161.fail0_crit_edge ], [ 0, %for.cond.fail0_crit_edge ]
  %stopped.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stopped.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.then.i, label %fail0.if.end9.i_crit_edge

fail0.if.end9.i_crit_edge:                        ; preds = %fail0
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %fail0
  %base.i.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 8
  %hwdata.i.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 11
  %43 = ptrtoint ptr %hwdata.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hwdata.i.i, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 2, %46
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %shl.i.i
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %48 = and i8 %47, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool1.not.i = icmp eq i8 %48, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %stopped.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %dma.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 16
  %50 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma.i, align 4
  %tobool5.not.i = icmp eq ptr %51, null
  %spec.select.v.i = select i1 %tobool5.not.i, i8 -49, i8 -51
  %spec.select.i = and i8 %spec.select.v.i, %47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 8
  %54 = ptrtoint ptr %hwdata.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hwdata.i.i, align 8
  %regshift.i46.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %regshift.i46.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %regshift.i46.i, align 4
  %shl.i47.i = shl i32 2, %57
  %add.ptr.i48.i = getelementptr i8, ptr %53, i32 %shl.i47.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i48.i, i8 %spec.select.i) #8, !srcloc !262
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %fail0.if.end9.i_crit_edge
  %hwdata.i49.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 11
  %58 = ptrtoint ptr %hwdata.i49.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hwdata.i49.i, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.not.i = icmp eq i32 %61, 0
  br i1 %cmp.i.not.i, label %cond.false17.i, label %if.end9.i.if.end20.i_crit_edge

if.end9.i.if.end20.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

cond.false17.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %disable_delay.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %disable_delay.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %disable_delay.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %63) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %cond.false17.i, %if.end9.i.if.end20.i_crit_edge
  %65 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stopped.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool22.not.i = icmp eq i32 %66, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end20.i.i2c_imx_stop.exit_crit_edge

if.end20.i.i2c_imx_stop.exit_crit_edge:           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_imx_stop.exit

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call25.i = tail call fastcc i32 @i2c_imx_bus_busy(ptr noundef %1, i32 noundef 0, i1 noundef zeroext %atomic) #8
  br label %i2c_imx_stop.exit

i2c_imx_stop.exit:                                ; preds = %if.then23.i, %if.end20.i.i2c_imx_stop.exit_crit_edge
  %67 = ptrtoint ptr %hwdata.i49.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hwdata.i49.i, align 8
  %i2cr_ien_opcode.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %i2cr_ien_opcode.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i2cr_ien_opcode.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %71 = trunc i32 %70 to i8
  %conv.i51.i = xor i8 %71, -128
  %base.i52.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 3
  %72 = ptrtoint ptr %base.i52.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i52.i, align 8
  %74 = ptrtoint ptr %hwdata.i49.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hwdata.i49.i, align 8
  %regshift.i54.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %regshift.i54.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %regshift.i54.i, align 4
  %shl.i55.i = shl i32 2, %77
  %add.ptr.i56.i = getelementptr i8, ptr %73, i32 %shl.i55.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i56.i, i8 %conv.i51.i) #8, !srcloc !262
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_xfer_common.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_xfer_common, %do.end191)) #8
          to label %if.then180 [label %do.end191], !srcloc !263

if.then180:                                       ; preds = %i2c_imx_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev182 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.3)
  %cmp183 = icmp slt i32 %result.3, 0
  %cond185 = select i1 %cmp183, ptr @.str.31, ptr @.str.32
  %result.3.num = select i1 %cmp183, i32 %result.3, i32 %num
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_xfer_common.__UNIQUE_ID_ddebug318, ptr noundef %dev182, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond185, i32 noundef %result.3.num) #8
  br label %do.end191

do.end191:                                        ; preds = %if.then180, %i2c_imx_stop.exit
  %slave = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 17
  %78 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %slave, align 8
  %tobool192.not = icmp eq ptr %79, null
  br i1 %tobool192.not, label %do.end191.if.end194_crit_edge, label %if.then193

do.end191.if.end194_crit_edge:                    ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.then193:                                       ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @i2c_imx_slave_init(ptr noundef %1)
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %do.end191.if.end194_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.3)
  %cmp195 = icmp slt i32 %result.3, 0
  %result.3.num267 = select i1 %cmp195, i32 %result.3, i32 %num
  ret i32 %result.3.num267
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_start(ptr noundef %i2c_imx, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ifdr = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 8
  %0 = ptrtoint ptr %ifdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ifdr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %conv.i = trunc i32 %1 to i8
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %4 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwdata.i, align 8
  %regshift.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regshift.i, align 4
  %shl.i = shl nuw i32 1, %7
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #8, !srcloc !262
  %8 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwdata.i, align 8
  %i2sr_clr_opcode = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %i2sr_clr_opcode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2sr_clr_opcode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %conv.i31 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %14 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwdata.i, align 8
  %regshift.i34 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %regshift.i34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regshift.i34, align 4
  %shl.i35 = shl i32 3, %17
  %add.ptr.i36 = getelementptr i8, ptr %13, i32 %shl.i35
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i36, i8 %conv.i31) #8, !srcloc !262
  %18 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwdata.i, align 8
  %i2cr_ien_opcode = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %i2cr_ien_opcode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i2cr_ien_opcode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %conv.i37 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 8
  %24 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwdata.i, align 8
  %regshift.i40 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %regshift.i40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regshift.i40, align 4
  %shl.i41 = shl i32 2, %27
  %add.ptr.i42 = getelementptr i8, ptr %23, i32 %shl.i41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i42, i8 %conv.i37) #8, !srcloc !262
  br i1 %atomic, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 10737400) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 150, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 8
  %31 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwdata.i, align 8
  %regshift.i45 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %regshift.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %regshift.i45, align 4
  %shl.i46 = shl i32 2, %34
  %add.ptr.i47 = getelementptr i8, ptr %30, i32 %shl.i46
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i47) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %36 = or i8 %35, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 8
  %39 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hwdata.i, align 8
  %regshift.i50 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %regshift.i50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %regshift.i50, align 4
  %shl.i51 = shl i32 2, %42
  %add.ptr.i52 = getelementptr i8, ptr %38, i32 %shl.i51
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i52, i8 %36) #8, !srcloc !262
  %call3 = tail call fastcc i32 @i2c_imx_bus_busy(ptr noundef %i2c_imx, i32 noundef 1, i1 noundef zeroext %atomic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %43 = or i8 %35, 120
  %and = and i8 %43, -67
  %spec.select = select i1 %atomic, i8 %and, i8 %43
  %and11 = and i8 %spec.select, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 8
  %46 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hwdata.i, align 8
  %regshift.i56 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %regshift.i56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %regshift.i56, align 4
  %shl.i57 = shl i32 2, %49
  %add.ptr.i58 = getelementptr i8, ptr %45, i32 %shl.i57
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i58, i8 %and11) #8, !srcloc !262
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_bus_busy(ptr noundef %i2c_imx, i32 noundef %for_busy, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 8
  %3 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwdata.i, align 8
  %regshift.i45 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %regshift.i45 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regshift.i45, align 4
  %shl.i46 = shl i32 3, %6
  %add.ptr.i47 = getelementptr i8, ptr %2, i32 %shl.i46
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i47) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv48 = zext i8 %7 to i32
  %and49 = and i32 %conv48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool.not50 = icmp eq i32 %and49, 0
  br i1 %tobool.not50, label %if.end.lr.ph, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %for_busy)
  %tobool1.not = icmp eq i32 %for_busy, 0
  %add = add i32 %0, 50
  br label %if.end

if.then:                                          ; preds = %if.end27.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwdata.i, align 8
  %i2sr_clr_opcode.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %i2sr_clr_opcode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2sr_clr_opcode.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %12 = trunc i32 %11 to i8
  %conv.i.i = xor i8 %12, -17
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %15 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 3, %18
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i.i) #8, !srcloc !262
  br label %cleanup

if.end:                                           ; preds = %if.end27.if.end_crit_edge, %if.end.lr.ph
  %conv51 = phi i32 [ %conv48, %if.end.lr.ph ], [ %conv, %if.end27.if.end_crit_edge ]
  %and2 = and i32 %conv51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %stopped = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 7
  %19 = ptrtoint ptr %stopped to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %stopped, align 8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %or.cond36 = select i1 %tobool1.not, i1 %tobool3.not, i1 false
  br i1 %or.cond36, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %stopped11 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 7
  %20 = ptrtoint ptr %stopped11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %stopped11, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body, label %if.end24

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_bus_busy.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_bus_busy, %cleanup)) #8
          to label %if.then22 [label %cleanup], !srcloc !263

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_bus_busy.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  br i1 %atomic, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 21474800) #8
  br label %if.end27

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @schedule() #8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 8
  %25 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwdata.i, align 8
  %regshift.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regshift.i, align 4
  %shl.i = shl i32 3, %28
  %add.ptr.i = getelementptr i8, ptr %24, i32 %shl.i
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv = zext i8 %29 to i32
  %and = and i32 %conv, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end27.if.end_crit_edge, label %if.end27.if.then_crit_edge

if.end27.if.then_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end27.if.end_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cleanup:                                          ; preds = %if.then22, %do.body, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ -11, %if.then ], [ -110, %if.then22 ], [ 0, %if.then10 ], [ 0, %if.then4 ], [ -110, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_read(ptr noundef %i2c_imx, ptr nocapture noundef %msgs, i1 noundef zeroext %is_lastmsg, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 1024
  %dma = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 16
  %3 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %6)
  %cmp = icmp ugt i16 %6, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool4.not = icmp eq i16 %2, 0
  %spec.select = select i1 %cmp, i1 %tobool4.not, i1 false
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry.land.end_crit_edge
  %7 = phi i1 [ false, %entry.land.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_read.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_read, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !263

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  %8 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msgs, align 4
  %conv.i = zext i16 %9 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 1
  %13 = zext i16 %12 to i32
  %shl.i.masked = and i32 %shl.i, 254
  %conv12 = or i32 %shl.i.masked, %13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_read.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %conv12) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.end
  %14 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %msgs, align 4
  %conv.i341 = trunc i16 %15 to i8
  %shl.i342 = shl i8 %conv.i341, 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 2
  %18 = trunc i16 %17 to i8
  %19 = and i8 %18, 1
  %or.i344 = or i8 %19, %shl.i342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 8
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %22 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwdata.i, align 8
  %regshift.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %regshift.i, align 4
  %shl.i345 = shl i32 4, %25
  %add.ptr.i = getelementptr i8, ptr %21, i32 %shl.i345
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %or.i344) #8, !srcloc !262
  %call16 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %i2c_imx, i1 noundef zeroext %atomic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %do.end.cleanup242_crit_edge

do.end.cleanup242_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup242

if.end19:                                         ; preds = %do.end
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 8
  %28 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 3, %31
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %shl.i.i
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %do.body8.i, label %do.body.i

do.body.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_acked.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_read, %i2c_imx_acked.exit)) #8
          to label %i2c_imx_acked.exit.thread407 [label %i2c_imx_acked.exit], !srcloc !263

i2c_imx_acked.exit.thread407:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_acked.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #8
  br label %cleanup242

do.body8.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_acked.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_read, %i2c_imx_acked.exit)) #8
          to label %i2c_imx_acked.exit.thread [label %i2c_imx_acked.exit], !srcloc !263

i2c_imx_acked.exit.thread:                        ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev24.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_acked.__UNIQUE_ID_ddebug296, ptr noundef %dev24.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #8
  br label %do.body24

i2c_imx_acked.exit:                               ; preds = %do.body8.i, %do.body.i
  %retval.0.i346 = phi i32 [ -6, %do.body.i ], [ 0, %do.body8.i ]
  br i1 %tobool.not.i, label %i2c_imx_acked.exit.do.body24_crit_edge, label %i2c_imx_acked.exit.cleanup242_crit_edge

i2c_imx_acked.exit.cleanup242_crit_edge:          ; preds = %i2c_imx_acked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup242

i2c_imx_acked.exit.do.body24_crit_edge:           ; preds = %i2c_imx_acked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.body24:                                        ; preds = %i2c_imx_acked.exit.do.body24_crit_edge, %i2c_imx_acked.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_read.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_read, %do.end43)) #8
          to label %if.then38 [label %do.end43], !srcloc !263

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_read.__UNIQUE_ID_ddebug308, ptr noundef %dev40, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %do.body24
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 8
  %36 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwdata.i, align 8
  %regshift.i349 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %regshift.i349 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regshift.i349, align 4
  %shl.i350 = shl i32 2, %39
  %add.ptr.i351 = getelementptr i8, ptr %35, i32 %shl.i350
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i351) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %41 = and i8 %40, -17
  %and46 = zext i8 %41 to i32
  %len47 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %42 = ptrtoint ptr %len47 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len47, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %43)
  %tobool49.not = icmp eq i16 %43, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool50.not = icmp eq i16 %2, 0
  %or.cond = select i1 %tobool49.not, i1 %tobool50.not, i1 false
  %and52 = and i32 %and46, 231
  %temp.0 = select i1 %or.cond, i32 %and46, i32 %and52
  %or = or i32 %temp.0, 2
  %temp.1 = select i1 %7, i32 %or, i32 %temp.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %conv.i352 = trunc i32 %temp.1 to i8
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 8
  %46 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hwdata.i, align 8
  %regshift.i355 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %regshift.i355 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %regshift.i355, align 4
  %shl.i356 = shl i32 2, %49
  %add.ptr.i357 = getelementptr i8, ptr %45, i32 %shl.i356
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i357, i8 %conv.i352) #8, !srcloc !262
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 8
  %52 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hwdata.i, align 8
  %regshift.i360 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %regshift.i360 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %regshift.i360, align 4
  %shl.i361 = shl i32 4, %55
  %add.ptr.i362 = getelementptr i8, ptr %51, i32 %shl.i361
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i362) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_read.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_read, %do.end77)) #8
          to label %if.then72 [label %do.end77], !srcloc !263

if.then72:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  %dev74 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_read.__UNIQUE_ID_ddebug309, ptr noundef %dev74, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #8
  br label %do.end77

do.end77:                                         ; preds = %if.then72, %do.end43
  br i1 %7, label %if.then79, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end77
  %57 = ptrtoint ptr %len47 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %len47, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp85420.not = icmp eq i16 %58, 0
  br i1 %cmp85420.not, label %for.cond.preheader.cleanup242_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup242_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup242

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev123 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  %stopped = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 7
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  br label %for.body

if.then79:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  %call81 = tail call fastcc i32 @i2c_imx_dma_read(ptr noundef %i2c_imx, ptr noundef %msgs, i1 noundef zeroext %is_lastmsg)
  br label %cleanup242

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0421 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call89 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %i2c_imx, i1 noundef zeroext %atomic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %for.body.cleanup242_crit_edge

for.body.cleanup242_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup242

if.end92:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0421)
  %tobool93.not = icmp ne i32 %i.0421, 0
  %or.cond319 = select i1 %tobool93.not, i1 true, i1 %tobool50.not
  br i1 %or.cond319, label %if.end92.if.end132_crit_edge, label %if.then96

if.end92.if.end132_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then96:                                        ; preds = %if.end92
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 8
  %61 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hwdata.i, align 8
  %regshift.i365 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %regshift.i365 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %regshift.i365, align 4
  %shl.i366 = shl i32 4, %64
  %add.ptr.i367 = getelementptr i8, ptr %60, i32 %shl.i366
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i367) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv98 = zext i8 %65 to i32
  %66 = add i8 %65, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %66)
  %67 = icmp ult i8 %66, -32
  br i1 %67, label %if.then96.cleanup242_crit_edge, label %do.body107

if.then96.cleanup242_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup242

do.body107:                                       ; preds = %if.then96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_read.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_read, %do.end127)) #8
          to label %if.then121 [label %do.end127], !srcloc !263

if.then121:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_read.__UNIQUE_ID_ddebug310, ptr noundef %dev123, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef %conv98) #8
  br label %do.end127

do.end127:                                        ; preds = %if.then121, %do.body107
  %68 = ptrtoint ptr %len47 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %len47, align 4
  %70 = zext i8 %65 to i16
  %conv131 = add i16 %69, %70
  store i16 %conv131, ptr %len47, align 4
  br label %if.end132

if.end132:                                        ; preds = %do.end127, %if.end92.if.end132_crit_edge
  %len87.0 = phi i8 [ 0, %if.end92.if.end132_crit_edge ], [ %65, %do.end127 ]
  %71 = ptrtoint ptr %len47 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %len47, align 4
  %conv134 = zext i16 %72 to i32
  %sub135 = add nsw i32 %conv134, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0421, i32 %sub135)
  %cmp136 = icmp eq i32 %i.0421, %sub135
  br i1 %cmp136, label %if.then138, label %if.else178

if.then138:                                       ; preds = %if.end132
  br i1 %is_lastmsg, label %do.body141, label %if.else

do.body141:                                       ; preds = %if.then138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_read.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_read, %do.end160)) #8
          to label %if.then155 [label %do.end160], !srcloc !263

if.then155:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_read.__UNIQUE_ID_ddebug311, ptr noundef %dev123, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35) #8
  br label %do.end160

do.end160:                                        ; preds = %if.then155, %do.body141
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 8
  %75 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hwdata.i, align 8
  %regshift.i370 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %regshift.i370 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %regshift.i370, align 4
  %shl.i371 = shl i32 2, %78
  %add.ptr.i372 = getelementptr i8, ptr %74, i32 %shl.i371
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i372) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %80 = and i8 %79, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool164.not = icmp eq i8 %80, 0
  br i1 %tobool164.not, label %if.then165, label %do.end160.if.end166_crit_edge

do.end160.if.end166_crit_edge:                    ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

if.then165:                                       ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %stopped to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %stopped, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %do.end160.if.end166_crit_edge
  %and167 = and i8 %79, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 8
  %84 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hwdata.i, align 8
  %regshift.i376 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %regshift.i376 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %regshift.i376, align 4
  %shl.i377 = shl i32 2, %87
  %add.ptr.i378 = getelementptr i8, ptr %83, i32 %shl.i377
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i378, i8 %and167) #8, !srcloc !262
  %88 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %stopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool169.not = icmp eq i32 %89, 0
  br i1 %tobool169.not, label %if.then170, label %if.end166.if.end209_crit_edge

if.end166.if.end209_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.then170:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  %call172 = tail call fastcc i32 @i2c_imx_bus_busy(ptr noundef %i2c_imx, i32 noundef 0, i1 noundef zeroext %atomic)
  br label %if.end209

if.else:                                          ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 8
  %92 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hwdata.i, align 8
  %regshift.i381 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %regshift.i381 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %regshift.i381, align 4
  %shl.i382 = shl i32 2, %95
  %add.ptr.i383 = getelementptr i8, ptr %91, i32 %shl.i382
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i383) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %97 = or i8 %96, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 8
  %100 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hwdata.i, align 8
  %regshift.i386 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %regshift.i386 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %regshift.i386, align 4
  %shl.i387 = shl i32 2, %103
  %add.ptr.i388 = getelementptr i8, ptr %99, i32 %shl.i387
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i388, i8 %97) #8, !srcloc !262
  br label %if.end209

if.else178:                                       ; preds = %if.end132
  %sub181 = add nsw i32 %conv134, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0421, i32 %sub181)
  %cmp182 = icmp eq i32 %i.0421, %sub181
  br i1 %cmp182, label %do.body185, label %if.else178.if.end209_crit_edge

if.else178.if.end209_crit_edge:                   ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

do.body185:                                       ; preds = %if.else178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_read.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_read, %do.end204)) #8
          to label %if.then199 [label %do.end204], !srcloc !263

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_read.__UNIQUE_ID_ddebug312, ptr noundef %dev123, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.35) #8
  br label %do.end204

do.end204:                                        ; preds = %if.then199, %do.body185
  %104 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i, align 8
  %106 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hwdata.i, align 8
  %regshift.i391 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %regshift.i391 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %regshift.i391, align 4
  %shl.i392 = shl i32 2, %109
  %add.ptr.i393 = getelementptr i8, ptr %105, i32 %shl.i392
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i393) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %111 = or i8 %110, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i, align 8
  %114 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hwdata.i, align 8
  %regshift.i396 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %regshift.i396 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %regshift.i396, align 4
  %shl.i397 = shl i32 2, %117
  %add.ptr.i398 = getelementptr i8, ptr %113, i32 %shl.i397
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i398, i8 %111) #8, !srcloc !262
  br label %if.end209

if.end209:                                        ; preds = %do.end204, %if.else178.if.end209_crit_edge, %if.else, %if.then170, %if.end166.if.end209_crit_edge
  br i1 %or.cond319, label %if.else214, label %if.then213

if.then213:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %buf, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %len87.0, ptr %119, align 1
  br label %do.body219

if.else214:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i, align 8
  %123 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hwdata.i, align 8
  %regshift.i401 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %regshift.i401 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %regshift.i401, align 4
  %shl.i402 = shl i32 4, %126
  %add.ptr.i403 = getelementptr i8, ptr %122, i32 %shl.i402
  %127 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i403) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %128 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %buf, align 4
  %arrayidx217 = getelementptr i8, ptr %129, i32 %i.0421
  %130 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %127, ptr %arrayidx217, align 1
  br label %do.body219

do.body219:                                       ; preds = %if.else214, %if.then213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_read.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_read, %for.inc)) #8
          to label %if.then233 [label %for.inc], !srcloc !263

if.then233:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %buf, align 4
  %arrayidx237 = getelementptr i8, ptr %132, i32 %i.0421
  %133 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %134 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_read.__UNIQUE_ID_ddebug313, ptr noundef %dev123, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.35, i32 noundef %i.0421, i32 noundef %conv238) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then233, %do.body219
  %inc = add nuw nsw i32 %i.0421, 1
  %135 = ptrtoint ptr %len47 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %len47, align 4
  %conv84 = zext i16 %136 to i32
  %cmp85 = icmp ult i32 %inc, %conv84
  br i1 %cmp85, label %for.inc.for.body_crit_edge, label %for.inc.cleanup242_crit_edge

for.inc.cleanup242_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup242

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup242:                                       ; preds = %for.inc.cleanup242_crit_edge, %if.then96.cleanup242_crit_edge, %for.body.cleanup242_crit_edge, %if.then79, %for.cond.preheader.cleanup242_crit_edge, %i2c_imx_acked.exit.cleanup242_crit_edge, %i2c_imx_acked.exit.thread407, %do.end.cleanup242_crit_edge
  %retval.2 = phi i32 [ %call81, %if.then79 ], [ %call16, %do.end.cleanup242_crit_edge ], [ %retval.0.i346, %i2c_imx_acked.exit.cleanup242_crit_edge ], [ -6, %i2c_imx_acked.exit.thread407 ], [ 0, %for.cond.preheader.cleanup242_crit_edge ], [ 0, %for.inc.cleanup242_crit_edge ], [ -71, %if.then96.cleanup242_crit_edge ], [ %call89, %for.body.cleanup242_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_dma_write(ptr noundef %i2c_imx, ptr nocapture noundef readonly %msgs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %dma1 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 16
  %1 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma1, align 4
  %dev2 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %chan_using = getelementptr inbounds %struct.imx_i2c_dma, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %chan_using to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %chan_using, align 4
  %dma_transfer_dir = getelementptr inbounds %struct.imx_i2c_dma, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %dma_transfer_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %dma_transfer_dir, align 4
  %dma_data_dir = getelementptr inbounds %struct.imx_i2c_dma, ptr %2, i32 0, i32 7
  %7 = ptrtoint ptr %dma_data_dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %dma_data_dir, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %conv = zext i16 %9 to i32
  %sub = add nsw i32 %conv, -1
  %dma_len = getelementptr inbounds %struct.imx_i2c_dma, ptr %2, i32 0, i32 5
  %10 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %dma_len, align 4
  %call = tail call fastcc i32 @i2c_imx_dma_xfer(ptr noundef %i2c_imx, ptr noundef %msgs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %13 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwdata.i, align 8
  %regshift.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regshift.i, align 4
  %shl.i = shl i32 2, %16
  %add.ptr.i = getelementptr i8, ptr %12, i32 %shl.i
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %18 = or i8 %17, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 8
  %21 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwdata.i, align 8
  %regshift.i80 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %regshift.i80 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regshift.i80, align 4
  %shl.i81 = shl i32 2, %24
  %add.ptr.i82 = getelementptr i8, ptr %20, i32 %shl.i81
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i82, i8 %18) #8, !srcloc !262
  %25 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %msgs, align 4
  %conv.i = trunc i16 %26 to i8
  %shl.i83 = shl i8 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags.i, align 2
  %29 = trunc i16 %28 to i8
  %30 = and i8 %29, 1
  %or.i = or i8 %30, %shl.i83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 8
  %33 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwdata.i, align 8
  %regshift.i86 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %regshift.i86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %regshift.i86, align 4
  %shl.i87 = shl i32 4, %36
  %add.ptr.i88 = getelementptr i8, ptr %32, i32 %shl.i87
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i88, i8 %or.i) #8, !srcloc !262
  %37 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma1, align 4
  %cmd_complete = getelementptr inbounds %struct.imx_i2c_dma, ptr %38, i32 0, i32 3
  %call9 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.then11, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 8
  %41 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hwdata.i, align 8
  %regshift.i91112 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %regshift.i91112 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %regshift.i91112, align 4
  %shl.i92113 = shl i32 3, %44
  %add.ptr.i93114 = getelementptr i8, ptr %40, i32 %shl.i92113
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i93114) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %tobool17.not115 = icmp sgt i8 %45, -1
  br i1 %tobool17.not115, label %if.end19.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end19.lr.ph:                                   ; preds = %while.cond.preheader
  %add = add i32 %0, 100
  br label %if.end19

if.then11:                                        ; preds = %if.end
  %46 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chan_using, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 47
  %50 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.then11.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_terminate_async.exit.i:                 ; preds = %if.then11
  %call.i.i = tail call i32 %51(ptr noundef %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.61, i32 noundef 1169) #8
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %47, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 48
  %54 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %55, null
  br i1 %tobool.not.i1.i, label %if.end.i.cleanup_crit_edge, label %if.then.i2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %55(ptr noundef %47) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end32.if.end19_crit_edge, %if.end19.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub21 = sub i32 %add, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub21)
  %cmp22 = icmp slt i32 %sub21, 0
  br i1 %cmp22, label %do.body, label %if.end32

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_dma_write.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_dma_write, %cleanup)) #8
          to label %if.then30 [label %cleanup], !srcloc !263

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_dma_write.__UNIQUE_ID_ddebug301, ptr noundef %dev2, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.62) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  tail call void @schedule() #8
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 8
  %59 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hwdata.i, align 8
  %regshift.i91 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %regshift.i91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %regshift.i91, align 4
  %shl.i92 = shl i32 3, %62
  %add.ptr.i93 = getelementptr i8, ptr %58, i32 %shl.i92
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i93) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %tobool17.not = icmp sgt i8 %63, -1
  br i1 %tobool17.not, label %if.end32.if.end19_crit_edge, label %if.end32.while.end_crit_edge

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end32.if.end19_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 8
  %66 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hwdata.i, align 8
  %regshift.i96 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %regshift.i96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %regshift.i96, align 4
  %shl.i97 = shl i32 2, %69
  %add.ptr.i98 = getelementptr i8, ptr %65, i32 %shl.i97
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i98) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %71 = and i8 %70, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 8
  %74 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hwdata.i, align 8
  %regshift.i101 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %regshift.i101 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %regshift.i101, align 4
  %shl.i102 = shl i32 2, %77
  %add.ptr.i103 = getelementptr i8, ptr %73, i32 %shl.i102
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i103, i8 %71) #8, !srcloc !262
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %78 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buf, align 4
  %80 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %len, align 4
  %conv37 = zext i16 %81 to i32
  %sub38 = add nsw i32 %conv37, -1
  %arrayidx = getelementptr i8, ptr %79, i32 %sub38
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %84 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i, align 8
  %86 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hwdata.i, align 8
  %regshift.i106 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %regshift.i106 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %regshift.i106, align 4
  %shl.i107 = shl i32 4, %89
  %add.ptr.i108 = getelementptr i8, ptr %85, i32 %shl.i107
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i108, i8 %83) #8, !srcloc !262
  %call40 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %i2c_imx, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %while.end
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 8
  %92 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 3, %95
  %add.ptr.i.i = getelementptr i8, ptr %91, i32 %shl.i.i
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %97 = and i8 %96, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i109 = icmp eq i8 %97, 0
  br i1 %tobool.not.i109, label %do.body8.i, label %do.body.i

do.body.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_acked.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_dma_write, %cleanup)) #8
          to label %if.then6.i [label %cleanup], !srcloc !263

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_acked.__UNIQUE_ID_ddebug295, ptr noundef %dev2, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #8
  br label %cleanup

do.body8.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_acked.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_dma_write, %cleanup)) #8
          to label %if.then22.i [label %cleanup], !srcloc !263

if.then22.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_acked.__UNIQUE_ID_ddebug296, ptr noundef %dev2, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22.i, %do.body8.i, %if.then6.i, %do.body.i, %while.end.cleanup_crit_edge, %if.then30, %do.body, %if.then.i2.i, %if.end.i.cleanup_crit_edge, %dmaengine_terminate_async.exit.i.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -110, %if.then30 ], [ %call40, %while.end.cleanup_crit_edge ], [ -110, %if.then11.cleanup_crit_edge ], [ -110, %dmaengine_terminate_async.exit.i.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ], [ -110, %if.then.i2.i ], [ -6, %if.then6.i ], [ 0, %if.then22.i ], [ -6, %do.body.i ], [ 0, %do.body8.i ], [ -110, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_write(ptr noundef %i2c_imx, ptr nocapture noundef readonly %msgs, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_write.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_write, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !263

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  %0 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msgs, align 4
  %conv.i = zext i16 %1 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 2
  %4 = and i16 %3, 1
  %5 = zext i16 %4 to i32
  %shl.i.masked = and i32 %shl.i, 254
  %conv = or i32 %shl.i.masked, %5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_write.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.63, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msgs, align 4
  %conv.i103 = trunc i16 %7 to i8
  %shl.i104 = shl i8 %conv.i103, 1
  %flags.i105 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i105 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i105, align 2
  %10 = trunc i16 %9 to i8
  %11 = and i8 %10, 1
  %or.i106 = or i8 %11, %shl.i104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %14 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwdata.i, align 8
  %regshift.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regshift.i, align 4
  %shl.i107 = shl i32 4, %17
  %add.ptr.i = getelementptr i8, ptr %13, i32 %shl.i107
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %or.i106) #8, !srcloc !262
  %call9 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %i2c_imx, i1 noundef zeroext %atomic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  %20 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 3, %23
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %shl.i.i
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %do.body8.i, label %do.body.i

do.body.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_acked.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_write, %i2c_imx_acked.exit)) #8
          to label %i2c_imx_acked.exit.thread131 [label %i2c_imx_acked.exit], !srcloc !263

i2c_imx_acked.exit.thread131:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  br label %cleanup.sink.split

do.body8.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_acked.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_write, %i2c_imx_acked.exit)) #8
          to label %i2c_imx_acked.exit.thread [label %i2c_imx_acked.exit], !srcloc !263

i2c_imx_acked.exit.thread:                        ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev24.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_acked.__UNIQUE_ID_ddebug296, ptr noundef %dev24.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #8
  br label %do.body17

i2c_imx_acked.exit:                               ; preds = %do.body8.i, %do.body.i
  %retval.0.i108 = phi i32 [ -6, %do.body.i ], [ 0, %do.body8.i ]
  br i1 %tobool.not.i, label %i2c_imx_acked.exit.do.body17_crit_edge, label %i2c_imx_acked.exit.cleanup_crit_edge

i2c_imx_acked.exit.cleanup_crit_edge:             ; preds = %i2c_imx_acked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

i2c_imx_acked.exit.do.body17_crit_edge:           ; preds = %i2c_imx_acked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

do.body17:                                        ; preds = %i2c_imx_acked.exit.do.body17_crit_edge, %i2c_imx_acked.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_write.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_write, %do.end36)) #8
          to label %if.then31 [label %do.end36], !srcloc !263

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_write.__UNIQUE_ID_ddebug305, ptr noundef %dev33, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %do.body17
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp142.not = icmp eq i16 %27, 0
  br i1 %cmp142.not, label %do.end36.cleanup_crit_edge, label %do.body39.lr.ph

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body39.lr.ph:                                  ; preds = %do.end36
  %dev55 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  br label %do.body39

do.body39:                                        ; preds = %for.inc.do.body39_crit_edge, %do.body39.lr.ph
  %i.0143 = phi i32 [ 0, %do.body39.lr.ph ], [ %inc, %for.inc.do.body39_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_write.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_write, %do.end59)) #8
          to label %if.then53 [label %do.end59], !srcloc !263

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %29, i32 %i.0143
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv56 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_write.__UNIQUE_ID_ddebug306, ptr noundef %dev55, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef %i.0143, i32 noundef %conv56) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then53, %do.body39
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf, align 4
  %arrayidx61 = getelementptr i8, ptr %33, i32 %i.0143
  %34 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx61, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 8
  %38 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hwdata.i, align 8
  %regshift.i111 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %regshift.i111 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regshift.i111, align 4
  %shl.i112 = shl i32 4, %41
  %add.ptr.i113 = getelementptr i8, ptr %37, i32 %shl.i112
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i113, i8 %35) #8, !srcloc !262
  %call64 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %i2c_imx, i1 noundef zeroext %atomic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %do.end59.cleanup_crit_edge

do.end59.cleanup_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %do.end59
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 8
  %44 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i116 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %regshift.i.i116 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %regshift.i.i116, align 4
  %shl.i.i117 = shl i32 3, %47
  %add.ptr.i.i118 = getelementptr i8, ptr %43, i32 %shl.i.i117
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i118) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i119 = icmp eq i8 %49, 0
  br i1 %tobool.not.i119, label %do.body8.i123, label %do.body.i120

do.body.i120:                                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_acked.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_write, %i2c_imx_acked.exit127)) #8
          to label %cleanup.sink.split [label %i2c_imx_acked.exit127], !srcloc !263

do.body8.i123:                                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_acked.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_write, %i2c_imx_acked.exit127)) #8
          to label %i2c_imx_acked.exit127.thread [label %i2c_imx_acked.exit127], !srcloc !263

i2c_imx_acked.exit127.thread:                     ; preds = %do.body8.i123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_acked.__UNIQUE_ID_ddebug296, ptr noundef %dev55, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #8
  br label %for.inc

i2c_imx_acked.exit127:                            ; preds = %do.body8.i123, %do.body.i120
  %retval.0.i126 = phi i32 [ -6, %do.body.i120 ], [ 0, %do.body8.i123 ]
  br i1 %tobool.not.i119, label %i2c_imx_acked.exit127.for.inc_crit_edge, label %i2c_imx_acked.exit127.cleanup_crit_edge

i2c_imx_acked.exit127.cleanup_crit_edge:          ; preds = %i2c_imx_acked.exit127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

i2c_imx_acked.exit127.for.inc_crit_edge:          ; preds = %i2c_imx_acked.exit127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %i2c_imx_acked.exit127.for.inc_crit_edge, %i2c_imx_acked.exit127.thread
  %inc = add nuw nsw i32 %i.0143, 1
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %len, align 4
  %conv37 = zext i16 %51 to i32
  %cmp = icmp ult i32 %inc, %conv37
  br i1 %cmp, label %for.inc.do.body39_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.do.body39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39

cleanup.sink.split:                               ; preds = %do.body.i120, %i2c_imx_acked.exit.thread131
  %dev55.sink = phi ptr [ %dev.i, %i2c_imx_acked.exit.thread131 ], [ %dev55, %do.body.i120 ]
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_acked.__UNIQUE_ID_ddebug295, ptr noundef %dev55.sink, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %i2c_imx_acked.exit127.cleanup_crit_edge, %do.end59.cleanup_crit_edge, %do.end36.cleanup_crit_edge, %i2c_imx_acked.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end.cleanup_crit_edge ], [ %retval.0.i108, %i2c_imx_acked.exit.cleanup_crit_edge ], [ 0, %do.end36.cleanup_crit_edge ], [ -6, %cleanup.sink.split ], [ %call64, %do.end59.cleanup_crit_edge ], [ %retval.0.i126, %i2c_imx_acked.exit127.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_imx_slave_init(ptr nocapture noundef readonly %i2c_imx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 17
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %conv = trunc i16 %3 to i8
  %shl = shl i8 %conv, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %shl) #8, !srcloc !262
  %6 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwdata.i, align 8
  %i2cr_ien_opcode.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %i2cr_ien_opcode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2cr_ien_opcode.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %10 = trunc i32 %9 to i8
  %conv.i.i = xor i8 %10, -128
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %13 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 2, %16
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i.i) #8, !srcloc !262
  %17 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwdata.i, align 8
  %i2sr_clr_opcode.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %i2sr_clr_opcode.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i2sr_clr_opcode.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %21 = trunc i32 %20 to i8
  %conv.i.i.i = xor i8 %21, -19
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 8
  %24 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwdata.i, align 8
  %regshift.i.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %regshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regshift.i.i.i, align 4
  %shl.i.i.i = shl i32 3, %27
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %shl.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv.i.i.i) #8, !srcloc !262
  %28 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hwdata.i, align 8
  %i2cr_ien_opcode = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %i2cr_ien_opcode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i2cr_ien_opcode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %conv.i10 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 8
  %34 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwdata.i, align 8
  %regshift.i13 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %regshift.i13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regshift.i13, align 4
  %shl.i = shl i32 2, %37
  %add.ptr.i = getelementptr i8, ptr %33, i32 %shl.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i10) #8, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %conv.i14 = or i8 %conv.i10, 64
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 8
  %40 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hwdata.i, align 8
  %regshift.i17 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regshift.i17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %regshift.i17, align 4
  %shl.i18 = shl i32 2, %43
  %add.ptr.i19 = getelementptr i8, ptr %39, i32 %shl.i18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19, i8 %conv.i14) #8, !srcloc !262
  %44 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hwdata.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.i.not.i = icmp eq i32 %47, 2
  br i1 %cmp.i.not.i, label %if.then.i, label %entry.i2c_imx_enable_bus_idle.exit_crit_edge

entry.i2c_imx_enable_bus_idle.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_imx_enable_bus_idle.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 8
  %regshift.i.i21 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %regshift.i.i21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %regshift.i.i21, align 4
  %shl.i.i22 = shl i32 5, %51
  %add.ptr.i.i23 = getelementptr i8, ptr %49, i32 %shl.i.i22
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i23) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %53 = or i8 %52, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 8
  %56 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hwdata.i, align 8
  %regshift.i8.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %regshift.i8.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %regshift.i8.i, align 4
  %shl.i9.i = shl i32 5, %59
  %add.ptr.i10.i = getelementptr i8, ptr %55, i32 %shl.i9.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10.i, i8 %53) #8, !srcloc !262
  br label %i2c_imx_enable_bus_idle.exit

i2c_imx_enable_bus_idle.exit:                     ; preds = %if.then.i, %entry.i2c_imx_enable_bus_idle.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_trx_complete(ptr noundef %i2c_imx, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %atomic, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %hwdata = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %2 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwdata, align 8
  %regshift = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regshift, align 4
  %shl = shl i32 3, %5
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1100000
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  %conv210 = zext i8 %6 to i32
  %and211 = and i32 %conv210, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool4.not212 = icmp eq i32 %and211, 0
  br i1 %tobool4.not212, label %if.then.land.lhs.true_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call7 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call7, %add.i
  br i1 %cmp3.i, label %if.then10, label %cond.false

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  %conv16 = zext i8 %7 to i32
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #8
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 2
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then10, %if.then.for.end_crit_edge
  %regval.0 = phi i32 [ %conv16, %if.then10 ], [ %conv210, %if.then.for.end_crit_edge ], [ %conv, %cond.false.for.end_crit_edge ]
  %i2csr = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 5
  %10 = ptrtoint ptr %i2csr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %regval.0, ptr %i2csr, align 8
  %11 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwdata, align 8
  %i2sr_clr_opcode.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %i2sr_clr_opcode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i2sr_clr_opcode.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %15 = trunc i32 %14 to i8
  %conv.i.i = xor i8 %15, -19
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %18 = ptrtoint ptr %hwdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwdata, align 8
  %regshift.i.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regshift.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regshift.i.i, align 4
  %shl.i.i = shl i32 3, %21
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %shl.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i.i) #8, !srcloc !262
  br label %if.end79

if.else:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 514) #8
  %i2csr32 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 5
  %22 = ptrtoint ptr %i2csr32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i2csr32, align 8
  %and33 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then47, label %if.else.if.end79_crit_edge

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then47:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %24 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %queue = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 4
  %call50205 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %25 = ptrtoint ptr %i2csr32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i2csr32, align 8
  %and53206 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53206)
  %tobool54.not207.not = icmp eq i32 %and53206, 0
  br i1 %tobool54.not207.not, label %if.then47.cleanup_crit_edge, label %if.then47.for.end74_crit_edge

if.then47.for.end74_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end74

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then47.cleanup_crit_edge
  %__ret48.1209 = phi i32 [ %__ret48.1, %cleanup.cleanup_crit_edge ], [ 10, %if.then47.cleanup_crit_edge ]
  %call73 = call i32 @schedule_timeout(i32 noundef %__ret48.1209) #8
  %call50 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %27 = ptrtoint ptr %i2csr32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i2csr32, align 8
  %and53 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool59.not = icmp eq i32 %call73, 0
  %spec.store.select153 = select i1 %tobool59.not, i32 1, i32 %call73
  %__ret48.1 = select i1 %tobool54.not, i32 %call73, i32 %spec.store.select153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret48.1)
  %tobool66.not = icmp eq i32 %__ret48.1, 0
  %not.tobool54.not = xor i1 %tobool54.not, true
  %29 = select i1 %not.tobool54.not, i1 true, i1 %tobool66.not
  br i1 %29, label %cleanup.for.end74_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end74_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end74

for.end74:                                        ; preds = %cleanup.for.end74_crit_edge, %if.then47.for.end74_crit_edge
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end79

if.end79:                                         ; preds = %for.end74, %if.else.if.end79_crit_edge, %for.end
  %i2csr80 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 5
  %30 = ptrtoint ptr %i2csr80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i2csr80, align 8
  %and81 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body88, label %if.end105, !prof !271

do.body88:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_trx_complete.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_trx_complete, %return)) #8
          to label %if.then101 [label %return], !srcloc !263

if.then101:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_trx_complete.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43) #8
  br label %return

if.end105:                                        ; preds = %if.end79
  %and107 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %do.body132, label %do.body110

do.body110:                                       ; preds = %if.end105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_trx_complete.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_trx_complete, %do.end129)) #8
          to label %if.then124 [label %do.end129], !srcloc !263

if.then124:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  %dev126 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_trx_complete.__UNIQUE_ID_ddebug293, ptr noundef %dev126, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #8
  br label %do.end129

do.end129:                                        ; preds = %if.then124, %do.body110
  %hwdata.i191 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %32 = ptrtoint ptr %hwdata.i191 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hwdata.i191, align 8
  %i2sr_clr_opcode.i192 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %i2sr_clr_opcode.i192 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i2sr_clr_opcode.i192, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  call void @arm_heavy_mb() #8
  %36 = trunc i32 %35 to i8
  %conv.i.i193 = xor i8 %36, -17
  %base.i.i194 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %37 = ptrtoint ptr %base.i.i194 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i194, align 8
  %39 = ptrtoint ptr %hwdata.i191 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hwdata.i191, align 8
  %regshift.i.i195 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %regshift.i.i195 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %regshift.i.i195, align 4
  %shl.i.i196 = shl i32 3, %42
  %add.ptr.i.i197 = getelementptr i8, ptr %38, i32 %shl.i.i196
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i197, i8 %conv.i.i193) #8, !srcloc !262
  %43 = ptrtoint ptr %i2csr80 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %i2csr80, align 8
  br label %return

do.body132:                                       ; preds = %if.end105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_trx_complete.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_trx_complete, %do.end151)) #8
          to label %if.then146 [label %do.end151], !srcloc !263

if.then146:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #10
  %dev148 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_trx_complete.__UNIQUE_ID_ddebug294, ptr noundef %dev148, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43) #8
  br label %do.end151

do.end151:                                        ; preds = %if.then146, %do.body132
  %44 = ptrtoint ptr %i2csr80 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %i2csr80, align 8
  br label %return

return:                                           ; preds = %do.end151, %do.end129, %if.then101, %do.body88
  %retval.0 = phi i32 [ -11, %do.end129 ], [ 0, %do.end151 ], [ -110, %if.then101 ], [ -110, %do.body88 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_dma_read(ptr noundef %i2c_imx, ptr nocapture noundef readonly %msgs, i1 noundef zeroext %is_lastmsg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %dma1 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 16
  %1 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma1, align 4
  %dev2 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  %chan_rx = getelementptr inbounds %struct.imx_i2c_dma, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan_rx, align 4
  %chan_using = getelementptr inbounds %struct.imx_i2c_dma, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %chan_using to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %chan_using, align 4
  %dma_transfer_dir = getelementptr inbounds %struct.imx_i2c_dma, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %dma_transfer_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %dma_transfer_dir, align 4
  %dma_data_dir = getelementptr inbounds %struct.imx_i2c_dma, ptr %2, i32 0, i32 7
  %7 = ptrtoint ptr %dma_data_dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %dma_data_dir, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %conv = zext i16 %9 to i32
  %sub = add nsw i32 %conv, -2
  %dma_len = getelementptr inbounds %struct.imx_i2c_dma, ptr %2, i32 0, i32 5
  %10 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %dma_len, align 4
  %call = tail call fastcc i32 @i2c_imx_dma_xfer(ptr noundef %i2c_imx, ptr noundef %msgs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma1, align 4
  %cmd_complete = getelementptr inbounds %struct.imx_i2c_dma, ptr %12, i32 0, i32 3
  %call5 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then7, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %base.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 3
  %hwdata.i = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 11
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %15 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwdata.i, align 8
  %regshift.i190 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regshift.i190 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regshift.i190, align 4
  %shl.i191 = shl i32 3, %18
  %add.ptr.i192 = getelementptr i8, ptr %14, i32 %shl.i191
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i192) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool13.not193 = icmp sgt i8 %19, -1
  br i1 %tobool13.not193, label %if.end15.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end15.lr.ph:                                   ; preds = %while.cond.preheader
  %add = add i32 %0, 100
  br label %if.end15

if.then7:                                         ; preds = %if.end
  %20 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan_using, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 47
  %24 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.then7.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_terminate_async.exit.i:                 ; preds = %if.then7
  %call.i.i = tail call i32 %25(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.61, i32 noundef 1169) #8
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 48
  %28 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %29, null
  br i1 %tobool.not.i1.i, label %if.end.i.cleanup_crit_edge, label %if.then.i2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %29(ptr noundef %21) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end29.if.end15_crit_edge, %if.end15.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub17 = sub i32 %add, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17)
  %cmp18 = icmp slt i32 %sub17, 0
  br i1 %cmp18, label %do.body, label %if.end29

do.body:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_dma_read.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_dma_read, %cleanup)) #8
          to label %if.then27 [label %cleanup], !srcloc !263

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_dma_read.__UNIQUE_ID_ddebug302, ptr noundef %dev2, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.50) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  tail call void @schedule() #8
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 8
  %33 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwdata.i, align 8
  %regshift.i = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %regshift.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %regshift.i, align 4
  %shl.i = shl i32 3, %36
  %add.ptr.i = getelementptr i8, ptr %32, i32 %shl.i
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %tobool13.not = icmp sgt i8 %37, -1
  br i1 %tobool13.not, label %if.end29.if.end15_crit_edge, label %if.end29.while.end_crit_edge

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end29.if.end15_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

while.end:                                        ; preds = %if.end29.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 8
  %40 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hwdata.i, align 8
  %regshift.i136 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regshift.i136 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %regshift.i136, align 4
  %shl.i137 = shl i32 2, %43
  %add.ptr.i138 = getelementptr i8, ptr %39, i32 %shl.i137
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i138) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %45 = and i8 %44, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 8
  %48 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hwdata.i, align 8
  %regshift.i141 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %regshift.i141 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %regshift.i141, align 4
  %shl.i142 = shl i32 2, %51
  %add.ptr.i143 = getelementptr i8, ptr %47, i32 %shl.i142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i143, i8 %45) #8, !srcloc !262
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 8
  %54 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hwdata.i, align 8
  %regshift.i146 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %regshift.i146 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %regshift.i146, align 4
  %shl.i147 = shl i32 2, %57
  %add.ptr.i148 = getelementptr i8, ptr %53, i32 %shl.i147
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i148) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %59 = or i8 %58, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 8
  %62 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hwdata.i, align 8
  %regshift.i151 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %regshift.i151 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %regshift.i151, align 4
  %shl.i152 = shl i32 2, %65
  %add.ptr.i153 = getelementptr i8, ptr %61, i32 %shl.i152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i153, i8 %59) #8, !srcloc !262
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 8
  %68 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hwdata.i, align 8
  %regshift.i156 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %regshift.i156 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %regshift.i156, align 4
  %shl.i157 = shl i32 4, %71
  %add.ptr.i158 = getelementptr i8, ptr %67, i32 %shl.i157
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i158) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %73 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf, align 4
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %len, align 4
  %conv37 = zext i16 %76 to i32
  %sub38 = add nsw i32 %conv37, -2
  %arrayidx = getelementptr i8, ptr %74, i32 %sub38
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %72, ptr %arrayidx, align 1
  %call39 = tail call fastcc i32 @i2c_imx_trx_complete(ptr noundef %i2c_imx, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %while.end
  br i1 %is_lastmsg, label %do.body45, label %if.else

do.body45:                                        ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_imx_dma_read.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_imx_dma_read, %do.end62)) #8
          to label %if.then59 [label %do.end62], !srcloc !263

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_imx_dma_read.__UNIQUE_ID_ddebug303, ptr noundef %dev2, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.50) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body45
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 8
  %80 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hwdata.i, align 8
  %regshift.i161 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %regshift.i161 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %regshift.i161, align 4
  %shl.i162 = shl i32 2, %83
  %add.ptr.i163 = getelementptr i8, ptr %79, i32 %shl.i162
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i163) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %85 = and i8 %84, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool66.not = icmp eq i8 %85, 0
  br i1 %tobool66.not, label %if.then67, label %do.end62.if.end68_crit_edge

do.end62.if.end68_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then67:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  %stopped = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 7
  %86 = ptrtoint ptr %stopped to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %stopped, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %do.end62.if.end68_crit_edge
  %and69 = and i8 %84, -49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 8
  %89 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hwdata.i, align 8
  %regshift.i166 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %regshift.i166 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %regshift.i166, align 4
  %shl.i167 = shl i32 2, %92
  %add.ptr.i168 = getelementptr i8, ptr %88, i32 %shl.i167
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i168, i8 %and69) #8, !srcloc !262
  %stopped70 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 7
  %93 = ptrtoint ptr %stopped70 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %stopped70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool71.not = icmp eq i32 %94, 0
  br i1 %tobool71.not, label %if.then72, label %if.end68.if.end78_crit_edge

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = tail call fastcc i32 @i2c_imx_bus_busy(ptr noundef %i2c_imx, i32 noundef 0, i1 noundef zeroext false)
  br label %if.end78

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i, align 8
  %97 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hwdata.i, align 8
  %regshift.i171 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %regshift.i171 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %regshift.i171, align 4
  %shl.i172 = shl i32 2, %100
  %add.ptr.i173 = getelementptr i8, ptr %96, i32 %shl.i172
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i173) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %102 = or i8 %101, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 8
  %105 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hwdata.i, align 8
  %regshift.i176 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %regshift.i176 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %regshift.i176, align 4
  %shl.i177 = shl i32 2, %108
  %add.ptr.i178 = getelementptr i8, ptr %104, i32 %shl.i177
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i178, i8 %102) #8, !srcloc !262
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then72, %if.end68.if.end78_crit_edge
  %109 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i, align 8
  %111 = ptrtoint ptr %hwdata.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hwdata.i, align 8
  %regshift.i181 = getelementptr inbounds %struct.imx_i2c_hwdata, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %regshift.i181 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %regshift.i181, align 4
  %shl.i182 = shl i32 4, %114
  %add.ptr.i183 = getelementptr i8, ptr %110, i32 %shl.i182
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i183) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %116 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %buf, align 4
  %118 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %len, align 4
  %conv82 = zext i16 %119 to i32
  %sub83 = add nsw i32 %conv82, -1
  %arrayidx84 = getelementptr i8, ptr %117, i32 %sub83
  %120 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %115, ptr %arrayidx84, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %while.end.cleanup_crit_edge, %if.then27, %do.body, %if.then.i2.i, %if.end.i.cleanup_crit_edge, %dmaengine_terminate_async.exit.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end78 ], [ %call, %entry.cleanup_crit_edge ], [ -110, %if.then27 ], [ %call39, %while.end.cleanup_crit_edge ], [ -110, %if.then7.cleanup_crit_edge ], [ -110, %dmaengine_terminate_async.exit.i.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ], [ -110, %if.then.i2.i ], [ -110, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_imx_dma_xfer(ptr noundef %i2c_imx, ptr nocapture noundef readonly %msgs) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.imx_i2c_struct, ptr %i2c_imx, i32 0, i32 16
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %dev2 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_imx, i32 0, i32 9
  %chan_using = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_using, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev3 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %dma_len = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_len, align 4
  %dma_data_dir = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %dma_data_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_data_dir, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %9) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !272

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %7) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %dma_buf63 = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %dma_buf63 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %dma_buf63, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef -1) #8
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef %9, i32 noundef %11) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %9 to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %11, i32 noundef %13, i32 noundef 0) #8
  %dma_buf = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %dma_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call41.i, ptr %dma_buf, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.51) #11
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %22 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan_using, align 4
  %24 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_buf, align 4
  %26 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_len, align 4
  %dma_transfer_dir = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %dma_transfer_dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_transfer_dir, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #8
  %30 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %31 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %32 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #8
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %25, ptr %30, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %27, ptr %31, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %35 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %23, align 4
  %tobool1.not.i = icmp eq ptr %36, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 39
  %37 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %38, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  br label %do.end14

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i56 = call ptr %38(ptr noundef nonnull %23, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef %29, i32 noundef 3, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  %tobool10.not = icmp eq ptr %call.i56, null
  br i1 %tobool10.not, label %dmaengine_prep_slave_single.exit.do.end14_crit_edge, label %if.end15

dmaengine_prep_slave_single.exit.do.end14_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.end14:                                         ; preds = %dmaengine_prep_slave_single.exit.do.end14_crit_edge, %dmaengine_prep_slave_single.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.54) #11
  br label %err_desc

if.end15:                                         ; preds = %dmaengine_prep_slave_single.exit
  %cmd_complete = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %cmd_complete, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i56, i32 0, i32 6
  %40 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @i2c_imx_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i56, i32 0, i32 8
  %41 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %i2c_imx, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i56, i32 0, i32 4
  %42 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_submit.i, align 4
  %call.i58 = call i32 %43(ptr noundef nonnull %call.i56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i58)
  %tobool18.not = icmp sgt i32 %call.i58, -1
  br i1 %tobool18.not, label %if.end23, label %do.end22

do.end22:                                         ; preds = %if.end15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.57) #11
  %44 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan_using, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 47
  %48 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i59 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i59, label %do.end22.err_desc_crit_edge, label %dmaengine_terminate_async.exit.i

do.end22.err_desc_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_desc

dmaengine_terminate_async.exit.i:                 ; preds = %do.end22
  %call.i.i = call i32 %49(ptr noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i60 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i60, label %if.end.i61, label %dmaengine_terminate_async.exit.i.err_desc_crit_edge

dmaengine_terminate_async.exit.i.err_desc_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_desc

if.end.i61:                                       ; preds = %dmaengine_terminate_async.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.61, i32 noundef 1169) #8
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 48
  %52 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %53, null
  br i1 %tobool.not.i1.i, label %if.end.i61.err_desc_crit_edge, label %if.then.i2.i

if.end.i61.err_desc_crit_edge:                    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_desc

if.then.i2.i:                                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #10
  call void %53(ptr noundef %45) #8
  br label %err_desc

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chan_using, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 50
  %58 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_issue_pending.i, align 4
  call void %59(ptr noundef %55) #8
  br label %cleanup

err_desc:                                         ; preds = %if.then.i2.i, %if.end.i61.err_desc_crit_edge, %dmaengine_terminate_async.exit.i.err_desc_crit_edge, %do.end22.err_desc_crit_edge, %do.end14
  %60 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_buf, align 4
  %62 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_len, align 4
  %64 = ptrtoint ptr %dma_data_dir to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_data_dir, align 4
  call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_desc, %if.end23, %do.end
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %err_desc ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_imx_dma_callback(ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.imx_i2c_struct, ptr %arg, i32 0, i32 16
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %chan_using = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chan_using to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_using, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dma_buf = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_buf, align 4
  %dma_len = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_len, align 4
  %dma_data_dir = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %dma_data_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_data_dir, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0) #8
  %cmd_complete = getelementptr inbounds %struct.imx_i2c_dma, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %cmd_complete) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_imx_prepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pinctrl = getelementptr inbounds %struct.imx_i2c_struct, ptr %adap, i32 0, i32 13
  %0 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pinctrl, align 8
  %pinctrl_pins_gpio = getelementptr inbounds %struct.imx_i2c_struct, ptr %adap, i32 0, i32 15
  %2 = ptrtoint ptr %pinctrl_pins_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinctrl_pins_gpio, align 8
  %call = tail call i32 @pinctrl_select_state(ptr noundef %1, ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_imx_unprepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pinctrl = getelementptr inbounds %struct.imx_i2c_struct, ptr %adap, i32 0, i32 13
  %0 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pinctrl, align 8
  %pinctrl_pins_default = getelementptr inbounds %struct.imx_i2c_struct, ptr %adap, i32 0, i32 14
  %2 = ptrtoint ptr %pinctrl_pins_default to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinctrl_pins_default, align 4
  %call = tail call i32 @pinctrl_select_state(ptr noundef %1, ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_imx_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.imx_i2c_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call1) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !181, !182, !184, !186, !188, !190, !192, !193, !195, !196, !197, !198, !200, !202, !203, !204, !205, !207, !208, !209, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !228, !229, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !249, !250}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @__initcall__kmod_i2c_imx__325_1615_i2c_adap_imx_init4, !1, !"__initcall__kmod_i2c_imx__325_1615_i2c_adap_imx_init4", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1615, i32 1}
!2 = !{ptr @__exitcall_i2c_adap_imx_exit, !3, !"__exitcall_i2c_adap_imx_exit", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1621, i32 1}
!4 = !{ptr @__UNIQUE_ID_file326, !5, !"__UNIQUE_ID_file326", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1623, i32 1}
!6 = !{ptr @__UNIQUE_ID_license327, !5, !"__UNIQUE_ID_license327", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author328, !8, !"__UNIQUE_ID_author328", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1624, i32 1}
!9 = !{ptr @__UNIQUE_ID_description329, !10, !"__UNIQUE_ID_description329", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1625, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias330, !12, !"__UNIQUE_ID_alias330", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1626, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1603, i32 11}
!15 = !{ptr @i2c_imx_driver, !16, !"i2c_imx_driver", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1599, i32 31}
!17 = !{ptr @i2c_imx_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1429, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1454, i32 10}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1458, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @i2c_imx_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @i2c_imx_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @i2c_imx_probe.__key.8, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1463, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1484, i32 3}
!35 = !{ptr @i2c_imx_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @i2c_imx_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1491, i32 8}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1514, i32 2}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @i2c_imx_probe.__UNIQUE_ID_ddebug321, !40, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1515, i32 2}
!45 = !{ptr @i2c_imx_probe.__UNIQUE_ID_ddebug322, !44, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1516, i32 2}
!48 = !{ptr @i2c_imx_probe.__UNIQUE_ID_ddebug323, !47, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1518, i32 2}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @i2c_imx_probe._entry.18, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @i2c_imx_probe._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 737, i32 4}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @i2c_imx_slave_handle.__UNIQUE_ID_ddebug299, !55, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 748, i32 4}
!60 = !{ptr @i2c_imx_slave_handle.__UNIQUE_ID_ddebug300, !59, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!61 = !{ptr @i2c_imx_algo, !62, !"i2c_imx_algo", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1397, i32 35}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1235, i32 4}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @i2c_imx_xfer_common.__UNIQUE_ID_ddebug314, !64, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1244, i32 3}
!69 = !{ptr @i2c_imx_xfer_common.__UNIQUE_ID_ddebug315, !68, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1249, i32 3}
!72 = !{ptr @i2c_imx_xfer_common.__UNIQUE_ID_ddebug316, !71, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1256, i32 3}
!75 = !{ptr @i2c_imx_xfer_common.__UNIQUE_ID_ddebug317, !74, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1281, i32 2}
!78 = !{ptr @i2c_imx_xfer_common.__UNIQUE_ID_ddebug318, !77, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!79 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 481, i32 4}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @i2c_imx_bus_busy.__UNIQUE_ID_ddebug291, !82, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1104, i32 2}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @i2c_imx_read.__UNIQUE_ID_ddebug307, !86, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1117, i32 2}
!91 = !{ptr @i2c_imx_read.__UNIQUE_ID_ddebug308, !90, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1134, i32 2}
!94 = !{ptr @i2c_imx_read.__UNIQUE_ID_ddebug309, !93, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1155, i32 4}
!97 = !{ptr @i2c_imx_read.__UNIQUE_ID_ddebug310, !96, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1166, i32 5}
!100 = !{ptr @i2c_imx_read.__UNIQUE_ID_ddebug311, !99, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1188, i32 4}
!103 = !{ptr @i2c_imx_read.__UNIQUE_ID_ddebug312, !102, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1198, i32 3}
!106 = !{ptr @i2c_imx_read.__UNIQUE_ID_ddebug313, !105, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 518, i32 3}
!109 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @i2c_imx_trx_complete.__UNIQUE_ID_ddebug292, !108, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 524, i32 3}
!113 = !{ptr @i2c_imx_trx_complete.__UNIQUE_ID_ddebug293, !112, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 531, i32 2}
!116 = !{ptr @i2c_imx_trx_complete.__UNIQUE_ID_ddebug294, !115, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 539, i32 3}
!119 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @i2c_imx_acked.__UNIQUE_ID_ddebug295, !118, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 543, i32 2}
!123 = !{ptr @i2c_imx_acked.__UNIQUE_ID_ddebug296, !122, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1011, i32 4}
!126 = !{ptr @i2c_imx_dma_read.__UNIQUE_ID_ddebug302, !125, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!127 = !{ptr @i2c_imx_dma_read.__UNIQUE_ID_ddebug303, !128, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!128 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1037, i32 3}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 410, i32 3}
!131 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @i2c_imx_dma_xfer._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @i2c_imx_dma_xfer._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 418, i32 3}
!136 = !{ptr @i2c_imx_dma_xfer._entry.53, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @i2c_imx_dma_xfer._entry_ptr.55, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 426, i32 3}
!140 = !{ptr @i2c_imx_dma_xfer._entry.56, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @i2c_imx_dma_xfer._entry_ptr.58, !139, !"_entry_ptr", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!144 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 956, i32 4}
!150 = !{ptr @i2c_imx_dma_write.__UNIQUE_ID_ddebug301, !149, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1067, i32 2}
!153 = !{ptr @i2c_imx_write.__UNIQUE_ID_ddebug304, !152, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1078, i32 2}
!156 = !{ptr @i2c_imx_write.__UNIQUE_ID_ddebug305, !155, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1082, i32 3}
!159 = !{ptr @i2c_imx_write.__UNIQUE_ID_ddebug306, !158, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 841, i32 3}
!162 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @i2c_imx_reg_slave._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @i2c_imx_reg_slave._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 868, i32 3}
!167 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @i2c_imx_unreg_slave._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @i2c_imx_unreg_slave._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 582, i32 2}
!172 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @i2c_imx_set_clk.__UNIQUE_ID_ddebug297, !171, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 584, i32 2}
!176 = !{ptr @i2c_imx_set_clk.__UNIQUE_ID_ddebug298, !175, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1358, i32 3}
!179 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @i2c_imx_init_recovery_info._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @i2c_imx_init_recovery_info._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1363, i32 4}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1365, i32 4}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1366, i32 48}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1367, i32 48}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1376, i32 3}
!192 = !{ptr @i2c_imx_init_recovery_info.__UNIQUE_ID_ddebug319, !191, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!193 = !{ptr @.str.80, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1380, i32 2}
!195 = !{ptr @i2c_imx_init_recovery_info.__UNIQUE_ID_ddebug320, !194, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!196 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 336, i32 39}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 340, i32 4}
!202 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @i2c_imx_dma_request._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @i2c_imx_dma_request._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 351, i32 3}
!207 = !{ptr @i2c_imx_dma_request._entry.86, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @i2c_imx_dma_request._entry_ptr.88, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 355, i32 39}
!211 = !{ptr @.str.91, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 359, i32 4}
!213 = !{ptr @i2c_imx_dma_request._entry.90, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @i2c_imx_dma_request._entry_ptr.92, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 370, i32 3}
!217 = !{ptr @i2c_imx_dma_request._entry.93, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @i2c_imx_dma_request._entry_ptr.95, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 376, i32 2}
!221 = !{ptr @i2c_imx_dma_request._entry.96, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @i2c_imx_dma_request._entry_ptr.98, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @init_completion.__key, !224, !"__key", i1 false, i1 false}
!224 = !{!"../include/linux/completion.h", i32 87, i32 2}
!225 = !{ptr @.str.99, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.100, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1549, i32 2}
!228 = !{ptr @.str.101, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @i2c_imx_remove.__UNIQUE_ID_ddebug324, !227, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!230 = !{ptr @i2c_imx_dt_ids, !231, !"i2c_imx_dt_ids", i1 false, i1 false}
!231 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 266, i32 34}
!232 = !{ptr @imx1_i2c_hwdata, !233, !"imx1_i2c_hwdata", i1 false, i1 false}
!233 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 223, i32 36}
!234 = !{ptr @imx_i2c_clk_div, !235, !"imx_i2c_clk_div", i1 false, i1 false}
!235 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 134, i32 32}
!236 = !{ptr @imx21_i2c_hwdata, !237, !"imx21_i2c_hwdata", i1 false, i1 false}
!237 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 233, i32 36}
!238 = !{ptr @vf610_i2c_hwdata, !239, !"vf610_i2c_hwdata", i1 false, i1 false}
!239 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 243, i32 30}
!240 = !{ptr @vf610_i2c_clk_div, !241, !"vf610_i2c_clk_div", i1 false, i1 false}
!241 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 151, i32 32}
!242 = !{ptr @i2c_imx_acpi_ids, !243, !"i2c_imx_acpi_ids", i1 false, i1 false}
!243 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 274, i32 36}
!244 = !{ptr @i2c_imx_pm_ops, !245, !"i2c_imx_pm_ops", i1 false, i1 false}
!245 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1594, i32 32}
!246 = !{ptr @.str.102, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 1589, i32 3}
!248 = !{ptr @i2c_imx_runtime_resume._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @i2c_imx_runtime_resume._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @imx_i2c_devtype, !251, !"imx_i2c_devtype", i1 false, i1 false}
!251 = !{!"../drivers/i2c/busses/i2c-imx.c", i32 253, i32 40}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{i64 2155851132}
!262 = !{i64 6953968}
!263 = !{i64 2148991557, i64 2148991562, i64 2148991575, i64 2148991619, i64 2148991653, i64 2148991674}
!264 = !{i64 2148346684}
!265 = !{i64 831507, i64 831532, i64 831554, i64 831570, i64 831582, i64 831602, i64 831626, i64 831642, i64 831654}
!266 = !{i64 2148346872}
!267 = !{i64 6954363}
!268 = !{i64 2155851685}
!269 = !{i64 2155870555}
!270 = !{i64 2155870761}
!271 = !{!"branch_weights", i32 1, i32 2000}
!272 = !{!"branch_weights", i32 2000, i32 1}
