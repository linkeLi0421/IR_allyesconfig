; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-imx.c_pt.bc'
source_filename = "../drivers/spi/spi-imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_imx_devtype_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i8, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.spi_imx_data = type { %struct.spi_bitbang, ptr, %struct.completion, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i32, i8, i32, %struct.completion, %struct.completion, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__param_str_use_dma = internal constant [16 x i8] c"spi_imx.use_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype239 = internal constant [30 x i8] c"spi_imx.parmtype=use_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma240 = internal constant [66 x i8] c"spi_imx.parm=use_dma:Enable usage of DMA when available (default)\00", section ".modinfo", align 1
@__initcall__kmod_spi_imx__252_1854_spi_imx_driver_init6 = internal global ptr @spi_imx_driver_init, section ".initcall6.init", align 4
@spi_imx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spi_imx_probe, ptr @spi_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_imx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_spi_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_imx_driver_exit = internal global ptr @spi_imx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [47 x i8] c"spi_imx.description=i.MX SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [41 x i8] c"spi_imx.author=Sascha Hauer, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [33 x i8] c"spi_imx.file=drivers/spi/spi-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [20 x i8] c"spi_imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias257 = internal constant [31 x i8] c"spi_imx.alias=platform:spi_imx\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_imx\00", [24 x i8] zeroinitializer }, align 32
@spi_imx_dt_ids = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-cspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx1_cspi_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-cspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx21_cspi_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-cspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx27_cspi_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx31-cspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_cspi_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-cspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx35_cspi_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-ecspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx51_ecspi_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-ecspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx53_ecspi_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-ecspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_ecspi_devtype_data }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@imx_spi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @spi_imx_suspend, ptr @spi_imx_resume, ptr @spi_imx_suspend, ptr @spi_imx_resume, ptr @spi_imx_suspend, ptr @spi_imx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spi_imx_runtime_suspend, ptr @spi_imx_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi-slave\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,spi-rdy-drctl\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cs-gpios\00", [23 x i8] zeroinitializer }, align 32
@spi_imx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1688, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't get irq%d: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_imx_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/spi/spi-imx.c\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_imx_probe._entry_ptr = internal global ptr @spi_imx_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@spi_imx_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.12, i8 1, i8 -80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dma setup error %d, use pio\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bitbang start failed\0A\00", [42 x i8] zeroinitializer }, align 32
@spi_imx_setupxfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 1210, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no speed_hz provided!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_imx_setupxfer\00", [46 x i8] zeroinitializer }, align 32
@spi_imx_setupxfer._entry_ptr = internal global ptr @spi_imx_setupxfer._entry, section ".printk_index", align 4
@spi_imx_setupxfer.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.7, ptr @.str.16, i8 1, i8 47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"using spi->max_speed_hz!\0A\00", [38 x i8] zeroinitializer }, align 32
@spi_imx_pio_transfer_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 1483, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Transaction too big, max size is %d bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"spi_imx_pio_transfer_slave\00", [37 x i8] zeroinitializer }, align 32
@spi_imx_pio_transfer_slave._entry_ptr = internal global ptr @spi_imx_pio_transfer_slave._entry, section ".printk_index", align 4
@spi_imx_pio_transfer_slave.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.7, ptr @.str.19, i8 1, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"interrupted\0A\00", [19 x i8] zeroinitializer }, align 32
@spi_imx_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.7, i32 1375, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No setup_wml()?\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi_imx_dma_transfer\00", [43 x i8] zeroinitializer }, align 32
@spi_imx_dma_transfer._entry_ptr = internal global ptr @spi_imx_dma_transfer._entry, section ".printk_index", align 4
@spi_imx_dma_transfer._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.7, i32 1420, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I/O Error in DMA TX\0A\00", [43 x i8] zeroinitializer }, align 32
@spi_imx_dma_transfer._entry_ptr.24 = internal global ptr @spi_imx_dma_transfer._entry.22, section ".printk_index", align 4
@spi_imx_dma_transfer._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.7, i32 1429, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I/O Error in DMA RX\0A\00", [43 x i8] zeroinitializer }, align 32
@spi_imx_dma_transfer._entry_ptr.27 = internal global ptr @spi_imx_dma_transfer._entry.25, section ".printk_index", align 4
@spi_imx_dma_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 1183, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TX dma configuration failed with %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spi_imx_dma_configure\00", [42 x i8] zeroinitializer }, align 32
@spi_imx_dma_configure._entry_ptr = internal global ptr @spi_imx_dma_configure._entry, section ".printk_index", align 4
@spi_imx_dma_configure._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.7, i32 1193, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RX dma configuration failed with %d\0A\00", [59 x i8] zeroinitializer }, align 32
@spi_imx_dma_configure._entry_ptr.32 = internal global ptr @spi_imx_dma_configure._entry.30, section ".printk_index", align 4
@spi_imx_pio_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.7, i32 1466, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I/O Error in PIO\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi_imx_pio_transfer\00", [43 x i8] zeroinitializer }, align 32
@spi_imx_pio_transfer._entry_ptr = internal global ptr @spi_imx_pio_transfer._entry, section ".printk_index", align 4
@spi_imx_setup.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.7, ptr @.str.36, i8 1, i8 -127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_imx_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: mode %d, %u bpw, %d hz\0A\00", [36 x i8] zeroinitializer }, align 32
@spi_imx_prepare_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 1559, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spi_imx_prepare_message\00", [40 x i8] zeroinitializer }, align 32
@spi_imx_prepare_message._entry_ptr = internal global ptr @spi_imx_prepare_message._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@spi_imx_sdma_init.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.7, ptr @.str.42, i8 1, i8 66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_imx_sdma_init\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't get the TX DMA channel, error %d!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@spi_imx_sdma_init.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.7, ptr @.str.44, i8 1, i8 69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't get the RX DMA channel, error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@spi_imx_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.45, ptr @.str.7, i32 1777, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_imx_remove\00", [17 x i8] zeroinitializer }, align 32
@spi_imx_remove._entry_ptr = internal global ptr @spi_imx_remove._entry, section ".printk_index", align 4
@imx1_cspi_devtype_data = internal global { %struct.spi_imx_devtype_data, [44 x i8] } { %struct.spi_imx_devtype_data { ptr @mx1_intctrl, ptr @mx1_prepare_message, ptr @mx1_prepare_transfer, ptr @mx1_trigger, ptr @mx1_rx_available, ptr @mx1_reset, ptr null, ptr null, ptr null, i8 0, i8 0, i32 8, i8 0, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@imx21_cspi_devtype_data = internal global { %struct.spi_imx_devtype_data, [44 x i8] } { %struct.spi_imx_devtype_data { ptr @mx21_intctrl, ptr @mx21_prepare_message, ptr @mx21_prepare_transfer, ptr @mx21_trigger, ptr @mx21_rx_available, ptr @mx21_reset, ptr null, ptr null, ptr null, i8 0, i8 0, i32 8, i8 0, i8 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@imx27_cspi_devtype_data = internal global { %struct.spi_imx_devtype_data, [44 x i8] } { %struct.spi_imx_devtype_data { ptr @mx21_intctrl, ptr @mx21_prepare_message, ptr @mx21_prepare_transfer, ptr @mx21_trigger, ptr @mx21_rx_available, ptr @mx21_reset, ptr null, ptr null, ptr null, i8 0, i8 0, i32 8, i8 0, i8 0, i32 2 }, [44 x i8] zeroinitializer }, align 32
@imx31_cspi_devtype_data = internal global { %struct.spi_imx_devtype_data, [44 x i8] } { %struct.spi_imx_devtype_data { ptr @mx31_intctrl, ptr @mx31_prepare_message, ptr @mx31_prepare_transfer, ptr @mx31_trigger, ptr @mx31_rx_available, ptr @mx31_reset, ptr null, ptr null, ptr null, i8 0, i8 0, i32 8, i8 0, i8 0, i32 3 }, [44 x i8] zeroinitializer }, align 32
@imx35_cspi_devtype_data = internal global { %struct.spi_imx_devtype_data, [44 x i8] } { %struct.spi_imx_devtype_data { ptr @mx31_intctrl, ptr @mx31_prepare_message, ptr @mx31_prepare_transfer, ptr @mx31_trigger, ptr @mx31_rx_available, ptr @mx31_reset, ptr null, ptr null, ptr null, i8 1, i8 0, i32 8, i8 0, i8 0, i32 4 }, [44 x i8] zeroinitializer }, align 32
@imx51_ecspi_devtype_data = internal global { %struct.spi_imx_devtype_data, [44 x i8] } { %struct.spi_imx_devtype_data { ptr @mx51_ecspi_intctrl, ptr @mx51_ecspi_prepare_message, ptr @mx51_ecspi_prepare_transfer, ptr @mx51_ecspi_trigger, ptr @mx51_ecspi_rx_available, ptr @mx51_ecspi_reset, ptr @mx51_setup_wml, ptr @mx51_ecspi_disable, ptr @mx51_disable_dma, i8 1, i8 1, i32 64, i8 1, i8 0, i32 5 }, [44 x i8] zeroinitializer }, align 32
@imx53_ecspi_devtype_data = internal global { %struct.spi_imx_devtype_data, [44 x i8] } { %struct.spi_imx_devtype_data { ptr @mx51_ecspi_intctrl, ptr @mx51_ecspi_prepare_message, ptr @mx51_ecspi_prepare_transfer, ptr @mx51_ecspi_trigger, ptr @mx51_ecspi_rx_available, ptr @mx51_ecspi_reset, ptr null, ptr @mx51_ecspi_disable, ptr @mx51_disable_dma, i8 1, i8 1, i32 64, i8 0, i8 0, i32 6 }, [44 x i8] zeroinitializer }, align 32
@imx6ul_ecspi_devtype_data = internal global { %struct.spi_imx_devtype_data, [44 x i8] } { %struct.spi_imx_devtype_data { ptr @mx51_ecspi_intctrl, ptr @mx51_ecspi_prepare_message, ptr @mx51_ecspi_prepare_transfer, ptr @mx51_ecspi_trigger, ptr @mx51_ecspi_rx_available, ptr @mx51_ecspi_reset, ptr @mx51_setup_wml, ptr @mx51_ecspi_disable, ptr null, i8 1, i8 1, i32 64, i8 1, i8 1, i32 5 }, [44 x i8] zeroinitializer }, align 32
@mxc_clkdivs = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024], [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mx51_ecspi_clkdiv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 454, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cannot set clock freq: %u (base freq: %u)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mx51_ecspi_clkdiv\00", [46 x i8] zeroinitializer }, align 32
@mx51_ecspi_clkdiv._entry_ptr = internal global ptr @mx51_ecspi_clkdiv._entry, section ".printk_index", align 4
@mx51_ecspi_clkdiv.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.7, ptr @.str.48, i8 0, i8 115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: fin: %u, fspi: %u, post: %u, pre: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.50 = private unnamed_addr constant [8 x i8] c"use_dma\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 31, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"spi_imx_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1845, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1847, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"spi_imx_dt_ids\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1063, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"imx_spi_pm\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1839, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1605, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1615, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1640, i32 44 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1659, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1688, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1692, i32 46 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1698, i32 46 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1729, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1740, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1210, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1213, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1482, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1502, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1375, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1420, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1429, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1183, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1193, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1466, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1540, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1559, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 87, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1288, i32 41 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1291, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1297, i32 41 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1300, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1777, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [23 x i8] c"imx1_cspi_devtype_data\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 942, i32 36 }
@___asan_gen_.221 = private unnamed_addr constant [24 x i8] c"imx21_cspi_devtype_data\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 956, i32 36 }
@___asan_gen_.224 = private unnamed_addr constant [24 x i8] c"imx27_cspi_devtype_data\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 970, i32 36 }
@___asan_gen_.227 = private unnamed_addr constant [24 x i8] c"imx31_cspi_devtype_data\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 985, i32 36 }
@___asan_gen_.230 = private unnamed_addr constant [24 x i8] c"imx35_cspi_devtype_data\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 999, i32 36 }
@___asan_gen_.233 = private unnamed_addr constant [25 x i8] c"imx51_ecspi_devtype_data\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1014, i32 36 }
@___asan_gen_.236 = private unnamed_addr constant [25 x i8] c"imx53_ecspi_devtype_data\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1031, i32 36 }
@___asan_gen_.239 = private unnamed_addr constant [26 x i8] c"imx6ul_ecspi_devtype_data\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1046, i32 36 }
@___asan_gen_.242 = private unnamed_addr constant [12 x i8] c"mxc_clkdivs\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 184, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 453, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [25 x i8] c"../drivers/spi/spi-imx.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 460, i32 2 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_alias257, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__UNIQUE_ID_use_dma240, ptr @__UNIQUE_ID_use_dmatype239, ptr @__exitcall_spi_imx_driver_exit, ptr @__initcall__kmod_spi_imx__252_1854_spi_imx_driver_init6, ptr @__param_use_dma, ptr @mx51_ecspi_clkdiv._entry, ptr @mx51_ecspi_clkdiv._entry_ptr, ptr @spi_imx_dma_configure._entry, ptr @spi_imx_dma_configure._entry.30, ptr @spi_imx_dma_configure._entry_ptr, ptr @spi_imx_dma_configure._entry_ptr.32, ptr @spi_imx_dma_transfer._entry, ptr @spi_imx_dma_transfer._entry.22, ptr @spi_imx_dma_transfer._entry.25, ptr @spi_imx_dma_transfer._entry_ptr, ptr @spi_imx_dma_transfer._entry_ptr.24, ptr @spi_imx_dma_transfer._entry_ptr.27, ptr @spi_imx_driver_exit, ptr @spi_imx_pio_transfer._entry, ptr @spi_imx_pio_transfer._entry_ptr, ptr @spi_imx_pio_transfer_slave._entry, ptr @spi_imx_pio_transfer_slave._entry_ptr, ptr @spi_imx_prepare_message._entry, ptr @spi_imx_prepare_message._entry_ptr, ptr @spi_imx_probe._entry, ptr @spi_imx_probe._entry_ptr, ptr @spi_imx_remove._entry, ptr @spi_imx_remove._entry_ptr, ptr @spi_imx_setupxfer._entry, ptr @spi_imx_setupxfer._entry_ptr, ptr @use_dma, ptr @spi_imx_driver, ptr @.str, ptr @spi_imx_dt_ids, ptr @imx_spi_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @init_completion.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @imx1_cspi_devtype_data, ptr @imx21_cspi_devtype_data, ptr @imx27_cspi_devtype_data, ptr @imx31_cspi_devtype_data, ptr @imx35_cspi_devtype_data, ptr @imx51_ecspi_devtype_data, ptr @imx53_ecspi_devtype_data, ptr @imx6ul_ecspi_devtype_data, ptr @mxc_clkdivs, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_dt_ids to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_spi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_setupxfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_pio_transfer_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_dma_transfer._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_dma_transfer._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_dma_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_dma_configure._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_pio_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_prepare_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_imx_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx1_cspi_devtype_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx21_cspi_devtype_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx27_cspi_devtype_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx31_cspi_devtype_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx35_cspi_devtype_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx51_ecspi_devtype_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx53_ecspi_devtype_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_ecspi_devtype_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_clkdivs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx51_ecspi_clkdiv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_imx_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_imx_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %spi_drctl = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi_drctl) #10
  %2 = ptrtoint ptr %spi_drctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %spi_drctl, align 4, !annotation !158
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !158
  %has_slavemode = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %has_slavemode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_slavemode, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.end:                                         ; preds = %entry
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %land.end.if.else_crit_edge, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.end.if.else_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.end.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.end.if.end_crit_edge
  %.sink333 = phi i1 [ false, %if.else ], [ true, %land.end.if.end_crit_edge ]
  %frombool328 = phi i8 [ 0, %if.else ], [ 1, %land.end.if.end_crit_edge ]
  %call.i296 = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 388, i1 noundef zeroext %.sink333) #10
  %tobool8.not = icmp eq ptr %call.i296, null
  br i1 %tobool8.not, label %if.end.cleanup180_crit_edge, label %if.end10

if.end.cleanup180_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup180

if.end10:                                         ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %spi_drctl, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end10.if.then13_crit_edge, label %lor.lhs.false

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end10
  %6 = ptrtoint ptr %spi_drctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spi_drctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp12 = icmp sgt i32 %7, 2
  br i1 %cmp12, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %8 = ptrtoint ptr %spi_drctl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %spi_drctl, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lor.lhs.false.if.end14_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i296, ptr %driver_data.i.i, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i296, i32 0, i32 7
  %10 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %bits_per_word_mask, align 8
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %cond.false, label %if.end14.cond.end_crit_edge

if.end14.cond.end_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end14.cond.end_crit_edge
  %cond = phi i32 [ %12, %cond.false ], [ -1, %if.end14.cond.end_crit_edge ]
  %conv = trunc i32 %cond to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i296, i32 0, i32 2
  %13 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %bus_num, align 8
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i296, i32 0, i32 56
  %14 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %driver_data.i.i297 = getelementptr inbounds %struct.device, ptr %call.i296, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i297 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i297, align 4
  %master17 = getelementptr inbounds %struct.spi_bitbang, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %master17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i296, ptr %master17, align 4
  %dev19 = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev19, align 4
  %slave_mode21 = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 19
  %19 = ptrtoint ptr %slave_mode21 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool328, ptr %slave_mode21, align 4
  %devtype_data23 = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 26
  %20 = ptrtoint ptr %devtype_data23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %devtype_data23, align 4
  %call.i298 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull %val, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298)
  %tobool26.not = icmp eq i32 %call.i298, 0
  br i1 %tobool26.not, label %if.then27, label %cond.end.if.end31_crit_edge

cond.end.if.end31_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then27:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %conv28 = trunc i32 %22 to i16
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %cond.end.if.end31_crit_edge
  %.sink = phi i16 [ %conv28, %if.then27 ], [ 3, %cond.end.if.end31_crit_edge ]
  %23 = getelementptr inbounds %struct.spi_controller, ptr %call.i296, i32 0, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink, ptr %23, align 2
  %setup_transfer = getelementptr inbounds %struct.spi_bitbang, ptr %16, i32 0, i32 5
  %25 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @spi_imx_setupxfer, ptr %setup_transfer, align 4
  %txrx_bufs = getelementptr inbounds %struct.spi_bitbang, ptr %16, i32 0, i32 7
  %26 = ptrtoint ptr %txrx_bufs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @spi_imx_transfer, ptr %txrx_bufs, align 4
  %27 = ptrtoint ptr %master17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master17, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @spi_imx_setup, ptr %setup, align 4
  %30 = load ptr, ptr %master17, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %30, i32 0, i32 23
  %31 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @spi_imx_cleanup, ptr %cleanup, align 8
  %32 = load ptr, ptr %master17, align 4
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %32, i32 0, i32 47
  %33 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @spi_imx_prepare_message, ptr %prepare_message, align 4
  %34 = load ptr, ptr %master17, align 4
  %unprepare_message = getelementptr inbounds %struct.spi_controller, ptr %34, i32 0, i32 48
  %35 = ptrtoint ptr %unprepare_message to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @spi_imx_unprepare_message, ptr %unprepare_message, align 8
  %36 = load ptr, ptr %master17, align 4
  %slave_abort = getelementptr inbounds %struct.spi_controller, ptr %36, i32 0, i32 49
  %37 = ptrtoint ptr %slave_abort to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @spi_imx_slave_abort, ptr %slave_abort, align 4
  %38 = load ptr, ptr %master17, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 71, ptr %mode_bits, align 8
  %40 = ptrtoint ptr %devtype_data23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %devtype_data23, align 4
  %devtype.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %devtype.i, align 4
  %.off = add i32 %43, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then54, label %if.end31.if.end58_crit_edge

if.end31.if.end58_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then54:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %master17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %master17, align 4
  %mode_bits57 = getelementptr inbounds %struct.spi_controller, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %mode_bits57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mode_bits57, align 8
  %or = or i32 %47, 160
  store i32 %or, ptr %mode_bits57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end31.if.end58_crit_edge
  %48 = ptrtoint ptr %devtype_data23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %devtype_data23, align 4
  %devtype.i308 = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %devtype.i308 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %devtype.i308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %51)
  %cmp.i309.not = icmp eq i32 %51, 5
  br i1 %cmp.i309.not, label %land.lhs.true, label %if.end58.if.end69_crit_edge

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end58
  %call.i311 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %tobool63.not = icmp eq i32 %call.i311, 0
  br i1 %tobool63.not, label %land.lhs.true.if.end69_crit_edge, label %if.then64

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %master17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %master17, align 4
  %mode_bits67 = getelementptr inbounds %struct.spi_controller, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %mode_bits67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode_bits67, align 8
  %or68 = or i32 %55, 4096
  store i32 %or68, ptr %mode_bits67, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %land.lhs.true.if.end69_crit_edge, %if.end58.if.end69_crit_edge
  %56 = ptrtoint ptr %spi_drctl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %spi_drctl, align 4
  %spi_drctl70 = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 10
  %58 = ptrtoint ptr %spi_drctl70 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %spi_drctl70, align 4
  %xfer_done = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 2
  %59 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %xfer_done, align 4
  %wait.i = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #10
  %call71 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call73 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call71) #10
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 3
  %60 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call73, ptr %base, align 4
  %cmp.i312 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i312, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %call73 to i32
  br label %spi_controller_put.exit

if.end79:                                         ; preds = %if.end69
  %62 = ptrtoint ptr %call71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %call71, align 4
  %base_phys = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 4
  %64 = ptrtoint ptr %base_phys to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %base_phys, align 4
  %call80 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end79.spi_controller_put.exit_crit_edge, label %if.end84

if.end79.spi_controller_put.exit_crit_edge:       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.end84:                                         ; preds = %if.end79
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end84.dev_name.exit_crit_edge

if.end84.dev_name.exit_crit_edge:                 ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end84.dev_name.exit_crit_edge
  %retval.0.i313 = phi ptr [ %68, %if.end.i ], [ %66, %if.end84.dev_name.exit_crit_edge ]
  %call.i314 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call80, ptr noundef nonnull @spi_imx_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i313, ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %tobool89.not = icmp eq i32 %call.i314, 0
  br i1 %tobool89.not, label %if.end92, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call80, i32 noundef %call.i314) #13
  br label %spi_controller_put.exit

if.end92:                                         ; preds = %dev_name.exit
  %call94 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  %clk_ipg = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 6
  %69 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call94, ptr %clk_ipg, align 4
  %cmp.i315 = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i315, label %if.then97, label %if.end100

if.then97:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %call94 to i32
  br label %spi_controller_put.exit

if.end100:                                        ; preds = %if.end92
  %call102 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %clk_per = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 5
  %71 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call102, ptr %clk_per, align 4
  %cmp.i316 = icmp ugt ptr %call102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i316, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %call102 to i32
  br label %spi_controller_put.exit

if.end108:                                        ; preds = %if.end100
  %call.i317 = call i32 @clk_prepare(ptr noundef %call102) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317)
  %tobool.not.i318 = icmp eq i32 %call.i317, 0
  br i1 %tobool.not.i318, label %if.end.i319, label %if.end108.spi_controller_put.exit_crit_edge

if.end108.spi_controller_put.exit_crit_edge:      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit

if.end.i319:                                      ; preds = %if.end108
  %call1.i = call i32 @clk_enable(ptr noundef %call102) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end113, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i319
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %call102) #10
  br label %spi_controller_put.exit

if.end113:                                        ; preds = %if.end.i319
  %73 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk_ipg, align 4
  %call115 = call fastcc i32 @clk_prepare_enable(ptr noundef %74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end113.out_put_per_crit_edge

if.end113.out_put_per_crit_edge:                  ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put_per

if.end118:                                        ; preds = %if.end113
  %75 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev19, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %76, i32 noundef 2000) #10
  %77 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev19, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %78, i1 noundef zeroext true) #10
  %79 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev19, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %81 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !160
  %82 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev19, align 4
  %call.i321 = call i32 @__pm_runtime_set_status(ptr noundef %83, i32 noundef 0) #10
  %84 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev19, align 4
  call void @pm_runtime_enable(ptr noundef %85) #10
  %86 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk_per, align 4
  %call126 = call i32 @clk_get_rate(ptr noundef %87) #10
  %spi_clk = getelementptr inbounds %struct.spi_imx_data, ptr %16, i32 0, i32 7
  %88 = ptrtoint ptr %spi_clk to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call126, ptr %spi_clk, align 4
  %89 = ptrtoint ptr %devtype_data23 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %devtype_data23, align 4
  %has_dmamode = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %has_dmamode to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %has_dmamode, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool128.not = icmp eq i8 %92, 0
  br i1 %tobool128.not, label %if.end118.if.end152_crit_edge, label %if.then129

if.end118.if.end152_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

if.then129:                                       ; preds = %if.end118
  %call131 = call fastcc i32 @spi_imx_sdma_init(ptr noundef %dev, ptr noundef %16, ptr noundef nonnull %call.i296)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call131)
  %cmp132 = icmp eq i32 %call131, -517
  br i1 %cmp132, label %if.then129.out_runtime_pm_put_crit_edge, label %if.end135

if.then129.out_runtime_pm_put_crit_edge:          ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_runtime_pm_put

if.end135:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp136 = icmp slt i32 %call131, 0
  br i1 %cmp136, label %do.body139, label %if.end135.if.end152_crit_edge

if.end135.if.end152_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

do.body139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_imx_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_imx_probe, %if.end152)) #10
          to label %if.then146 [label %if.end152], !srcloc !161

if.then146:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_imx_probe.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call131) #10
  br label %if.end152

if.end152:                                        ; preds = %if.then146, %do.body139, %if.end135.if.end152_crit_edge, %if.end118.if.end152_crit_edge
  %93 = ptrtoint ptr %devtype_data23 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %devtype_data23, align 4
  %reset = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reset, align 4
  call void %96(ptr noundef %16) #10
  %97 = ptrtoint ptr %devtype_data23 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %devtype_data23, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  call void %100(ptr noundef %16, i32 noundef 0) #10
  %101 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %of_node, align 8
  %of_node158 = getelementptr inbounds %struct.device, ptr %call.i296, i32 0, i32 27
  %103 = ptrtoint ptr %of_node158 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %of_node158, align 8
  %call160 = call i32 @spi_bitbang_start(ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end165, label %if.then162

if.then162:                                       ; preds = %if.end152
  %call164 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call160, ptr noundef nonnull @.str.13) #10
  %104 = ptrtoint ptr %devtype_data23 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %devtype_data23, align 4
  %has_dmamode170 = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %105, i32 0, i32 9
  %106 = ptrtoint ptr %has_dmamode170 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %has_dmamode170, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool171.not = icmp eq i8 %107, 0
  br i1 %tobool171.not, label %if.then162.out_runtime_pm_put_crit_edge, label %if.then172

if.then162.out_runtime_pm_put_crit_edge:          ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_runtime_pm_put

if.end165:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev19, align 4
  %call.i322 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 12, i32 22
  %110 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store volatile i64 %call.i322, ptr %last_busy.i, align 8
  %111 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev19, align 4
  %call.i323 = call i32 @__pm_runtime_suspend(ptr noundef %112, i32 noundef 13) #10
  br label %cleanup180

if.then172:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @spi_imx_sdma_exit(ptr noundef %16)
  br label %out_runtime_pm_put

out_runtime_pm_put:                               ; preds = %if.then172, %if.then162.out_runtime_pm_put_crit_edge, %if.then129.out_runtime_pm_put_crit_edge
  %ret.0 = phi i32 [ -517, %if.then129.out_runtime_pm_put_crit_edge ], [ %call160, %if.then172 ], [ %call160, %if.then162.out_runtime_pm_put_crit_edge ]
  %113 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev19, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %114, i1 noundef zeroext false) #10
  %call.i324 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #10
  %115 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev19, align 4
  call void @__pm_runtime_disable(ptr noundef %116, i1 noundef zeroext true) #10
  %117 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %clk_ipg, align 4
  call void @clk_disable(ptr noundef %118) #10
  call void @clk_unprepare(ptr noundef %118) #10
  br label %out_put_per

out_put_per:                                      ; preds = %out_runtime_pm_put, %if.end113.out_put_per_crit_edge
  %ret.1 = phi i32 [ %call115, %if.end113.out_put_per_crit_edge ], [ %ret.0, %out_runtime_pm_put ]
  %119 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %clk_per, align 4
  call void @clk_disable(ptr noundef %120) #10
  call void @clk_unprepare(ptr noundef %120) #10
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %out_put_per, %if.then3.i, %if.end108.spi_controller_put.exit_crit_edge, %if.then105, %if.then97, %do.end, %if.end79.spi_controller_put.exit_crit_edge, %if.then76
  %ret.2 = phi i32 [ %61, %if.then76 ], [ %call.i314, %do.end ], [ %70, %if.then97 ], [ %72, %if.then105 ], [ %ret.1, %out_put_per ], [ %call80, %if.end79.spi_controller_put.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i317, %if.end108.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i296) #10
  br label %cleanup180

cleanup180:                                       ; preds = %spi_controller_put.exit, %if.end165, %if.end.cleanup180_crit_edge
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ 0, %if.end165 ], [ -12, %if.end.cleanup180_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_drctl) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i24 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i24, align 4
  tail call void @spi_bitbang_stop(ptr noundef %3) #10
  %dev = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %do.body5

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !163
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.37) #13
  br label %cleanup

do.body5:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !166
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %14, i1 noundef zeroext false) #10
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i25 = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 4) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %18, i1 noundef zeroext true) #10
  %master1.i = getelementptr inbounds %struct.spi_bitbang, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master1.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %20, i32 0, i32 61
  %21 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.body5.if.end.i_crit_edge, label %if.then.i

do.body5.if.end.i_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %22) #10
  %23 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %dma_rx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body5.if.end.i_crit_edge
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %20, i32 0, i32 60
  %24 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_tx.i, align 8
  %tobool4.not.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i, label %if.end.i.spi_imx_sdma_exit.exit_crit_edge, label %if.then5.i

if.end.i.spi_imx_sdma_exit.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_sdma_exit.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %25) #10
  %26 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %dma_tx.i, align 8
  br label %spi_imx_sdma_exit.exit

spi_imx_sdma_exit.exit:                           ; preds = %if.then5.i, %if.end.i.spi_imx_sdma_exit.exit_crit_edge
  %tobool.not.i26 = icmp eq ptr %1, null
  br i1 %tobool.not.i26, label %spi_imx_sdma_exit.exit.cleanup_crit_edge, label %if.then.i27

spi_imx_sdma_exit.exit.cleanup_crit_edge:         ; preds = %spi_imx_sdma_exit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i27:                                      ; preds = %spi_imx_sdma_exit.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @put_device(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i27, %spi_imx_sdma_exit.exit.cleanup_crit_edge, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ 0, %spi_imx_sdma_exit.exit.cleanup_crit_edge ], [ 0, %if.then.i27 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_setupxfer(ptr noundef %spi, ptr noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then2:                                         ; preds = %if.end
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %do.end, label %do.body6

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14) #13
  br label %cleanup

do.body6:                                         ; preds = %if.then2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_imx_setupxfer.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_imx_setupxfer, %do.end16)) #10
          to label %if.then12 [label %do.end16], !srcloc !161

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_imx_setupxfer.__UNIQUE_ID_ddebug246, ptr noundef %spi, ptr noundef nonnull @.str.16) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body6
  %8 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_speed_hz, align 8
  br label %if.end20

if.end20:                                         ; preds = %do.end16, %if.end.if.end20_crit_edge
  %.sink = phi i32 [ %9, %do.end16 ], [ %5, %if.end.if.end20_crit_edge ]
  %spi_bus_clk19 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %spi_bus_clk19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %spi_bus_clk19, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %11 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %12 to i32
  %bits_per_word21 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %bits_per_word21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %bits_per_word21, align 4
  %devtype_data = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 26
  %14 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devtype_data, align 4
  %dynamic_burst = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %dynamic_burst to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dynamic_burst, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  br i1 %tobool22.not, label %if.end20.if.else39_crit_edge, label %land.lhs.true

if.end20.if.else39_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else39

land.lhs.true:                                    ; preds = %if.end20
  %slave_mode = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 19
  %18 = ptrtoint ptr %slave_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %slave_mode, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp eq i8 %19, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %land.lhs.true.if.else39_crit_edge

land.lhs.true.if.else39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else39

land.lhs.true25:                                  ; preds = %land.lhs.true
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 8
  %and = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %land.lhs.true25.if.else39_crit_edge

land.lhs.true25.if.else39_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else39

land.lhs.true27:                                  ; preds = %land.lhs.true25
  %22 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %land.lhs.true27.if.else39_crit_edge [
    i8 8, label %land.lhs.true27.if.then37_crit_edge
    i8 16, label %land.lhs.true27.if.then37_crit_edge127
    i8 32, label %land.lhs.true27.if.then37_crit_edge128
  ]

land.lhs.true27.if.then37_crit_edge128:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

land.lhs.true27.if.then37_crit_edge127:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

land.lhs.true27.if.then37_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

land.lhs.true27.if.else39_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else39

if.then37:                                        ; preds = %land.lhs.true27.if.then37_crit_edge, %land.lhs.true27.if.then37_crit_edge127, %land.lhs.true27.if.then37_crit_edge128
  %rx = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 14
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @spi_imx_buf_rx_swap, ptr %rx, align 4
  br label %if.end59

if.else39:                                        ; preds = %land.lhs.true27.if.else39_crit_edge, %land.lhs.true25.if.else39_crit_edge, %land.lhs.true.if.else39_crit_edge, %if.end20.if.else39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %12)
  %cmp41 = icmp ult i8 %12, 9
  br i1 %cmp41, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  %rx44 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 14
  %24 = ptrtoint ptr %rx44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @spi_imx_buf_rx_u8, ptr %rx44, align 4
  br label %if.end59

if.else46:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %12)
  %cmp48 = icmp ult i8 %12, 17
  %rx51 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 14
  br i1 %cmp48, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %rx51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @spi_imx_buf_rx_u16, ptr %rx51, align 4
  br label %if.end59

if.else53:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %rx51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @spi_imx_buf_rx_u32, ptr %rx51, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else53, %if.then50, %if.then43, %if.then37
  %spi_imx_buf_tx_u16.sink.sink = phi ptr [ @spi_imx_buf_tx_swap, %if.then37 ], [ @spi_imx_buf_tx_u16, %if.then50 ], [ @spi_imx_buf_tx_u32, %if.else53 ], [ @spi_imx_buf_tx_u8, %if.then43 ]
  %.sink125 = phi i32 [ 1, %if.then37 ], [ 0, %if.then50 ], [ 0, %if.else53 ], [ 0, %if.then43 ]
  %tx52 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 13
  %27 = ptrtoint ptr %tx52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spi_imx_buf_tx_u16.sink.sink, ptr %tx52, align 4
  %dynamic_burst58 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 18
  %28 = ptrtoint ptr %dynamic_burst58 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink125, ptr %dynamic_burst58, align 4
  %master60 = getelementptr inbounds %struct.spi_bitbang, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %master60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %master60, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i, align 4
  %33 = load i8, ptr @use_dma, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end59.if.end65_crit_edge, label %lor.lhs.false.i

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

lor.lhs.false.i:                                  ; preds = %if.end59
  %fallback.i = getelementptr inbounds %struct.spi_controller, ptr %30, i32 0, i32 41
  %34 = ptrtoint ptr %fallback.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fallback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool1.not.i = icmp eq i8 %35, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end65_crit_edge

lor.lhs.false.i.if.end65_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.end.i:                                         ; preds = %lor.lhs.false.i
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %30, i32 0, i32 61
  %36 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_rx.i, align 4
  %tobool2.not.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i, label %if.end.i.if.end65_crit_edge, label %if.end4.i

if.end.i.if.end65_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.end4.i:                                        ; preds = %if.end.i
  %slave_mode.i = getelementptr inbounds %struct.spi_imx_data, ptr %32, i32 0, i32 19
  %38 = ptrtoint ptr %slave_mode.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %slave_mode.i, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool5.not.i = icmp eq i8 %39, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end4.i.if.end65_crit_edge

if.end4.i.if.end65_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.end7.i:                                        ; preds = %if.end4.i
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %devtype_data.i = getelementptr inbounds %struct.spi_imx_data, ptr %32, i32 0, i32 26
  %42 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %devtype_data.i, align 4
  %fifo_size.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fifo_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %45)
  %cmp.i = icmp ult i32 %41, %45
  br i1 %cmp.i, label %if.end7.i.if.end65_crit_edge, label %if.then62

if.end7.i.if.end65_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then62:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %dynamic_burst.i = getelementptr inbounds %struct.spi_imx_data, ptr %32, i32 0, i32 18
  %46 = ptrtoint ptr %dynamic_burst.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %dynamic_burst.i, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end7.i.if.end65_crit_edge, %if.end4.i.if.end65_crit_edge, %if.end.i.if.end65_crit_edge, %lor.lhs.false.i.if.end65_crit_edge, %if.end59.if.end65_crit_edge
  %.sink126 = phi i8 [ 1, %if.then62 ], [ 0, %lor.lhs.false.i.if.end65_crit_edge ], [ 0, %if.end59.if.end65_crit_edge ], [ 0, %if.end.i.if.end65_crit_edge ], [ 0, %if.end4.i.if.end65_crit_edge ], [ 0, %if.end7.i.if.end65_crit_edge ]
  %usedma64 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 22
  %47 = ptrtoint ptr %usedma64 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink126, ptr %usedma64, align 4
  %48 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %devtype_data, align 4
  %devtype.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %51)
  %cmp.i122.not = icmp eq i32 %51, 6
  br i1 %cmp.i122.not, label %land.lhs.true68, label %if.end65.if.end75_crit_edge

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.lhs.true68:                                  ; preds = %if.end65
  %slave_mode69 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 19
  %52 = ptrtoint ptr %slave_mode69 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %slave_mode69, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool70.not = icmp eq i8 %53, 0
  br i1 %tobool70.not, label %land.lhs.true68.if.end75_crit_edge, label %if.then72

land.lhs.true68.if.end75_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then72:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  %rx73 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 14
  %54 = ptrtoint ptr %rx73 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @mx53_ecspi_rx_slave, ptr %rx73, align 4
  %tx74 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 13
  %55 = ptrtoint ptr %tx74 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @mx53_ecspi_tx_slave, ptr %tx74, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %slave_burst = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 21
  %58 = ptrtoint ptr %slave_burst to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %slave_burst, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %land.lhs.true68.if.end75_crit_edge, %if.end65.if.end75_crit_edge
  %59 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %devtype_data, align 4
  %prepare_transfer = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %prepare_transfer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prepare_transfer, align 4
  %call77 = tail call i32 %62(ptr noundef %3, ptr noundef %spi) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end75 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_transfer(ptr noundef %spi, ptr nocapture noundef %transfer) #2 align 64 {
entry:
  %rx.i.i = alloca %struct.dma_slave_config, align 4
  %tx.i.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %spi_bus_clk = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %spi_bus_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spi_bus_clk, align 4
  %effective_speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 13
  %6 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %effective_speed_hz, align 4
  %devtype_data = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 26
  %7 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devtype_data, align 4
  %rx_available41 = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %rx_available41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_available41, align 4
  %call142 = tail call i32 %10(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool.not43 = icmp eq i32 %call142, 0
  br i1 %tobool.not43, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  %14 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devtype_data, align 4
  %rx_available = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %rx_available to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_available, align 4
  %call1 = tail call i32 %17(ptr noundef %3) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %slave_mode = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 19
  %18 = ptrtoint ptr %slave_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %slave_mode, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not = icmp eq i8 %19, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc i32 @spi_imx_pio_transfer_slave(ptr noundef %spi, ptr noundef %transfer)
  br label %cleanup

if.end:                                           ; preds = %while.end
  %usedma = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 22
  %20 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %usedma, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not = icmp eq i8 %21, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %master1.i = getelementptr inbounds %struct.spi_bitbang, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master1.i, align 4
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 5
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 6
  %24 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_sg.i, align 4
  %nents.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nents.i, align 4
  %call.i = tail call ptr @sg_last(ptr noundef %25, i32 noundef %27) #10
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 8
  %28 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bits_per_word.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %29)
  %cmp.i.i = icmp ult i8 %29, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %29)
  %cmp1.i.i = icmp ult i8 %29, 17
  %..i.i = select i1 %cmp1.i.i, i32 2, i32 4
  %retval.0.i.i = select i1 %cmp.i.i, i32 1, i32 %..i.i
  %30 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %devtype_data, align 4
  %fifo_size.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fifo_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.not176.i = icmp ult i32 %33, 2
  br i1 %cmp.not176.i, label %if.then7.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then7.for.end.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then7
  %div127.i = lshr i32 %33, 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_length.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0177.i = phi i32 [ %div127.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %i.0177.i, %retval.0.i.i
  %rem.i = urem i32 %35, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.0177.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then7.for.end.i_crit_edge
  %spec.store.select.i = phi i32 [ 1, %if.then7.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ %i.0177.i, %for.body.i.for.end.i_crit_edge ]
  %wml.i = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 23
  %36 = ptrtoint ptr %wml.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.store.select.i, ptr %wml.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx.i.i) #10
  %37 = getelementptr inbounds i8, ptr %rx.i.i, i32 8
  %38 = call ptr @memset(ptr %37, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tx.i.i) #10
  %39 = getelementptr inbounds i8, ptr %tx.i.i, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 44)
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %41 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_imx_data, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bits_per_word.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %44)
  %cmp.i.i.i = icmp slt i32 %44, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %44)
  %cmp1.i.i.i = icmp slt i32 %44, 17
  %..i.i.i = select i1 %cmp1.i.i.i, i32 2, i32 4
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i32 1, i32 %..i.i.i
  %45 = zext i32 %retval.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %retval.0.i.i.i, label %for.end.i.spi_imx_dma_configure.exit.thread.i_crit_edge [
    i32 4, label %for.end.i.sw.epilog.i.i_crit_edge
    i32 2, label %for.end.i.sw.epilog.i.i_crit_edge44
    i32 1, label %for.end.i.sw.epilog.i.i_crit_edge45
  ]

for.end.i.sw.epilog.i.i_crit_edge45:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

for.end.i.sw.epilog.i.i_crit_edge44:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

for.end.i.sw.epilog.i.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

for.end.i.spi_imx_dma_configure.exit.thread.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_dma_configure.exit.thread.i

sw.epilog.i.i:                                    ; preds = %for.end.i.sw.epilog.i.i_crit_edge, %for.end.i.sw.epilog.i.i_crit_edge44, %for.end.i.sw.epilog.i.i_crit_edge45
  %46 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %tx.i.i, align 4
  %base_phys.i.i = getelementptr inbounds %struct.spi_imx_data, ptr %42, i32 0, i32 4
  %47 = ptrtoint ptr %base_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base_phys.i.i, align 4
  %add.i.i = add i32 %48, 4
  %dst_addr.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %dst_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i.i, ptr %dst_addr.i.i, align 4
  %dst_addr_width.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %dst_addr_width.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i.i.i, ptr %dst_addr_width.i.i, align 4
  %wml.i.i = getelementptr inbounds %struct.spi_imx_data, ptr %42, i32 0, i32 23
  %51 = ptrtoint ptr %wml.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wml.i.i, align 4
  %dst_maxburst.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %dst_maxburst.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dst_maxburst.i.i, align 4
  %dma_tx.i.i = getelementptr inbounds %struct.spi_controller, ptr %23, i32 0, i32 60
  %54 = ptrtoint ptr %dma_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_tx.i.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %device_config.i.i.i = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %device_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_config.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i.i, label %sw.epilog.i.i.do.end.i.i_crit_edge, label %dmaengine_slave_config.exit.i.i

sw.epilog.i.i.do.end.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

dmaengine_slave_config.exit.i.i:                  ; preds = %sw.epilog.i.i
  %call.i.i.i = call i32 %59(ptr noundef %55, ptr noundef nonnull %tx.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %dmaengine_slave_config.exit.i.i.do.end.i.i_crit_edge

dmaengine_slave_config.exit.i.i.do.end.i.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %dmaengine_slave_config.exit.i.i.do.end.i.i_crit_edge, %sw.epilog.i.i.do.end.i.i_crit_edge
  %retval.0.i3544.i.i = phi i32 [ %call.i.i.i, %dmaengine_slave_config.exit.i.i.do.end.i.i_crit_edge ], [ -38, %sw.epilog.i.i.do.end.i.i_crit_edge ]
  %dev.i.i = getelementptr inbounds %struct.spi_imx_data, ptr %42, i32 0, i32 1
  %60 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i3544.i.i) #13
  br label %spi_imx_dma_configure.exit.thread.i

if.end.i.i:                                       ; preds = %dmaengine_slave_config.exit.i.i
  %62 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %rx.i.i, align 4
  %63 = ptrtoint ptr %base_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base_phys.i.i, align 4
  %src_addr.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %src_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %src_addr.i.i, align 4
  %src_addr_width.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %src_addr_width.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i.i.i, ptr %src_addr_width.i.i, align 4
  %67 = ptrtoint ptr %wml.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wml.i.i, align 4
  %src_maxburst.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %src_maxburst.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %src_maxburst.i.i, align 4
  %dma_rx.i.i = getelementptr inbounds %struct.spi_controller, ptr %23, i32 0, i32 61
  %70 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_rx.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %device_config.i36.i.i = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %device_config.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device_config.i36.i.i, align 4
  %tobool.not.i37.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i37.i.i, label %if.end.i.i.do.end14.i.i_crit_edge, label %dmaengine_slave_config.exit41.i.i

if.end.i.i.do.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i.i

dmaengine_slave_config.exit41.i.i:                ; preds = %if.end.i.i
  %call.i38.i.i = call i32 %75(ptr noundef %71, ptr noundef nonnull %rx.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i38.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end11.i, label %dmaengine_slave_config.exit41.i.i.do.end14.i.i_crit_edge

dmaengine_slave_config.exit41.i.i.do.end14.i.i_crit_edge: ; preds = %dmaengine_slave_config.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %dmaengine_slave_config.exit41.i.i.do.end14.i.i_crit_edge, %if.end.i.i.do.end14.i.i_crit_edge
  %retval.0.i4047.i.i = phi i32 [ %call.i38.i.i, %dmaengine_slave_config.exit41.i.i.do.end14.i.i_crit_edge ], [ -38, %if.end.i.i.do.end14.i.i_crit_edge ]
  %dev15.i.i = getelementptr inbounds %struct.spi_imx_data, ptr %42, i32 0, i32 1
  %76 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev15.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i4047.i.i) #13
  br label %spi_imx_dma_configure.exit.thread.i

spi_imx_dma_configure.exit.thread.i:              ; preds = %do.end14.i.i, %do.end.i.i, %for.end.i.spi_imx_dma_configure.exit.thread.i_crit_edge
  %retval.0.i128.ph.i = phi i32 [ -22, %for.end.i.spi_imx_dma_configure.exit.thread.i_crit_edge ], [ %retval.0.i4047.i.i, %do.end14.i.i ], [ %retval.0.i3544.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tx.i.i) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx.i.i) #10
  br label %dma_failure_no_start.i

if.end11.i:                                       ; preds = %dmaengine_slave_config.exit41.i.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tx.i.i) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx.i.i) #10
  %78 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %devtype_data, align 4
  %setup_wml.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %setup_wml.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %setup_wml.i, align 4
  %tobool13.not.i = icmp eq ptr %81, null
  br i1 %tobool13.not.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 1
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.20) #13
  br label %dma_failure_no_start.i

if.end15.i:                                       ; preds = %if.end11.i
  call void %81(ptr noundef %3) #10
  %84 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dma_rx.i.i, align 4
  %86 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rx_sg.i, align 4
  %88 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nents.i, align 4
  %tobool.not.i129.i = icmp eq ptr %85, null
  br i1 %tobool.not.i129.i, label %if.end15.i.dma_failure_no_start.i_crit_edge, label %lor.lhs.false.i.i

if.end15.i.dma_failure_no_start.i_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_failure_no_start.i

lor.lhs.false.i.i:                                ; preds = %if.end15.i
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %85, align 4
  %tobool1.not.i.i = icmp eq ptr %91, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dma_failure_no_start.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dma_failure_no_start.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_failure_no_start.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %91, i32 0, i32 39
  %92 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %93, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dma_failure_no_start.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.dma_failure_no_start.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_failure_no_start.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %93(ptr noundef nonnull %85, ptr noundef %87, i32 noundef %89, i32 noundef 2, i32 noundef 3, ptr noundef null) #10
  %tobool21.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool21.not.i, label %dmaengine_prep_slave_sg.exit.i.dma_failure_no_start.i_crit_edge, label %if.end23.i

dmaengine_prep_slave_sg.exit.i.dma_failure_no_start.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_failure_no_start.i

if.end23.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %94 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @spi_imx_dma_rx_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %95 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %3, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %96 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i132.i = call i32 %97(ptr noundef nonnull %call.i.i) #10
  %dma_rx_completion.i = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 24
  %98 = ptrtoint ptr %dma_rx_completion.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %dma_rx_completion.i, align 4
  %99 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dma_rx.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %102, i32 0, i32 50
  %103 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %104(ptr noundef %100) #10
  %105 = ptrtoint ptr %dma_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dma_tx.i.i, align 8
  %107 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tx_sg.i, align 4
  %nents27.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 5, i32 1
  %109 = ptrtoint ptr %nents27.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nents27.i, align 4
  %tobool.not.i133.i = icmp eq ptr %106, null
  br i1 %tobool.not.i133.i, label %if.end23.i.if.then30.i_crit_edge, label %lor.lhs.false.i135.i

if.end23.i.if.then30.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

lor.lhs.false.i135.i:                             ; preds = %if.end23.i
  %111 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %106, align 4
  %tobool1.not.i134.i = icmp eq ptr %112, null
  br i1 %tobool1.not.i134.i, label %lor.lhs.false.i135.i.if.then30.i_crit_edge, label %lor.lhs.false2.i138.i

lor.lhs.false.i135.i.if.then30.i_crit_edge:       ; preds = %lor.lhs.false.i135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

lor.lhs.false2.i138.i:                            ; preds = %lor.lhs.false.i135.i
  %device_prep_slave_sg.i136.i = getelementptr inbounds %struct.dma_device, ptr %112, i32 0, i32 39
  %113 = ptrtoint ptr %device_prep_slave_sg.i136.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device_prep_slave_sg.i136.i, align 4
  %tobool4.not.i137.i = icmp eq ptr %114, null
  br i1 %tobool4.not.i137.i, label %lor.lhs.false2.i138.i.if.then30.i_crit_edge, label %dmaengine_prep_slave_sg.exit142.i

lor.lhs.false2.i138.i.if.then30.i_crit_edge:      ; preds = %lor.lhs.false2.i138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

dmaengine_prep_slave_sg.exit142.i:                ; preds = %lor.lhs.false2.i138.i
  %call.i139.i = call ptr %114(ptr noundef nonnull %106, ptr noundef %108, i32 noundef %110, i32 noundef 1, i32 noundef 3, ptr noundef null) #10
  %tobool29.not.i = icmp eq ptr %call.i139.i, null
  br i1 %tobool29.not.i, label %dmaengine_prep_slave_sg.exit142.i.if.then30.i_crit_edge, label %if.end35.i

dmaengine_prep_slave_sg.exit142.i.if.then30.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

if.then30.i:                                      ; preds = %dmaengine_prep_slave_sg.exit142.i.if.then30.i_crit_edge, %lor.lhs.false2.i138.i.if.then30.i_crit_edge, %lor.lhs.false.i135.i.if.then30.i_crit_edge, %if.end23.i.if.then30.i_crit_edge
  %115 = ptrtoint ptr %dma_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dma_tx.i.i, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %118, i32 0, i32 47
  %119 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i143.i = icmp eq ptr %120, null
  br i1 %tobool.not.i143.i, label %if.then30.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

if.then30.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i144.i = call i32 %120(ptr noundef %116) #10
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %if.then30.i.dmaengine_terminate_all.exit.i_crit_edge
  %121 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dma_rx.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %device_terminate_all.i145.i = getelementptr inbounds %struct.dma_device, ptr %124, i32 0, i32 47
  %125 = ptrtoint ptr %device_terminate_all.i145.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device_terminate_all.i145.i, align 4
  %tobool.not.i146.i = icmp eq ptr %126, null
  br i1 %tobool.not.i146.i, label %dmaengine_terminate_all.exit.i.cleanup_crit_edge, label %if.then.i148.i

dmaengine_terminate_all.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i148.i:                                   ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i147.i = call i32 %126(ptr noundef %122) #10
  br label %cleanup

if.end35.i:                                       ; preds = %dmaengine_prep_slave_sg.exit142.i
  %callback36.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i139.i, i32 0, i32 6
  %127 = ptrtoint ptr %callback36.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @spi_imx_dma_tx_callback, ptr %callback36.i, align 4
  %callback_param37.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i139.i, i32 0, i32 8
  %128 = ptrtoint ptr %callback_param37.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %3, ptr %callback_param37.i, align 4
  %tx_submit.i150.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i139.i, i32 0, i32 4
  %129 = ptrtoint ptr %tx_submit.i150.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tx_submit.i150.i, align 4
  %call.i151.i = call i32 %130(ptr noundef nonnull %call.i139.i) #10
  %dma_tx_completion.i = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 25
  %131 = ptrtoint ptr %dma_tx_completion.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %dma_tx_completion.i, align 4
  %132 = ptrtoint ptr %dma_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dma_tx.i.i, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %device_issue_pending.i152.i = getelementptr inbounds %struct.dma_device, ptr %135, i32 0, i32 50
  %136 = ptrtoint ptr %device_issue_pending.i152.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %device_issue_pending.i152.i, align 4
  call void %137(ptr noundef %133) #10
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %138 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len.i, align 4
  %mul.i.i = mul i32 %139, 12
  %140 = ptrtoint ptr %spi_bus_clk to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %spi_bus_clk, align 4
  %div.i.i = udiv i32 %mul.i.i, %141
  %142 = mul i32 %div.i.i, 2000
  %mul2.i.i = add i32 %142, 2000
  %call2.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %mul2.i.i) #10
  %call42.i = call i32 @wait_for_completion_timeout(ptr noundef %dma_tx_completion.i, i32 noundef %call2.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %do.end47.i, label %if.end53.i

do.end47.i:                                       ; preds = %if.end35.i
  %dev48.i = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 1
  %143 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev48.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.23) #13
  %145 = ptrtoint ptr %dma_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dma_tx.i.i, align 8
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %device_terminate_all.i155.i = getelementptr inbounds %struct.dma_device, ptr %148, i32 0, i32 47
  %149 = ptrtoint ptr %device_terminate_all.i155.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %device_terminate_all.i155.i, align 4
  %tobool.not.i156.i = icmp eq ptr %150, null
  br i1 %tobool.not.i156.i, label %do.end47.i.dmaengine_terminate_all.exit159.i_crit_edge, label %if.then.i158.i

do.end47.i.dmaengine_terminate_all.exit159.i_crit_edge: ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit159.i

if.then.i158.i:                                   ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i157.i = call i32 %150(ptr noundef %146) #10
  br label %dmaengine_terminate_all.exit159.i

dmaengine_terminate_all.exit159.i:                ; preds = %if.then.i158.i, %do.end47.i.dmaengine_terminate_all.exit159.i_crit_edge
  %151 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dma_rx.i.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %device_terminate_all.i160.i = getelementptr inbounds %struct.dma_device, ptr %154, i32 0, i32 47
  %155 = ptrtoint ptr %device_terminate_all.i160.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device_terminate_all.i160.i, align 4
  %tobool.not.i161.i = icmp eq ptr %156, null
  br i1 %tobool.not.i161.i, label %dmaengine_terminate_all.exit159.i.cleanup_crit_edge, label %if.then.i163.i

dmaengine_terminate_all.exit159.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_all.exit159.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i163.i:                                   ; preds = %dmaengine_terminate_all.exit159.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i162.i = call i32 %156(ptr noundef %152) #10
  br label %cleanup

if.end53.i:                                       ; preds = %if.end35.i
  %call55.i = call i32 @wait_for_completion_timeout(ptr noundef %dma_rx_completion.i, i32 noundef %call2.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %do.end60.i, label %if.end65.i

do.end60.i:                                       ; preds = %if.end53.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.26) #13
  %157 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %devtype_data, align 4
  %reset.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %158, i32 0, i32 5
  %159 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %reset.i, align 4
  call void %160(ptr noundef %3) #10
  %161 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dma_rx.i.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %device_terminate_all.i165.i = getelementptr inbounds %struct.dma_device, ptr %164, i32 0, i32 47
  %165 = ptrtoint ptr %device_terminate_all.i165.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %device_terminate_all.i165.i, align 4
  %tobool.not.i166.i = icmp eq ptr %166, null
  br i1 %tobool.not.i166.i, label %do.end60.i.cleanup_crit_edge, label %if.then.i168.i

do.end60.i.cleanup_crit_edge:                     ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i168.i:                                   ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i167.i = call i32 %166(ptr noundef %162) #10
  br label %cleanup

if.end65.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %len.i, align 4
  br label %cleanup

dma_failure_no_start.i:                           ; preds = %dmaengine_prep_slave_sg.exit.i.dma_failure_no_start.i_crit_edge, %lor.lhs.false2.i.i.dma_failure_no_start.i_crit_edge, %lor.lhs.false.i.i.dma_failure_no_start.i_crit_edge, %if.end15.i.dma_failure_no_start.i_crit_edge, %do.end.i, %spi_imx_dma_configure.exit.thread.i
  %ret.0.i = phi i32 [ -22, %do.end.i ], [ -22, %dmaengine_prep_slave_sg.exit.i.dma_failure_no_start.i_crit_edge ], [ %retval.0.i128.ph.i, %spi_imx_dma_configure.exit.thread.i ], [ -22, %lor.lhs.false2.i.i.dma_failure_no_start.i_crit_edge ], [ -22, %lor.lhs.false.i.i.dma_failure_no_start.i_crit_edge ], [ -22, %if.end15.i.dma_failure_no_start.i_crit_edge ]
  %error.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 19
  %169 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %error.i, align 4
  %171 = or i16 %170, 1
  store i16 %171, ptr %error.i, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %172 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %master, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %173, i32 0, i32 8
  %174 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %driver_data.i.i.i, align 4
  %176 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %transfer, align 4
  %tx_buf1.i = getelementptr inbounds %struct.spi_imx_data, ptr %175, i32 0, i32 16
  %178 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %177, ptr %tx_buf1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 1
  %179 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rx_buf.i, align 4
  %rx_buf2.i = getelementptr inbounds %struct.spi_imx_data, ptr %175, i32 0, i32 15
  %181 = ptrtoint ptr %rx_buf2.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %180, ptr %rx_buf2.i, align 4
  %len.i22 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %182 = ptrtoint ptr %len.i22 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %len.i22, align 4
  %count.i = getelementptr inbounds %struct.spi_imx_data, ptr %175, i32 0, i32 11
  %184 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %count.i, align 4
  %txfifo.i = getelementptr inbounds %struct.spi_imx_data, ptr %175, i32 0, i32 17
  %185 = ptrtoint ptr %txfifo.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %txfifo.i, align 4
  %remainder.i = getelementptr inbounds %struct.spi_imx_data, ptr %175, i32 0, i32 12
  %186 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %remainder.i, align 4
  %xfer_done.i = getelementptr inbounds %struct.spi_imx_data, ptr %175, i32 0, i32 2
  %187 = ptrtoint ptr %xfer_done.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %xfer_done.i, align 4
  tail call fastcc void @spi_imx_push(ptr noundef %175) #10
  %devtype_data.i23 = getelementptr inbounds %struct.spi_imx_data, ptr %175, i32 0, i32 26
  %188 = ptrtoint ptr %devtype_data.i23 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %devtype_data.i23, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  tail call void %191(ptr noundef %175, i32 noundef 2) #10
  %192 = ptrtoint ptr %len.i22 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %len.i22, align 4
  %mul.i.i24 = mul i32 %193, 12
  %spi_bus_clk.i.i25 = getelementptr inbounds %struct.spi_imx_data, ptr %175, i32 0, i32 8
  %194 = ptrtoint ptr %spi_bus_clk.i.i25 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %spi_bus_clk.i.i25, align 4
  %div.i.i26 = udiv i32 %mul.i.i24, %195
  %196 = mul i32 %div.i.i26, 2000
  %mul2.i.i27 = add i32 %196, 2000
  %call2.i.i.i33 = tail call i32 @__msecs_to_jiffies(i32 noundef %mul2.i.i27) #10
  %call6.i = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_done.i, i32 noundef %call2.i.i.i33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i36 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i36, label %do.end.i39, label %if.end.i

do.end.i39:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.33) #13
  %197 = ptrtoint ptr %devtype_data.i23 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %devtype_data.i23, align 4
  %reset.i38 = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %198, i32 0, i32 5
  %199 = ptrtoint ptr %reset.i38 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %reset.i38, align 4
  tail call void %200(ptr noundef %175) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %len.i22 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %len.i22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i39, %dma_failure_no_start.i, %if.end65.i, %if.then.i168.i, %do.end60.i.cleanup_crit_edge, %if.then.i163.i, %dmaengine_terminate_all.exit159.i.cleanup_crit_edge, %if.then.i148.i, %dmaengine_terminate_all.exit.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %ret.0.i, %dma_failure_no_start.i ], [ %168, %if.end65.i ], [ -22, %dmaengine_terminate_all.exit.i.cleanup_crit_edge ], [ -22, %if.then.i148.i ], [ -110, %dmaengine_terminate_all.exit159.i.cleanup_crit_edge ], [ -110, %if.then.i163.i ], [ -110, %do.end60.i.cleanup_crit_edge ], [ -110, %if.then.i168.i ], [ %202, %if.end.i ], [ -110, %do.end.i39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_imx_setup.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_imx_setup, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %3 to i32
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_imx_setup.__UNIQUE_ID_ddebug250, ptr noundef %spi, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %1, i32 noundef %conv, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @spi_imx_cleanup(ptr nocapture noundef %spi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_prepare_message(ptr nocapture noundef readonly %master, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.spi_imx_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !163
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %devtype_data = getelementptr inbounds %struct.spi_imx_data, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devtype_data, align 4
  %prepare_message = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prepare_message to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prepare_message, align 4
  %call4 = tail call i32 %12(ptr noundef %1, ptr noundef %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i20 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i20, ptr %last_busy.i, align 8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i21 = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ %call4, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_unprepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.spi_imx_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call.i4 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_slave_abort(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %slave_aborted = getelementptr inbounds %struct.spi_imx_data, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %slave_aborted, align 1
  %xfer_done = getelementptr inbounds %struct.spi_imx_data, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %xfer_done) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype_data = getelementptr inbounds %struct.spi_imx_data, ptr %dev_id, i32 0, i32 26
  %txfifo = getelementptr inbounds %struct.spi_imx_data, ptr %dev_id, i32 0, i32 17
  %0 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txfifo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not24 = icmp eq i32 %1, 0
  br i1 %tobool.not24, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %rx = getelementptr inbounds %struct.spi_imx_data, ptr %dev_id, i32 0, i32 14
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %2 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data, align 4
  %rx_available = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rx_available to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_available, align 4
  %call = tail call i32 %5(ptr noundef %dev_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx, align 4
  tail call void %7(ptr noundef %dev_id) #10
  %8 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txfifo, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %txfifo, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %count = getelementptr inbounds %struct.spi_imx_data, ptr %dev_id, i32 0, i32 11
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @spi_imx_push(ptr noundef %dev_id)
  br label %cleanup

if.end:                                           ; preds = %while.end
  %12 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txfifo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devtype_data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %17(ptr noundef %dev_id, i32 noundef 1) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %17(ptr noundef %dev_id, i32 noundef 0) #10
  %xfer_done = getelementptr inbounds %struct.spi_imx_data, ptr %dev_id, i32 0, i32 2
  tail call void @complete(ptr noundef %xfer_done) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_imx_sdma_init(ptr noundef %dev, ptr noundef %spi_imx, ptr nocapture noundef %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype_data = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 26
  %0 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype_data, align 4
  %fifo_size = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_size, align 4
  %div58 = lshr i32 %3, 1
  %wml = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 23
  %4 = ptrtoint ptr %wml to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div58, ptr %wml, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.40) #10
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %5 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %dma_tx, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %call to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_imx_sdma_init.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_imx_sdma_init, %do.end)) #10
          to label %if.then9 [label %do.end], !srcloc !161

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_imx_sdma_init.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %6) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.then
  %7 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dma_tx, align 8
  br label %err

if.end11:                                         ; preds = %entry
  %call12 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.43) #10
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %8 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %dma_rx, align 4
  %cmp.i62 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then15, label %if.end37

if.then15:                                        ; preds = %if.end11
  %9 = ptrtoint ptr %call12 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_imx_sdma_init.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_imx_sdma_init, %do.end35)) #10
          to label %if.then32 [label %do.end35], !srcloc !161

if.then32:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_imx_sdma_init.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %9) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %if.then15
  %10 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dma_rx, align 4
  br label %err

if.end37:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %dma_rx_completion = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 24
  %11 = ptrtoint ptr %dma_rx_completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %dma_rx_completion, align 4
  %wait.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 24, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #10
  %dma_tx_completion = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 25
  %12 = ptrtoint ptr %dma_tx_completion to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dma_tx_completion, align 4
  %wait.i63 = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 25, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i63, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #10
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 24
  %13 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @spi_imx_can_dma, ptr %can_dma, align 4
  %max_dma_len = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 43
  %14 = ptrtoint ptr %max_dma_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32768, ptr %max_dma_len, align 4
  %master38 = getelementptr inbounds %struct.spi_bitbang, ptr %spi_imx, i32 0, i32 4
  %15 = ptrtoint ptr %master38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master38, align 4
  %flags = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 24, ptr %flags, align 4
  br label %cleanup

err:                                              ; preds = %do.end35, %do.end
  %ret.0 = phi i32 [ %6, %do.end ], [ %9, %do.end35 ]
  %master1.i = getelementptr inbounds %struct.spi_bitbang, ptr %spi_imx, i32 0, i32 4
  %18 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master1.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %19, i32 0, i32 61
  %20 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %err.if.end.i_crit_edge, label %if.then.i

err.if.end.i_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %21) #10
  %22 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %dma_rx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %err.if.end.i_crit_edge
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %19, i32 0, i32 60
  %23 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_tx.i, align 8
  %tobool4.not.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.then5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %24) #10
  %25 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dma_tx.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i.cleanup_crit_edge, %if.end37
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %ret.0, %if.end.i.cleanup_crit_edge ], [ %ret.0, %if.then5.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_imx_sdma_exit(ptr nocapture noundef readonly %spi_imx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.spi_bitbang, ptr %spi_imx, i32 0, i32 4
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_rx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dma_rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  %5 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_tx, align 8
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %6) #10
  %7 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dma_tx, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_buf_rx_swap(ptr nocapture noundef %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %remainder = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 12
  %0 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %remainder, align 4
  %rem = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !169
  %rx_buf.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 15
  %5 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.cleanup.sink.split_crit_edge, label %if.then.i

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %6, align 4
  br label %cleanup.sink.split.sink.split

if.end:                                           ; preds = %entry
  %bits_per_word = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 9
  %9 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits_per_word, align 4
  %11 = add i32 %10, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %12 = icmp ult i32 %11, 8
  %base.i24 = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %13 = ptrtoint ptr %base.i24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i24, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10
  br i1 %12, label %if.then1, label %while.body.preheader

if.then1:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  %rx_buf.i25 = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 15
  %16 = ptrtoint ptr %rx_buf.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_buf.i25, align 4
  %tobool.not.i26 = icmp eq ptr %17, null
  br i1 %tobool.not.i26, label %if.then1.cleanup.sink.split_crit_edge, label %if.then.i28

if.then1.cleanup.sink.split_crit_edge:            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then.i28:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %conv.i = trunc i32 %18 to i16
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %17, align 2
  br label %cleanup.sink.split.sink.split

while.body.preheader:                             ; preds = %if.end
  %20 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !171
  %rx_buf = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 15
  %dec34 = add nsw i32 %rem, -1
  %21 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buf, align 4
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %while.body.preheader.if.end10_crit_edge, label %if.then7

while.body.preheader.if.end10_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl nsw i32 %dec34, 3
  %shr = lshr i32 %20, %mul
  %conv = trunc i32 %shr to i8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %22, align 1
  %24 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_buf, align 4
  %incdec.ptr = getelementptr i8, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %rx_buf, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %while.body.preheader.if.end10_crit_edge
  %26 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %remainder, align 4
  %dec12 = add i32 %27, -1
  store i32 %dec12, ptr %remainder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec34)
  %tobool5.not = icmp eq i32 %dec34, 0
  br i1 %tobool5.not, label %if.end10.cleanup_crit_edge, label %while.body.1

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.1:                                     ; preds = %if.end10
  %dec34.1 = add nsw i32 %rem, -2
  %28 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_buf, align 4
  %tobool6.not.1 = icmp eq ptr %29, null
  br i1 %tobool6.not.1, label %while.body.1.if.end10.1_crit_edge, label %if.then7.1

while.body.1.if.end10.1_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.1

if.then7.1:                                       ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %mul.1 = shl nsw i32 %dec34.1, 3
  %shr.1 = lshr i32 %20, %mul.1
  %conv.1 = trunc i32 %shr.1 to i8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.1, ptr %29, align 1
  %31 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_buf, align 4
  %incdec.ptr.1 = getelementptr i8, ptr %32, i32 1
  store ptr %incdec.ptr.1, ptr %rx_buf, align 4
  br label %if.end10.1

if.end10.1:                                       ; preds = %if.then7.1, %while.body.1.if.end10.1_crit_edge
  %33 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %remainder, align 4
  %dec12.1 = add i32 %34, -1
  store i32 %dec12.1, ptr %remainder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec34.1)
  %tobool5.not.1 = icmp eq i32 %dec34.1, 0
  br i1 %tobool5.not.1, label %if.end10.1.cleanup_crit_edge, label %while.body.2

if.end10.1.cleanup_crit_edge:                     ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.2:                                     ; preds = %if.end10.1
  %35 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_buf, align 4
  %tobool6.not.2 = icmp eq ptr %36, null
  br i1 %tobool6.not.2, label %while.body.2.if.end10.2_crit_edge, label %if.then7.2

while.body.2.if.end10.2_crit_edge:                ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.2

if.then7.2:                                       ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %dec34.2 = shl nuw nsw i32 %rem, 3
  %mul.2 = add nsw i32 %dec34.2, -24
  %shr.2 = lshr i32 %20, %mul.2
  %conv.2 = trunc i32 %shr.2 to i8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.2, ptr %36, align 1
  %38 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_buf, align 4
  %incdec.ptr.2 = getelementptr i8, ptr %39, i32 1
  store ptr %incdec.ptr.2, ptr %rx_buf, align 4
  br label %if.end10.2

if.end10.2:                                       ; preds = %if.then7.2, %while.body.2.if.end10.2_crit_edge
  %40 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %remainder, align 4
  %dec12.2 = add i32 %41, -1
  store i32 %dec12.2, ptr %remainder, align 4
  br label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %if.then.i28, %if.then.i
  %rx_buf.i25.sink37 = phi ptr [ %rx_buf.i25, %if.then.i28 ], [ %rx_buf.i, %if.then.i ]
  %.sink36 = phi i32 [ 2, %if.then.i28 ], [ 4, %if.then.i ]
  %.sink35.ph = phi i32 [ -2, %if.then.i28 ], [ -4, %if.then.i ]
  %42 = ptrtoint ptr %rx_buf.i25.sink37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_buf.i25.sink37, align 4
  %add.ptr4.i27 = getelementptr i8, ptr %43, i32 %.sink36
  store ptr %add.ptr4.i27, ptr %rx_buf.i25.sink37, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then1.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink35 = phi i32 [ -4, %if.then.cleanup.sink.split_crit_edge ], [ -2, %if.then1.cleanup.sink.split_crit_edge ], [ %.sink35.ph, %cleanup.sink.split.sink.split ]
  %44 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %remainder, align 4
  %sub.i30 = add i32 %45, %.sink35
  store i32 %sub.i30, ptr %remainder, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.2, %if.end10.1.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_buf_tx_swap(ptr nocapture noundef %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 11
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %rem = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tx_buf.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 16
  %2 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.spi_imx_buf_tx_swap_u32.exit_crit_edge, label %if.then.i

if.then.spi_imx_buf_tx_swap_u32.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_buf_tx_swap_u32.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %tx_buf.i, align 4
  br label %spi_imx_buf_tx_swap_u32.exit

spi_imx_buf_tx_swap_u32.exit:                     ; preds = %if.then.i, %if.then.spi_imx_buf_tx_swap_u32.exit_crit_edge
  %val.0.i = phi i32 [ %5, %if.then.i ], [ 0, %if.then.spi_imx_buf_tx_swap_u32.exit_crit_edge ]
  %sub.i = add i32 %1, -4
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #10
  %base.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %8) #10, !srcloc !166
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_word = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 9
  %11 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bits_per_word, align 4
  %13 = add i32 %12, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %14 = icmp ult i32 %13, 8
  %tx_buf.i23 = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 16
  br i1 %14, label %if.then1, label %while.body

if.then1:                                         ; preds = %if.end
  %15 = ptrtoint ptr %tx_buf.i23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_buf.i23, align 4
  %tobool.not.i24 = icmp eq ptr %16, null
  br i1 %tobool.not.i24, label %if.then1.spi_imx_buf_tx_u16.exit_crit_edge, label %if.then.i26

if.then1.spi_imx_buf_tx_u16.exit_crit_edge:       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_buf_tx_u16.exit

if.then.i26:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 2
  %add.ptr.i25 = getelementptr i8, ptr %16, i32 2
  %19 = ptrtoint ptr %tx_buf.i23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i25, ptr %tx_buf.i23, align 4
  %phi.cast.i = zext i16 %18 to i32
  br label %spi_imx_buf_tx_u16.exit

spi_imx_buf_tx_u16.exit:                          ; preds = %if.then.i26, %if.then1.spi_imx_buf_tx_u16.exit_crit_edge
  %val.0.i27 = phi i32 [ %phi.cast.i, %if.then.i26 ], [ 0, %if.then1.spi_imx_buf_tx_u16.exit_crit_edge ]
  %sub.i29 = add i32 %1, -2
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i29, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @arm_heavy_mb() #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %val.0.i27) #10
  %base.i30 = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %22 = ptrtoint ptr %base.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i30, align 4
  %add.ptr3.i31 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i31, i32 %21) #10, !srcloc !166
  br label %cleanup

while.body:                                       ; preds = %if.end
  %dec36 = add nsw i32 %rem, -1
  %24 = ptrtoint ptr %tx_buf.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_buf.i23, align 4
  %tobool4.not = icmp eq ptr %25, null
  br i1 %tobool4.not, label %while.body.if.end8_crit_edge, label %if.then5

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv = zext i8 %27 to i32
  %mul = shl nsw i32 %dec36, 3
  %shl = shl i32 %conv, %mul
  %incdec.ptr = getelementptr i8, ptr %25, i32 1
  %28 = ptrtoint ptr %tx_buf.i23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %incdec.ptr, ptr %tx_buf.i23, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %while.body.if.end8_crit_edge
  %val.1 = phi i32 [ %shl, %if.then5 ], [ 0, %while.body.if.end8_crit_edge ]
  %29 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count, align 4
  %dec10 = add i32 %30, -1
  store i32 %dec10, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec36)
  %tobool3.not = icmp eq i32 %dec36, 0
  br i1 %tobool3.not, label %if.end8.do.body_crit_edge, label %while.body.1

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.body.1:                                     ; preds = %if.end8
  %dec36.1 = add nsw i32 %rem, -2
  %31 = ptrtoint ptr %tx_buf.i23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_buf.i23, align 4
  %tobool4.not.1 = icmp eq ptr %32, null
  br i1 %tobool4.not.1, label %while.body.1.if.end8.1_crit_edge, label %if.then5.1

while.body.1.if.end8.1_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.1

if.then5.1:                                       ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv.1 = zext i8 %34 to i32
  %mul.1 = shl nsw i32 %dec36.1, 3
  %shl.1 = shl i32 %conv.1, %mul.1
  %or.1 = or i32 %shl.1, %val.1
  %incdec.ptr.1 = getelementptr i8, ptr %32, i32 1
  %35 = ptrtoint ptr %tx_buf.i23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %incdec.ptr.1, ptr %tx_buf.i23, align 4
  br label %if.end8.1

if.end8.1:                                        ; preds = %if.then5.1, %while.body.1.if.end8.1_crit_edge
  %val.1.1 = phi i32 [ %or.1, %if.then5.1 ], [ %val.1, %while.body.1.if.end8.1_crit_edge ]
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count, align 4
  %dec10.1 = add i32 %37, -1
  store i32 %dec10.1, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec36.1)
  %tobool3.not.1 = icmp eq i32 %dec36.1, 0
  br i1 %tobool3.not.1, label %if.end8.1.do.body_crit_edge, label %while.body.2

if.end8.1.do.body_crit_edge:                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.body.2:                                     ; preds = %if.end8.1
  %38 = ptrtoint ptr %tx_buf.i23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_buf.i23, align 4
  %tobool4.not.2 = icmp eq ptr %39, null
  br i1 %tobool4.not.2, label %while.body.2.if.end8.2_crit_edge, label %if.then5.2

while.body.2.if.end8.2_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.2

if.then5.2:                                       ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv.2 = zext i8 %41 to i32
  %dec36.2 = shl nuw nsw i32 %rem, 3
  %mul.2 = add nsw i32 %dec36.2, -24
  %shl.2 = shl i32 %conv.2, %mul.2
  %or.2 = or i32 %shl.2, %val.1.1
  %incdec.ptr.2 = getelementptr i8, ptr %39, i32 1
  %42 = ptrtoint ptr %tx_buf.i23 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %incdec.ptr.2, ptr %tx_buf.i23, align 4
  br label %if.end8.2

if.end8.2:                                        ; preds = %if.then5.2, %while.body.2.if.end8.2_crit_edge
  %val.1.2 = phi i32 [ %or.2, %if.then5.2 ], [ %val.1.1, %while.body.2.if.end8.2_crit_edge ]
  %43 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count, align 4
  %dec10.2 = add i32 %44, -1
  store i32 %dec10.2, ptr %count, align 4
  br label %do.body

do.body:                                          ; preds = %if.end8.2, %if.end8.1.do.body_crit_edge, %if.end8.do.body_crit_edge
  %val.1.lcssa = phi i32 [ %val.1, %if.end8.do.body_crit_edge ], [ %val.1.1, %if.end8.1.do.body_crit_edge ], [ %val.1.2, %if.end8.2 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  tail call void @arm_heavy_mb() #10
  %45 = tail call i32 @llvm.bswap.i32(i32 %val.1.lcssa)
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %45) #10, !srcloc !166
  br label %cleanup

cleanup:                                          ; preds = %do.body, %spi_imx_buf_tx_u16.exit, %spi_imx_buf_tx_swap_u32.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_buf_rx_u8(ptr nocapture noundef %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  %rx_buf = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 15
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = lshr i32 %2, 24
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %4, align 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 1
  store ptr %add.ptr4, ptr %rx_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %remainder = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 12
  %9 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %remainder, align 4
  %sub = add i32 %10, -1
  store i32 %sub, ptr %remainder, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_buf_tx_u8(ptr nocapture noundef %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 16
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %tx_buf, align 4
  %phi.cast = zext i8 %3 to i32
  %phi.bo = shl nuw i32 %phi.cast, 24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %count = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 11
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %sub = add i32 %6, -1
  store i32 %sub, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %val.0) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_buf_rx_u16(ptr nocapture noundef %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  %rx_buf = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 15
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %4, align 2
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 2
  store ptr %add.ptr4, ptr %rx_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %remainder = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 12
  %9 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %remainder, align 4
  %sub = add i32 %10, -2
  store i32 %sub, ptr %remainder, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_buf_tx_u16(ptr nocapture noundef %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 16
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %4 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %tx_buf, align 4
  %phi.cast = zext i16 %3 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %count = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 11
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %sub = add i32 %6, -2
  store i32 %sub, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %7) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_buf_rx_u32(ptr nocapture noundef %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !177
  %rx_buf = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 15
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %2)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %4, align 4
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 4
  store ptr %add.ptr4, ptr %rx_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %remainder = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 12
  %9 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %remainder, align 4
  %sub = add i32 %10, -4
  store i32 %sub, ptr %remainder, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_buf_tx_u32(ptr nocapture noundef %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 16
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %tx_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %count = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 11
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %sub = add i32 %6, -4
  store i32 %sub, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !178
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %7) #10, !srcloc !166
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @spi_imx_can_dma(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %transfer) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i8, ptr @use_dma, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fallback = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 41
  %3 = ptrtoint ptr %fallback to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fallback, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %5 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_rx, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %slave_mode = getelementptr inbounds %struct.spi_imx_data, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %slave_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %slave_mode, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %devtype_data = getelementptr inbounds %struct.spi_imx_data, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devtype_data, align 4
  %fifo_size = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp = icmp ult i32 %10, %14
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %dynamic_burst = getelementptr inbounds %struct.spi_imx_data, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %dynamic_burst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dynamic_burst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end9 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx53_ecspi_rx_slave(ptr nocapture noundef %spi_imx) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !167
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !179
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  %rx_buf = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 15
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %slave_burst = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 21
  %7 = ptrtoint ptr %slave_burst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slave_burst, align 4
  %rem = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  %spec.store.select = select i1 %tobool2.not, i32 4, i32 %rem
  %add.ptr5 = getelementptr inbounds i8, ptr %val, i32 4
  %idx.neg = sub nsw i32 0, %spec.store.select
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 %idx.neg
  %9 = call ptr @memcpy(ptr %6, ptr %add.ptr6, i32 %spec.store.select)
  %10 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_buf, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 %spec.store.select
  store ptr %add.ptr8, ptr %rx_buf, align 4
  %12 = ptrtoint ptr %slave_burst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slave_burst, align 4
  %sub = sub i32 %13, %spec.store.select
  store i32 %sub, ptr %slave_burst, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then, %entry.if.end10_crit_edge
  %remainder = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 12
  %14 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %remainder, align 4
  %sub11 = add i32 %15, -4
  store i32 %sub11, ptr %remainder, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx53_ecspi_tx_slave(ptr nocapture noundef %spi_imx) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %count = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 11
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 4
  %rem = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %spec.store.select = select i1 %tobool.not, i32 4, i32 %rem
  %tx_buf = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 16
  %3 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_buf, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %entry.if.end7_crit_edge, label %if.then2

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr inbounds i8, ptr %val, i32 4
  %idx.neg = sub nsw i32 0, %spec.store.select
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %5 = call ptr @memcpy(ptr %add.ptr3, ptr %4, i32 %spec.store.select)
  %add.ptr6 = getelementptr i8, ptr %4, i32 %spec.store.select
  %6 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr6, ptr %tx_buf, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %entry.if.end7_crit_edge
  %sub = sub i32 %2, %spec.store.select
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #10, !srcloc !166
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_imx_pio_transfer_slave(ptr noundef %spi, ptr nocapture noundef readonly %transfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %devtype_data.i = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype_data.i, align 4
  %devtype.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp.i = icmp eq i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %cmp = icmp ugt i32 %5, 512
  %or.cond = select i1 %cmp.i, i1 %cmp, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef 512) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer, align 4
  %tx_buf3 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 16
  %12 = ptrtoint ptr %tx_buf3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %tx_buf3, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 1
  %13 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_buf, align 4
  %rx_buf4 = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 15
  %15 = ptrtoint ptr %rx_buf4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %rx_buf4, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %count = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %count, align 4
  %txfifo = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 17
  %19 = ptrtoint ptr %txfifo to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %txfifo, align 4
  %remainder = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 12
  %20 = ptrtoint ptr %remainder to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %remainder, align 4
  %xfer_done = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %xfer_done, align 4
  %slave_aborted = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 20
  %22 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %slave_aborted, align 1
  tail call fastcc void @spi_imx_push(ptr noundef %3)
  %23 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devtype_data.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  tail call void %26(ptr noundef %3, i32 noundef 18) #10
  %call7 = tail call i32 @wait_for_completion_interruptible(ptr noundef %xfer_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end.do.body12_crit_edge

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

lor.lhs.false:                                    ; preds = %if.end
  %27 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %slave_aborted, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool10.not = icmp eq i8 %28, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.do.body12_crit_edge

lor.lhs.false.do.body12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.body12:                                        ; preds = %lor.lhs.false.do.body12_crit_edge, %if.end.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_imx_pio_transfer_slave.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_imx_pio_transfer_slave, %if.end23)) #10
          to label %if.then18 [label %if.end23], !srcloc !161

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_imx_pio_transfer_slave.__UNIQUE_ID_ddebug249, ptr noundef %spi, ptr noundef nonnull @.str.19) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %do.body12, %lor.lhs.false.if.end23_crit_edge
  %ret.0 = phi i32 [ %5, %lor.lhs.false.if.end23_crit_edge ], [ -4, %if.then18 ], [ -4, %do.body12 ]
  %29 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %devtype_data.i, align 4
  %disable = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %disable, align 4
  %tobool25.not = icmp eq ptr %32, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %32(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -90, %do.end ], [ %ret.0, %if.then26 ], [ %ret.0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_imx_push(ptr noundef %spi_imx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %remainder = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 12
  %0 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %remainder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %dynamic_burst = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 18
  %2 = ptrtoint ptr %dynamic_burst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dynamic_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %count = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 11
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %rem = and i32 %5, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  %spec.store.select = select i1 %tobool3.not, i32 512, i32 %rem
  %mul = shl i32 %spec.store.select, 23
  %base.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %9 = and i32 %8, -61696
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  %shl.i = add i32 %mul, -1048576
  %or.i = or i32 %shl.i, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #10, !srcloc !166
  br label %if.end8.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %bits_per_word = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 9
  %14 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_word, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %15)
  %cmp.i = icmp slt i32 %15, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %15)
  %cmp1.i = icmp slt i32 %15, 17
  %..i = select i1 %cmp1.i, i32 2, i32 4
  %retval.0.i = select i1 %cmp.i, i32 1, i32 %..i
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %if.else, %if.then2
  %spec.store.select.sink = phi i32 [ %spec.store.select, %if.then2 ], [ %retval.0.i, %if.else ]
  %16 = ptrtoint ptr %remainder to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select.sink, ptr %remainder, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %entry.if.end8_crit_edge
  %count9 = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 11
  %txfifo = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 17
  %devtype_data = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 26
  %17 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %txfifo, align 4
  %19 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devtype_data, align 4
  %fifo_size46 = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %fifo_size46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fifo_size46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp47 = icmp ult i32 %18, %22
  br i1 %cmp47, label %while.body.lr.ph, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end8
  %dynamic_burst13 = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 18
  %tx = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 13
  %23 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool10.not50 = icmp eq i32 %24, 0
  br i1 %tobool10.not50, label %while.body.lr.ph.while.end_crit_edge, label %while.body.lr.ph.if.end12_crit_edge

while.body.lr.ph.if.end12_crit_edge:              ; preds = %while.body.lr.ph
  br label %if.end12

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end19
  %25 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count9, align 4
  %tobool10.not = icmp eq i32 %26, 0
  br i1 %tobool10.not, label %while.body.while.end_crit_edge, label %while.body.if.end12_crit_edge

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end12:                                         ; preds = %while.body.if.end12_crit_edge, %while.body.lr.ph.if.end12_crit_edge
  %27 = phi i32 [ %inc, %while.body.if.end12_crit_edge ], [ %18, %while.body.lr.ph.if.end12_crit_edge ]
  %28 = phi ptr [ %38, %while.body.if.end12_crit_edge ], [ %20, %while.body.lr.ph.if.end12_crit_edge ]
  %29 = ptrtoint ptr %dynamic_burst13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dynamic_burst13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool14.not = icmp eq i32 %30, 0
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %land.lhs.true

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end12
  %31 = ptrtoint ptr %remainder to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %remainder, align 4
  %sub = add i32 %32, 3
  %div45 = lshr i32 %sub, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %div45)
  %cmp17.not = icmp ult i32 %27, %div45
  br i1 %cmp17.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %33 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx, align 4
  tail call void %34(ptr noundef %spi_imx) #10
  %35 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %txfifo, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %txfifo, align 4
  %37 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devtype_data, align 4
  %fifo_size = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %40)
  %cmp = icmp ult i32 %inc, %40
  br i1 %cmp, label %while.body, label %if.end19.while.end_crit_edge

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %while.body.while.end_crit_edge, %while.body.lr.ph.while.end_crit_edge, %if.end8.while.end_crit_edge
  %.lcssa = phi ptr [ %20, %if.end8.while.end_crit_edge ], [ %20, %while.body.lr.ph.while.end_crit_edge ], [ %38, %if.end19.while.end_crit_edge ], [ %38, %while.body.while.end_crit_edge ], [ %28, %land.lhs.true.while.end_crit_edge ]
  %slave_mode = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 19
  %41 = ptrtoint ptr %slave_mode to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %slave_mode, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool21.not = icmp eq i8 %42, 0
  br i1 %tobool21.not, label %if.then22, label %while.end.if.end24_crit_edge

while.end.if.end24_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %trigger = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %.lcssa, i32 0, i32 3
  %43 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trigger, align 4
  tail call void %44(ptr noundef %spi_imx) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %while.end.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_last(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_dma_rx_callback(ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx_completion = getelementptr inbounds %struct.spi_imx_data, ptr %cookie, i32 0, i32 24
  tail call void @complete(ptr noundef %dma_rx_completion) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_imx_dma_tx_callback(ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_tx_completion = getelementptr inbounds %struct.spi_imx_data, ptr %cookie, i32 0, i32 25
  tail call void @complete(ptr noundef %dma_tx_completion) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx1_intctrl(ptr nocapture noundef readonly %spi_imx, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %enable, 15
  %0 = and i32 %and, 65536
  %and1 = shl i32 %enable, 19
  %1 = and i32 %and1, 524288
  %2 = or i32 %1, %0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !166
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mx1_prepare_message(ptr nocapture noundef readnone %spi_imx, ptr nocapture noundef readnone %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx1_prepare_transfer(ptr nocapture noundef %spi_imx, ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_clk = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 7
  %0 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spi_clk, align 4
  %spi_bus_clk = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 8
  %2 = ptrtoint ptr %spi_bus_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spi_bus_clk, align 4
  %mul8.i = shl i32 %3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.i, i32 %1)
  %cmp1.not9.i = icmp ult i32 %mul8.i, %1
  br i1 %cmp1.not9.i, label %if.end.i, label %entry.spi_imx_clkdiv_2.exit_crit_edge

entry.spi_imx_clkdiv_2.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i:                                         ; preds = %entry
  %mul.i = shl i32 %3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %1)
  %cmp1.not.i = icmp ult i32 %mul.i, %1
  br i1 %cmp1.not.i, label %if.end.i.1, label %if.end.i.spi_imx_clkdiv_2.exit_crit_edge

if.end.i.spi_imx_clkdiv_2.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i.1:                                       ; preds = %if.end.i
  %mul.i.1 = shl i32 %3, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.1, i32 %1)
  %cmp1.not.i.1 = icmp ult i32 %mul.i.1, %1
  br i1 %cmp1.not.i.1, label %if.end.i.2, label %if.end.i.1.spi_imx_clkdiv_2.exit_crit_edge

if.end.i.1.spi_imx_clkdiv_2.exit_crit_edge:       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  %mul.i.2 = shl i32 %3, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.2, i32 %1)
  %cmp1.not.i.2 = icmp ult i32 %mul.i.2, %1
  br i1 %cmp1.not.i.2, label %if.end.i.3, label %if.end.i.2.spi_imx_clkdiv_2.exit_crit_edge

if.end.i.2.spi_imx_clkdiv_2.exit_crit_edge:       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  %mul.i.3 = shl i32 %3, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.3, i32 %1)
  %cmp1.not.i.3 = icmp ult i32 %mul.i.3, %1
  br i1 %cmp1.not.i.3, label %if.end.i.4, label %if.end.i.3.spi_imx_clkdiv_2.exit_crit_edge

if.end.i.3.spi_imx_clkdiv_2.exit_crit_edge:       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  %mul.i.4 = shl i32 %3, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.4, i32 %1)
  %cmp1.not.i.4 = icmp ult i32 %mul.i.4, %1
  br i1 %cmp1.not.i.4, label %if.end.i.5, label %if.end.i.4.spi_imx_clkdiv_2.exit_crit_edge

if.end.i.4.spi_imx_clkdiv_2.exit_crit_edge:       ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.5 = shl i32 %3, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.5, i32 %1)
  %cmp1.not.i.5 = icmp ult i32 %mul.i.5, %1
  %spec.select19 = select i1 %cmp1.not.i.5, i32 512, i32 256
  %spec.select20 = select i1 %cmp1.not.i.5, i32 57344, i32 49152
  br label %spi_imx_clkdiv_2.exit

spi_imx_clkdiv_2.exit:                            ; preds = %if.end.i.5, %if.end.i.4.spi_imx_clkdiv_2.exit_crit_edge, %if.end.i.3.spi_imx_clkdiv_2.exit_crit_edge, %if.end.i.2.spi_imx_clkdiv_2.exit_crit_edge, %if.end.i.1.spi_imx_clkdiv_2.exit_crit_edge, %if.end.i.spi_imx_clkdiv_2.exit_crit_edge, %entry.spi_imx_clkdiv_2.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.spi_imx_clkdiv_2.exit_crit_edge ], [ 8192, %if.end.i.spi_imx_clkdiv_2.exit_crit_edge ], [ 16384, %if.end.i.1.spi_imx_clkdiv_2.exit_crit_edge ], [ 24576, %if.end.i.2.spi_imx_clkdiv_2.exit_crit_edge ], [ 32768, %if.end.i.3.spi_imx_clkdiv_2.exit_crit_edge ], [ 40960, %if.end.i.4.spi_imx_clkdiv_2.exit_crit_edge ], [ %spec.select20, %if.end.i.5 ]
  %div.0.lcssa.i = phi i32 [ 4, %entry.spi_imx_clkdiv_2.exit_crit_edge ], [ 8, %if.end.i.spi_imx_clkdiv_2.exit_crit_edge ], [ 16, %if.end.i.1.spi_imx_clkdiv_2.exit_crit_edge ], [ 32, %if.end.i.2.spi_imx_clkdiv_2.exit_crit_edge ], [ 64, %if.end.i.3.spi_imx_clkdiv_2.exit_crit_edge ], [ 128, %if.end.i.4.spi_imx_clkdiv_2.exit_crit_edge ], [ %spec.select19, %if.end.i.5 ]
  %div2.i = udiv i32 %1, %div.0.lcssa.i
  %4 = ptrtoint ptr %spi_bus_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div2.i, ptr %spi_bus_clk, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 9
  %5 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bits_per_word, align 4
  %sub = add i32 %6, -1
  %or = or i32 %sub, %i.0.lcssa.i
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 1536, i32 1568
  %and5 = shl i32 %8, 3
  %9 = and i32 %and5, 16
  %spec.select = or i32 %or, %9
  %10 = or i32 %spec.select, %spec.select.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #10, !srcloc !166
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx1_trigger(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  %3 = or i32 %2, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !186
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx1_rx_available(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %and = and i32 %3, 8
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx1_reset(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx21_intctrl(ptr nocapture noundef readonly %spi_imx, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %enable, 16
  %0 = and i32 %and, 131072
  %and1 = shl i32 %enable, 21
  %1 = and i32 %and1, 2097152
  %2 = or i32 %1, %0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !166
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mx21_prepare_message(ptr nocapture noundef readnone %spi_imx, ptr nocapture noundef readnone %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx21_prepare_transfer(ptr nocapture noundef %spi_imx, ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype_data.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 26
  %0 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype_data.i, align 4
  %devtype.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 2
  %cond = select i1 %cmp.i.not, i32 16, i32 18
  %spi_clk = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 7
  %4 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spi_clk, align 4
  %spi_bus_clk = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 8
  %6 = ptrtoint ptr %spi_bus_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spi_bus_clk, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 2, %entry ]
  %arrayidx.i = getelementptr [19 x i32], ptr @mxc_clkdivs, i32 0, i32 %i.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %5)
  %cmp1.not.i = icmp ult i32 %mul.i, %5
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.spi_imx_clkdiv_1.exit_crit_edge

for.body.i.spi_imx_clkdiv_1.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_1.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond
  br i1 %exitcond.not.i, label %for.inc.i.spi_imx_clkdiv_1.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.spi_imx_clkdiv_1.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_1.exit

spi_imx_clkdiv_1.exit:                            ; preds = %for.inc.i.spi_imx_clkdiv_1.exit_crit_edge, %for.body.i.spi_imx_clkdiv_1.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.09.i, %for.body.i.spi_imx_clkdiv_1.exit_crit_edge ], [ %cond, %for.inc.i.spi_imx_clkdiv_1.exit_crit_edge ]
  %arrayidx2.i = getelementptr [19 x i32], ptr @mxc_clkdivs, i32 0, i32 %i.0.lcssa.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %div.i = udiv i32 %5, %11
  %shl = shl i32 %i.0.lcssa.i, 14
  %12 = ptrtoint ptr %spi_bus_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div.i, ptr %spi_bus_clk, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 9
  %13 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits_per_word, align 4
  %sub = add i32 %14, -1
  %or = or i32 %sub, %shl
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 8
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool4.not, i32 3072, i32 3136
  %and7 = shl i32 %16, 4
  %17 = and i32 %and7, 32
  %and13 = shl i32 %16, 6
  %18 = and i32 %and13, 256
  %spec.select = or i32 %or, %17
  %19 = or i32 %spec.select, %18
  %20 = or i32 %19, %spec.select.v
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %21 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cs_gpiod, align 8
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %if.then19, label %spi_imx_clkdiv_1.exit.do.body_crit_edge

spi_imx_clkdiv_1.exit.do.body_crit_edge:          ; preds = %spi_imx_clkdiv_1.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then19:                                        ; preds = %spi_imx_clkdiv_1.exit
  call void @__sanitizer_cov_trace_pc() #12
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %23 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %24 to i32
  %shl20 = shl nuw nsw i32 %conv, 19
  %or21 = or i32 %shl20, %20
  br label %do.body

do.body:                                          ; preds = %if.then19, %spi_imx_clkdiv_1.exit.do.body_crit_edge
  %reg.3 = phi i32 [ %20, %spi_imx_clkdiv_1.exit.do.body_crit_edge ], [ %or21, %if.then19 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %reg.3)
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #10, !srcloc !166
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx21_trigger(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %3 = or i32 %2, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx21_rx_available(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  %and = and i32 %3, 16
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx21_reset(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx31_intctrl(ptr nocapture noundef readonly %spi_imx, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %enable, 1
  %and.lobit = and i32 %and, 1
  %and1 = shl i32 %enable, 3
  %0 = and i32 %and1, 8
  %1 = or i32 %0, %and.lobit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %2 = shl nuw nsw i32 %1, 24
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !166
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mx31_prepare_message(ptr nocapture noundef readnone %spi_imx, ptr nocapture noundef readnone %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx31_prepare_transfer(ptr nocapture noundef %spi_imx, ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_clk = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 7
  %0 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spi_clk, align 4
  %spi_bus_clk = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 8
  %2 = ptrtoint ptr %spi_bus_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spi_bus_clk, align 4
  %mul8.i = shl i32 %3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.i, i32 %1)
  %cmp1.not9.i = icmp ult i32 %mul8.i, %1
  br i1 %cmp1.not9.i, label %if.end.i, label %entry.spi_imx_clkdiv_2.exit_crit_edge

entry.spi_imx_clkdiv_2.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i:                                         ; preds = %entry
  %mul.i = shl i32 %3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %1)
  %cmp1.not.i = icmp ult i32 %mul.i, %1
  br i1 %cmp1.not.i, label %if.end.i.1, label %if.end.i.spi_imx_clkdiv_2.exit_crit_edge

if.end.i.spi_imx_clkdiv_2.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i.1:                                       ; preds = %if.end.i
  %mul.i.1 = shl i32 %3, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.1, i32 %1)
  %cmp1.not.i.1 = icmp ult i32 %mul.i.1, %1
  br i1 %cmp1.not.i.1, label %if.end.i.2, label %if.end.i.1.spi_imx_clkdiv_2.exit_crit_edge

if.end.i.1.spi_imx_clkdiv_2.exit_crit_edge:       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  %mul.i.2 = shl i32 %3, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.2, i32 %1)
  %cmp1.not.i.2 = icmp ult i32 %mul.i.2, %1
  br i1 %cmp1.not.i.2, label %if.end.i.3, label %if.end.i.2.spi_imx_clkdiv_2.exit_crit_edge

if.end.i.2.spi_imx_clkdiv_2.exit_crit_edge:       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  %mul.i.3 = shl i32 %3, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.3, i32 %1)
  %cmp1.not.i.3 = icmp ult i32 %mul.i.3, %1
  br i1 %cmp1.not.i.3, label %if.end.i.4, label %if.end.i.3.spi_imx_clkdiv_2.exit_crit_edge

if.end.i.3.spi_imx_clkdiv_2.exit_crit_edge:       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  %mul.i.4 = shl i32 %3, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.4, i32 %1)
  %cmp1.not.i.4 = icmp ult i32 %mul.i.4, %1
  br i1 %cmp1.not.i.4, label %if.end.i.5, label %if.end.i.4.spi_imx_clkdiv_2.exit_crit_edge

if.end.i.4.spi_imx_clkdiv_2.exit_crit_edge:       ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_imx_clkdiv_2.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.5 = shl i32 %3, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.5, i32 %1)
  %cmp1.not.i.5 = icmp ult i32 %mul.i.5, %1
  %spec.select = select i1 %cmp1.not.i.5, i32 512, i32 256
  %spec.select98 = select i1 %cmp1.not.i.5, i32 458752, i32 393216
  br label %spi_imx_clkdiv_2.exit

spi_imx_clkdiv_2.exit:                            ; preds = %if.end.i.5, %if.end.i.4.spi_imx_clkdiv_2.exit_crit_edge, %if.end.i.3.spi_imx_clkdiv_2.exit_crit_edge, %if.end.i.2.spi_imx_clkdiv_2.exit_crit_edge, %if.end.i.1.spi_imx_clkdiv_2.exit_crit_edge, %if.end.i.spi_imx_clkdiv_2.exit_crit_edge, %entry.spi_imx_clkdiv_2.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.spi_imx_clkdiv_2.exit_crit_edge ], [ 65536, %if.end.i.spi_imx_clkdiv_2.exit_crit_edge ], [ 131072, %if.end.i.1.spi_imx_clkdiv_2.exit_crit_edge ], [ 196608, %if.end.i.2.spi_imx_clkdiv_2.exit_crit_edge ], [ 262144, %if.end.i.3.spi_imx_clkdiv_2.exit_crit_edge ], [ 327680, %if.end.i.4.spi_imx_clkdiv_2.exit_crit_edge ], [ %spec.select98, %if.end.i.5 ]
  %div.0.lcssa.i = phi i32 [ 4, %entry.spi_imx_clkdiv_2.exit_crit_edge ], [ 8, %if.end.i.spi_imx_clkdiv_2.exit_crit_edge ], [ 16, %if.end.i.1.spi_imx_clkdiv_2.exit_crit_edge ], [ 32, %if.end.i.2.spi_imx_clkdiv_2.exit_crit_edge ], [ 64, %if.end.i.3.spi_imx_clkdiv_2.exit_crit_edge ], [ 128, %if.end.i.4.spi_imx_clkdiv_2.exit_crit_edge ], [ %spec.select, %if.end.i.5 ]
  %div2.i = udiv i32 %1, %div.0.lcssa.i
  %4 = ptrtoint ptr %spi_bus_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div2.i, ptr %spi_bus_clk, align 4
  %devtype_data.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 26
  %5 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devtype_data.i, align 4
  %devtype.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i93.not = icmp eq i32 %8, 4
  br i1 %cmp.i93.not, label %if.then, label %if.else

if.then:                                          ; preds = %spi_imx_clkdiv_2.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bits_per_word = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 9
  %9 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits_per_word, align 4
  %sub = shl i32 %10, 20
  %shl3 = add i32 %sub, -1048576
  %or4 = or i32 %i.0.lcssa.i, %shl3
  %or5 = or i32 %or4, 67
  br label %if.end

if.else:                                          ; preds = %spi_imx_clkdiv_2.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %i.0.lcssa.i, 3
  %bits_per_word6 = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 9
  %11 = ptrtoint ptr %bits_per_word6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bits_per_word6, align 4
  %sub7 = shl i32 %12, 8
  %shl8 = add i32 %sub7, -256
  %or9 = or i32 %shl8, %or
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %reg.0 = phi i32 [ %or5, %if.then ], [ %or9, %if.else ]
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 8
  %and = shl i32 %14, 5
  %15 = and i32 %and, 32
  %16 = or i32 %15, %reg.0
  %and15 = shl i32 %14, 3
  %17 = and i32 %and15, 16
  %18 = or i32 %16, %17
  %19 = and i32 %and, 128
  %20 = or i32 %18, %19
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %21 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cs_gpiod, align 8
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.then27, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %23 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %24 to i32
  %cond = select i1 %cmp.i93.not, i32 12, i32 24
  %shl30 = shl nuw i32 %conv, %cond
  %or31 = or i32 %shl30, %20
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end.if.end32_crit_edge
  %reg.4 = phi i32 [ %20, %if.end.if.end32_crit_edge ], [ %or31, %if.then27 ]
  %usedma = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 22
  %25 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %usedma, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool33.not = icmp eq i8 %26, 0
  %or35 = or i32 %reg.4, 8
  %spec.select92 = select i1 %tobool33.not, i32 %reg.4, i32 %or35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %spec.select92)
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #10, !srcloc !166
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %31, i32 28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode, align 8
  %35 = and i32 %32, -4194305
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %and42 = shl i32 %34, 9
  %37 = and i32 %and42, 16384
  %reg.6 = or i32 %37, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  tail call void @arm_heavy_mb() #10
  %38 = tail call i32 @llvm.bswap.i32(i32 %reg.6)
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %40, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %38) #10, !srcloc !166
  %41 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %usedma, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool55.not = icmp eq i8 %42, 0
  br i1 %tobool55.not, label %if.end32.if.end62_crit_edge, label %do.body57

if.end32.if.end62_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

do.body57:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %44, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 301989888) #10, !srcloc !166
  br label %if.end62

if.end62:                                         ; preds = %do.body57, %if.end32.if.end62_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx31_trigger(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %3 = or i32 %2, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !201
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx31_rx_available(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  %and = and i32 %3, 8
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx31_reset(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not11 = icmp eq i32 %3, 0
  br i1 %tobool.not11, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  %10 = and i32 %9, 134217728
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx51_ecspi_intctrl(ptr nocapture noundef readonly %spi_imx, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %enable, 1
  %and.lobit = and i32 %and, 1
  %and1 = shl i32 %enable, 3
  %0 = and i32 %and1, 8
  %1 = or i32 %0, %and.lobit
  %and6 = and i32 %enable, 16
  %2 = or i32 %1, %and6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  tail call void @arm_heavy_mb() #10
  %3 = shl nuw nsw i32 %2, 24
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx51_ecspi_prepare_message(ptr nocapture noundef readonly %spi_imx, ptr noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  %slave_mode = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 19
  %6 = ptrtoint ptr %slave_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %slave_mode, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %. = select i1 %tobool.not, i32 241, i32 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 8
  %and3 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %entry.if.end7_crit_edge, label %if.then5

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spi_drctl = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 10
  %10 = ptrtoint ptr %spi_drctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spi_drctl, align 4
  %shl = shl i32 %11, 16
  %or6 = or i32 %shl, %.
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %entry.if.end7_crit_edge
  %ctrl.1 = phi i32 [ %or6, %if.then5 ], [ %., %entry.if.end7_crit_edge ]
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %13 to i32
  %shl8 = shl nuw nsw i32 %conv, 18
  %or9 = or i32 %shl8, %ctrl.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %14) #10, !srcloc !166
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %18, i32 32
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 8
  %22 = and i32 %19, -129
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %and20 = shl i32 %21, 26
  %24 = and i32 %and20, -2147483648
  %testreg.0 = or i32 %24, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %testreg.0)
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr31 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %25) #10, !srcloc !166
  %28 = ptrtoint ptr %slave_mode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %slave_mode, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool33.not = icmp eq i8 %29, 0
  br i1 %tobool33.not, label %if.end7.if.else42_crit_edge, label %land.lhs.true

if.end7.if.else42_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else42

land.lhs.true:                                    ; preds = %if.end7
  %devtype_data.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 26
  %30 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %devtype_data.i, align 4
  %devtype.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %cmp.i.not = icmp eq i32 %33, 6
  br i1 %cmp.i.not, label %if.then37, label %land.lhs.true.if.else42_crit_edge

land.lhs.true.if.else42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else42

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %chip_select, align 4
  %conv39 = zext i8 %35 to i32
  %shl40 = shl i32 256, %conv39
  %neg = xor i32 %shl40, -1
  %and41 = and i32 %5, %neg
  br label %if.end48

if.else42:                                        ; preds = %land.lhs.true.if.else42_crit_edge, %if.end7.if.else42_crit_edge
  %36 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %chip_select, align 4
  %conv44 = zext i8 %37 to i32
  %shl46 = shl i32 256, %conv44
  %or47 = or i32 %shl46, %5
  br label %if.end48

if.end48:                                         ; preds = %if.else42, %if.then37
  %cfg.0 = phi i32 [ %and41, %if.then37 ], [ %or47, %if.else42 ]
  %38 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode, align 8
  %and50 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %40 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %chip_select, align 4
  %conv60 = zext i8 %41 to i32
  %shl62 = shl nuw i32 1, %conv60
  %or57 = or i32 %shl62, %cfg.0
  %neg63 = xor i32 %shl62, -1
  %and64 = and i32 %cfg.0, %neg63
  %cfg.1 = select i1 %tobool51.not, i32 %and64, i32 %or57
  %and67 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %42 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %chip_select, align 4
  %conv82 = zext i8 %43 to i32
  br i1 %tobool68.not, label %if.else80, label %if.then69

if.then69:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %shl73 = shl i32 16, %conv82
  %or74 = or i32 %shl73, %cfg.1
  %shl78 = shl i32 1048576, %conv82
  %or79 = or i32 %or74, %shl78
  br label %if.end93

if.else80:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %44 = shl i32 1048592, %conv82
  %45 = xor i32 %44, -1
  %and92 = and i32 %cfg.1, %45
  br label %if.end93

if.end93:                                         ; preds = %if.else80, %if.then69
  %cfg.2 = phi i32 [ %or79, %if.then69 ], [ %and92, %if.else80 ]
  %and95 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %46 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %chip_select, align 4
  %conv105 = zext i8 %47 to i32
  %shl107 = shl i32 4096, %conv105
  %or102 = or i32 %shl107, %cfg.2
  %neg108 = xor i32 %shl107, -1
  %and109 = and i32 %cfg.2, %neg108
  %cfg.3 = select i1 %tobool96.not, i32 %and109, i32 %or102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @arm_heavy_mb() #10
  %48 = tail call i32 @llvm.bswap.i32(i32 %cfg.3)
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr115 = getelementptr i8, ptr %50, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %48) #10, !srcloc !166
  %51 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn202 = load ptr, ptr %msg, align 4
  %cmp.not203 = icmp eq ptr %.pn202, %msg
  br i1 %cmp.not203, label %if.end93.cond.false144_crit_edge, label %if.end93.for.body_crit_edge

if.end93.for.body_crit_edge:                      ; preds = %if.end93
  br label %for.body

if.end93.cond.false144_crit_edge:                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false144

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end93.for.body_crit_edge
  %.pn205 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn202, %if.end93.for.body_crit_edge ]
  %min_speed_hz.0204 = phi i32 [ %min_speed_hz.1, %for.body.for.body_crit_edge ], [ -1, %if.end93.for.body_crit_edge ]
  %speed_hz = getelementptr i8, ptr %.pn205, i32 -24
  %52 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool120.not = icmp eq i32 %53, 0
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 %min_speed_hz.0204)
  %min_speed_hz.1 = select i1 %tobool120.not, i32 %min_speed_hz.0204, i32 %54
  %55 = ptrtoint ptr %.pn205 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn = load ptr, ptr %.pn205, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %div = udiv i32 2000000, %min_speed_hz.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %min_speed_hz.1)
  %cmp132 = icmp ugt i32 %min_speed_hz.1, 200000
  br i1 %cmp132, label %for.end.cond.false144_crit_edge, label %if.else146, !prof !211

for.end.cond.false144_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false144

cond.false144:                                    ; preds = %for.end.cond.false144_crit_edge, %if.end93.cond.false144_crit_edge
  %div209 = phi i32 [ %div, %for.end.cond.false144_crit_edge ], [ 0, %if.end93.cond.false144_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %div209) #10
  br label %if.end148

if.else146:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %add147 = add nuw nsw i32 %div, 10
  tail call void @usleep_range_state(i32 noundef %div, i32 noundef %add147, i32 noundef 2) #10
  br label %if.end148

if.end148:                                        ; preds = %if.else146, %cond.false144
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx51_ecspi_prepare_transfer(ptr nocapture noundef %spi_imx, ptr nocapture noundef readnone %spi) #2 align 64 {
entry:
  %clk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk) #10
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %clk, align 4, !annotation !158
  %slave_mode = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 19
  %4 = ptrtoint ptr %slave_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %slave_mode, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %devtype_data.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 26
  %6 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype_data.i, align 4
  %devtype.i = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 6
  br i1 %cmp.i.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %slave_burst = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 21
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %bits_per_word = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bits_per_word.sink = phi ptr [ %bits_per_word, %if.else ], [ %slave_burst, %if.then ]
  %.sink38 = phi i32 [ 20, %if.else ], [ 23, %if.then ]
  %10 = ptrtoint ptr %bits_per_word.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_word.sink, align 4
  %sub4 = shl i32 %11, %.sink38
  %shl.pn = add i32 %sub4, -1048576
  %12 = and i32 %2, -16773376
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %and7 = or i32 %shl.pn, %13
  %spi_bus_clk = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 8
  %14 = ptrtoint ptr %spi_bus_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spi_bus_clk, align 4
  %call8 = call fastcc i32 @mx51_ecspi_clkdiv(ptr noundef %spi_imx, i32 noundef %15, ptr noundef nonnull %clk)
  %or9 = or i32 %and7, %call8
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clk, align 4
  %18 = ptrtoint ptr %spi_bus_clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %spi_bus_clk, align 4
  %usedma = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 22
  %19 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %usedma, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not = icmp eq i8 %20, 0
  br i1 %tobool11.not, label %if.end.if.else16_crit_edge, label %land.lhs.true12

if.end.if.else16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else16

land.lhs.true12:                                  ; preds = %if.end
  %devtype_data = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 26
  %21 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %devtype_data, align 4
  %tx_glitch_fixed = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %tx_glitch_fixed to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tx_glitch_fixed, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not = icmp eq i8 %24, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.else16_crit_edge, label %if.then14

land.lhs.true12.if.else16_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else16

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  %or15 = or i32 %or9, 8
  br label %do.body

if.else16:                                        ; preds = %land.lhs.true12.if.else16_crit_edge, %if.end.if.else16_crit_edge
  %and17 = and i32 %or9, -9
  br label %do.body

do.body:                                          ; preds = %if.else16, %if.then14
  %ctrl.1 = phi i32 [ %or15, %if.then14 ], [ %and17, %if.else16 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %ctrl.1)
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %25) #10, !srcloc !166
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx51_ecspi_trigger(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %3 = or i32 %2, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx51_ecspi_rx_available(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %and = and i32 %3, 8
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx51_ecspi_reset(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not5 = icmp eq i32 %3, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %10 = and i32 %9, 134217728
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx51_setup_wml(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype_data = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 26
  %0 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtype_data, align 4
  %tx_glitch_fixed = getelementptr inbounds %struct.spi_imx_devtype_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tx_glitch_fixed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_glitch_fixed, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wml = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 23
  %4 = ptrtoint ptr %wml to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wml, align 4
  %phi.bo = and i32 %5, 63
  %phi.bo14 = or i32 %phi.bo, -2139094912
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %tx_wml.0 = phi i32 [ %phi.bo14, %if.then ], [ -2139094912, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void @arm_heavy_mb() #10
  %wml1 = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 23
  %6 = ptrtoint ptr %wml1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wml1, align 4
  %sub = shl i32 %7, 16
  %and = add i32 %sub, 4128768
  %shl = and i32 %and, 4128768
  %and4 = shl i32 %7, 24
  %shl5 = and i32 %and4, 1056964608
  %or6 = or i32 %tx_wml.0, %shl5
  %or9 = or i32 %or6, %shl
  %8 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx51_ecspi_disable(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #10, !srcloc !166
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx51_disable_dma(ptr nocapture noundef readonly %spi_imx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !166
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mx51_ecspi_clkdiv(ptr nocapture noundef readonly %spi_imx, i32 noundef %fspi, ptr nocapture noundef writeonly %fres) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_clk = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 7
  %0 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spi_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fspi)
  %cmp = icmp ult i32 %1, %fspi
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !222

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #10, !range !223
  %sub.i = sub nuw nsw i32 32, %2
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fspi)
  %tobool.not.i70 = icmp eq i32 %fspi, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %fspi, i1 true) #10, !range !223
  %sub.i71.neg = or i32 %3, -32
  %cond.i72.neg = select i1 %tobool.not.i70, i32 0, i32 %sub.i71.neg
  %sub = add nsw i32 %cond.i, %cond.i72.neg
  %shl = shl i32 %fspi, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %shl)
  %cmp3 = icmp ugt i32 %1, %shl
  %inc = zext i1 %cmp3 to i32
  %spec.select = add nsw i32 %sub, %inc
  %4 = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 4)
  %sub7 = add i32 %4, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub7)
  %cmp8 = icmp ugt i32 %sub7, 15
  br i1 %cmp8, label %do.end, label %if.end16, !prof !222

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.46, i32 noundef %fspi, i32 noundef %1) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %shl17 = shl i32 %fspi, %sub7
  %add = add i32 %1, -1
  %sub18 = add i32 %add, %shl17
  %div = udiv i32 %sub18, %shl17
  %sub20 = add i32 %div, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx51_ecspi_clkdiv.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mx51_ecspi_clkdiv, %do.end37)) #10
          to label %if.then33 [label %do.end37], !srcloc !161

if.then33:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %dev34 = getelementptr inbounds %struct.spi_imx_data, ptr %spi_imx, i32 0, i32 1
  %7 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx51_ecspi_clkdiv.__UNIQUE_ID_ddebug243, ptr noundef %8, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %1, i32 noundef %fspi, i32 noundef %sub7, i32 noundef %sub20) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %if.end16
  %div39 = udiv i32 %1, %div
  %shr = lshr i32 %div39, %sub7
  %9 = ptrtoint ptr %fres to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %fres, align 4
  %shl40 = shl i32 %sub20, 12
  %shl41 = shl nuw nsw i32 %sub7, 8
  %or = or i32 %shl40, %shl41
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 255, %do.end ], [ %or, %do.end37 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk_per = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %clk_ipg = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_imx_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk_per = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_per, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk_ipg = getelementptr inbounds %struct.spi_imx_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ipg, align 4
  %call.i15 = tail call i32 @clk_prepare(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end.i19:                                       ; preds = %if.end
  %call1.i17 = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end.i19.cleanup_crit_edge, label %if.then3.i20

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %if.then5

if.then5:                                         ; preds = %if.then3.i20, %if.end.if.then5_crit_edge
  %retval.0.i21.ph = phi i32 [ %call1.i17, %if.then3.i20 ], [ %call.i15, %if.end.if.then5_crit_edge ]
  %8 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.then5 ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i21.ph, %if.then5 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i19.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !46, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !106, !108, !109, !110, !112, !114, !115, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !140, !142, !143, !145, !147}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__param_use_dma, !1, !"__param_use_dma", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-imx.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_use_dmatype239, !1, !"__UNIQUE_ID_use_dmatype239", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_use_dma240, !4, !"__UNIQUE_ID_use_dma240", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-imx.c", i32 33, i32 1}
!5 = !{ptr @__initcall__kmod_spi_imx__252_1854_spi_imx_driver_init6, !6, !"__initcall__kmod_spi_imx__252_1854_spi_imx_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-imx.c", i32 1854, i32 1}
!7 = !{ptr @__exitcall_spi_imx_driver_exit, !6, !"__exitcall_spi_imx_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description253, !9, !"__UNIQUE_ID_description253", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-imx.c", i32 1856, i32 1}
!10 = !{ptr @__UNIQUE_ID_author254, !11, !"__UNIQUE_ID_author254", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-imx.c", i32 1857, i32 1}
!12 = !{ptr @__UNIQUE_ID_file255, !13, !"__UNIQUE_ID_file255", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-imx.c", i32 1858, i32 1}
!14 = !{ptr @__UNIQUE_ID_license256, !13, !"__UNIQUE_ID_license256", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias257, !16, !"__UNIQUE_ID_alias257", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-imx.c", i32 1859, i32 1}
!17 = !{ptr @__param_str_use_dma, !1, !"__param_str_use_dma", i1 false, i1 false}
!18 = !{ptr @use_dma, !19, !"use_dma", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-imx.c", i32 31, i32 13}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-imx.c", i32 1847, i32 14}
!22 = !{ptr @spi_imx_driver, !23, !"spi_imx_driver", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-imx.c", i32 1845, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-imx.c", i32 1605, i32 30}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-imx.c", i32 1615, i32 33}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-imx.c", i32 1640, i32 44}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-imx.c", i32 1659, i32 43}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-imx.c", i32 1688, i32 3}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @spi_imx_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @spi_imx_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-imx.c", i32 1692, i32 46}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-imx.c", i32 1698, i32 46}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-imx.c", i32 1729, i32 4}
!46 = !{ptr @spi_imx_probe.__UNIQUE_ID_ddebug251, !45, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-imx.c", i32 1740, i32 34}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-imx.c", i32 1210, i32 4}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @spi_imx_setupxfer._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @spi_imx_setupxfer._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-imx.c", i32 1213, i32 3}
!56 = !{ptr @spi_imx_setupxfer.__UNIQUE_ID_ddebug246, !55, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-imx.c", i32 1482, i32 3}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @spi_imx_pio_transfer_slave._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @spi_imx_pio_transfer_slave._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-imx.c", i32 1502, i32 3}
!64 = !{ptr @spi_imx_pio_transfer_slave.__UNIQUE_ID_ddebug249, !63, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-imx.c", i32 1375, i32 3}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @spi_imx_dma_transfer._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @spi_imx_dma_transfer._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-imx.c", i32 1420, i32 3}
!72 = !{ptr @spi_imx_dma_transfer._entry.22, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @spi_imx_dma_transfer._entry_ptr.24, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-imx.c", i32 1429, i32 3}
!76 = !{ptr @spi_imx_dma_transfer._entry.25, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @spi_imx_dma_transfer._entry_ptr.27, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-imx.c", i32 1183, i32 3}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @spi_imx_dma_configure._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @spi_imx_dma_configure._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-imx.c", i32 1193, i32 3}
!85 = !{ptr @spi_imx_dma_configure._entry.30, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @spi_imx_dma_configure._entry_ptr.32, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-imx.c", i32 1466, i32 3}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @spi_imx_pio_transfer._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @spi_imx_pio_transfer._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/spi/spi-imx.c", i32 1540, i32 2}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @spi_imx_setup.__UNIQUE_ID_ddebug250, !93, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/spi/spi-imx.c", i32 1559, i32 3}
!98 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @spi_imx_prepare_message._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @spi_imx_prepare_message._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @init_completion.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../include/linux/completion.h", i32 87, i32 2}
!103 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/spi/spi-imx.c", i32 1288, i32 41}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/spi/spi-imx.c", i32 1291, i32 3}
!108 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @spi_imx_sdma_init.__UNIQUE_ID_ddebug247, !107, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/spi/spi-imx.c", i32 1297, i32 41}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/spi/spi-imx.c", i32 1300, i32 3}
!114 = !{ptr @spi_imx_sdma_init.__UNIQUE_ID_ddebug248, !113, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/spi/spi-imx.c", i32 1777, i32 3}
!117 = !{ptr @spi_imx_remove._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @spi_imx_remove._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @spi_imx_dt_ids, !120, !"spi_imx_dt_ids", i1 false, i1 false}
!120 = !{!"../drivers/spi/spi-imx.c", i32 1063, i32 34}
!121 = !{ptr @imx1_cspi_devtype_data, !122, !"imx1_cspi_devtype_data", i1 false, i1 false}
!122 = !{!"../drivers/spi/spi-imx.c", i32 942, i32 36}
!123 = !{ptr @imx21_cspi_devtype_data, !124, !"imx21_cspi_devtype_data", i1 false, i1 false}
!124 = !{!"../drivers/spi/spi-imx.c", i32 956, i32 36}
!125 = !{ptr @mxc_clkdivs, !126, !"mxc_clkdivs", i1 false, i1 false}
!126 = !{!"../drivers/spi/spi-imx.c", i32 184, i32 12}
!127 = !{ptr @imx27_cspi_devtype_data, !128, !"imx27_cspi_devtype_data", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-imx.c", i32 970, i32 36}
!129 = !{ptr @imx31_cspi_devtype_data, !130, !"imx31_cspi_devtype_data", i1 false, i1 false}
!130 = !{!"../drivers/spi/spi-imx.c", i32 985, i32 36}
!131 = !{ptr @imx35_cspi_devtype_data, !132, !"imx35_cspi_devtype_data", i1 false, i1 false}
!132 = !{!"../drivers/spi/spi-imx.c", i32 999, i32 36}
!133 = !{ptr @imx51_ecspi_devtype_data, !134, !"imx51_ecspi_devtype_data", i1 false, i1 false}
!134 = !{!"../drivers/spi/spi-imx.c", i32 1014, i32 36}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/spi/spi-imx.c", i32 453, i32 3}
!137 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mx51_ecspi_clkdiv._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @mx51_ecspi_clkdiv._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/spi/spi-imx.c", i32 460, i32 2}
!142 = !{ptr @mx51_ecspi_clkdiv.__UNIQUE_ID_ddebug243, !141, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!143 = !{ptr @imx53_ecspi_devtype_data, !144, !"imx53_ecspi_devtype_data", i1 false, i1 false}
!144 = !{!"../drivers/spi/spi-imx.c", i32 1031, i32 36}
!145 = !{ptr @imx6ul_ecspi_devtype_data, !146, !"imx6ul_ecspi_devtype_data", i1 false, i1 false}
!146 = !{!"../drivers/spi/spi-imx.c", i32 1046, i32 36}
!147 = !{ptr @imx_spi_pm, !148, !"imx_spi_pm", i1 false, i1 false}
!148 = !{!"../drivers/spi/spi-imx.c", i32 1839, i32 32}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{!"auto-init"}
!159 = !{i8 0, i8 2}
!160 = !{i64 2148286428, i64 2148286454, i64 2148286483, i64 2148286517, i64 2148286548, i64 2148286571}
!161 = !{i64 2148768243, i64 2148768248, i64 2148768261, i64 2148768305, i64 2148768339, i64 2148768360}
!162 = !{i64 2148285847}
!163 = !{i64 770670, i64 770695, i64 770717, i64 770733, i64 770745, i64 770765, i64 770789, i64 770805, i64 770817}
!164 = !{i64 2148286035}
!165 = !{i64 2154661677}
!166 = !{i64 6352833}
!167 = !{i64 6353251}
!168 = !{i64 2154650116}
!169 = !{i64 2154587585}
!170 = !{i64 2154584583}
!171 = !{i64 2154588088}
!172 = !{i64 2154588310}
!173 = !{i64 2154585193}
!174 = !{i64 2154588710}
!175 = !{i64 2154582934}
!176 = !{i64 2154583538}
!177 = !{i64 2154586238}
!178 = !{i64 2154586848}
!179 = !{i64 2154589675}
!180 = !{i64 2154589954}
!181 = !{i64 2154621888}
!182 = !{i64 2154622128}
!183 = !{i64 2154618803}
!184 = !{i64 2154620303}
!185 = !{i64 2154619484}
!186 = !{i64 2154619715}
!187 = !{i64 2154620984}
!188 = !{i64 2154621213}
!189 = !{i64 2154615875}
!190 = !{i64 2154617462}
!191 = !{i64 2154616556}
!192 = !{i64 2154616787}
!193 = !{i64 2154618143}
!194 = !{i64 2154618372}
!195 = !{i64 2154610841}
!196 = !{i64 2154612452}
!197 = !{i64 2154613133}
!198 = !{i64 2154613449}
!199 = !{i64 2154613875}
!200 = !{i64 2154611522}
!201 = !{i64 2154611753}
!202 = !{i64 2154614592}
!203 = !{i64 2154615104}
!204 = !{i64 2154615616}
!205 = !{i64 2154596238}
!206 = !{i64 2154599151}
!207 = !{i64 2154599535}
!208 = !{i64 2154600219}
!209 = !{i64 2154600687}
!210 = !{i64 2154601681}
!211 = !{!"branch_weights", i32 2000, i32 1}
!212 = !{i64 2154608085}
!213 = !{i64 2154608351}
!214 = !{i64 2154596919}
!215 = !{i64 2154597151}
!216 = !{i64 2154610070}
!217 = !{i64 2154610583}
!218 = !{i64 2154609008}
!219 = !{i64 2154598224}
!220 = !{i64 2154598457}
!221 = !{i64 2154597549}
!222 = !{!"branch_weights", i32 1, i32 2000}
!223 = !{i32 0, i32 33}
