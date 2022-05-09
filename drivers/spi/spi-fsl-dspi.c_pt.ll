; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-fsl-dspi.c_pt.bc'
source_filename = "../drivers/spi/spi-fsl-dspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_dspi_devtype_data = type { i32, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
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
%struct.fsl_dspi = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, %struct.completion, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.fsl_dspi_platform_data = type { i32, i32, i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.fsl_dspi_dma = type { ptr, ptr, i32, %struct.completion, ptr, ptr, ptr, i32, %struct.completion, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_fsl_dspi__239_1434_fsl_dspi_driver_init6 = internal global ptr @fsl_dspi_driver_init, section ".initcall6.init", align 4
@fsl_dspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dspi_probe, ptr @dspi_remove, ptr @dspi_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_dspi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dspi_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_dspi_driver_exit = internal global ptr @fsl_dspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [58 x i8] c"spi_fsl_dspi.description=Freescale DSPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [43 x i8] c"spi_fsl_dspi.file=drivers/spi/spi-fsl-dspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [25 x i8] c"spi_fsl_dspi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [37 x i8] c"spi_fsl_dspi.alias=platform:fsl-dspi\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl-dspi\00", [23 x i8] zeroinitializer }, align 32
@fsl_dspi_dt_ids = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-v1.0-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 36) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2080a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 60) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2085a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,lx2160a-dspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @devtype_data, i64 84) }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@dspi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dspi_suspend, ptr @dspi_resume, ptr @dspi_suspend, ptr @dspi_resume, ptr @dspi_suspend, ptr @dspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@devtype_data = internal constant { [10 x %struct.fsl_dspi_devtype_data], [40 x i8] } { [10 x %struct.fsl_dspi_devtype_data] [%struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 4 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 16 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 4 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 16 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 16 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 4 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 4 }, %struct.fsl_dspi_devtype_data { i32 0, i8 8, i32 4 }, %struct.fsl_dspi_devtype_data { i32 1, i8 8, i32 16 }, %struct.fsl_dspi_devtype_data { i32 1, i8 2, i32 4 }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi-num-chipselects\00", [44 x i8] zeroinitializer }, align 32
@dspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1264, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't get spi-num-chipselects\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dspi_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-fsl-dspi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dspi_probe._entry_ptr = internal global ptr @dspi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus-num\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi-slave\00", [22 x i8] zeroinitializer }, align 32
@dspi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1277, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get devtype_data\0A\00", [40 x i8] zeroinitializer }, align 32
@dspi_probe._entry_ptr.11 = internal global ptr @dspi_probe._entry.9, section ".printk_index", align 4
@dspi_xspi_regmap_config = internal constant { [2 x %struct.regmap_config], [72 x i8] } { [2 x %struct.regmap_config] [%struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 316, ptr null, ptr null, ptr @dspi_xspi_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.65, i32 16, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [72 x i8] zeroinitializer }, align 32
@dspi_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 136, ptr null, ptr null, ptr @dspi_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@dspi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"spi_fsl_dspi:1308:(regmap_config)->lock\00", [56 x i8] zeroinitializer }, align 32
@dspi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1311, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init regmap: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@dspi_probe._entry_ptr.15 = internal global ptr @dspi_probe._entry.13, section ".printk_index", align 4
@dspi_probe._key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"spi_fsl_dspi:1319:(&dspi_xspi_regmap_config[1])->lock\00", [42 x i8] zeroinitializer }, align 32
@dspi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init pushr regmap: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@dspi_probe._entry_ptr.20 = internal global ptr @dspi_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dspi\00", [27 x i8] zeroinitializer }, align 32
@dspi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unable to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@dspi_probe._entry_ptr.24 = internal global ptr @dspi_probe._entry.22, section ".printk_index", align 4
@dspi_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1346, ptr @.str.27, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't get platform irq, using poll mode\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dspi_probe._entry_ptr.28 = internal global ptr @dspi_probe._entry.25, section ".printk_index", align 4
@dspi_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 1356, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to attach DSPI interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@dspi_probe._entry_ptr.31 = internal global ptr @dspi_probe._entry.29, section ".printk_index", align 4
@dspi_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 1365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get dma channels\0A\00", [40 x i8] zeroinitializer }, align 32
@dspi_probe._entry_ptr.34 = internal global ptr @dspi_probe._entry.32, section ".printk_index", align 4
@dspi_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 1378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Problem registering DSPI ctlr\0A\00", [33 x i8] zeroinitializer }, align 32
@dspi_probe._entry_ptr.37 = internal global ptr @dspi_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,spi-cs-sck-delay\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,spi-sck-cs-delay\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.hz_to_spi_baud.brs = private unnamed_addr constant [16 x i32] [i32 2, i32 4, i32 6, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768], align 4
@hz_to_spi_baud._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014Can not find valid baud rate,speed_hz is %d,clkrate is %ld, we use the max prescaler value.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hz_to_spi_baud\00", [17 x i8] zeroinitializer }, align 32
@hz_to_spi_baud._entry_ptr = internal global ptr @hz_to_spi_baud._entry, section ".printk_index", align 4
@ns_delay_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\014Cannot find correct scale values for %dns delay at clkrate %ld, using max prescaler value\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ns_delay_scale\00", [17 x i8] zeroinitializer }, align 32
@ns_delay_scale._entry_ptr = internal global ptr @ns_delay_scale._entry, section ".printk_index", align 4
@dspi_dma_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA transfer failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dspi_dma_xfer\00", [18 x i8] zeroinitializer }, align 32
@dspi_dma_xfer._entry_ptr = internal global ptr @dspi_dma_xfer._entry, section ".printk_index", align 4
@dspi_next_xfer_dma_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Not able to get desc for DMA xfer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dspi_next_xfer_dma_submit\00", [38 x i8] zeroinitializer }, align 32
@dspi_next_xfer_dma_submit._entry_ptr = internal global ptr @dspi_next_xfer_dma_submit._entry, section ".printk_index", align 4
@dspi_next_xfer_dma_submit._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA submit failed\0A\00", [45 x i8] zeroinitializer }, align 32
@dspi_next_xfer_dma_submit._entry_ptr.50 = internal global ptr @dspi_next_xfer_dma_submit._entry.48, section ".printk_index", align 4
@dspi_next_xfer_dma_submit._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 415, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dspi_next_xfer_dma_submit._entry_ptr.52 = internal global ptr @dspi_next_xfer_dma_submit._entry.51, section ".printk_index", align 4
@dspi_next_xfer_dma_submit._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 422, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dspi_next_xfer_dma_submit._entry_ptr.54 = internal global ptr @dspi_next_xfer_dma_submit._entry.53, section ".printk_index", align 4
@dspi_next_xfer_dma_submit._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.47, ptr @.str.4, i32 440, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMA tx timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@dspi_next_xfer_dma_submit._entry_ptr.57 = internal global ptr @dspi_next_xfer_dma_submit._entry.55, section ".printk_index", align 4
@dspi_next_xfer_dma_submit._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.47, ptr @.str.4, i32 449, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMA rx timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@dspi_next_xfer_dma_submit._entry_ptr.60 = internal global ptr @dspi_next_xfer_dma_submit._entry.58, section ".printk_index", align 4
@dspi_cleanup.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.61, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 1, i8 4, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_fsl_dspi\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dspi_cleanup\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spi_device %u.%u cleanup\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@dspi_xspi_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @dspi_xspi_volatile_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pushr\00", [26 x i8] zeroinitializer }, align 32
@dspi_xspi_volatile_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 8 }, %struct.regmap_range { i32 44, i32 44 }, %struct.regmap_range { i32 52, i32 136 }, %struct.regmap_range { i32 316, i32 316 }], [32 x i8] zeroinitializer }, align 32
@dspi_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @dspi_volatile_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@dspi_volatile_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 8 }, %struct.regmap_range { i32 44, i32 44 }, %struct.regmap_range { i32 52, i32 136 }], [40 x i8] zeroinitializer }, align 32
@dspi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 1190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported trans_mode %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dspi_init\00", [22 x i8] zeroinitializer }, align 32
@dspi_init._entry_ptr = internal global ptr @dspi_init._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@dspi_request_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rx dma channel not available\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dspi_request_dma\00", [47 x i8] zeroinitializer }, align 32
@dspi_request_dma._entry_ptr = internal global ptr @dspi_request_dma._entry, section ".printk_index", align 4
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@dspi_request_dma._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.71, ptr @.str.4, i32 512, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tx dma channel not available\0A\00", [34 x i8] zeroinitializer }, align 32
@dspi_request_dma._entry_ptr.75 = internal global ptr @dspi_request_dma._entry.73, section ".printk_index", align 4
@dspi_request_dma._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.71, ptr @.str.4, i32 544, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't configure rx dma channel\0A\00", [32 x i8] zeroinitializer }, align 32
@dspi_request_dma._entry_ptr.78 = internal global ptr @dspi_request_dma._entry.76, section ".printk_index", align 4
@dspi_request_dma._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.71, ptr @.str.4, i32 552, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't configure tx dma channel\0A\00", [32 x i8] zeroinitializer }, align 32
@dspi_request_dma._entry_ptr.81 = internal global ptr @dspi_request_dma._entry.79, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"fsl_dspi_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1425, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1426, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"fsl_dspi_dt_ids\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1048, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [8 x i8] c"dspi_pm\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1114, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"devtype_data\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 138, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1262, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1264, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1269, i32 28 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1272, i32 33 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1277, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [24 x i8] c"dspi_xspi_regmap_config\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1147, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"dspi_regmap_config\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1127, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1308, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1310, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1317, i32 24 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1321, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1329, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1332, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1345, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1356, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1365, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1378, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 996, i32 42 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 999, i32 42 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 631, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 665, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 483, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 397, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 404, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 415, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 422, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 440, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 449, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1042, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1169, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [25 x i8] c"dspi_xspi_volatile_table\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1142, i32 41 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1156, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant [26 x i8] c"dspi_xspi_volatile_ranges\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1135, i32 34 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c"dspi_volatile_table\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1122, i32 41 }
@___asan_gen_.289 = private unnamed_addr constant [21 x i8] c"dspi_volatile_ranges\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1116, i32 34 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1189, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 87, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 503, i32 39 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 505, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 510, i32 39 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 512, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 544, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.338 = private constant [30 x i8] c"../drivers/spi/spi-fsl-dspi.c\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 552, i32 3 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_fsl_dspi_driver_exit, ptr @__initcall__kmod_spi_fsl_dspi__239_1434_fsl_dspi_driver_init6, ptr @dspi_dma_xfer._entry, ptr @dspi_dma_xfer._entry_ptr, ptr @dspi_init._entry, ptr @dspi_init._entry_ptr, ptr @dspi_next_xfer_dma_submit._entry, ptr @dspi_next_xfer_dma_submit._entry.48, ptr @dspi_next_xfer_dma_submit._entry.51, ptr @dspi_next_xfer_dma_submit._entry.53, ptr @dspi_next_xfer_dma_submit._entry.55, ptr @dspi_next_xfer_dma_submit._entry.58, ptr @dspi_next_xfer_dma_submit._entry_ptr, ptr @dspi_next_xfer_dma_submit._entry_ptr.50, ptr @dspi_next_xfer_dma_submit._entry_ptr.52, ptr @dspi_next_xfer_dma_submit._entry_ptr.54, ptr @dspi_next_xfer_dma_submit._entry_ptr.57, ptr @dspi_next_xfer_dma_submit._entry_ptr.60, ptr @dspi_probe._entry, ptr @dspi_probe._entry.13, ptr @dspi_probe._entry.18, ptr @dspi_probe._entry.22, ptr @dspi_probe._entry.25, ptr @dspi_probe._entry.29, ptr @dspi_probe._entry.32, ptr @dspi_probe._entry.35, ptr @dspi_probe._entry.9, ptr @dspi_probe._entry_ptr, ptr @dspi_probe._entry_ptr.11, ptr @dspi_probe._entry_ptr.15, ptr @dspi_probe._entry_ptr.20, ptr @dspi_probe._entry_ptr.24, ptr @dspi_probe._entry_ptr.28, ptr @dspi_probe._entry_ptr.31, ptr @dspi_probe._entry_ptr.34, ptr @dspi_probe._entry_ptr.37, ptr @dspi_request_dma._entry, ptr @dspi_request_dma._entry.73, ptr @dspi_request_dma._entry.76, ptr @dspi_request_dma._entry.79, ptr @dspi_request_dma._entry_ptr, ptr @dspi_request_dma._entry_ptr.75, ptr @dspi_request_dma._entry_ptr.78, ptr @dspi_request_dma._entry_ptr.81, ptr @fsl_dspi_driver_exit, ptr @hz_to_spi_baud._entry, ptr @hz_to_spi_baud._entry_ptr, ptr @ns_delay_scale._entry, ptr @ns_delay_scale._entry_ptr, ptr @fsl_dspi_driver, ptr @.str, ptr @fsl_dspi_dt_ids, ptr @dspi_pm, ptr @devtype_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @dspi_xspi_regmap_config, ptr @dspi_regmap_config, ptr @dspi_probe._key, ptr @.str.12, ptr @.str.14, ptr @dspi_probe._key.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @dspi_xspi_volatile_table, ptr @.str.65, ptr @dspi_xspi_volatile_ranges, ptr @dspi_volatile_table, ptr @dspi_volatile_ranges, ptr @.str.66, ptr @.str.67, ptr @init_completion.__key, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_dspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_dspi_dt_ids to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devtype_data to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_xspi_regmap_config to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hz_to_spi_baud._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_delay_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_dma_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_next_xfer_dma_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_next_xfer_dma_submit._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_next_xfer_dma_submit._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_next_xfer_dma_submit._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_next_xfer_dma_submit._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_next_xfer_dma_submit._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_xspi_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_xspi_volatile_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_volatile_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_request_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_request_dma._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_request_dma._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspi_request_dma._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_dspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_dspi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_dspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_dspi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cs_num = alloca i32, align 4
  %bus_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs_num) #8
  %2 = ptrtoint ptr %cs_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cs_num, align 4, !annotation !176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_num) #8
  %3 = ptrtoint ptr %bus_num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bus_num, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 148, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup195_crit_edge, label %if.end

entry.cleanup195_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup195

if.end:                                           ; preds = %entry
  %call.i309 = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext false) #8
  %tobool4.not = icmp eq ptr %call.i309, null
  br i1 %tobool4.not, label %if.end.cleanup195_crit_edge, label %if.end6

if.end.cleanup195_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup195

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i309, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i310 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i310 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i310, align 4
  %pdev7 = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %pdev7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev7, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i309, ptr %call.i, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 20
  %8 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dspi_setup, ptr %setup, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 45
  %9 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dspi_transfer_one_message, ptr %transfer_one_message, align 4
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %of_node12 = getelementptr inbounds %struct.device, ptr %call.i309, i32 0, i32 27
  %12 = ptrtoint ptr %of_node12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %of_node12, align 8
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 23
  %13 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dspi_cleanup, ptr %cleanup, align 8
  %slave_abort = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 49
  %14 = ptrtoint ptr %slave_abort to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dspi_slave_abort, ptr %slave_abort, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 5
  %15 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 11, ptr %mode_bits, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %16 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data.i, align 8
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %conv = trunc i32 %19 to i8
  %max_native_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 58
  %20 = ptrtoint ptr %max_native_cs to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %max_native_cs, align 2
  %conv18 = sext i8 %conv to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 3
  %21 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv18, ptr %num_chipselect, align 2
  %bus_num19 = getelementptr inbounds %struct.fsl_dspi_platform_data, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %bus_num19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_num19, align 4
  %conv20 = trunc i32 %23 to i16
  %bus_num21 = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 2
  %24 = ptrtoint ptr %bus_num21 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv20, ptr %bus_num21, align 8
  %devtype_data = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 14
  %25 = ptrtoint ptr %devtype_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr getelementptr inbounds ([10 x %struct.fsl_dspi_devtype_data], ptr @devtype_data, i32 0, i32 8), ptr %devtype_data, align 4
  br label %if.end55

if.else:                                          ; preds = %if.end6
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %cs_num, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end26

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %spi_controller_put.exit

if.end26:                                         ; preds = %if.else
  %26 = ptrtoint ptr %cs_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cs_num, align 4
  %conv27 = trunc i32 %27 to i8
  %max_native_cs28 = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 58
  %28 = ptrtoint ptr %max_native_cs28 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv27, ptr %max_native_cs28, align 2
  %conv29 = sext i8 %conv27 to i16
  %num_chipselect30 = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 3
  %29 = ptrtoint ptr %num_chipselect30 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv29, ptr %num_chipselect30, align 2
  %call.i.i311 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %bus_num, i32 noundef 1, i32 noundef 0) #8
  %30 = ptrtoint ptr %bus_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_num, align 4
  %conv32 = trunc i32 %31 to i16
  %bus_num33 = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 2
  %32 = ptrtoint ptr %bus_num33 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv32, ptr %bus_num33, align 8
  %call.i312 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i312, null
  br i1 %tobool.i.not, label %if.end26.if.end36_crit_edge, label %if.then35

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %slave = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 12
  %33 = ptrtoint ptr %slave to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %slave, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end26.if.end36_crit_edge
  %call38 = call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %devtype_data39 = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 14
  %34 = ptrtoint ptr %devtype_data39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call38, ptr %devtype_data39, align 4
  %tobool41.not = icmp eq ptr %call38, null
  br i1 %tobool41.not, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %spi_controller_put.exit

if.end47:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = call zeroext i1 @of_device_is_big_endian(ptr noundef %1) #8
  %spec.select = select i1 %call48, i32 0, i32 2
  %spec.select329 = select i1 %call48, i32 2, i32 0
  br label %if.end55

if.end55:                                         ; preds = %if.end47, %if.then16
  %.sink326 = phi i32 [ 0, %if.then16 ], [ %spec.select, %if.end47 ]
  %.sink325 = phi i32 [ 2, %if.then16 ], [ %spec.select329, %if.end47 ]
  %pushr_cmd53 = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 20
  %35 = ptrtoint ptr %pushr_cmd53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink326, ptr %pushr_cmd53, align 4
  %pushr_tx54 = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 21
  %36 = ptrtoint ptr %pushr_tx54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink325, ptr %pushr_tx54, align 4
  %devtype_data56 = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 14
  %37 = ptrtoint ptr %devtype_data56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devtype_data56, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp57 = icmp eq i32 %40, 0
  %.sink = select i1 %cmp57, i32 -8, i32 65528
  %41 = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 7
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %41, align 8
  %call63 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call65 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call63) #8
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call65 to i32
  br label %spi_controller_put.exit

if.end69:                                         ; preds = %if.end55
  %44 = ptrtoint ptr %devtype_data56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %devtype_data56, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp72 = icmp eq i32 %47, 0
  %dspi_xspi_regmap_config.dspi_regmap_config = select i1 %cmp72, ptr @dspi_xspi_regmap_config, ptr @dspi_regmap_config
  %call78 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call65, ptr noundef nonnull %dspi_xspi_regmap_config.dspi_regmap_config, ptr noundef nonnull @dspi_probe._key, ptr noundef nonnull @.str.12) #8
  %regmap = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call78, ptr %regmap, align 4
  %cmp.i313 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i313, label %do.end84, label %if.end90

do.end84:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call78 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %49) #11
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %spi_controller_put.exit

if.end90:                                         ; preds = %if.end69
  %53 = ptrtoint ptr %devtype_data56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %devtype_data56, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp93 = icmp eq i32 %56, 0
  br i1 %cmp93, label %if.then95, label %if.end90.if.end111_crit_edge

if.end90.if.end111_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then95:                                        ; preds = %if.end90
  %add.ptr = getelementptr i8, ptr %call65, i32 52
  %call98 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %add.ptr, ptr noundef getelementptr inbounds ([2 x %struct.regmap_config], ptr @dspi_xspi_regmap_config, i32 0, i32 1), ptr noundef nonnull @dspi_probe._key.16, ptr noundef nonnull @.str.17) #8
  %regmap_pushr = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 3
  %57 = ptrtoint ptr %regmap_pushr to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call98, ptr %regmap_pushr, align 4
  %cmp.i314 = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %do.end104, label %if.then95.if.end111_crit_edge

if.then95.if.end111_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

do.end104:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %call98 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %58) #11
  %59 = ptrtoint ptr %regmap_pushr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap_pushr, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %spi_controller_put.exit

if.end111:                                        ; preds = %if.then95.if.end111_crit_edge, %if.end90.if.end111_crit_edge
  %call113 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  %clk = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call113, ptr %clk, align 4
  %cmp.i315 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i315, label %if.then116, label %if.end123

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %call113 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  br label %spi_controller_put.exit

if.end123:                                        ; preds = %if.end111
  %call.i316 = call i32 @clk_prepare(ptr noundef %call113) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %tobool.not.i = icmp eq i32 %call.i316, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end123.spi_controller_put.exit_crit_edge

if.end123.spi_controller_put.exit_crit_edge:      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end.i:                                         ; preds = %if.end123
  %call1.i = call i32 @clk_enable(ptr noundef %call113) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end128, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call113) #8
  br label %spi_controller_put.exit

if.end128:                                        ; preds = %if.end.i
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  %max_native_cs.i = getelementptr inbounds %struct.spi_controller, ptr %65, i32 0, i32 58
  %66 = ptrtoint ptr %max_native_cs.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %max_native_cs.i, align 2
  %conv.i = sext i8 %67 to i32
  %sub1.i = sub nsw i32 32, %conv.i
  %shr.i = lshr i32 -1, %sub1.i
  %shl.i = shl i32 %shr.i, 16
  %68 = ptrtoint ptr %devtype_data56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %devtype_data56, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i317 = icmp eq i32 %71, 0
  %or.i = or i32 %shl.i, 8
  %spec.select.i = select i1 %cmp.i317, i32 %or.i, i32 %shl.i
  %slave.i.i = getelementptr inbounds %struct.spi_controller, ptr %65, i32 0, i32 12
  %72 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %slave.i.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.i.not.i = icmp eq i8 %73, 0
  %or5.i = or i32 %spec.select.i, -2147483648
  %mcr.1.i = select i1 %tobool.i.not.i, i32 %or5.i, i32 %spec.select.i
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %call7.i = call i32 @regmap_write(ptr noundef %75, i32 noundef 0, i32 noundef %mcr.1.i) #8
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call9.i = call i32 @regmap_write(ptr noundef %77, i32 noundef 44, i32 noundef -1968242688) #8
  %78 = ptrtoint ptr %devtype_data56 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %devtype_data56, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values)
  switch i32 %81, label %dspi_init.exit [
    i32 0, label %if.end128.if.end132_crit_edge
    i32 1, label %sw.bb14.i
  ]

if.end128.if.end132_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

sw.bb14.i:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

dspi_init.exit:                                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev7, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.66, i32 noundef %81) #11
  br label %out_clk_put

if.end132:                                        ; preds = %sw.bb14.i, %if.end128.if.end132_crit_edge
  %.sink328 = phi i32 [ 50528256, %sw.bb14.i ], [ 8388608, %if.end128.if.end132_crit_edge ]
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %86, i32 noundef 48, i32 noundef %.sink328) #8
  %call133 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 4
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call133, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call133)
  %cmp135 = icmp slt i32 %call133, 1
  br i1 %cmp135, label %do.end140, label %if.end143

do.end140:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  %88 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %irq, align 4
  br label %poll_mode

if.end143:                                        ; preds = %if.end132
  %xfer_done = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 15
  %89 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %xfer_done, align 4
  %wait.i = getelementptr inbounds %struct.fsl_dspi, ptr %call.i, i32 0, i32 15, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @init_completion.__key) #8
  %90 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq, align 4
  %92 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev, align 8
  %call145 = call i32 @request_threaded_irq(i32 noundef %91, ptr noundef nonnull @dspi_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %93, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %do.end151, label %if.end143.poll_mode_crit_edge

if.end143.poll_mode_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_mode

do.end151:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %out_clk_put

poll_mode:                                        ; preds = %if.end143.poll_mode_crit_edge, %do.end140
  %94 = ptrtoint ptr %devtype_data56 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %devtype_data56, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp156 = icmp eq i32 %97, 1
  br i1 %cmp156, label %if.then158, label %poll_mode.if.end168_crit_edge

poll_mode.if.end168_crit_edge:                    ; preds = %poll_mode
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

if.then158:                                       ; preds = %poll_mode
  %98 = ptrtoint ptr %call63 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %call63, align 4
  %call159 = call fastcc i32 @dspi_request_dma(ptr noundef nonnull %call.i, i32 noundef %99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %do.end165, label %if.then158.if.end168_crit_edge

if.then158.if.end168_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

do.end165:                                        ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #11
  br label %out_free_irq

if.end168:                                        ; preds = %if.then158.if.end168_crit_edge, %poll_mode.if.end168_crit_edge
  %100 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk, align 4
  %call170 = call i32 @clk_get_rate(ptr noundef %101) #8
  %102 = ptrtoint ptr %devtype_data56 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %devtype_data56, align 4
  %max_clock_factor = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %max_clock_factor to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %max_clock_factor, align 4
  %conv172 = zext i8 %105 to i32
  %div = udiv i32 %call170, %conv172
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 9
  %106 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div, ptr %max_speed_hz, align 8
  %107 = load ptr, ptr %devtype_data56, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp175.not = icmp eq i32 %109, 1
  br i1 %cmp175.not, label %if.end168.if.end178_crit_edge, label %if.then177

if.end168.if.end178_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then177:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  %ptp_sts_supported = getelementptr inbounds %struct.spi_controller, ptr %call.i309, i32 0, i32 65
  %110 = ptrtoint ptr %ptp_sts_supported to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %ptp_sts_supported, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.end168.if.end178_crit_edge
  %call179 = call i32 @spi_register_controller(ptr noundef nonnull %call.i309) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %cmp180.not = icmp eq i32 %call179, 0
  br i1 %cmp180.not, label %if.end178.cleanup195_crit_edge, label %do.end185

if.end178.cleanup195_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup195

do.end185:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #11
  call fastcc void @dspi_release_dma(ptr noundef nonnull %call.i)
  br label %out_free_irq

out_free_irq:                                     ; preds = %do.end185, %do.end165
  %ret.0 = phi i32 [ %call159, %do.end165 ], [ %call179, %do.end185 ]
  %111 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool189.not = icmp eq i32 %112, 0
  br i1 %tobool189.not, label %out_free_irq.out_clk_put_crit_edge, label %if.then190

out_free_irq.out_clk_put_crit_edge:               ; preds = %out_free_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_clk_put

if.then190:                                       ; preds = %out_free_irq
  call void @__sanitizer_cov_trace_pc() #10
  %call192 = call ptr @free_irq(i32 noundef %112, ptr noundef nonnull %call.i) #8
  br label %out_clk_put

out_clk_put:                                      ; preds = %if.then190, %out_free_irq.out_clk_put_crit_edge, %do.end151, %dspi_init.exit
  %ret.1 = phi i32 [ -22, %dspi_init.exit ], [ %ret.0, %if.then190 ], [ %ret.0, %out_free_irq.out_clk_put_crit_edge ], [ %call145, %do.end151 ]
  %113 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %114) #8
  call void @clk_unprepare(ptr noundef %114) #8
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %out_clk_put, %if.then3.i, %if.end123.spi_controller_put.exit_crit_edge, %if.then116, %do.end104, %do.end84, %if.then67, %do.end45, %do.end
  %ret.2 = phi i32 [ %43, %if.then67 ], [ %52, %do.end84 ], [ %61, %do.end104 ], [ %63, %if.then116 ], [ %ret.1, %out_clk_put ], [ %call.i.i, %do.end ], [ -14, %do.end45 ], [ %call1.i, %if.then3.i ], [ %call.i316, %if.end123.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i309) #8
  br label %cleanup195

cleanup195:                                       ; preds = %spi_controller_put.exit, %if.end178.cleanup195_crit_edge, %if.end.cleanup195_crit_edge, %entry.cleanup195_crit_edge
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ -12, %entry.cleanup195_crit_edge ], [ -12, %if.end.cleanup195_crit_edge ], [ 0, %if.end178.cleanup195_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_num) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs_num) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dspi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @spi_unregister_controller(ptr noundef %3) #8
  %regmap = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 12288, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call fastcc void @dspi_release_dma(ptr noundef %1)
  %irq = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dspi_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dspi_remove(ptr noundef %pdev)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dspi_setup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  %pcssck = alloca i8, align 1
  %cssck = alloca i8, align 1
  %cs_sck_delay = alloca i32, align 4
  %sck_cs_delay = alloca i32, align 4
  %pasc = alloca i8, align 1
  %asc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pcssck) #8
  %4 = ptrtoint ptr %pcssck to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pcssck, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cssck) #8
  %5 = ptrtoint ptr %cssck to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cssck, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs_sck_delay) #8
  %6 = ptrtoint ptr %cs_sck_delay to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cs_sck_delay, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sck_cs_delay) #8
  %7 = ptrtoint ptr %sck_cs_delay to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sck_cs_delay, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pasc) #8
  %8 = ptrtoint ptr %pasc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %pasc, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %asc) #8
  %9 = ptrtoint ptr %asc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %asc, align 1
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %10 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller_state.i, align 8
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 4) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %chip.0 = phi ptr [ %call7.i.i, %if.then.if.end4_crit_edge ], [ %11, %entry.if.end4_crit_edge ]
  %pdev = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data.i, align 8
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.38, ptr noundef nonnull %cs_sck_delay, i32 noundef 1, i32 noundef 0) #8
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call.i.i92 = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.39, ptr noundef nonnull %sck_cs_delay, i32 noundef 1, i32 noundef 0) #8
  br label %if.end15

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %cs_sck_delay13 = getelementptr inbounds %struct.fsl_dspi_platform_data, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %cs_sck_delay13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cs_sck_delay13, align 4
  %23 = ptrtoint ptr %cs_sck_delay to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cs_sck_delay, align 4
  %sck_cs_delay14 = getelementptr inbounds %struct.fsl_dspi_platform_data, ptr %16, i32 0, i32 2
  %24 = ptrtoint ptr %sck_cs_delay14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sck_cs_delay14, align 4
  %26 = ptrtoint ptr %sck_cs_delay to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sck_cs_delay, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %clk = getelementptr inbounds %struct.fsl_dspi, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %call16 = call i32 @clk_get_rate(ptr noundef %28) #8
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %29 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_speed_hz, align 8
  %call16.frozen = freeze i32 %call16
  %.frozen = freeze i32 %30
  %div.i = udiv i32 %call16.frozen, %.frozen
  %31 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %call16.frozen, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp ne i32 %rem.i.decomposed, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %div.i, %inc.i
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc13.i.for.cond1.preheader.i_crit_edge, %if.end15
  %br.0 = phi i8 [ 0, %if.end15 ], [ %br.1, %for.inc13.i.for.cond1.preheader.i_crit_edge ]
  %pbr.0 = phi i8 [ 0, %if.end15 ], [ %pbr.1, %for.inc13.i.for.cond1.preheader.i_crit_edge ]
  %i.039.i = phi i32 [ 0, %if.end15 ], [ %inc14.i, %for.inc13.i.for.cond1.preheader.i_crit_edge ]
  %minscale.038.i = phi i32 [ 2147483647, %if.end15 ], [ %minscale.1.i, %for.inc13.i.for.cond1.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x i32], ptr @__const.hz_to_spi_baud.brs, i32 0, i32 %i.039.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %33, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %spec.select.i)
  %cmp5.not.i = icmp slt i32 %mul.i, %spec.select.i
  br i1 %cmp5.not.i, label %for.inc.i, label %for.cond1.preheader.i.if.then6.i_crit_edge

for.cond1.preheader.i.if.then6.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.then6.i:                                       ; preds = %for.inc.2.i.if.then6.i_crit_edge, %for.inc.1.i.if.then6.i_crit_edge, %for.inc.i.if.then6.i_crit_edge, %for.cond1.preheader.i.if.then6.i_crit_edge
  %j.037.lcssa.i = phi i8 [ 0, %for.cond1.preheader.i.if.then6.i_crit_edge ], [ 1, %for.inc.i.if.then6.i_crit_edge ], [ 2, %for.inc.1.i.if.then6.i_crit_edge ], [ 3, %for.inc.2.i.if.then6.i_crit_edge ]
  %mul.lcssa.i = phi i32 [ %mul.i, %for.cond1.preheader.i.if.then6.i_crit_edge ], [ %mul.1.i, %for.inc.i.if.then6.i_crit_edge ], [ %mul.2.i, %for.inc.1.i.if.then6.i_crit_edge ], [ %mul.3.i, %for.inc.2.i.if.then6.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.lcssa.i, i32 %minscale.038.i)
  %cmp7.i = icmp slt i32 %mul.lcssa.i, %minscale.038.i
  br i1 %cmp7.i, label %if.then8.i, label %if.then6.i.for.inc13.i_crit_edge

if.then6.i.for.inc13.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.i

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %i.039.i to i8
  br label %for.inc13.i

for.inc.i:                                        ; preds = %for.cond1.preheader.i
  %mul.1.i = mul i32 %33, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1.i, i32 %spec.select.i)
  %cmp5.not.1.i = icmp slt i32 %mul.1.i, %spec.select.i
  br i1 %cmp5.not.1.i, label %for.inc.1.i, label %for.inc.i.if.then6.i_crit_edge

for.inc.i.if.then6.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %mul.2.i = mul i32 %33, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2.i, i32 %spec.select.i)
  %cmp5.not.2.i = icmp slt i32 %mul.2.i, %spec.select.i
  br i1 %cmp5.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.then6.i_crit_edge

for.inc.1.i.if.then6.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %mul.3.i = mul i32 %33, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3.i, i32 %spec.select.i)
  %cmp5.not.3.i = icmp slt i32 %mul.3.i, %spec.select.i
  br i1 %cmp5.not.3.i, label %for.inc.2.i.for.inc13.i_crit_edge, label %for.inc.2.i.if.then6.i_crit_edge

for.inc.2.i.if.then6.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

for.inc.2.i.for.inc13.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %for.inc.2.i.for.inc13.i_crit_edge, %if.then8.i, %if.then6.i.for.inc13.i_crit_edge
  %br.1 = phi i8 [ %br.0, %for.inc.2.i.for.inc13.i_crit_edge ], [ %conv.i, %if.then8.i ], [ %br.0, %if.then6.i.for.inc13.i_crit_edge ]
  %pbr.1 = phi i8 [ %pbr.0, %for.inc.2.i.for.inc13.i_crit_edge ], [ %j.037.lcssa.i, %if.then8.i ], [ %pbr.0, %if.then6.i.for.inc13.i_crit_edge ]
  %minscale.1.i = phi i32 [ %minscale.038.i, %for.inc.2.i.for.inc13.i_crit_edge ], [ %mul.lcssa.i, %if.then8.i ], [ %minscale.038.i, %if.then6.i.for.inc13.i_crit_edge ]
  %inc14.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, 16
  br i1 %exitcond.not.i, label %for.end15.i, label %for.inc13.i.for.cond1.preheader.i_crit_edge

for.inc13.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i

for.end15.i:                                      ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %minscale.1.i)
  %cmp16.i = icmp eq i32 %minscale.1.i, 2147483647
  br i1 %cmp16.i, label %do.end.i, label %for.end15.i.hz_to_spi_baud.exit_crit_edge

for.end15.i.hz_to_spi_baud.exit_crit_edge:        ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hz_to_spi_baud.exit

do.end.i:                                         ; preds = %for.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %30, i32 noundef %call16) #11
  br label %hz_to_spi_baud.exit

hz_to_spi_baud.exit:                              ; preds = %do.end.i, %for.end15.i.hz_to_spi_baud.exit_crit_edge
  %br.2 = phi i8 [ 15, %do.end.i ], [ %br.1, %for.end15.i.hz_to_spi_baud.exit_crit_edge ]
  %pbr.2 = phi i8 [ 3, %do.end.i ], [ %pbr.1, %for.end15.i.hz_to_spi_baud.exit_crit_edge ]
  %34 = ptrtoint ptr %cs_sck_delay to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cs_sck_delay, align 4
  call fastcc void @ns_delay_scale(ptr noundef nonnull %pcssck, ptr noundef nonnull %cssck, i32 noundef %35, i32 noundef %call16)
  %36 = ptrtoint ptr %sck_cs_delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sck_cs_delay, align 4
  call fastcc void @ns_delay_scale(ptr noundef nonnull %pasc, ptr noundef nonnull %asc, i32 noundef %37, i32 noundef %call16)
  %38 = ptrtoint ptr %chip.0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %chip.0, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode, align 8
  %and = shl i32 %40, 25
  %41 = and i32 %and, 67108864
  store i32 %41, ptr %chip.0, align 4
  %42 = load i32, ptr %mode, align 8
  %and22 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %hz_to_spi_baud.exit.if.end27_crit_edge, label %if.then24

hz_to_spi_baud.exit.if.end27_crit_edge:           ; preds = %hz_to_spi_baud.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then24:                                        ; preds = %hz_to_spi_baud.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or26 = or i32 %41, 33554432
  %43 = ptrtoint ptr %chip.0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or26, ptr %chip.0, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %hz_to_spi_baud.exit.if.end27_crit_edge
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %slave.i = getelementptr inbounds %struct.spi_controller, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %slave.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %slave.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.i.not = icmp eq i8 %47, 0
  br i1 %tobool.i.not, label %if.then29, label %if.end27.if.end59_crit_edge

if.end27.if.end59_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then29:                                        ; preds = %if.end27
  %48 = ptrtoint ptr %pcssck to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pcssck, align 1
  %conv = zext i8 %49 to i32
  %shl = shl nuw nsw i32 %conv, 22
  %and30 = and i32 %shl, 12582912
  %50 = ptrtoint ptr %cssck to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cssck, align 1
  %conv31 = zext i8 %51 to i32
  %shl32 = shl nuw nsw i32 %conv31, 12
  %and33 = and i32 %shl32, 61440
  %52 = ptrtoint ptr %pasc to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pasc, align 1
  %conv35 = zext i8 %53 to i32
  %shl36 = shl nuw nsw i32 %conv35, 20
  %and37 = and i32 %shl36, 3145728
  %54 = ptrtoint ptr %asc to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %asc, align 1
  %conv39 = zext i8 %55 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %and41 = and i32 %shl40, 3840
  %conv43 = zext i8 %pbr.2 to i32
  %shl44 = shl nuw nsw i32 %conv43, 16
  %and45 = and i32 %shl44, 196608
  %56 = and i8 %br.2, 15
  %and48 = zext i8 %56 to i32
  %57 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chip.0, align 4
  %or34 = or i32 %and45, %and48
  %or38 = or i32 %or34, %and30
  %or42 = or i32 %or38, %and33
  %or46 = or i32 %or42, %58
  %or49 = or i32 %or46, %and37
  %or51 = or i32 %or49, %and41
  store i32 %or51, ptr %chip.0, align 4
  %59 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode, align 8
  %and53 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then29.if.end59_crit_edge, label %if.then55

if.then29.if.end59_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then55:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %or57 = or i32 %or51, 16777216
  %61 = ptrtoint ptr %chip.0 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or57, ptr %chip.0, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then29.if.end59_crit_edge, %if.end27.if.end59_crit_edge
  %62 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %chip.0, ptr %controller_state.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %asc) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pasc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sck_cs_delay) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs_sck_delay) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cssck) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pcssck) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dspi_transfer_one_message(ptr noundef %ctlr, ptr noundef %message) #2 align 64 {
entry:
  %rxdata.i.i.i.i = alloca i32, align 4
  %spi_sr.i = alloca i32, align 4
  %sg.i126.i.i = alloca %struct.scatterlist, align 4
  %sg.i.i.i = alloca %struct.scatterlist, align 4
  %txdata.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 6
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %actual_length, align 4
  %5 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn175 = load ptr, ptr %message, align 4
  %cmp.not177 = icmp eq ptr %.pn175, %message
  br i1 %cmp.not177, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cur_transfer = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 6
  %cur_msg = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 7
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 9
  %cur_chip = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 8
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %tx_cmd = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 13
  %tx = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 11
  %rx = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 12
  %len29 = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 10
  %progress = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 9
  %regmap = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 2
  %irq = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 4
  %devtype_data = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 14
  %xfer_done = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 15
  %words_in_flight.i.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 19
  %dev_to_host.i.i.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 23
  %pdev.i = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 1
  %oper_word_size.i = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 17
  %dma2.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 16
  %host_to_dev.i.i.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 22
  %6 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i.i, i32 0, i32 4
  %8 = getelementptr inbounds %struct.scatterlist, ptr %sg.i126.i.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.scatterlist, ptr %sg.i126.i.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end53.for.body_crit_edge, %for.body.lr.ph
  %.pn178 = phi ptr [ %.pn175, %for.body.lr.ph ], [ %.pn, %if.end53.for.body_crit_edge ]
  %transfer.0179 = getelementptr i8, ptr %.pn178, i32 -84
  %10 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %transfer.0179, ptr %cur_transfer, align 4
  %11 = ptrtoint ptr %cur_msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %message, ptr %cur_msg, align 4
  %12 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller_state.i, align 8
  %14 = ptrtoint ptr %cur_chip to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %cur_chip, align 4
  %15 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv
  %17 = trunc i32 %shl to i16
  %conv4 = and i16 %17, 63
  %18 = ptrtoint ptr %tx_cmd to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv4, ptr %tx_cmd, align 4
  %19 = ptrtoint ptr %.pn178 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn178, align 4
  %cmp.i.not = icmp eq ptr %20, %message
  %cs_change = getelementptr i8, ptr %.pn178, i32 -40
  %21 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %cs_change, align 4
  %22 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not = icmp eq i8 %22, 0
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br i1 %tobool10.not, label %if.then.if.end28_crit_edge, label %if.then.if.end28.sink.split_crit_edge

if.then.if.end28.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.sink.split

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.else:                                          ; preds = %for.body
  br i1 %tobool10.not, label %if.else.if.end28.sink.split_crit_edge, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.else.if.end28.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.else.if.end28.sink.split_crit_edge, %if.then.if.end28.sink.split_crit_edge
  %23 = or i16 %conv4, -32768
  %24 = ptrtoint ptr %tx_cmd to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %tx_cmd, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.else.if.end28_crit_edge, %if.then.if.end28_crit_edge
  %25 = ptrtoint ptr %transfer.0179 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transfer.0179, align 4
  %27 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %tx, align 4
  %rx_buf = getelementptr i8, ptr %.pn178, i32 -80
  %28 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_buf, align 4
  %30 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %rx, align 4
  %len = getelementptr i8, ptr %.pn178, i32 -76
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %33 = ptrtoint ptr %len29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %len29, align 4
  %34 = ptrtoint ptr %progress to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %progress, align 4
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 0, i32 noundef 3072, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur_transfer, align 4
  %41 = ptrtoint ptr %progress to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %progress, align 4
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool34.not = icmp eq i32 %44, 0
  call void @spi_take_timestamp_pre(ptr noundef %38, ptr noundef %40, i32 noundef %42, i1 noundef zeroext %tobool34.not) #8
  %45 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %devtype_data, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp36 = icmp eq i32 %48, 1
  br i1 %cmp36, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.end28
  %49 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev.i, align 4
  %51 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not72.i = icmp eq i32 %52, 0
  br i1 %tobool.not72.i, label %if.then38.if.end53_crit_edge, label %while.body.lr.ph.i

if.then38.if.end53_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

while.body.lr.ph.i:                               ; preds = %if.then38
  %53 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_msg, align 4
  %actual_length.i = getelementptr inbounds %struct.spi_message, ptr %54, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %dspi_next_xfer_dma_submit.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  call fastcc void @dspi_setup_accel(ptr noundef %1) #8
  %55 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len29, align 4
  %57 = ptrtoint ptr %oper_word_size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %oper_word_size.i, align 4
  %div.i = udiv i32 %56, %58
  %59 = ptrtoint ptr %words_in_flight.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div.i, ptr %words_in_flight.i.i.i, align 4
  %60 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %devtype_data, align 4
  %fifo_size.i = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fifo_size.i, align 4
  %64 = call i32 @llvm.smin.i32(i32 %div.i, i32 %63) #8
  %65 = ptrtoint ptr %words_in_flight.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %words_in_flight.i.i.i, align 4
  %mul.i = mul i32 %64, %58
  %66 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %actual_length.i, align 4
  %add.i = add i32 %67, %mul.i
  store i32 %add.i, ptr %actual_length.i, align 4
  %68 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i, align 4
  %70 = ptrtoint ptr %dma2.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma2.i.i, align 4
  %72 = load i32, ptr %words_in_flight.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp164.i.i = icmp sgt i32 %72, 0
  br i1 %cmp164.i.i, label %while.body.i.for.body.i.i_crit_edge, label %while.body.i.for.end.i.i_crit_edge

while.body.i.for.end.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

while.body.i.for.body.i.i_crit_edge:              ; preds = %while.body.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %dspi_pop_tx_pushr.exit.i.i.for.body.i.i_crit_edge, %while.body.i.for.body.i.i_crit_edge
  %i.0165.i.i = phi i32 [ %inc.i.i, %dspi_pop_tx_pushr.exit.i.i.for.body.i.i_crit_edge ], [ 0, %while.body.i.for.body.i.i_crit_edge ]
  %73 = ptrtoint ptr %tx_cmd to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %tx_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txdata.i.i.i.i) #8
  %75 = ptrtoint ptr %txdata.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %txdata.i.i.i.i, align 4
  %76 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.dspi_pop_tx.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.dspi_pop_tx.exit.i.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_pop_tx.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %host_to_dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %host_to_dev.i.i.i.i, align 4
  call void %79(ptr noundef %1, ptr noundef nonnull %txdata.i.i.i.i) #8
  br label %dspi_pop_tx.exit.i.i.i

dspi_pop_tx.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %for.body.i.i.dspi_pop_tx.exit.i.i.i_crit_edge
  %80 = ptrtoint ptr %oper_word_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %oper_word_size.i, align 4
  %82 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len29, align 4
  %sub.i.i.i.i = sub i32 %83, %81
  store i32 %sub.i.i.i.i, ptr %len29, align 4
  %84 = ptrtoint ptr %txdata.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %txdata.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txdata.i.i.i.i) #8
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %slave.i.i.i.i = getelementptr inbounds %struct.spi_controller, ptr %87, i32 0, i32 12
  %88 = ptrtoint ptr %slave.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %slave.i.i.i.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.i.not.i.i.i = icmp eq i8 %89, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %dspi_pop_tx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i.i.i = and i32 %85, 65535
  br label %dspi_pop_tx_pushr.exit.i.i

if.end.i.i.i:                                     ; preds = %dspi_pop_tx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %81)
  %cmp.not.i.i.i = icmp eq i32 %83, %81
  %90 = or i16 %74, -32768
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i16 %74, i16 %90
  %conv8.i.i.i = zext i16 %spec.select.i.i.i to i32
  %shl.i.i.i = shl nuw i32 %conv8.i.i.i, 16
  %conv9.i.i.i = and i32 %85, 65535
  %or10.i.i.i = or i32 %shl.i.i.i, %conv9.i.i.i
  br label %dspi_pop_tx_pushr.exit.i.i

dspi_pop_tx_pushr.exit.i.i:                       ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %conv2.i.i.i, %if.then.i.i.i ], [ %or10.i.i.i, %if.end.i.i.i ]
  %91 = ptrtoint ptr %dma2.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma2.i.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %arrayidx.i.i = getelementptr i32, ptr %94, i32 %i.0165.i.i
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %retval.0.i.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0165.i.i, 1
  %96 = ptrtoint ptr %words_in_flight.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %words_in_flight.i.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %97
  br i1 %cmp.i.i, label %dspi_pop_tx_pushr.exit.i.i.for.body.i.i_crit_edge, label %dspi_pop_tx_pushr.exit.i.i.for.end.i.i_crit_edge

dspi_pop_tx_pushr.exit.i.i.for.end.i.i_crit_edge: ; preds = %dspi_pop_tx_pushr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

dspi_pop_tx_pushr.exit.i.i.for.body.i.i_crit_edge: ; preds = %dspi_pop_tx_pushr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %dspi_pop_tx_pushr.exit.i.i.for.end.i.i_crit_edge, %while.body.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %72, %while.body.i.for.end.i.i_crit_edge ], [ %97, %dspi_pop_tx_pushr.exit.i.i.for.end.i.i_crit_edge ]
  %chan_tx.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %71, i32 0, i32 1
  %98 = ptrtoint ptr %chan_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chan_tx.i.i, align 4
  %tx_dma_phys.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %71, i32 0, i32 2
  %100 = ptrtoint ptr %tx_dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_dma_phys.i.i, align 4
  %mul.i.i = shl i32 %.lcssa.i.i, 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i.i) #8
  %102 = call ptr @memset(ptr %sg.i.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i.i, i32 noundef 1) #8
  %103 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %101, ptr %6, align 4
  %104 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %mul.i.i, ptr %7, align 4
  %tobool.not.i.i.i = icmp eq ptr %99, null
  br i1 %tobool.not.i.i.i, label %for.end.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.end.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.end.i.i
  %105 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %99, align 4
  %tobool1.not.i.i.i = icmp eq ptr %106, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %device_prep_slave_sg.i.i.i = getelementptr inbounds %struct.dma_device, ptr %106, i32 0, i32 39
  %107 = ptrtoint ptr %device_prep_slave_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device_prep_slave_sg.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %108, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge, label %dmaengine_prep_slave_single.exit.i.i

lor.lhs.false2.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread.i.i

dmaengine_prep_slave_single.exit.thread.i.i:      ; preds = %lor.lhs.false2.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge, %for.end.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i) #8
  %tx_desc159.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %71, i32 0, i32 4
  %109 = ptrtoint ptr %tx_desc159.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %tx_desc159.i.i, align 4
  br label %do.end.i.i

dmaengine_prep_slave_single.exit.i.i:             ; preds = %lor.lhs.false2.i.i.i
  %call.i.i.i = call ptr %108(ptr noundef nonnull %99, ptr noundef nonnull %sg.i.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i) #8
  %tx_desc.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %71, i32 0, i32 4
  %110 = ptrtoint ptr %tx_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i.i.i, ptr %tx_desc.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %dmaengine_prep_slave_single.exit.i.i.do.end.i.i_crit_edge, label %if.end.i.i

dmaengine_prep_slave_single.exit.i.i.do.end.i.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %dmaengine_prep_slave_single.exit.i.i.do.end.i.i_crit_edge, %dmaengine_prep_slave_single.exit.thread.i.i
  %dev1.i44.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i44.i, ptr noundef nonnull @.str.46) #11
  br label %if.end50.thread113

if.end.i.i:                                       ; preds = %dmaengine_prep_slave_single.exit.i.i
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 6
  %111 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @dspi_tx_dma_callback, ptr %callback.i.i, align 4
  %112 = ptrtoint ptr %tx_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tx_desc.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %1, ptr %callback_param.i.i, align 4
  %115 = load ptr, ptr %tx_desc.i.i, align 4
  %tx_submit.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %tx_submit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tx_submit.i.i.i, align 4
  %call.i125.i.i = call i32 %117(ptr noundef %115) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i125.i.i)
  %tobool12.not.i.i = icmp sgt i32 %call.i125.i.i, -1
  br i1 %tobool12.not.i.i, label %if.end17.i.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.le66.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le66.i, ptr noundef nonnull @.str.49) #11
  br label %if.end50.thread113

if.end17.i.i:                                     ; preds = %if.end.i.i
  %chan_rx.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %71, i32 0, i32 6
  %118 = ptrtoint ptr %chan_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chan_rx.i.i, align 4
  %rx_dma_phys.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %71, i32 0, i32 7
  %120 = ptrtoint ptr %rx_dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rx_dma_phys.i.i, align 4
  %122 = ptrtoint ptr %words_in_flight.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %words_in_flight.i.i.i, align 4
  %mul19.i.i = shl i32 %123, 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i126.i.i) #8
  %124 = call ptr @memset(ptr %sg.i126.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i126.i.i, i32 noundef 1) #8
  %125 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %121, ptr %8, align 4
  %126 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %mul19.i.i, ptr %9, align 4
  %tobool.not.i127.i.i = icmp eq ptr %119, null
  br i1 %tobool.not.i127.i.i, label %if.end17.i.i.dmaengine_prep_slave_single.exit136.thread.i.i_crit_edge, label %lor.lhs.false.i129.i.i

if.end17.i.i.dmaengine_prep_slave_single.exit136.thread.i.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit136.thread.i.i

lor.lhs.false.i129.i.i:                           ; preds = %if.end17.i.i
  %127 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %119, align 4
  %tobool1.not.i128.i.i = icmp eq ptr %128, null
  br i1 %tobool1.not.i128.i.i, label %lor.lhs.false.i129.i.i.dmaengine_prep_slave_single.exit136.thread.i.i_crit_edge, label %lor.lhs.false2.i132.i.i

lor.lhs.false.i129.i.i.dmaengine_prep_slave_single.exit136.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i129.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit136.thread.i.i

lor.lhs.false2.i132.i.i:                          ; preds = %lor.lhs.false.i129.i.i
  %device_prep_slave_sg.i130.i.i = getelementptr inbounds %struct.dma_device, ptr %128, i32 0, i32 39
  %129 = ptrtoint ptr %device_prep_slave_sg.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device_prep_slave_sg.i130.i.i, align 4
  %tobool4.not.i131.i.i = icmp eq ptr %130, null
  br i1 %tobool4.not.i131.i.i, label %lor.lhs.false2.i132.i.i.dmaengine_prep_slave_single.exit136.thread.i.i_crit_edge, label %dmaengine_prep_slave_single.exit136.i.i

lor.lhs.false2.i132.i.i.dmaengine_prep_slave_single.exit136.thread.i.i_crit_edge: ; preds = %lor.lhs.false2.i132.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit136.thread.i.i

dmaengine_prep_slave_single.exit136.thread.i.i:   ; preds = %lor.lhs.false2.i132.i.i.dmaengine_prep_slave_single.exit136.thread.i.i_crit_edge, %lor.lhs.false.i129.i.i.dmaengine_prep_slave_single.exit136.thread.i.i_crit_edge, %if.end17.i.i.dmaengine_prep_slave_single.exit136.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i126.i.i) #8
  %rx_desc162.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %71, i32 0, i32 9
  %131 = ptrtoint ptr %rx_desc162.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %rx_desc162.i.i, align 4
  br label %do.end26.i.i

dmaengine_prep_slave_single.exit136.i.i:          ; preds = %lor.lhs.false2.i132.i.i
  %call.i133.i.i = call ptr %130(ptr noundef nonnull %119, ptr noundef nonnull %sg.i126.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i126.i.i) #8
  %rx_desc.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %71, i32 0, i32 9
  %132 = ptrtoint ptr %rx_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call.i133.i.i, ptr %rx_desc.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %call.i133.i.i, null
  br i1 %tobool22.not.i.i, label %dmaengine_prep_slave_single.exit136.i.i.do.end26.i.i_crit_edge, label %if.end27.i.i

dmaengine_prep_slave_single.exit136.i.i.do.end26.i.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit136.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %dmaengine_prep_slave_single.exit136.i.i.do.end26.i.i_crit_edge, %dmaengine_prep_slave_single.exit136.thread.i.i
  %dev1.i45.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i45.i, ptr noundef nonnull @.str.46) #11
  br label %if.end50.thread113

if.end27.i.i:                                     ; preds = %dmaengine_prep_slave_single.exit136.i.i
  %callback29.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i133.i.i, i32 0, i32 6
  %133 = ptrtoint ptr %callback29.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @dspi_rx_dma_callback, ptr %callback29.i.i, align 4
  %134 = ptrtoint ptr %rx_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rx_desc.i.i, align 4
  %callback_param31.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %135, i32 0, i32 8
  %136 = ptrtoint ptr %callback_param31.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %1, ptr %callback_param31.i.i, align 4
  %137 = load ptr, ptr %rx_desc.i.i, align 4
  %tx_submit.i137.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %tx_submit.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tx_submit.i137.i.i, align 4
  %call.i138.i.i = call i32 %139(ptr noundef %137) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i138.i.i)
  %tobool35.not.i.i = icmp sgt i32 %call.i138.i.i, -1
  br i1 %tobool35.not.i.i, label %if.end40.i.i, label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.le60.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le60.i, ptr noundef nonnull @.str.49) #11
  br label %if.end50.thread113

if.end40.i.i:                                     ; preds = %if.end27.i.i
  %140 = ptrtoint ptr %dma2.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dma2.i.i, align 4
  %cmd_rx_complete.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %141, i32 0, i32 8
  %142 = ptrtoint ptr %cmd_rx_complete.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %cmd_rx_complete.i.i, align 4
  %143 = load ptr, ptr %dma2.i.i, align 4
  %cmd_tx_complete.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %cmd_tx_complete.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %cmd_tx_complete.i.i, align 4
  %145 = ptrtoint ptr %chan_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %chan_rx.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %device_issue_pending.i.i.i = getelementptr inbounds %struct.dma_device, ptr %148, i32 0, i32 50
  %149 = ptrtoint ptr %device_issue_pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %device_issue_pending.i.i.i, align 4
  call void %150(ptr noundef %146) #8
  %151 = ptrtoint ptr %chan_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %chan_tx.i.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %device_issue_pending.i139.i.i = getelementptr inbounds %struct.dma_device, ptr %154, i32 0, i32 50
  %155 = ptrtoint ptr %device_issue_pending.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device_issue_pending.i139.i.i, align 4
  call void %156(ptr noundef %152) #8
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %slave.i.i.i = getelementptr inbounds %struct.spi_controller, ptr %158, i32 0, i32 12
  %159 = ptrtoint ptr %slave.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %slave.i.i.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.i.not.i.i = icmp eq i8 %160, 0
  %161 = ptrtoint ptr %dma2.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dma2.i.i, align 4
  br i1 %tobool.i.not.i.i, label %if.end50.i.i, label %if.then46.i.i

if.then46.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_rx_complete48.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %162, i32 0, i32 8
  %call49.i.i = call i32 @wait_for_completion_interruptible(ptr noundef %cmd_rx_complete48.i.i) #8
  br label %dspi_next_xfer_dma_submit.exit.i

if.end50.i.i:                                     ; preds = %if.end40.i.i
  %cmd_tx_complete52.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %162, i32 0, i32 3
  %call54.i.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_tx_complete52.i.i, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %cmp55.i.i = icmp eq i32 %call54.i.i, 0
  br i1 %cmp55.i.i, label %do.end59.i.i, label %if.end64.i.i

do.end59.i.i:                                     ; preds = %if.end50.i.i
  %dev1.i.le58.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le58.i, ptr noundef nonnull @.str.56) #11
  %163 = ptrtoint ptr %chan_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %chan_tx.i.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %166, i32 0, i32 47
  %167 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i140.i.i = icmp eq ptr %168, null
  br i1 %tobool.not.i140.i.i, label %do.end59.i.i.dmaengine_terminate_all.exit.i.i_crit_edge, label %if.then.i142.i.i

do.end59.i.i.dmaengine_terminate_all.exit.i.i_crit_edge: ; preds = %do.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit.i.i

if.then.i142.i.i:                                 ; preds = %do.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i141.i.i = call i32 %168(ptr noundef %164) #8
  br label %dmaengine_terminate_all.exit.i.i

dmaengine_terminate_all.exit.i.i:                 ; preds = %if.then.i142.i.i, %do.end59.i.i.dmaengine_terminate_all.exit.i.i_crit_edge
  %169 = ptrtoint ptr %chan_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %chan_rx.i.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %device_terminate_all.i143.i.i = getelementptr inbounds %struct.dma_device, ptr %172, i32 0, i32 47
  %173 = ptrtoint ptr %device_terminate_all.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %device_terminate_all.i143.i.i, align 4
  %tobool.not.i144.i.i = icmp eq ptr %174, null
  br i1 %tobool.not.i144.i.i, label %dmaengine_terminate_all.exit.i.i.if.end50.thread113_crit_edge, label %if.then.i146.i.i

dmaengine_terminate_all.exit.i.i.if.end50.thread113_crit_edge: ; preds = %dmaengine_terminate_all.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.thread113

if.then.i146.i.i:                                 ; preds = %dmaengine_terminate_all.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i145.i.i = call i32 %174(ptr noundef %170) #8
  br label %if.end50.thread113

if.end64.i.i:                                     ; preds = %if.end50.i.i
  %175 = ptrtoint ptr %dma2.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dma2.i.i, align 4
  %cmd_rx_complete66.i.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %176, i32 0, i32 8
  %call68.i.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_rx_complete66.i.i, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i)
  %cmp69.i.i = icmp eq i32 %call68.i.i, 0
  br i1 %cmp69.i.i, label %do.end73.i.i, label %if.end64.i.i.dspi_next_xfer_dma_submit.exit.i_crit_edge

if.end64.i.i.dspi_next_xfer_dma_submit.exit.i_crit_edge: ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_next_xfer_dma_submit.exit.i

do.end73.i.i:                                     ; preds = %if.end64.i.i
  %dev1.i.le.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le.i, ptr noundef nonnull @.str.59) #11
  %177 = ptrtoint ptr %chan_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %chan_tx.i.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %device_terminate_all.i148.i.i = getelementptr inbounds %struct.dma_device, ptr %180, i32 0, i32 47
  %181 = ptrtoint ptr %device_terminate_all.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %device_terminate_all.i148.i.i, align 4
  %tobool.not.i149.i.i = icmp eq ptr %182, null
  br i1 %tobool.not.i149.i.i, label %do.end73.i.i.dmaengine_terminate_all.exit152.i.i_crit_edge, label %if.then.i151.i.i

do.end73.i.i.dmaengine_terminate_all.exit152.i.i_crit_edge: ; preds = %do.end73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit152.i.i

if.then.i151.i.i:                                 ; preds = %do.end73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i150.i.i = call i32 %182(ptr noundef %178) #8
  br label %dmaengine_terminate_all.exit152.i.i

dmaengine_terminate_all.exit152.i.i:              ; preds = %if.then.i151.i.i, %do.end73.i.i.dmaengine_terminate_all.exit152.i.i_crit_edge
  %183 = ptrtoint ptr %chan_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %chan_rx.i.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %device_terminate_all.i153.i.i = getelementptr inbounds %struct.dma_device, ptr %186, i32 0, i32 47
  %187 = ptrtoint ptr %device_terminate_all.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %device_terminate_all.i153.i.i, align 4
  %tobool.not.i154.i.i = icmp eq ptr %188, null
  br i1 %tobool.not.i154.i.i, label %dmaengine_terminate_all.exit152.i.i.if.end50.thread113_crit_edge, label %if.then.i156.i.i

dmaengine_terminate_all.exit152.i.i.if.end50.thread113_crit_edge: ; preds = %dmaengine_terminate_all.exit152.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.thread113

if.then.i156.i.i:                                 ; preds = %dmaengine_terminate_all.exit152.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i155.i.i = call i32 %188(ptr noundef %184) #8
  br label %if.end50.thread113

dspi_next_xfer_dma_submit.exit.i:                 ; preds = %if.end64.i.i.dspi_next_xfer_dma_submit.exit.i_crit_edge, %if.then46.i.i
  %189 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %len29, align 4
  %tobool.not.i = icmp eq i32 %190, 0
  br i1 %tobool.not.i, label %dspi_next_xfer_dma_submit.exit.i.if.end53_crit_edge, label %dspi_next_xfer_dma_submit.exit.i.while.body.i_crit_edge

dspi_next_xfer_dma_submit.exit.i.while.body.i_crit_edge: ; preds = %dspi_next_xfer_dma_submit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

dspi_next_xfer_dma_submit.exit.i.if.end53_crit_edge: ; preds = %dspi_next_xfer_dma_submit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end50.thread113:                               ; preds = %if.then.i156.i.i, %dmaengine_terminate_all.exit152.i.i.if.end50.thread113_crit_edge, %if.then.i146.i.i, %dmaengine_terminate_all.exit.i.i.if.end50.thread113_crit_edge, %do.end39.i.i, %do.end26.i.i, %do.end16.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -110, %if.then.i156.i.i ], [ -110, %dmaengine_terminate_all.exit152.i.i.if.end50.thread113_crit_edge ], [ -110, %if.then.i146.i.i ], [ -110, %dmaengine_terminate_all.exit.i.i.if.end50.thread113_crit_edge ], [ -5, %do.end.i.i ], [ -5, %do.end26.i.i ], [ -22, %do.end39.i.i ], [ -22, %do.end16.i.i ]
  %dev1.i157 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i157, ptr noundef nonnull @.str.44) #11
  br label %for.end

if.else40:                                        ; preds = %if.end28
  call fastcc void @dspi_fifo_write(ptr noundef %1)
  %191 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool42.not = icmp eq i32 %192, 0
  br i1 %tobool42.not, label %if.else40.do.body_crit_edge, label %if.then43

if.else40.do.body_crit_edge:                      ; preds = %if.else40
  br label %do.body

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  call void @wait_for_completion(ptr noundef %xfer_done) #8
  %193 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %xfer_done, align 4
  br label %if.end53

do.body:                                          ; preds = %dspi_poll.exit, %if.else40.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi_sr.i) #8
  %194 = ptrtoint ptr %spi_sr.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 -1, ptr %spi_sr.i, align 4, !annotation !176
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body
  %tries.0.i = phi i32 [ 1000, %do.body ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %195 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regmap, align 4
  %call.i102 = call i32 @regmap_read(ptr noundef %196, i32 noundef 44, ptr noundef nonnull %spi_sr.i) #8
  %197 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regmap, align 4
  %199 = ptrtoint ptr %spi_sr.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %spi_sr.i, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %198, i32 noundef 44, i32 noundef %200) #8
  %201 = ptrtoint ptr %spi_sr.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %spi_sr.i, align 4
  %and.i = and i32 %202, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i103 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i103, label %do.cond.i, label %if.end6.i

do.cond.i:                                        ; preds = %do.body.i
  %dec.i = add nsw i32 %tries.0.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %if.end50, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end6.i:                                        ; preds = %do.body.i
  %203 = ptrtoint ptr %words_in_flight.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %words_in_flight.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not3.i.i.i = icmp eq i32 %204, 0
  br i1 %tobool.not3.i.i.i, label %if.end6.i.dspi_fifo_read.exit.i.i_crit_edge, label %if.end6.i.while.body.i.i.i_crit_edge

if.end6.i.while.body.i.i.i_crit_edge:             ; preds = %if.end6.i
  br label %while.body.i.i.i

if.end6.i.dspi_fifo_read.exit.i.i_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_fifo_read.exit.i.i

while.body.i.i.i:                                 ; preds = %dspi_push_rx.exit.i.i.i.while.body.i.i.i_crit_edge, %if.end6.i.while.body.i.i.i_crit_edge
  %num_fifo_entries.04.i.i.i = phi i32 [ %dec.i.i.i, %dspi_push_rx.exit.i.i.i.while.body.i.i.i_crit_edge ], [ %204, %if.end6.i.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %num_fifo_entries.04.i.i.i, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxdata.i.i.i.i) #8
  %205 = ptrtoint ptr %rxdata.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %rxdata.i.i.i.i, align 4
  %206 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regmap, align 4
  %call.i.i.i.i = call i32 @regmap_read(ptr noundef %207, i32 noundef 56, ptr noundef nonnull %rxdata.i.i.i.i) #8
  %208 = ptrtoint ptr %rxdata.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %rxdata.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxdata.i.i.i.i) #8
  %210 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rx, align 4
  %tobool.not.i.i.i.i104 = icmp eq ptr %211, null
  br i1 %tobool.not.i.i.i.i104, label %while.body.i.i.i.dspi_push_rx.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

while.body.i.i.i.dspi_push_rx.exit.i.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_push_rx.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %dev_to_host.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev_to_host.i.i.i.i, align 4
  call void %213(ptr noundef %1, i32 noundef %209) #8
  br label %dspi_push_rx.exit.i.i.i

dspi_push_rx.exit.i.i.i:                          ; preds = %if.end.i.i.i.i, %while.body.i.i.i.dspi_push_rx.exit.i.i.i_crit_edge
  %tobool.not.i.i.i105 = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i105, label %dspi_push_rx.exit.i.i.i.dspi_fifo_read.exit.i.i_crit_edge, label %dspi_push_rx.exit.i.i.i.while.body.i.i.i_crit_edge

dspi_push_rx.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %dspi_push_rx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

dspi_push_rx.exit.i.i.i.dspi_fifo_read.exit.i.i_crit_edge: ; preds = %dspi_push_rx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_fifo_read.exit.i.i

dspi_fifo_read.exit.i.i:                          ; preds = %dspi_push_rx.exit.i.i.i.dspi_fifo_read.exit.i.i_crit_edge, %if.end6.i.dspi_fifo_read.exit.i.i_crit_edge
  %214 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %len29, align 4
  %tobool.not.i.i106 = icmp eq i32 %215, 0
  br i1 %tobool.not.i.i106, label %if.end50.thread116, label %dspi_poll.exit

if.end50.thread116:                               ; preds = %dspi_fifo_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_sr.i) #8
  br label %if.end53

dspi_poll.exit:                                   ; preds = %dspi_fifo_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @dspi_fifo_write(ptr noundef %1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_sr.i) #8
  br label %do.body

if.end50:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_sr.i) #8
  br label %for.end

if.end53:                                         ; preds = %if.end50.thread116, %if.then43, %dspi_next_xfer_dma_submit.exit.i.if.end53_crit_edge, %if.then38.if.end53_crit_edge
  %delay.i = getelementptr i8, ptr %.pn178, i32 -38
  %call.i108 = call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %transfer.0179) #8
  %216 = ptrtoint ptr %.pn178 to i32
  call void @__asan_load4_noabort(i32 %216)
  %.pn = load ptr, ptr %.pn178, align 4
  %cmp.not = icmp eq ptr %.pn, %message
  br i1 %cmp.not, label %if.end53.for.end_crit_edge, label %if.end53.for.body_crit_edge

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end53.for.end_crit_edge, %if.end50, %if.end50.thread113, %entry.for.end_crit_edge
  %status.2 = phi i32 [ -110, %if.end50 ], [ %retval.0.i.ph.i, %if.end50.thread113 ], [ 0, %entry.for.end_crit_edge ], [ 0, %if.end53.for.end_crit_edge ]
  %status60 = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 7
  %217 = ptrtoint ptr %status60 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %status.2, ptr %status60, align 4
  call void @spi_finalize_current_message(ptr noundef %ctlr) #8
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dspi_cleanup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dspi_cleanup.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dspi_cleanup, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 8
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bus_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus_num, align 8
  %conv = sext i16 %5 to i32
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  %conv5 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dspi_cleanup.__UNIQUE_ID_ddebug238, ptr noundef %spi, ptr noundef nonnull @.str.63, i32 noundef %conv, i32 noundef %conv5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dspi_slave_abort(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %devtype_data = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %dma = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 4
  %chan_rx = getelementptr inbounds %struct.fsl_dspi_dma, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_rx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.dmaengine_terminate_sync.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %13(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.64, i32 noundef 1169) #8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 48
  %16 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %17, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %17(ptr noundef %9) #8
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then.dmaengine_terminate_sync.exit_crit_edge
  %18 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma, align 4
  %chan_tx = getelementptr inbounds %struct.fsl_dspi_dma, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan_tx, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %device_terminate_all.i.i8 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 47
  %24 = ptrtoint ptr %device_terminate_all.i.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_terminate_all.i.i8, align 4
  %tobool.not.i.i9 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i9, label %dmaengine_terminate_sync.exit.if.end_crit_edge, label %dmaengine_terminate_async.exit.i12

dmaengine_terminate_sync.exit.if.end_crit_edge:   ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dmaengine_terminate_async.exit.i12:               ; preds = %dmaengine_terminate_sync.exit
  %call.i.i10 = tail call i32 %25(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %tobool.not.i11 = icmp eq i32 %call.i.i10, 0
  br i1 %tobool.not.i11, label %if.end.i15, label %dmaengine_terminate_async.exit.i12.if.end_crit_edge

dmaengine_terminate_async.exit.i12.if.end_crit_edge: ; preds = %dmaengine_terminate_async.exit.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i15:                                       ; preds = %dmaengine_terminate_async.exit.i12
  tail call void @__might_sleep(ptr noundef nonnull @.str.64, i32 noundef 1169) #8
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  %device_synchronize.i.i13 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 48
  %28 = ptrtoint ptr %device_synchronize.i.i13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_synchronize.i.i13, align 4
  %tobool.not.i1.i14 = icmp eq ptr %29, null
  br i1 %tobool.not.i1.i14, label %if.end.i15.if.end_crit_edge, label %if.then.i2.i16

if.end.i15.if.end_crit_edge:                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i2.i16:                                   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %29(ptr noundef %21) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i2.i16, %if.end.i15.if.end_crit_edge, %dmaengine_terminate_async.exit.i12.if.end_crit_edge, %dmaengine_terminate_sync.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 0, i32 noundef 3072, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dspi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %rxdata.i.i.i = alloca i32, align 4
  %spi_sr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi_sr) #8
  %0 = ptrtoint ptr %spi_sr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %spi_sr, align 4, !annotation !176
  %regmap = getelementptr inbounds %struct.fsl_dspi, ptr %dev_id, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 44, ptr noundef nonnull %spi_sr) #8
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %spi_sr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %spi_sr, align 4
  %call2 = call i32 @regmap_write(ptr noundef %4, i32 noundef 44, i32 noundef %6) #8
  %7 = ptrtoint ptr %spi_sr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spi_sr, align 4
  %and = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %words_in_flight.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %dev_id, i32 0, i32 19
  %9 = ptrtoint ptr %words_in_flight.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %words_in_flight.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not3.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not3.i.i, label %if.end.dspi_fifo_read.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end.dspi_fifo_read.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_fifo_read.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end
  %rx.i.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %dev_id, i32 0, i32 12
  %dev_to_host.i.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %dev_id, i32 0, i32 23
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %dspi_push_rx.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %num_fifo_entries.04.i.i = phi i32 [ %10, %while.body.lr.ph.i.i ], [ %dec.i.i, %dspi_push_rx.exit.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %num_fifo_entries.04.i.i, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxdata.i.i.i) #8
  %11 = ptrtoint ptr %rxdata.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rxdata.i.i.i, align 4
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 56, ptr noundef nonnull %rxdata.i.i.i) #8
  %14 = ptrtoint ptr %rxdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxdata.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxdata.i.i.i) #8
  %16 = ptrtoint ptr %rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i.dspi_push_rx.exit.i.i_crit_edge, label %if.end.i.i.i

while.body.i.i.dspi_push_rx.exit.i.i_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_push_rx.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev_to_host.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_to_host.i.i.i, align 4
  call void %19(ptr noundef %dev_id, i32 noundef %15) #8
  br label %dspi_push_rx.exit.i.i

dspi_push_rx.exit.i.i:                            ; preds = %if.end.i.i.i, %while.body.i.i.dspi_push_rx.exit.i.i_crit_edge
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %dspi_push_rx.exit.i.i.dspi_fifo_read.exit.i_crit_edge, label %dspi_push_rx.exit.i.i.while.body.i.i_crit_edge

dspi_push_rx.exit.i.i.while.body.i.i_crit_edge:   ; preds = %dspi_push_rx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

dspi_push_rx.exit.i.i.dspi_fifo_read.exit.i_crit_edge: ; preds = %dspi_push_rx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_fifo_read.exit.i

dspi_fifo_read.exit.i:                            ; preds = %dspi_push_rx.exit.i.i.dspi_fifo_read.exit.i_crit_edge, %if.end.dspi_fifo_read.exit.i_crit_edge
  %len.i = getelementptr inbounds %struct.fsl_dspi, ptr %dev_id, i32 0, i32 10
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then4, label %dspi_rxtx.exit

dspi_rxtx.exit:                                   ; preds = %dspi_fifo_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @dspi_fifo_write(ptr noundef %dev_id) #8
  br label %cleanup

if.then4:                                         ; preds = %dspi_fifo_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %xfer_done = getelementptr inbounds %struct.fsl_dspi, ptr %dev_id, i32 0, i32 15
  call void @complete(ptr noundef %xfer_done) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %dspi_rxtx.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then4 ], [ 1, %dspi_rxtx.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_sr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dspi_request_dma(ptr nocapture noundef %dspi, i32 noundef %phy_addr) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype_data = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 14
  %0 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype_data, align 4
  %fifo_size = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_size, align 4
  %mul = shl i32 %3, 1
  %pdev = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #8
  %6 = call ptr @memset(ptr %cfg, i32 255, i32 48)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 144, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.69) #8
  %chan_rx = getelementptr inbounds %struct.fsl_dspi_dma, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %chan_rx, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70) #11
  %8 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_rx, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.72) #8
  %chan_tx = getelementptr inbounds %struct.fsl_dspi_dma, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %chan_tx, align 4
  %cmp.i115 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.74) #11
  %12 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan_tx, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %err_tx_channel

if.end18:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call9, align 4
  %dev20 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev20, align 4
  %tx_dma_phys = getelementptr inbounds %struct.fsl_dspi_dma, ptr %call.i, i32 0, i32 2
  %call.i116 = tail call ptr @dma_alloc_attrs(ptr noundef %18, i32 noundef %mul, ptr noundef %tx_dma_phys, i32 noundef 3264, i32 noundef 0) #8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i116, ptr %call.i, align 4
  %tobool23.not = icmp eq ptr %call.i116, null
  br i1 %tobool23.not, label %if.end18.err_tx_dma_buf_crit_edge, label %if.end25

if.end18.err_tx_dma_buf_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_tx_dma_buf

if.end25:                                         ; preds = %if.end18
  %20 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan_rx, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev28 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev28, align 4
  %rx_dma_phys = getelementptr inbounds %struct.fsl_dspi_dma, ptr %call.i, i32 0, i32 7
  %call.i117 = tail call ptr @dma_alloc_attrs(ptr noundef %25, i32 noundef %mul, ptr noundef %rx_dma_phys, i32 noundef 3264, i32 noundef 0) #8
  %rx_dma_buf = getelementptr inbounds %struct.fsl_dspi_dma, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i117, ptr %rx_dma_buf, align 4
  %tobool31.not = icmp eq ptr %call.i117, null
  br i1 %tobool31.not, label %if.end25.err_rx_dma_buf_crit_edge, label %if.end33

if.end25.err_rx_dma_buf_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rx_dma_buf

if.end33:                                         ; preds = %if.end25
  %27 = getelementptr inbounds i8, ptr %cfg, i32 28
  %28 = call ptr @memset(ptr %27, i32 0, i32 20)
  %add = add i32 %phy_addr, 56
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %29 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %src_addr, align 4
  %add34 = add i32 %phy_addr, 52
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %30 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add34, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %31 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %32 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 5
  %33 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 6
  %34 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %dst_maxburst, align 4
  %35 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %cfg, align 4
  %36 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan_rx, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end33.err_slave_config_crit_edge, label %dmaengine_slave_config.exit

if.end33.err_slave_config_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_slave_config

dmaengine_slave_config.exit:                      ; preds = %if.end33
  %call.i118 = call i32 %41(ptr noundef %37, ptr noundef nonnull %cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool37.not = icmp eq i32 %call.i118, 0
  br i1 %tobool37.not, label %if.end42, label %dmaengine_slave_config.exit.err_slave_config_crit_edge

dmaengine_slave_config.exit.err_slave_config_crit_edge: ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_slave_config

if.end42:                                         ; preds = %dmaengine_slave_config.exit
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %cfg, align 4
  %43 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan_tx, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %device_config.i119 = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %device_config.i119 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_config.i119, align 4
  %tobool.not.i120 = icmp eq ptr %48, null
  br i1 %tobool.not.i120, label %if.end42.err_slave_config_crit_edge, label %dmaengine_slave_config.exit124

if.end42.err_slave_config_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_slave_config

dmaengine_slave_config.exit124:                   ; preds = %if.end42
  %call.i121 = call i32 %48(ptr noundef %44, ptr noundef nonnull %cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool46.not = icmp eq i32 %call.i121, 0
  br i1 %tobool46.not, label %if.end51, label %dmaengine_slave_config.exit124.err_slave_config_crit_edge

dmaengine_slave_config.exit124.err_slave_config_crit_edge: ; preds = %dmaengine_slave_config.exit124
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_slave_config

if.end51:                                         ; preds = %dmaengine_slave_config.exit124
  call void @__sanitizer_cov_trace_pc() #10
  %dma52 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 16
  %49 = ptrtoint ptr %dma52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %dma52, align 4
  %cmd_tx_complete = getelementptr inbounds %struct.fsl_dspi_dma, ptr %call.i, i32 0, i32 3
  %50 = ptrtoint ptr %cmd_tx_complete to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %cmd_tx_complete, align 4
  %wait.i = getelementptr inbounds %struct.fsl_dspi_dma, ptr %call.i, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @init_completion.__key) #8
  %cmd_rx_complete = getelementptr inbounds %struct.fsl_dspi_dma, ptr %call.i, i32 0, i32 8
  %51 = ptrtoint ptr %cmd_rx_complete to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %cmd_rx_complete, align 4
  %wait.i125 = getelementptr inbounds %struct.fsl_dspi_dma, ptr %call.i, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i125, ptr noundef nonnull @.str.68, ptr noundef nonnull @init_completion.__key) #8
  br label %cleanup

err_slave_config:                                 ; preds = %dmaengine_slave_config.exit124.err_slave_config_crit_edge, %if.end42.err_slave_config_crit_edge, %dmaengine_slave_config.exit.err_slave_config_crit_edge, %if.end33.err_slave_config_crit_edge
  %.str.80.sink = phi ptr [ @.str.77, %if.end33.err_slave_config_crit_edge ], [ @.str.77, %dmaengine_slave_config.exit.err_slave_config_crit_edge ], [ @.str.80, %if.end42.err_slave_config_crit_edge ], [ @.str.80, %dmaengine_slave_config.exit124.err_slave_config_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.80.sink) #11
  %52 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan_rx, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %dev55 = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev55, align 4
  %58 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rx_dma_buf, align 4
  %60 = ptrtoint ptr %rx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_dma_phys, align 4
  call void @dma_free_attrs(ptr noundef %57, i32 noundef %mul, ptr noundef %59, i32 noundef %61, i32 noundef 0) #8
  br label %err_rx_dma_buf

err_rx_dma_buf:                                   ; preds = %err_slave_config, %if.end25.err_rx_dma_buf_crit_edge
  %ret.1 = phi i32 [ -22, %err_slave_config ], [ -12, %if.end25.err_rx_dma_buf_crit_edge ]
  %62 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chan_tx, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %dev60 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev60, align 4
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %70 = ptrtoint ptr %tx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_dma_phys, align 4
  call void @dma_free_attrs(ptr noundef %67, i32 noundef %mul, ptr noundef %69, i32 noundef %71, i32 noundef 0) #8
  br label %err_tx_dma_buf

err_tx_dma_buf:                                   ; preds = %err_rx_dma_buf, %if.end18.err_tx_dma_buf_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_rx_dma_buf ], [ -12, %if.end18.err_tx_dma_buf_crit_edge ]
  %72 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chan_tx, align 4
  call void @dma_release_channel(ptr noundef %73) #8
  br label %err_tx_channel

err_tx_channel:                                   ; preds = %err_tx_dma_buf, %do.end15
  %ret.3 = phi i32 [ %14, %do.end15 ], [ %ret.2, %err_tx_dma_buf ]
  %74 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chan_rx, align 4
  call void @dma_release_channel(ptr noundef %75) #8
  call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call.i) #8
  %dma65 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 16
  %76 = ptrtoint ptr %dma65 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %dma65, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_tx_channel, %if.end51, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %ret.3, %err_tx_channel ], [ 0, %if.end51 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dspi_release_dma(ptr nocapture noundef readonly %dspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype_data = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 14
  %0 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype_data, align 4
  %fifo_size = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_size, align 4
  %mul = shl i32 %3, 1
  %dma1 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 16
  %4 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %chan_tx = getelementptr inbounds %struct.fsl_dspi_dma, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan_tx, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %tx_dma_phys = getelementptr inbounds %struct.fsl_dspi_dma, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %tx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_dma_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %mul, ptr noundef %13, i32 noundef %15, i32 noundef 0) #8
  %16 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan_tx, align 4
  tail call void @dma_release_channel(ptr noundef %17) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %chan_rx = getelementptr inbounds %struct.fsl_dspi_dma, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan_rx, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev11 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev11, align 4
  %rx_dma_buf = getelementptr inbounds %struct.fsl_dspi_dma, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_dma_buf, align 4
  %rx_dma_phys = getelementptr inbounds %struct.fsl_dspi_dma, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %rx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dma_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %mul, ptr noundef %25, i32 noundef %27, i32 noundef 0) #8
  %28 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan_rx, align 4
  tail call void @dma_release_channel(ptr noundef %29) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns_delay_scale(ptr nocapture noundef writeonly %psc, ptr nocapture noundef writeonly %sc, i32 noundef %delay_ns, i32 noundef %clkrate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %delay_ns to i64
  %conv1 = zext i32 %clkrate to i64
  %mul = mul nsw i64 %conv1, %conv
  %0 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #13, !srcloc !179
  %asmresult.i.i = extractvalue { i64, i32 } %0, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %0, 1
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i, i32 %asmresult4.i.i) #13, !srcloc !180
  %asmresult10.i.i = extractvalue { i64, i32 } %1, 0
  %conv14.i = trunc i64 %mul to i32
  %div1581.i = lshr i64 %asmresult10.i.i, 29
  %conv159.i = trunc i64 %div1581.i to i32
  %mul160.neg.i = mul i32 %conv159.i, -1000000000
  %sub161.i = sub i32 0, %conv14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul160.neg.i, i32 %sub161.i)
  %tobool.not = icmp ne i32 %mul160.neg.i, %sub161.i
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %inc, %conv159.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select)
  %cmp9.not = icmp sgt i32 %spec.select, 2
  br i1 %cmp9.not, label %for.inc, label %entry.if.end27.sink.split_crit_edge

entry.if.end27.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.sink.split

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select)
  %cmp9.not.1 = icmp ugt i32 %spec.select, 4
  br i1 %cmp9.not.1, label %for.inc.1, label %for.inc.if.end27.sink.split_crit_edge

for.inc.if.end27.sink.split_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.sink.split

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.select)
  %cmp9.not.2 = icmp ugt i32 %spec.select, 8
  br i1 %cmp9.not.2, label %for.inc.2, label %for.inc20

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select)
  %cmp9.not.3 = icmp ugt i32 %spec.select, 16
  br i1 %cmp9.not.3, label %for.inc.3, label %for.inc.151

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %spec.select)
  %cmp9.not.4 = icmp ugt i32 %spec.select, 32
  br i1 %cmp9.not.4, label %for.inc.4, label %for.inc.1.1

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select)
  %cmp9.not.5 = icmp ugt i32 %spec.select, 64
  br i1 %cmp9.not.5, label %for.inc.5, label %for.inc.2.1

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %spec.select)
  %cmp9.not.6 = icmp ugt i32 %spec.select, 128
  br i1 %cmp9.not.6, label %for.inc.6, label %for.inc.3.1

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %spec.select)
  %cmp9.not.7 = icmp ugt i32 %spec.select, 256
  br i1 %cmp9.not.7, label %for.inc.7, label %for.inc.4.1

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %spec.select)
  %cmp9.not.8 = icmp ugt i32 %spec.select, 512
  br i1 %cmp9.not.8, label %for.inc.8, label %for.inc.5.1

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %spec.select)
  %cmp9.not.9 = icmp ugt i32 %spec.select, 1024
  br i1 %cmp9.not.9, label %for.inc.9, label %for.inc.6.1

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %spec.select)
  %cmp9.not.10 = icmp ugt i32 %spec.select, 2048
  br i1 %cmp9.not.10, label %for.inc.10, label %for.inc.7.1

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %spec.select)
  %cmp9.not.11 = icmp ugt i32 %spec.select, 4096
  br i1 %cmp9.not.11, label %for.inc.11, label %for.inc.8.1

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %spec.select)
  %cmp9.not.12 = icmp ugt i32 %spec.select, 8192
  br i1 %cmp9.not.12, label %for.inc.12, label %for.inc.9.1

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %spec.select)
  %cmp9.not.13 = icmp ugt i32 %spec.select, 16384
  br i1 %cmp9.not.13, label %for.inc.13, label %for.inc.10.1

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %spec.select)
  %cmp9.not.14 = icmp ugt i32 %spec.select, 32768
  br i1 %cmp9.not.14, label %for.inc.14, label %for.inc.11.1

for.inc.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %spec.select)
  %cmp9.not.15 = icmp ugt i32 %spec.select, 65536
  br i1 %cmp9.not.15, label %for.inc.13.1, label %for.inc.12.1

for.inc20:                                        ; preds = %for.inc.1
  %2 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %psc, align 1
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %spec.select)
  %cmp9.not.150 = icmp ugt i32 %spec.select, 6
  br i1 %cmp9.not.150, label %for.inc20.if.end27_crit_edge, label %for.inc20.if.end27.sink.split_crit_edge

for.inc20.if.end27.sink.split_crit_edge:          ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.sink.split

for.inc20.if.end27_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

for.inc.151:                                      ; preds = %for.inc.2
  %4 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %psc, align 1
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %spec.select)
  %cmp9.not.1.1 = icmp ugt i32 %spec.select, 12
  br i1 %cmp9.not.1.1, label %for.inc.151.for.inc20.2_crit_edge, label %for.inc20.1

for.inc.151.for.inc20.2_crit_edge:                ; preds = %for.inc.151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20.2

for.inc.1.1:                                      ; preds = %for.inc.3
  %6 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %psc, align 1
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %spec.select)
  %cmp9.not.2.1 = icmp ugt i32 %spec.select, 24
  br i1 %cmp9.not.2.1, label %for.inc.1.1.for.inc.357_crit_edge, label %for.inc.254

for.inc.1.1.for.inc.357_crit_edge:                ; preds = %for.inc.1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.357

for.inc.2.1:                                      ; preds = %for.inc.4
  %8 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %psc, align 1
  %9 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %spec.select)
  %cmp9.not.3.1 = icmp ugt i32 %spec.select, 48
  br i1 %cmp9.not.3.1, label %for.inc.2.1.for.inc.1.3_crit_edge, label %for.inc.2.1.for.inc.254.thread303_crit_edge

for.inc.2.1.for.inc.254.thread303_crit_edge:      ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.2.1.for.inc.1.3_crit_edge:                ; preds = %for.inc.2.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.3

for.inc.3.1:                                      ; preds = %for.inc.5
  %10 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %psc, align 1
  %11 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %spec.select)
  %cmp9.not.4.1 = icmp ugt i32 %spec.select, 96
  br i1 %cmp9.not.4.1, label %for.inc.3.1.for.inc.2.3_crit_edge, label %for.inc.3.1.for.inc.254.thread303_crit_edge

for.inc.3.1.for.inc.254.thread303_crit_edge:      ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.3.1.for.inc.2.3_crit_edge:                ; preds = %for.inc.3.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.3

for.inc.4.1:                                      ; preds = %for.inc.6
  %12 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %psc, align 1
  %13 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %spec.select)
  %cmp9.not.5.1 = icmp ugt i32 %spec.select, 192
  br i1 %cmp9.not.5.1, label %for.inc.4.1.for.inc.3.3_crit_edge, label %for.inc.4.1.for.inc.254.thread303_crit_edge

for.inc.4.1.for.inc.254.thread303_crit_edge:      ; preds = %for.inc.4.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.4.1.for.inc.3.3_crit_edge:                ; preds = %for.inc.4.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.3

for.inc.5.1:                                      ; preds = %for.inc.7
  %14 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %psc, align 1
  %15 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %spec.select)
  %cmp9.not.6.1 = icmp ugt i32 %spec.select, 384
  br i1 %cmp9.not.6.1, label %for.inc.5.1.for.inc.4.3_crit_edge, label %for.inc.5.1.for.inc.254.thread303_crit_edge

for.inc.5.1.for.inc.254.thread303_crit_edge:      ; preds = %for.inc.5.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.5.1.for.inc.4.3_crit_edge:                ; preds = %for.inc.5.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.3

for.inc.6.1:                                      ; preds = %for.inc.8
  %16 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %psc, align 1
  %17 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 9, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %spec.select)
  %cmp9.not.7.1 = icmp ugt i32 %spec.select, 768
  br i1 %cmp9.not.7.1, label %for.inc.6.1.for.inc.5.3_crit_edge, label %for.inc.6.1.for.inc.254.thread303_crit_edge

for.inc.6.1.for.inc.254.thread303_crit_edge:      ; preds = %for.inc.6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.6.1.for.inc.5.3_crit_edge:                ; preds = %for.inc.6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.3

for.inc.7.1:                                      ; preds = %for.inc.9
  %18 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %psc, align 1
  %19 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %spec.select)
  %cmp9.not.8.1 = icmp ugt i32 %spec.select, 1536
  br i1 %cmp9.not.8.1, label %for.inc.7.1.for.inc.6.3_crit_edge, label %for.inc.7.1.for.inc.254.thread303_crit_edge

for.inc.7.1.for.inc.254.thread303_crit_edge:      ; preds = %for.inc.7.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.7.1.for.inc.6.3_crit_edge:                ; preds = %for.inc.7.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.3

for.inc.8.1:                                      ; preds = %for.inc.10
  %20 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %psc, align 1
  %21 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 11, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %spec.select)
  %cmp9.not.9.1 = icmp ugt i32 %spec.select, 3072
  br i1 %cmp9.not.9.1, label %for.inc.8.1.for.inc.7.3_crit_edge, label %for.inc.8.1.for.inc.254.thread303_crit_edge

for.inc.8.1.for.inc.254.thread303_crit_edge:      ; preds = %for.inc.8.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.8.1.for.inc.7.3_crit_edge:                ; preds = %for.inc.8.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7.3

for.inc.9.1:                                      ; preds = %for.inc.11
  %22 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %psc, align 1
  %23 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 12, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %spec.select)
  %cmp9.not.10.1 = icmp ugt i32 %spec.select, 6144
  br i1 %cmp9.not.10.1, label %for.inc.9.1.for.inc.8.3_crit_edge, label %for.inc.9.1.for.inc.254.thread303_crit_edge

for.inc.9.1.for.inc.254.thread303_crit_edge:      ; preds = %for.inc.9.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.9.1.for.inc.8.3_crit_edge:                ; preds = %for.inc.9.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.8.3

for.inc.10.1:                                     ; preds = %for.inc.12
  %24 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %psc, align 1
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 13, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %spec.select)
  %cmp9.not.11.1 = icmp ugt i32 %spec.select, 12288
  br i1 %cmp9.not.11.1, label %for.inc.10.1.for.inc.9.3_crit_edge, label %for.inc.10.1.for.inc.254.thread303_crit_edge

for.inc.10.1.for.inc.254.thread303_crit_edge:     ; preds = %for.inc.10.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.10.1.for.inc.9.3_crit_edge:               ; preds = %for.inc.10.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.9.3

for.inc.11.1:                                     ; preds = %for.inc.13
  %26 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %psc, align 1
  %27 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 14, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %spec.select)
  %cmp9.not.12.1 = icmp ugt i32 %spec.select, 24576
  br i1 %cmp9.not.12.1, label %for.inc.11.1.for.inc.10.3_crit_edge, label %for.inc.11.1.for.inc.254.thread303_crit_edge

for.inc.11.1.for.inc.254.thread303_crit_edge:     ; preds = %for.inc.11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.11.1.for.inc.10.3_crit_edge:              ; preds = %for.inc.11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.10.3

for.inc.12.1:                                     ; preds = %for.inc.14
  %28 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %psc, align 1
  %29 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 15, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %spec.select)
  %cmp9.not.13.1 = icmp ugt i32 %spec.select, 49152
  br i1 %cmp9.not.13.1, label %for.inc.12.1.for.inc.11.3_crit_edge, label %for.inc.12.1.for.inc.254.thread303_crit_edge

for.inc.12.1.for.inc.254.thread303_crit_edge:     ; preds = %for.inc.12.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.12.1.for.inc.11.3_crit_edge:              ; preds = %for.inc.12.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.11.3

for.inc.13.1:                                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304, i32 %spec.select)
  %cmp9.not.14.1 = icmp ugt i32 %spec.select, 98304
  br i1 %cmp9.not.14.1, label %for.inc.14.1, label %for.inc.13.1.for.inc.254.thread303_crit_edge

for.inc.13.1.for.inc.254.thread303_crit_edge:     ; preds = %for.inc.13.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.14.1:                                     ; preds = %for.inc.13.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %spec.select)
  %cmp9.not.15.1 = icmp ugt i32 %spec.select, 196608
  br i1 %cmp9.not.15.1, label %for.inc.14.1.for.inc.14.2_crit_edge, label %for.inc.14.1.for.inc.254.thread303_crit_edge

for.inc.14.1.for.inc.254.thread303_crit_edge:     ; preds = %for.inc.14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.254.thread303

for.inc.14.1.for.inc.14.2_crit_edge:              ; preds = %for.inc.14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.14.2

for.inc20.1:                                      ; preds = %for.inc.151
  %30 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %psc, align 1
  %31 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %spec.select)
  %cmp9.not.253 = icmp ugt i32 %spec.select, 10
  br i1 %cmp9.not.253, label %for.inc20.1.if.end27_crit_edge, label %for.inc20.1.if.then14.2_crit_edge

for.inc20.1.if.then14.2_crit_edge:                ; preds = %for.inc20.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.2

for.inc20.1.if.end27_crit_edge:                   ; preds = %for.inc20.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

for.inc.254.thread303:                            ; preds = %for.inc.14.1.for.inc.254.thread303_crit_edge, %for.inc.13.1.for.inc.254.thread303_crit_edge, %for.inc.12.1.for.inc.254.thread303_crit_edge, %for.inc.11.1.for.inc.254.thread303_crit_edge, %for.inc.10.1.for.inc.254.thread303_crit_edge, %for.inc.9.1.for.inc.254.thread303_crit_edge, %for.inc.8.1.for.inc.254.thread303_crit_edge, %for.inc.7.1.for.inc.254.thread303_crit_edge, %for.inc.6.1.for.inc.254.thread303_crit_edge, %for.inc.5.1.for.inc.254.thread303_crit_edge, %for.inc.4.1.for.inc.254.thread303_crit_edge, %for.inc.3.1.for.inc.254.thread303_crit_edge, %for.inc.2.1.for.inc.254.thread303_crit_edge
  %j.043.lcssa.1.ph.ph.ph = phi i8 [ 15, %for.inc.14.1.for.inc.254.thread303_crit_edge ], [ 14, %for.inc.13.1.for.inc.254.thread303_crit_edge ], [ 13, %for.inc.12.1.for.inc.254.thread303_crit_edge ], [ 12, %for.inc.11.1.for.inc.254.thread303_crit_edge ], [ 11, %for.inc.10.1.for.inc.254.thread303_crit_edge ], [ 10, %for.inc.9.1.for.inc.254.thread303_crit_edge ], [ 9, %for.inc.8.1.for.inc.254.thread303_crit_edge ], [ 8, %for.inc.7.1.for.inc.254.thread303_crit_edge ], [ 7, %for.inc.6.1.for.inc.254.thread303_crit_edge ], [ 6, %for.inc.5.1.for.inc.254.thread303_crit_edge ], [ 5, %for.inc.4.1.for.inc.254.thread303_crit_edge ], [ 4, %for.inc.3.1.for.inc.254.thread303_crit_edge ], [ 3, %for.inc.2.1.for.inc.254.thread303_crit_edge ]
  %mul8.lcssa.1.ph.ph.ph = phi i32 [ 196608, %for.inc.14.1.for.inc.254.thread303_crit_edge ], [ 98304, %for.inc.13.1.for.inc.254.thread303_crit_edge ], [ 49152, %for.inc.12.1.for.inc.254.thread303_crit_edge ], [ 24576, %for.inc.11.1.for.inc.254.thread303_crit_edge ], [ 12288, %for.inc.10.1.for.inc.254.thread303_crit_edge ], [ 6144, %for.inc.9.1.for.inc.254.thread303_crit_edge ], [ 3072, %for.inc.8.1.for.inc.254.thread303_crit_edge ], [ 1536, %for.inc.7.1.for.inc.254.thread303_crit_edge ], [ 768, %for.inc.6.1.for.inc.254.thread303_crit_edge ], [ 384, %for.inc.5.1.for.inc.254.thread303_crit_edge ], [ 192, %for.inc.4.1.for.inc.254.thread303_crit_edge ], [ 96, %for.inc.3.1.for.inc.254.thread303_crit_edge ], [ 48, %for.inc.2.1.for.inc.254.thread303_crit_edge ]
  %32 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %psc, align 1
  %33 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %j.043.lcssa.1.ph.ph.ph, ptr %sc, align 1
  br label %for.inc.1.2

for.inc.254:                                      ; preds = %for.inc.1.1
  %34 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %psc, align 1
  %35 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %sc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %spec.select)
  %cmp9.not.1.2 = icmp ugt i32 %spec.select, 20
  br i1 %cmp9.not.1.2, label %for.inc.254.for.inc.1.2_crit_edge, label %for.inc.254.if.then14.2_crit_edge

for.inc.254.if.then14.2_crit_edge:                ; preds = %for.inc.254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.2

for.inc.254.for.inc.1.2_crit_edge:                ; preds = %for.inc.254
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.254.for.inc.1.2_crit_edge, %for.inc.254.thread303
  %minscale.1.1210298 = phi i32 [ 24, %for.inc.254.for.inc.1.2_crit_edge ], [ %mul8.lcssa.1.ph.ph.ph, %for.inc.254.thread303 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %spec.select)
  %cmp9.not.2.2 = icmp ugt i32 %spec.select, 40
  br i1 %cmp9.not.2.2, label %for.inc.2.2, label %for.inc.1.2.if.then11.2_crit_edge

for.inc.1.2.if.then11.2_crit_edge:                ; preds = %for.inc.1.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %spec.select)
  %cmp9.not.3.2 = icmp ugt i32 %spec.select, 80
  br i1 %cmp9.not.3.2, label %for.inc.3.2, label %for.inc.2.2.if.then11.2_crit_edge

for.inc.2.2.if.then11.2_crit_edge:                ; preds = %for.inc.2.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.3.2:                                      ; preds = %for.inc.2.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %spec.select)
  %cmp9.not.4.2 = icmp ugt i32 %spec.select, 160
  br i1 %cmp9.not.4.2, label %for.inc.4.2, label %for.inc.3.2.if.then11.2_crit_edge

for.inc.3.2.if.then11.2_crit_edge:                ; preds = %for.inc.3.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.4.2:                                      ; preds = %for.inc.3.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %spec.select)
  %cmp9.not.5.2 = icmp ugt i32 %spec.select, 320
  br i1 %cmp9.not.5.2, label %for.inc.5.2, label %for.inc.4.2.if.then11.2_crit_edge

for.inc.4.2.if.then11.2_crit_edge:                ; preds = %for.inc.4.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.5.2:                                      ; preds = %for.inc.4.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %spec.select)
  %cmp9.not.6.2 = icmp ugt i32 %spec.select, 640
  br i1 %cmp9.not.6.2, label %for.inc.6.2, label %for.inc.5.2.if.then11.2_crit_edge

for.inc.5.2.if.then11.2_crit_edge:                ; preds = %for.inc.5.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.6.2:                                      ; preds = %for.inc.5.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %spec.select)
  %cmp9.not.7.2 = icmp ugt i32 %spec.select, 1280
  br i1 %cmp9.not.7.2, label %for.inc.7.2, label %for.inc.6.2.if.then11.2_crit_edge

for.inc.6.2.if.then11.2_crit_edge:                ; preds = %for.inc.6.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.7.2:                                      ; preds = %for.inc.6.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %spec.select)
  %cmp9.not.8.2 = icmp ugt i32 %spec.select, 2560
  br i1 %cmp9.not.8.2, label %for.inc.8.2, label %for.inc.7.2.if.then11.2_crit_edge

for.inc.7.2.if.then11.2_crit_edge:                ; preds = %for.inc.7.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.8.2:                                      ; preds = %for.inc.7.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5120, i32 %spec.select)
  %cmp9.not.9.2 = icmp ugt i32 %spec.select, 5120
  br i1 %cmp9.not.9.2, label %for.inc.9.2, label %for.inc.8.2.if.then11.2_crit_edge

for.inc.8.2.if.then11.2_crit_edge:                ; preds = %for.inc.8.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.9.2:                                      ; preds = %for.inc.8.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %spec.select)
  %cmp9.not.10.2 = icmp ugt i32 %spec.select, 10240
  br i1 %cmp9.not.10.2, label %for.inc.10.2, label %for.inc.9.2.if.then11.2_crit_edge

for.inc.9.2.if.then11.2_crit_edge:                ; preds = %for.inc.9.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.10.2:                                     ; preds = %for.inc.9.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %spec.select)
  %cmp9.not.11.2 = icmp ugt i32 %spec.select, 20480
  br i1 %cmp9.not.11.2, label %for.inc.11.2, label %for.inc.10.2.if.then11.2_crit_edge

for.inc.10.2.if.then11.2_crit_edge:               ; preds = %for.inc.10.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.11.2:                                     ; preds = %for.inc.10.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %spec.select)
  %cmp9.not.12.2 = icmp ugt i32 %spec.select, 40960
  br i1 %cmp9.not.12.2, label %for.inc.12.2, label %for.inc.11.2.if.then11.2_crit_edge

for.inc.11.2.if.then11.2_crit_edge:               ; preds = %for.inc.11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.12.2:                                     ; preds = %for.inc.11.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 81920, i32 %spec.select)
  %cmp9.not.13.2 = icmp ugt i32 %spec.select, 81920
  br i1 %cmp9.not.13.2, label %for.inc.13.2, label %for.inc.12.2.if.then11.2_crit_edge

for.inc.12.2.if.then11.2_crit_edge:               ; preds = %for.inc.12.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.13.2:                                     ; preds = %for.inc.12.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 163840, i32 %spec.select)
  %cmp9.not.14.2 = icmp ugt i32 %spec.select, 163840
  br i1 %cmp9.not.14.2, label %for.inc.13.2.for.inc.14.2_crit_edge, label %for.inc.13.2.if.then11.2_crit_edge

for.inc.13.2.if.then11.2_crit_edge:               ; preds = %for.inc.13.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

for.inc.13.2.for.inc.14.2_crit_edge:              ; preds = %for.inc.13.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.14.2

for.inc.14.2:                                     ; preds = %for.inc.13.2.for.inc.14.2_crit_edge, %for.inc.14.1.for.inc.14.2_crit_edge
  %minscale.1.1210298319333350370393419448480515553594638644 = phi i32 [ %minscale.1.1210298, %for.inc.13.2.for.inc.14.2_crit_edge ], [ 2147483647, %for.inc.14.1.for.inc.14.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %spec.select)
  %cmp9.not.15.2 = icmp ugt i32 %spec.select, 327680
  br i1 %cmp9.not.15.2, label %for.inc.14.3, label %for.inc.14.2.if.then11.2_crit_edge

for.inc.14.2.if.then11.2_crit_edge:               ; preds = %for.inc.14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.2

if.then11.2:                                      ; preds = %for.inc.14.2.if.then11.2_crit_edge, %for.inc.13.2.if.then11.2_crit_edge, %for.inc.12.2.if.then11.2_crit_edge, %for.inc.11.2.if.then11.2_crit_edge, %for.inc.10.2.if.then11.2_crit_edge, %for.inc.9.2.if.then11.2_crit_edge, %for.inc.8.2.if.then11.2_crit_edge, %for.inc.7.2.if.then11.2_crit_edge, %for.inc.6.2.if.then11.2_crit_edge, %for.inc.5.2.if.then11.2_crit_edge, %for.inc.4.2.if.then11.2_crit_edge, %for.inc.3.2.if.then11.2_crit_edge, %for.inc.2.2.if.then11.2_crit_edge, %for.inc.1.2.if.then11.2_crit_edge
  %minscale.1.1209 = phi i32 [ %minscale.1.1210298, %for.inc.1.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.2.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.3.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.4.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.5.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.6.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.7.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.8.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.9.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.10.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.11.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.12.2.if.then11.2_crit_edge ], [ %minscale.1.1210298, %for.inc.13.2.if.then11.2_crit_edge ], [ %minscale.1.1210298319333350370393419448480515553594638644, %for.inc.14.2.if.then11.2_crit_edge ]
  %j.043.lcssa.2 = phi i8 [ 2, %for.inc.1.2.if.then11.2_crit_edge ], [ 3, %for.inc.2.2.if.then11.2_crit_edge ], [ 4, %for.inc.3.2.if.then11.2_crit_edge ], [ 5, %for.inc.4.2.if.then11.2_crit_edge ], [ 6, %for.inc.5.2.if.then11.2_crit_edge ], [ 7, %for.inc.6.2.if.then11.2_crit_edge ], [ 8, %for.inc.7.2.if.then11.2_crit_edge ], [ 9, %for.inc.8.2.if.then11.2_crit_edge ], [ 10, %for.inc.9.2.if.then11.2_crit_edge ], [ 11, %for.inc.10.2.if.then11.2_crit_edge ], [ 12, %for.inc.11.2.if.then11.2_crit_edge ], [ 13, %for.inc.12.2.if.then11.2_crit_edge ], [ 14, %for.inc.13.2.if.then11.2_crit_edge ], [ 15, %for.inc.14.2.if.then11.2_crit_edge ]
  %mul8.lcssa.2 = phi i32 [ 40, %for.inc.1.2.if.then11.2_crit_edge ], [ 80, %for.inc.2.2.if.then11.2_crit_edge ], [ 160, %for.inc.3.2.if.then11.2_crit_edge ], [ 320, %for.inc.4.2.if.then11.2_crit_edge ], [ 640, %for.inc.5.2.if.then11.2_crit_edge ], [ 1280, %for.inc.6.2.if.then11.2_crit_edge ], [ 2560, %for.inc.7.2.if.then11.2_crit_edge ], [ 5120, %for.inc.8.2.if.then11.2_crit_edge ], [ 10240, %for.inc.9.2.if.then11.2_crit_edge ], [ 20480, %for.inc.10.2.if.then11.2_crit_edge ], [ 40960, %for.inc.11.2.if.then11.2_crit_edge ], [ 81920, %for.inc.12.2.if.then11.2_crit_edge ], [ 163840, %for.inc.13.2.if.then11.2_crit_edge ], [ 327680, %for.inc.14.2.if.then11.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.lcssa.2, i32 %minscale.1.1209)
  %cmp12.2 = icmp ult i32 %mul8.lcssa.2, %minscale.1.1209
  br i1 %cmp12.2, label %if.then11.2.if.then14.2_crit_edge, label %if.then11.2.for.inc20.2_crit_edge

if.then11.2.for.inc20.2_crit_edge:                ; preds = %if.then11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20.2

if.then11.2.if.then14.2_crit_edge:                ; preds = %if.then11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.2

if.then14.2:                                      ; preds = %if.then11.2.if.then14.2_crit_edge, %for.inc.254.if.then14.2_crit_edge, %for.inc20.1.if.then14.2_crit_edge
  %mul8.lcssa.2237 = phi i32 [ %mul8.lcssa.2, %if.then11.2.if.then14.2_crit_edge ], [ 10, %for.inc20.1.if.then14.2_crit_edge ], [ 20, %for.inc.254.if.then14.2_crit_edge ]
  %j.043.lcssa.2236 = phi i8 [ %j.043.lcssa.2, %if.then11.2.if.then14.2_crit_edge ], [ 0, %for.inc20.1.if.then14.2_crit_edge ], [ 1, %for.inc.254.if.then14.2_crit_edge ]
  %36 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %psc, align 1
  %37 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %j.043.lcssa.2236, ptr %sc, align 1
  br label %for.inc20.2

for.inc20.2:                                      ; preds = %if.then14.2, %if.then11.2.for.inc20.2_crit_edge, %for.inc.151.for.inc20.2_crit_edge
  %minscale.1.2 = phi i32 [ %mul8.lcssa.2237, %if.then14.2 ], [ %minscale.1.1209, %if.then11.2.for.inc20.2_crit_edge ], [ 16, %for.inc.151.for.inc20.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %spec.select)
  %cmp9.not.356 = icmp ugt i32 %spec.select, 14
  br i1 %cmp9.not.356, label %for.inc20.2.for.inc.357_crit_edge, label %for.inc20.2.if.then11.3_crit_edge

for.inc20.2.if.then11.3_crit_edge:                ; preds = %for.inc20.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc20.2.for.inc.357_crit_edge:                ; preds = %for.inc20.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.357

for.inc.357:                                      ; preds = %for.inc20.2.for.inc.357_crit_edge, %for.inc.1.1.for.inc.357_crit_edge
  %minscale.1.2241 = phi i32 [ %minscale.1.2, %for.inc20.2.for.inc.357_crit_edge ], [ 32, %for.inc.1.1.for.inc.357_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %spec.select)
  %cmp9.not.1.3 = icmp ugt i32 %spec.select, 28
  br i1 %cmp9.not.1.3, label %for.inc.357.for.inc.1.3_crit_edge, label %for.inc.357.if.then11.3_crit_edge

for.inc.357.if.then11.3_crit_edge:                ; preds = %for.inc.357
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.357.for.inc.1.3_crit_edge:                ; preds = %for.inc.357
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.3

for.inc.1.3:                                      ; preds = %for.inc.357.for.inc.1.3_crit_edge, %for.inc.2.1.for.inc.1.3_crit_edge
  %minscale.1.2241247 = phi i32 [ %minscale.1.2241, %for.inc.357.for.inc.1.3_crit_edge ], [ 64, %for.inc.2.1.for.inc.1.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %spec.select)
  %cmp9.not.2.3 = icmp ugt i32 %spec.select, 56
  br i1 %cmp9.not.2.3, label %for.inc.1.3.for.inc.2.3_crit_edge, label %for.inc.1.3.if.then11.3_crit_edge

for.inc.1.3.if.then11.3_crit_edge:                ; preds = %for.inc.1.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.1.3.for.inc.2.3_crit_edge:                ; preds = %for.inc.1.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.3

for.inc.2.3:                                      ; preds = %for.inc.1.3.for.inc.2.3_crit_edge, %for.inc.3.1.for.inc.2.3_crit_edge
  %minscale.1.2241247250 = phi i32 [ %minscale.1.2241247, %for.inc.1.3.for.inc.2.3_crit_edge ], [ 128, %for.inc.3.1.for.inc.2.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %spec.select)
  %cmp9.not.3.3 = icmp ugt i32 %spec.select, 112
  br i1 %cmp9.not.3.3, label %for.inc.2.3.for.inc.3.3_crit_edge, label %for.inc.2.3.if.then11.3_crit_edge

for.inc.2.3.if.then11.3_crit_edge:                ; preds = %for.inc.2.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.2.3.for.inc.3.3_crit_edge:                ; preds = %for.inc.2.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.3

for.inc.3.3:                                      ; preds = %for.inc.2.3.for.inc.3.3_crit_edge, %for.inc.4.1.for.inc.3.3_crit_edge
  %minscale.1.2241247250253 = phi i32 [ %minscale.1.2241247250, %for.inc.2.3.for.inc.3.3_crit_edge ], [ 256, %for.inc.4.1.for.inc.3.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %spec.select)
  %cmp9.not.4.3 = icmp ugt i32 %spec.select, 224
  br i1 %cmp9.not.4.3, label %for.inc.3.3.for.inc.4.3_crit_edge, label %for.inc.3.3.if.then11.3_crit_edge

for.inc.3.3.if.then11.3_crit_edge:                ; preds = %for.inc.3.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.3.3.for.inc.4.3_crit_edge:                ; preds = %for.inc.3.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.3

for.inc.4.3:                                      ; preds = %for.inc.3.3.for.inc.4.3_crit_edge, %for.inc.5.1.for.inc.4.3_crit_edge
  %minscale.1.2241247250253256 = phi i32 [ %minscale.1.2241247250253, %for.inc.3.3.for.inc.4.3_crit_edge ], [ 512, %for.inc.5.1.for.inc.4.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 448, i32 %spec.select)
  %cmp9.not.5.3 = icmp ugt i32 %spec.select, 448
  br i1 %cmp9.not.5.3, label %for.inc.4.3.for.inc.5.3_crit_edge, label %for.inc.4.3.if.then11.3_crit_edge

for.inc.4.3.if.then11.3_crit_edge:                ; preds = %for.inc.4.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.4.3.for.inc.5.3_crit_edge:                ; preds = %for.inc.4.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.3

for.inc.5.3:                                      ; preds = %for.inc.4.3.for.inc.5.3_crit_edge, %for.inc.6.1.for.inc.5.3_crit_edge
  %minscale.1.2241247250253256259 = phi i32 [ %minscale.1.2241247250253256, %for.inc.4.3.for.inc.5.3_crit_edge ], [ 1024, %for.inc.6.1.for.inc.5.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 896, i32 %spec.select)
  %cmp9.not.6.3 = icmp ugt i32 %spec.select, 896
  br i1 %cmp9.not.6.3, label %for.inc.5.3.for.inc.6.3_crit_edge, label %for.inc.5.3.if.then11.3_crit_edge

for.inc.5.3.if.then11.3_crit_edge:                ; preds = %for.inc.5.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.5.3.for.inc.6.3_crit_edge:                ; preds = %for.inc.5.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.3

for.inc.6.3:                                      ; preds = %for.inc.5.3.for.inc.6.3_crit_edge, %for.inc.7.1.for.inc.6.3_crit_edge
  %minscale.1.2241247250253256259262 = phi i32 [ %minscale.1.2241247250253256259, %for.inc.5.3.for.inc.6.3_crit_edge ], [ 2048, %for.inc.7.1.for.inc.6.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %spec.select)
  %cmp9.not.7.3 = icmp ugt i32 %spec.select, 1792
  br i1 %cmp9.not.7.3, label %for.inc.6.3.for.inc.7.3_crit_edge, label %for.inc.6.3.if.then11.3_crit_edge

for.inc.6.3.if.then11.3_crit_edge:                ; preds = %for.inc.6.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.6.3.for.inc.7.3_crit_edge:                ; preds = %for.inc.6.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7.3

for.inc.7.3:                                      ; preds = %for.inc.6.3.for.inc.7.3_crit_edge, %for.inc.8.1.for.inc.7.3_crit_edge
  %minscale.1.2241247250253256259262265 = phi i32 [ %minscale.1.2241247250253256259262, %for.inc.6.3.for.inc.7.3_crit_edge ], [ 4096, %for.inc.8.1.for.inc.7.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3584, i32 %spec.select)
  %cmp9.not.8.3 = icmp ugt i32 %spec.select, 3584
  br i1 %cmp9.not.8.3, label %for.inc.7.3.for.inc.8.3_crit_edge, label %for.inc.7.3.if.then11.3_crit_edge

for.inc.7.3.if.then11.3_crit_edge:                ; preds = %for.inc.7.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.7.3.for.inc.8.3_crit_edge:                ; preds = %for.inc.7.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.8.3

for.inc.8.3:                                      ; preds = %for.inc.7.3.for.inc.8.3_crit_edge, %for.inc.9.1.for.inc.8.3_crit_edge
  %minscale.1.2241247250253256259262265268 = phi i32 [ %minscale.1.2241247250253256259262265, %for.inc.7.3.for.inc.8.3_crit_edge ], [ 8192, %for.inc.9.1.for.inc.8.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7168, i32 %spec.select)
  %cmp9.not.9.3 = icmp ugt i32 %spec.select, 7168
  br i1 %cmp9.not.9.3, label %for.inc.8.3.for.inc.9.3_crit_edge, label %for.inc.8.3.if.then11.3_crit_edge

for.inc.8.3.if.then11.3_crit_edge:                ; preds = %for.inc.8.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.8.3.for.inc.9.3_crit_edge:                ; preds = %for.inc.8.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.9.3

for.inc.9.3:                                      ; preds = %for.inc.8.3.for.inc.9.3_crit_edge, %for.inc.10.1.for.inc.9.3_crit_edge
  %minscale.1.2241247250253256259262265268271 = phi i32 [ %minscale.1.2241247250253256259262265268, %for.inc.8.3.for.inc.9.3_crit_edge ], [ 16384, %for.inc.10.1.for.inc.9.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14336, i32 %spec.select)
  %cmp9.not.10.3 = icmp ugt i32 %spec.select, 14336
  br i1 %cmp9.not.10.3, label %for.inc.9.3.for.inc.10.3_crit_edge, label %for.inc.9.3.if.then11.3_crit_edge

for.inc.9.3.if.then11.3_crit_edge:                ; preds = %for.inc.9.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.9.3.for.inc.10.3_crit_edge:               ; preds = %for.inc.9.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.10.3

for.inc.10.3:                                     ; preds = %for.inc.9.3.for.inc.10.3_crit_edge, %for.inc.11.1.for.inc.10.3_crit_edge
  %minscale.1.2241247250253256259262265268271274 = phi i32 [ %minscale.1.2241247250253256259262265268271, %for.inc.9.3.for.inc.10.3_crit_edge ], [ 32768, %for.inc.11.1.for.inc.10.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 28672, i32 %spec.select)
  %cmp9.not.11.3 = icmp ugt i32 %spec.select, 28672
  br i1 %cmp9.not.11.3, label %for.inc.10.3.for.inc.11.3_crit_edge, label %for.inc.10.3.if.then11.3_crit_edge

for.inc.10.3.if.then11.3_crit_edge:               ; preds = %for.inc.10.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.10.3.for.inc.11.3_crit_edge:              ; preds = %for.inc.10.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.11.3

for.inc.11.3:                                     ; preds = %for.inc.10.3.for.inc.11.3_crit_edge, %for.inc.12.1.for.inc.11.3_crit_edge
  %minscale.1.2241247250253256259262265268271274277 = phi i32 [ %minscale.1.2241247250253256259262265268271274, %for.inc.10.3.for.inc.11.3_crit_edge ], [ 65536, %for.inc.12.1.for.inc.11.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 57344, i32 %spec.select)
  %cmp9.not.12.3 = icmp ugt i32 %spec.select, 57344
  br i1 %cmp9.not.12.3, label %for.inc.12.3, label %for.inc.11.3.if.then11.3_crit_edge

for.inc.11.3.if.then11.3_crit_edge:               ; preds = %for.inc.11.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.12.3:                                     ; preds = %for.inc.11.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 114688, i32 %spec.select)
  %cmp9.not.13.3 = icmp ugt i32 %spec.select, 114688
  br i1 %cmp9.not.13.3, label %for.inc.13.3, label %for.inc.12.3.if.then11.3_crit_edge

for.inc.12.3.if.then11.3_crit_edge:               ; preds = %for.inc.12.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.13.3:                                     ; preds = %for.inc.12.3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 229376, i32 %spec.select)
  %cmp9.not.14.3 = icmp ugt i32 %spec.select, 229376
  %spec.select686 = select i1 %cmp9.not.14.3, i8 15, i8 14
  %spec.select687 = select i1 %cmp9.not.14.3, i32 458752, i32 229376
  br label %if.then11.3

for.inc.14.3:                                     ; preds = %for.inc.14.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 458752, i32 %spec.select)
  %cmp9.not.15.3 = icmp ugt i32 %spec.select, 458752
  br i1 %cmp9.not.15.3, label %for.inc.14.3.for.inc20.3_crit_edge, label %for.inc.14.3.if.then11.3_crit_edge

for.inc.14.3.if.then11.3_crit_edge:               ; preds = %for.inc.14.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.3

for.inc.14.3.for.inc20.3_crit_edge:               ; preds = %for.inc.14.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20.3

if.then11.3:                                      ; preds = %for.inc.14.3.if.then11.3_crit_edge, %for.inc.13.3, %for.inc.12.3.if.then11.3_crit_edge, %for.inc.11.3.if.then11.3_crit_edge, %for.inc.10.3.if.then11.3_crit_edge, %for.inc.9.3.if.then11.3_crit_edge, %for.inc.8.3.if.then11.3_crit_edge, %for.inc.7.3.if.then11.3_crit_edge, %for.inc.6.3.if.then11.3_crit_edge, %for.inc.5.3.if.then11.3_crit_edge, %for.inc.4.3.if.then11.3_crit_edge, %for.inc.3.3.if.then11.3_crit_edge, %for.inc.2.3.if.then11.3_crit_edge, %for.inc.1.3.if.then11.3_crit_edge, %for.inc.357.if.then11.3_crit_edge, %for.inc20.2.if.then11.3_crit_edge
  %minscale.1.2240 = phi i32 [ %minscale.1.2, %for.inc20.2.if.then11.3_crit_edge ], [ %minscale.1.2241, %for.inc.357.if.then11.3_crit_edge ], [ %minscale.1.2241247, %for.inc.1.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250, %for.inc.2.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253, %for.inc.3.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253256, %for.inc.4.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253256259, %for.inc.5.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253256259262, %for.inc.6.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253256259262265, %for.inc.7.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253256259262265268, %for.inc.8.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253256259262265268271, %for.inc.9.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253256259262265268271274, %for.inc.10.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253256259262265268271274277, %for.inc.11.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253256259262265268271274277, %for.inc.12.3.if.then11.3_crit_edge ], [ %minscale.1.1210298319333350370393419448480515553594638644, %for.inc.14.3.if.then11.3_crit_edge ], [ %minscale.1.2241247250253256259262265268271274277, %for.inc.13.3 ]
  %j.043.lcssa.3 = phi i8 [ 0, %for.inc20.2.if.then11.3_crit_edge ], [ 1, %for.inc.357.if.then11.3_crit_edge ], [ 2, %for.inc.1.3.if.then11.3_crit_edge ], [ 3, %for.inc.2.3.if.then11.3_crit_edge ], [ 4, %for.inc.3.3.if.then11.3_crit_edge ], [ 5, %for.inc.4.3.if.then11.3_crit_edge ], [ 6, %for.inc.5.3.if.then11.3_crit_edge ], [ 7, %for.inc.6.3.if.then11.3_crit_edge ], [ 8, %for.inc.7.3.if.then11.3_crit_edge ], [ 9, %for.inc.8.3.if.then11.3_crit_edge ], [ 10, %for.inc.9.3.if.then11.3_crit_edge ], [ 11, %for.inc.10.3.if.then11.3_crit_edge ], [ 12, %for.inc.11.3.if.then11.3_crit_edge ], [ 13, %for.inc.12.3.if.then11.3_crit_edge ], [ 15, %for.inc.14.3.if.then11.3_crit_edge ], [ %spec.select686, %for.inc.13.3 ]
  %mul8.lcssa.3 = phi i32 [ 14, %for.inc20.2.if.then11.3_crit_edge ], [ 28, %for.inc.357.if.then11.3_crit_edge ], [ 56, %for.inc.1.3.if.then11.3_crit_edge ], [ 112, %for.inc.2.3.if.then11.3_crit_edge ], [ 224, %for.inc.3.3.if.then11.3_crit_edge ], [ 448, %for.inc.4.3.if.then11.3_crit_edge ], [ 896, %for.inc.5.3.if.then11.3_crit_edge ], [ 1792, %for.inc.6.3.if.then11.3_crit_edge ], [ 3584, %for.inc.7.3.if.then11.3_crit_edge ], [ 7168, %for.inc.8.3.if.then11.3_crit_edge ], [ 14336, %for.inc.9.3.if.then11.3_crit_edge ], [ 28672, %for.inc.10.3.if.then11.3_crit_edge ], [ 57344, %for.inc.11.3.if.then11.3_crit_edge ], [ 114688, %for.inc.12.3.if.then11.3_crit_edge ], [ 458752, %for.inc.14.3.if.then11.3_crit_edge ], [ %spec.select687, %for.inc.13.3 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.lcssa.3, i32 %minscale.1.2240)
  %cmp12.3 = icmp ult i32 %mul8.lcssa.3, %minscale.1.2240
  br i1 %cmp12.3, label %if.then11.3.if.end27.sink.split_crit_edge, label %if.then11.3.for.inc20.3_crit_edge

if.then11.3.for.inc20.3_crit_edge:                ; preds = %if.then11.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20.3

if.then11.3.if.end27.sink.split_crit_edge:        ; preds = %if.then11.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.sink.split

for.inc20.3:                                      ; preds = %if.then11.3.for.inc20.3_crit_edge, %for.inc.14.3.for.inc20.3_crit_edge
  %minscale.1.3 = phi i32 [ %minscale.1.2240, %if.then11.3.for.inc20.3_crit_edge ], [ %minscale.1.1210298319333350370393419448480515553594638644, %for.inc.14.3.for.inc20.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %minscale.1.3)
  %cmp23 = icmp eq i32 %minscale.1.3, 2147483647
  br i1 %cmp23, label %do.end, label %for.inc20.3.if.end27_crit_edge

for.inc20.3.if.end27_crit_edge:                   ; preds = %for.inc20.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end:                                           ; preds = %for.inc20.3
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %delay_ns, i32 noundef %clkrate) #11
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %do.end, %if.then11.3.if.end27.sink.split_crit_edge, %for.inc20.if.end27.sink.split_crit_edge, %for.inc.if.end27.sink.split_crit_edge, %entry.if.end27.sink.split_crit_edge
  %.sink = phi i8 [ 3, %do.end ], [ 0, %for.inc.if.end27.sink.split_crit_edge ], [ 0, %entry.if.end27.sink.split_crit_edge ], [ 1, %for.inc20.if.end27.sink.split_crit_edge ], [ 3, %if.then11.3.if.end27.sink.split_crit_edge ]
  %j.043.lcssa.ph67.sink = phi i8 [ 15, %do.end ], [ 1, %for.inc.if.end27.sink.split_crit_edge ], [ 0, %entry.if.end27.sink.split_crit_edge ], [ 0, %for.inc20.if.end27.sink.split_crit_edge ], [ %j.043.lcssa.3, %if.then11.3.if.end27.sink.split_crit_edge ]
  %38 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.sink, ptr %psc, align 1
  %39 = ptrtoint ptr %sc to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %j.043.lcssa.ph67.sink, ptr %sc, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %for.inc20.3.if.end27_crit_edge, %for.inc20.1.if.end27_crit_edge, %for.inc20.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_take_timestamp_pre(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dspi_fifo_write(ptr noundef %dspi) unnamed_addr #2 align 64 {
entry:
  %txdata.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype_data = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 14
  %0 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype_data, align 4
  %fifo_size = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_size, align 4
  %cur_transfer = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 6
  %4 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_transfer, align 4
  %cur_msg = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 7
  %6 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_msg, align 4
  tail call fastcc void @dspi_setup_accel(ptr noundef %dspi)
  %oper_word_size = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 17
  %8 = ptrtoint ptr %oper_word_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oper_word_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp eq i32 %9, 4
  %div = sdiv i32 %3, 2
  %spec.select = select i1 %cmp, i32 %div, i32 %3
  %len = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 10
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %div2 = udiv i32 %11, %9
  %12 = tail call i32 @llvm.smin.i32(i32 %div2, i32 %spec.select)
  %mul = mul i32 %12, %9
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  %add = add i32 %mul, %14
  store i32 %add, ptr %actual_length, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 8
  %15 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %16 to i32
  %sub = add nuw nsw i32 %conv, 7
  %div842 = lshr i32 %sub, 3
  %div9 = sdiv i32 %mul, %div842
  %progress = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 9
  %17 = ptrtoint ptr %progress to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %progress, align 4
  %add10 = add i32 %18, %div9
  store i32 %add10, ptr %progress, align 4
  %words_in_flight = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 19
  %19 = ptrtoint ptr %words_in_flight to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %12, ptr %words_in_flight, align 4
  %20 = ptrtoint ptr %dspi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dspi, align 4
  %irq = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 4
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  tail call void @spi_take_timestamp_pre(ptr noundef %21, ptr noundef %5, i32 noundef %add10, i1 noundef zeroext %tobool.not) #8
  %tx_cmd1.i = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 13
  %24 = ptrtoint ptr %tx_cmd1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx_cmd1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %tobool.not.i = icmp sgt i16 %25, -1
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %oper_word_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oper_word_size, align 4
  %mul.i = mul i32 %27, %12
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %29)
  %cmp.i = icmp eq i32 %mul.i, %29
  %or.i = or i16 %25, 2048
  %spec.select.i = select i1 %cmp.i, i16 %or.i, i16 %25
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %entry.if.end.i_crit_edge
  %tx_cmd.0.i = phi i16 [ %25, %entry.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %regmap.i = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 2
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %oper_bits_per_word.i = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 18
  %32 = ptrtoint ptr %oper_bits_per_word.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oper_bits_per_word.i, align 4
  %sub.i = shl i32 %33, 12
  %34 = add i32 %sub.i, 126976
  %shl.i = and i32 %34, 65536
  %and7.i = and i32 %12, 2047
  %or8.i = or i32 %shl.i, %and7.i
  %call.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 284, i32 noundef %or8.i) #8
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %37 = ptrtoint ptr %oper_word_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oper_word_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.i.i = icmp ugt i32 %36, %38
  %39 = or i16 %tx_cmd.0.i, -32768
  %spec.select.i.i = select i1 %cmp.i.i, i16 %39, i16 %tx_cmd.0.i
  %regmap_pushr.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 3
  %40 = ptrtoint ptr %regmap_pushr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap_pushr.i.i, align 4
  %pushr_cmd.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 20
  %42 = ptrtoint ptr %pushr_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pushr_cmd.i.i, align 4
  %conv2.i.i = zext i16 %spec.select.i.i to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %43, i32 noundef %conv2.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not44.i = icmp eq i32 %12, 0
  br i1 %tobool9.not44.i, label %if.end.i.dspi_xspi_fifo_write.exit_crit_edge, label %while.body.lr.ph.i

if.end.i.dspi_xspi_fifo_write.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_xspi_fifo_write.exit

while.body.lr.ph.i:                               ; preds = %if.end.i
  %tx.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 11
  %host_to_dev.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 22
  %pushr_tx.i.i = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 21
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec45.in.i = phi i32 [ %12, %while.body.lr.ph.i ], [ %dec45.i, %if.end19.i.while.body.i_crit_edge ]
  %dec45.i = add i32 %dec45.in.i, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txdata.i.i) #8
  %44 = ptrtoint ptr %txdata.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %txdata.i.i, align 4
  %45 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %while.body.i.dspi_pop_tx.exit.i_crit_edge, label %if.then.i.i

while.body.i.dspi_pop_tx.exit.i_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_pop_tx.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %host_to_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host_to_dev.i.i, align 4
  call void %48(ptr noundef %dspi, ptr noundef nonnull %txdata.i.i) #8
  br label %dspi_pop_tx.exit.i

dspi_pop_tx.exit.i:                               ; preds = %if.then.i.i, %while.body.i.dspi_pop_tx.exit.i_crit_edge
  %49 = ptrtoint ptr %oper_word_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oper_word_size, align 4
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  %sub.i.i = sub i32 %52, %50
  store i32 %sub.i.i, ptr %len, align 4
  %53 = ptrtoint ptr %txdata.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %txdata.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txdata.i.i) #8
  %55 = ptrtoint ptr %regmap_pushr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap_pushr.i.i, align 4
  %57 = ptrtoint ptr %pushr_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pushr_tx.i.i, align 4
  %conv.i.i = and i32 %54, 65535
  %call.i38.i = call i32 @regmap_write(ptr noundef %56, i32 noundef %58, i32 noundef %conv.i.i) #8
  %59 = ptrtoint ptr %oper_bits_per_word.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %oper_bits_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %60)
  %cmp14.i = icmp sgt i32 %60, 16
  br i1 %cmp14.i, label %if.then16.i, label %dspi_pop_tx.exit.i.if.end19.i_crit_edge

dspi_pop_tx.exit.i.if.end19.i_crit_edge:          ; preds = %dspi_pop_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then16.i:                                      ; preds = %dspi_pop_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr17.i = lshr i32 %54, 16
  %61 = ptrtoint ptr %regmap_pushr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap_pushr.i.i, align 4
  %63 = ptrtoint ptr %pushr_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pushr_tx.i.i, align 4
  %call.i42.i = call i32 @regmap_write(ptr noundef %62, i32 noundef %64, i32 noundef %shr17.i) #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %dspi_pop_tx.exit.i.if.end19.i_crit_edge
  %tobool9.not.i = icmp eq i32 %dec45.i, 0
  br i1 %tobool9.not.i, label %if.end19.i.dspi_xspi_fifo_write.exit_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end19.i.dspi_xspi_fifo_write.exit_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_xspi_fifo_write.exit

dspi_xspi_fifo_write.exit:                        ; preds = %if.end19.i.dspi_xspi_fifo_write.exit_crit_edge, %if.end.i.dspi_xspi_fifo_write.exit_crit_edge
  %65 = ptrtoint ptr %dspi to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dspi, align 4
  %67 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur_transfer, align 4
  %69 = ptrtoint ptr %progress to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %progress, align 4
  %71 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool16.not = icmp eq i32 %72, 0
  call void @spi_take_timestamp_post(ptr noundef %66, ptr noundef %68, i32 noundef %70, i1 noundef zeroext %tobool16.not) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dspi_setup_accel(ptr noundef %dspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_transfer = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 6
  %0 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_transfer, align 4
  %len = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 10
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits_per_word, align 1
  %6 = and i8 %5, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end, label %entry.no_accel_crit_edge

entry.no_accel_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_accel

if.end:                                           ; preds = %entry
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %devtype_data = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 14
  %7 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devtype_data, align 4
  %fifo_size = getelementptr inbounds %struct.fsl_dspi_devtype_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo_size, align 4
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true9.critedge

land.lhs.true:                                    ; preds = %if.end
  %mul = shl i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mul)
  %cmp.not = icmp ugt i32 %3, %mul
  br i1 %cmp.not, label %land.lhs.true.if.else17_crit_edge, label %land.lhs.true.if.end38.sink.split_crit_edge

land.lhs.true.if.end38.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.sink.split

land.lhs.true.if.else17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17

land.lhs.true9.critedge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %10)
  %cmp13.not = icmp ugt i32 %3, %10
  br i1 %cmp13.not, label %land.lhs.true9.critedge.if.else17_crit_edge, label %land.lhs.true9.critedge.if.end38.sink.split_crit_edge

land.lhs.true9.critedge.if.end38.sink.split_crit_edge: ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.sink.split

land.lhs.true9.critedge.if.else17_crit_edge:      ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true9.critedge.if.else17_crit_edge, %land.lhs.true.if.else17_crit_edge
  %devtype_data18 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 14
  %11 = ptrtoint ptr %devtype_data18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devtype_data18, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19 = icmp eq i32 %14, 0
  %spec.select = select i1 %cmp19, i32 32, i32 16
  %15 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 18
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %15, align 4
  br label %do.body

do.body:                                          ; preds = %if.end31.do.body_crit_edge, %if.else17
  %div33125 = phi i32 [ %div33, %if.end31.do.body_crit_edge ], [ %spec.select, %if.else17 ]
  %sub = add nsw i32 %div33125, 7
  %div = sdiv i32 %sub, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div)
  %cmp28.not = icmp ult i32 %3, %div
  br i1 %cmp28.not, label %if.end31, label %do.body.if.end38_crit_edge

do.body.if.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end31:                                         ; preds = %do.body
  %div33 = sdiv i32 %div33125, 2
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div33, ptr %15, align 4
  %cmp35 = icmp sgt i32 %div33125, 17
  br i1 %cmp35, label %if.end31.do.body_crit_edge, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end38.sink.split:                              ; preds = %land.lhs.true9.critedge.if.end38.sink.split_crit_edge, %land.lhs.true.if.end38.sink.split_crit_edge
  %.sink = phi i32 [ 16, %land.lhs.true.if.end38.sink.split_crit_edge ], [ 8, %land.lhs.true9.critedge.if.end38.sink.split_crit_edge ]
  %oper_bits_per_word16 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 18
  %18 = ptrtoint ptr %oper_bits_per_word16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %oper_bits_per_word16, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.end31.if.end38_crit_edge, %do.body.if.end38_crit_edge
  %19 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bits_per_word, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %20, label %if.end38.no_accel_crit_edge [
    i8 8, label %land.lhs.true43
    i8 16, label %land.lhs.true65
  ]

if.end38.no_accel_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_accel

land.lhs.true43:                                  ; preds = %if.end38
  %oper_bits_per_word44 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 18
  %22 = ptrtoint ptr %oper_bits_per_word44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oper_bits_per_word44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %23)
  %cmp45 = icmp eq i32 %23, 32
  br i1 %cmp45, label %if.then47, label %land.lhs.true53

if.then47:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  %dev_to_host = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 23
  %24 = ptrtoint ptr %dev_to_host to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dspi_8on32_dev_to_host, ptr %dev_to_host, align 4
  %host_to_dev = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 22
  %25 = ptrtoint ptr %host_to_dev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dspi_8on32_host_to_dev, ptr %host_to_dev, align 4
  br label %if.end80

land.lhs.true53:                                  ; preds = %land.lhs.true43
  %26 = ptrtoint ptr %oper_bits_per_word44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oper_bits_per_word44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %27)
  %cmp55 = icmp eq i32 %27, 16
  br i1 %cmp55, label %if.then57, label %land.lhs.true53.no_accel_crit_edge

land.lhs.true53.no_accel_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_accel

if.then57:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  %dev_to_host58 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 23
  %28 = ptrtoint ptr %dev_to_host58 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dspi_8on16_dev_to_host, ptr %dev_to_host58, align 4
  %host_to_dev59 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 22
  %29 = ptrtoint ptr %host_to_dev59 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dspi_8on16_host_to_dev, ptr %host_to_dev59, align 4
  br label %if.end80

land.lhs.true65:                                  ; preds = %if.end38
  %oper_bits_per_word66 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 18
  %30 = ptrtoint ptr %oper_bits_per_word66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %oper_bits_per_word66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %31)
  %cmp67 = icmp eq i32 %31, 32
  br i1 %cmp67, label %if.then69, label %land.lhs.true65.no_accel_crit_edge

land.lhs.true65.no_accel_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_accel

if.then69:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  %dev_to_host70 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 23
  %32 = ptrtoint ptr %dev_to_host70 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dspi_16on32_dev_to_host, ptr %dev_to_host70, align 4
  %host_to_dev71 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 22
  %33 = ptrtoint ptr %host_to_dev71 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dspi_16on32_host_to_dev, ptr %host_to_dev71, align 4
  br label %if.end80

no_accel:                                         ; preds = %land.lhs.true65.no_accel_crit_edge, %land.lhs.true53.no_accel_crit_edge, %if.end38.no_accel_crit_edge, %entry.no_accel_crit_edge
  %dev_to_host73 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 23
  %34 = ptrtoint ptr %dev_to_host73 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @dspi_native_dev_to_host, ptr %dev_to_host73, align 4
  %host_to_dev74 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 22
  %35 = ptrtoint ptr %host_to_dev74 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @dspi_native_host_to_dev, ptr %host_to_dev74, align 4
  %36 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bits_per_word, align 1
  %conv76 = zext i8 %37 to i32
  %oper_bits_per_word77 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 18
  %38 = ptrtoint ptr %oper_bits_per_word77 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv76, ptr %oper_bits_per_word77, align 4
  br label %if.end80

if.end80:                                         ; preds = %no_accel, %if.then69, %if.then57, %if.then47
  %oper_bits_per_word81 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 18
  %39 = ptrtoint ptr %oper_bits_per_word81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oper_bits_per_word81, align 4
  %sub83 = add i32 %40, 7
  %div84 = sdiv i32 %sub83, 8
  %oper_word_size = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 17
  %41 = ptrtoint ptr %oper_word_size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div84, ptr %oper_word_size, align 4
  %regmap = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 2
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %cur_chip = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 8
  %44 = ptrtoint ptr %cur_chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur_chip, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %sub86 = shl i32 %40, 27
  %shl = add i32 %sub86, 2013265920
  %and87 = and i32 %shl, 2013265920
  %or = or i32 %47, %and87
  %call = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 12, i32 noundef %or) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dspi_8on32_dev_to_host(ptr nocapture noundef %dspi, i32 noundef %rxdata) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 12
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rxdata, ptr %1, align 4
  %3 = load ptr, ptr %rx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  store ptr %add.ptr, ptr %rx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dspi_8on32_host_to_dev(ptr nocapture noundef %dspi, ptr nocapture noundef writeonly %txdata) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 11
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %txdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txdata, align 4
  %5 = load ptr, ptr %tx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  store ptr %add.ptr, ptr %tx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dspi_8on16_dev_to_host(ptr nocapture noundef %dspi, i32 noundef %rxdata) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %rxdata to i16
  %rx = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 12
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %1, align 2
  %3 = load ptr, ptr %rx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2
  store ptr %add.ptr, ptr %rx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dspi_8on16_host_to_dev(ptr nocapture noundef %dspi, ptr nocapture noundef writeonly %txdata) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 11
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %txdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %txdata, align 4
  %5 = load ptr, ptr %tx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 2
  store ptr %add.ptr, ptr %tx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dspi_16on32_dev_to_host(ptr nocapture noundef %dspi, i32 noundef %rxdata) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %rxdata to i16
  %shr = lshr i32 %rxdata, 16
  %conv1 = trunc i32 %shr to i16
  %rx = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 12
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv1, ptr %1, align 2
  %3 = load ptr, ptr %rx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %add.ptr, align 2
  %5 = load ptr, ptr %rx, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 4
  store ptr %add.ptr4, ptr %rx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dspi_16on32_host_to_dev(ptr nocapture noundef %dspi, ptr nocapture noundef writeonly %txdata) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 11
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 2
  %conv = zext i16 %3 to i32
  %shl = shl nuw i32 %conv, 16
  %conv2 = zext i16 %5 to i32
  %or = or i32 %shl, %conv2
  %6 = ptrtoint ptr %txdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %txdata, align 4
  %7 = load ptr, ptr %tx, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  store ptr %add.ptr4, ptr %tx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dspi_native_dev_to_host(ptr nocapture noundef %dspi, i32 noundef %rxdata) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %oper_word_size = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 17
  %0 = ptrtoint ptr %oper_word_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oper_word_size, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %rxdata to i8
  %rx = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 12
  %3 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %4, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv2 = trunc i32 %rxdata to i16
  %rx3 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 12
  %6 = ptrtoint ptr %rx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2, ptr %7, align 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rx5 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 12
  %9 = ptrtoint ptr %rx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx5, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rxdata, ptr %10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %12 = ptrtoint ptr %oper_word_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oper_word_size, align 4
  %rx7 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 12
  %14 = ptrtoint ptr %rx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx7, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %13
  store ptr %add.ptr, ptr %rx7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dspi_native_host_to_dev(ptr nocapture noundef %dspi, ptr nocapture noundef writeonly %txdata) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %oper_word_size = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 17
  %0 = ptrtoint ptr %oper_word_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oper_word_size, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 11
  %3 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %conv = zext i8 %6 to i32
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx2 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 11
  %7 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx2, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 2
  %conv3 = zext i16 %10 to i32
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx5 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 11
  %11 = ptrtoint ptr %tx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx5, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %.sink = phi i32 [ %14, %sw.bb4 ], [ %conv3, %sw.bb1 ], [ %conv, %sw.bb ]
  %15 = ptrtoint ptr %txdata to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %txdata, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %16 = ptrtoint ptr %oper_word_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oper_word_size, align 4
  %tx7 = getelementptr inbounds %struct.fsl_dspi, ptr %dspi, i32 0, i32 11
  %18 = ptrtoint ptr %tx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx7, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %17
  store ptr %add.ptr, ptr %tx7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dspi_tx_dma_callback(ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.fsl_dspi, ptr %arg, i32 0, i32 16
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %cmd_tx_complete = getelementptr inbounds %struct.fsl_dspi_dma, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %cmd_tx_complete) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dspi_rx_dma_callback(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.fsl_dspi, ptr %arg, i32 0, i32 16
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %rx = getelementptr inbounds %struct.fsl_dspi, ptr %arg, i32 0, i32 12
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %words_in_flight = getelementptr inbounds %struct.fsl_dspi, ptr %arg, i32 0, i32 19
  %4 = ptrtoint ptr %words_in_flight to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %words_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp sgt i32 %5, 0
  br i1 %cmp9, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev_to_host.i = getelementptr inbounds %struct.fsl_dspi, ptr %arg, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %dspi_push_rx.exit.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dspi_push_rx.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.dspi_push_rx.exit_crit_edge, label %if.end.i

for.body.dspi_push_rx.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %dspi_push_rx.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma1, align 4
  %rx_dma_buf = getelementptr inbounds %struct.fsl_dspi_dma, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_dma_buf, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %i.010
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %dev_to_host.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_to_host.i, align 4
  tail call void %15(ptr noundef %arg, i32 noundef %13) #8
  br label %dspi_push_rx.exit

dspi_push_rx.exit:                                ; preds = %if.end.i, %for.body.dspi_push_rx.exit_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %16 = ptrtoint ptr %words_in_flight to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %words_in_flight, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %dspi_push_rx.exit.for.body_crit_edge, label %dspi_push_rx.exit.if.end_crit_edge

dspi_push_rx.exit.if.end_crit_edge:               ; preds = %dspi_push_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dspi_push_rx.exit.for.body_crit_edge:             ; preds = %dspi_push_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end:                                           ; preds = %dspi_push_rx.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd_rx_complete = getelementptr inbounds %struct.fsl_dspi_dma, ptr %1, i32 0, i32 8
  tail call void @complete(ptr noundef %cmd_rx_complete) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_take_timestamp_post(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dspi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq(i32 noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %5) #8
  %clk = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %call3 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dspi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #8
  %clk = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
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
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @spi_controller_resume(ptr noundef %5) #8
  %irq = getelementptr inbounds %struct.fsl_dspi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @enable_irq(i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !144, !146, !147, !148, !149, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @__initcall__kmod_spi_fsl_dspi__239_1434_fsl_dspi_driver_init6, !1, !"__initcall__kmod_spi_fsl_dspi__239_1434_fsl_dspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1434, i32 1}
!2 = !{ptr @__exitcall_fsl_dspi_driver_exit, !1, !"__exitcall_fsl_dspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description240, !4, !"__UNIQUE_ID_description240", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1436, i32 1}
!5 = !{ptr @__UNIQUE_ID_file241, !6, !"__UNIQUE_ID_file241", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1437, i32 1}
!7 = !{ptr @__UNIQUE_ID_license242, !6, !"__UNIQUE_ID_license242", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias243, !9, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1438, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1426, i32 18}
!12 = !{ptr @fsl_dspi_driver, !13, !"fsl_dspi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1425, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1262, i32 34}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1264, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dspi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dspi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1269, i32 28}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1272, i32 33}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1277, i32 4}
!30 = !{ptr @dspi_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dspi_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @dspi_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1308, i32 17}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1310, i32 3}
!37 = !{ptr @dspi_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @dspi_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @dspi_probe._key.16, !40, !"_key", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1317, i32 24}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1321, i32 4}
!44 = !{ptr @dspi_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dspi_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1329, i32 39}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1332, i32 3}
!50 = !{ptr @dspi_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @dspi_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1345, i32 3}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dspi_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @dspi_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1356, i32 3}
!59 = !{ptr @dspi_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @dspi_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1365, i32 4}
!63 = !{ptr @dspi_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @dspi_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1378, i32 3}
!67 = !{ptr @dspi_probe._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @dspi_probe._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 996, i32 42}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 999, i32 42}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 631, i32 3}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hz_to_spi_baud._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @hz_to_spi_baud._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 665, i32 3}
!80 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ns_delay_scale._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ns_delay_scale._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 483, i32 4}
!85 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @dspi_dma_xfer._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @dspi_dma_xfer._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 397, i32 3}
!90 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dspi_next_xfer_dma_submit._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @dspi_next_xfer_dma_submit._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 404, i32 3}
!95 = !{ptr @dspi_next_xfer_dma_submit._entry.48, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @dspi_next_xfer_dma_submit._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @dspi_next_xfer_dma_submit._entry.51, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 415, i32 3}
!99 = !{ptr @dspi_next_xfer_dma_submit._entry_ptr.52, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @dspi_next_xfer_dma_submit._entry.53, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 422, i32 3}
!102 = !{ptr @dspi_next_xfer_dma_submit._entry_ptr.54, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 440, i32 3}
!105 = !{ptr @dspi_next_xfer_dma_submit._entry.55, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @dspi_next_xfer_dma_submit._entry_ptr.57, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 449, i32 3}
!109 = !{ptr @dspi_next_xfer_dma_submit._entry.58, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @dspi_next_xfer_dma_submit._entry_ptr.60, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1042, i32 2}
!113 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @dspi_cleanup.__UNIQUE_ID_ddebug238, !112, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!118 = !{ptr @devtype_data, !119, !"devtype_data", i1 false, i1 false}
!119 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 138, i32 43}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1156, i32 12}
!122 = !{ptr @dspi_xspi_regmap_config, !123, !"dspi_xspi_regmap_config", i1 false, i1 false}
!123 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1147, i32 35}
!124 = !{ptr @dspi_xspi_volatile_table, !125, !"dspi_xspi_volatile_table", i1 false, i1 false}
!125 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1142, i32 41}
!126 = !{ptr @dspi_xspi_volatile_ranges, !127, !"dspi_xspi_volatile_ranges", i1 false, i1 false}
!127 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1135, i32 34}
!128 = !{ptr @dspi_regmap_config, !129, !"dspi_regmap_config", i1 false, i1 false}
!129 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1127, i32 35}
!130 = !{ptr @dspi_volatile_table, !131, !"dspi_volatile_table", i1 false, i1 false}
!131 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1122, i32 41}
!132 = !{ptr @dspi_volatile_ranges, !133, !"dspi_volatile_ranges", i1 false, i1 false}
!133 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1116, i32 34}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1189, i32 3}
!136 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @dspi_init._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @dspi_init._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @init_completion.__key, !140, !"__key", i1 false, i1 false}
!140 = !{!"../include/linux/completion.h", i32 87, i32 2}
!141 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 503, i32 39}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 505, i32 3}
!146 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @dspi_request_dma._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @dspi_request_dma._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 510, i32 39}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 512, i32 3}
!153 = !{ptr @dspi_request_dma._entry.73, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @dspi_request_dma._entry_ptr.75, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 544, i32 3}
!157 = !{ptr @dspi_request_dma._entry.76, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @dspi_request_dma._entry_ptr.78, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 552, i32 3}
!161 = !{ptr @dspi_request_dma._entry.79, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @dspi_request_dma._entry_ptr.81, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @fsl_dspi_dt_ids, !164, !"fsl_dspi_dt_ids", i1 false, i1 false}
!164 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1048, i32 34}
!165 = !{ptr @dspi_pm, !166, !"dspi_pm", i1 false, i1 false}
!166 = !{!"../drivers/spi/spi-fsl-dspi.c", i32 1114, i32 8}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{!"auto-init"}
!177 = !{i8 0, i8 2}
!178 = !{i64 2148755897, i64 2148755902, i64 2148755915, i64 2148755959, i64 2148755993, i64 2148756014}
!179 = !{i64 1179072, i64 1179099, i64 1179121, i64 1179149}
!180 = !{i64 1179480, i64 1179507, i64 1179540, i64 1179561, i64 1179588, i64 1179614}
