; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-fsl-lpspi.c_pt.bc'
source_filename = "../drivers/spi/spi-fsl-lpspi.c"
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
%struct.fsl_lpspi_data = type { ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, i32, i8, i8, i8, %struct.lpspi_config, %struct.completion, i8, i8, %struct.completion, %struct.completion }
%struct.lpspi_config = type { i8, i8, i8, i16, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_fsl_lpspi__248_987_fsl_lpspi_driver_init6 = internal global ptr @fsl_lpspi_driver_init, section ".initcall6.init", align 4
@fsl_lpspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_lpspi_probe, ptr @fsl_lpspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_lpspi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_lpspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_lpspi_driver_exit = internal global ptr @fsl_lpspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [50 x i8] c"spi_fsl_lpspi.description=LPSPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [49 x i8] c"spi_fsl_lpspi.author=Gao Pan <pandy.gao@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [45 x i8] c"spi_fsl_lpspi.file=drivers/spi/spi-fsl-lpspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [26 x i8] c"spi_fsl_lpspi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl_lpspi\00", [22 x i8] zeroinitializer }, align 32
@fsl_lpspi_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fsl_lpspi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fsl_lpspi_suspend, ptr @fsl_lpspi_resume, ptr @fsl_lpspi_suspend, ptr @fsl_lpspi_resume, ptr @fsl_lpspi_suspend, ptr @fsl_lpspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_lpspi_runtime_suspend, ptr @fsl_lpspi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi-slave\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl,spi-only-use-cs1-sel\00", [39 x i8] zeroinitializer }, align 32
@fsl_lpspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 875, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't get irq%d: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl_lpspi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/spi/spi-fsl-lpspi.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_lpspi_probe._entry_ptr = internal global ptr @fsl_lpspi_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@fsl_lpspi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 898, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_lpspi_probe._entry_ptr.12 = internal global ptr @fsl_lpspi_probe._entry.10, section ".printk_index", align 4
@fsl_lpspi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 911, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dma setup error %d, use pio\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_lpspi_probe._entry_ptr.15 = internal global ptr @fsl_lpspi_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"spi_register_controller error: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@fsl_lpspi_set_bitrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 307, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"per-clk should be at least two times of transfer speed\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_lpspi_set_bitrate\00", [42 x i8] zeroinitializer }, align 32
@fsl_lpspi_set_bitrate._entry_ptr = internal global ptr @fsl_lpspi_set_bitrate._entry, section ".printk_index", align 4
@fsl_lpspi_set_bitrate.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.18, ptr @.str.5, ptr @.str.20, i8 0, i8 81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_fsl_lpspi\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"perclk=%d, speed=%d, prescale=%d, scldiv=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@fsl_lpspi_set_watermark.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl_lpspi_set_watermark\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FCR=0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@fsl_lpspi_set_cmd.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.5, ptr @.str.24, i8 0, i8 69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_lpspi_set_cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TCR=0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@fsl_lpspi_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 595, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I/O Error in DMA TX\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_lpspi_dma_transfer\00", [41 x i8] zeroinitializer }, align 32
@fsl_lpspi_dma_transfer._entry_ptr = internal global ptr @fsl_lpspi_dma_transfer._entry, section ".printk_index", align 4
@fsl_lpspi_dma_transfer._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 605, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I/O Error in DMA RX\0A\00", [43 x i8] zeroinitializer }, align 32
@fsl_lpspi_dma_transfer._entry_ptr.29 = internal global ptr @fsl_lpspi_dma_transfer._entry.27, section ".printk_index", align 4
@fsl_lpspi_dma_transfer.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.26, ptr @.str.5, ptr @.str.30, i8 0, i8 -103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I/O Error in DMA TX interrupted\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_lpspi_dma_transfer.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.26, ptr @.str.5, ptr @.str.31, i8 0, i8 -100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I/O Error in DMA RX interrupted\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_lpspi_dma_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 360, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TX dma configuration failed with %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl_lpspi_dma_configure\00", [40 x i8] zeroinitializer }, align 32
@fsl_lpspi_dma_configure._entry_ptr = internal global ptr @fsl_lpspi_dma_configure._entry, section ".printk_index", align 4
@fsl_lpspi_dma_configure._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 371, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RX dma configuration failed with %d\0A\00", [59 x i8] zeroinitializer }, align 32
@fsl_lpspi_dma_configure._entry_ptr.36 = internal global ptr @fsl_lpspi_dma_configure._entry.34, section ".printk_index", align 4
@fsl_lpspi_wait_for_completion.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 0, i8 120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fsl_lpspi_wait_for_completion\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"interrupted\0A\00", [19 x i8] zeroinitializer }, align 32
@fsl_lpspi_wait_for_completion.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.37, ptr @.str.5, ptr @.str.39, i8 0, i8 122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wait for completion timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@lpspi_prepare_xfer_hardware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.40, ptr @.str.5, i32 205, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpspi_prepare_xfer_hardware\00", [36 x i8] zeroinitializer }, align 32
@lpspi_prepare_xfer_hardware._entry_ptr = internal global ptr @lpspi_prepare_xfer_hardware._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@fsl_lpspi_dma_init.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.43, ptr @.str.5, ptr @.str.44, i8 0, i8 -91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl_lpspi_dma_init\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't get the TX DMA channel, error %d!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@fsl_lpspi_dma_init.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.43, ptr @.str.5, ptr @.str.46, i8 0, i8 -89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't get the RX DMA channel, error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@fsl_lpspi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 963, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error in resume: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_lpspi_resume\00", [47 x i8] zeroinitializer }, align 32
@fsl_lpspi_resume._entry_ptr = internal global ptr @fsl_lpspi_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"fsl_lpspi_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 978, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 980, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"fsl_lpspi_dt_ids\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 125, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"fsl_lpspi_pm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 972, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 825, i32 58 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 842, i32 7 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 875, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 879, i32 48 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 885, i32 48 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 898, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 911, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 915, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 306, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 325, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 294, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 279, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 595, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 605, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 614, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 624, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 359, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 370, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 483, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 488, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 205, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 87, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 658, i32 45 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 661, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 667, i32 45 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 670, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [31 x i8] c"../drivers/spi/spi-fsl-lpspi.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 963, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_fsl_lpspi_driver_exit, ptr @__initcall__kmod_spi_fsl_lpspi__248_987_fsl_lpspi_driver_init6, ptr @fsl_lpspi_dma_configure._entry, ptr @fsl_lpspi_dma_configure._entry.34, ptr @fsl_lpspi_dma_configure._entry_ptr, ptr @fsl_lpspi_dma_configure._entry_ptr.36, ptr @fsl_lpspi_dma_transfer._entry, ptr @fsl_lpspi_dma_transfer._entry.27, ptr @fsl_lpspi_dma_transfer._entry_ptr, ptr @fsl_lpspi_dma_transfer._entry_ptr.29, ptr @fsl_lpspi_driver_exit, ptr @fsl_lpspi_probe._entry, ptr @fsl_lpspi_probe._entry.10, ptr @fsl_lpspi_probe._entry.13, ptr @fsl_lpspi_probe._entry_ptr, ptr @fsl_lpspi_probe._entry_ptr.12, ptr @fsl_lpspi_probe._entry_ptr.15, ptr @fsl_lpspi_resume._entry, ptr @fsl_lpspi_resume._entry_ptr, ptr @fsl_lpspi_set_bitrate._entry, ptr @fsl_lpspi_set_bitrate._entry_ptr, ptr @lpspi_prepare_xfer_hardware._entry, ptr @lpspi_prepare_xfer_hardware._entry_ptr, ptr @fsl_lpspi_driver, ptr @.str, ptr @fsl_lpspi_dt_ids, ptr @fsl_lpspi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @init_completion.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_set_bitrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_dma_transfer._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_dma_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_dma_configure._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpspi_prepare_xfer_hardware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpspi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_lpspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_lpspi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_lpspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_lpspi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_lpspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i, null
  %call.i198 = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 232, i1 noundef zeroext %tobool.i) #8
  %tobool5.not = icmp eq ptr %call.i198, null
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  %frombool = zext i1 %tobool.i to i8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i198, ptr %driver_data.i.i, align 4
  %driver_data.i.i199 = getelementptr inbounds %struct.device, ptr %call.i198, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i199 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i199, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %4, align 4
  %is_slave12 = getelementptr inbounds %struct.fsl_lpspi_data, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %is_slave12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %is_slave12, align 4
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i200 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %tobool.i201 = icmp ne ptr %call.i200, null
  %is_only_cs1 = getelementptr inbounds %struct.fsl_lpspi_data, ptr %4, i32 0, i32 6
  %frombool17 = zext i1 %tobool.i201 to i8
  %9 = ptrtoint ptr %is_only_cs1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool17, ptr %is_only_cs1, align 1
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i198, i32 0, i32 7
  %10 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -128, ptr %bits_per_word_mask, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i198, i32 0, i32 51
  %11 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fsl_lpspi_transfer_one, ptr %transfer_one, align 4
  %prepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i198, i32 0, i32 44
  %12 = ptrtoint ptr %prepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @lpspi_prepare_xfer_hardware, ptr %prepare_transfer_hardware, align 8
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i198, i32 0, i32 46
  %13 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @lpspi_unprepare_xfer_hardware, ptr %unprepare_transfer_hardware, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i198, i32 0, i32 5
  %14 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %mode_bits, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i198, i32 0, i32 10
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 24, ptr %flags, align 4
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %of_node21 = getelementptr inbounds %struct.device, ptr %call.i198, i32 0, i32 27
  %18 = ptrtoint ptr %of_node21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %of_node21, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %conv = trunc i32 %20 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i198, i32 0, i32 2
  %21 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %bus_num, align 8
  %slave_abort = getelementptr inbounds %struct.spi_controller, ptr %call.i198, i32 0, i32 49
  %22 = ptrtoint ptr %slave_abort to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @fsl_lpspi_slave_abort, ptr %slave_abort, align 4
  %23 = ptrtoint ptr %is_slave12 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_slave12, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool23.not = icmp eq i8 %24, 0
  br i1 %tobool23.not, label %if.then24, label %if.end7.if.end25_crit_edge

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i198, i32 0, i32 56
  %25 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %use_gpio_descriptors, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end7.if.end25_crit_edge
  %xfer_done = getelementptr inbounds %struct.fsl_lpspi_data, ptr %4, i32 0, i32 17
  %26 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %xfer_done, align 4
  %wait.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %4, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_completion.__key) #8
  %call26 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call28 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call26) #8
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %4, i32 0, i32 1
  %27 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call28, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call28 to i32
  br label %spi_controller_put.exit

if.end34:                                         ; preds = %if.end25
  %29 = ptrtoint ptr %call26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call26, align 4
  %base_phys = getelementptr inbounds %struct.fsl_lpspi_data, ptr %4, i32 0, i32 2
  %31 = ptrtoint ptr %base_phys to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %base_phys, align 4
  %call35 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %if.end34.spi_controller_put.exit_crit_edge, label %if.end38

if.end34.spi_controller_put.exit_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end38:                                         ; preds = %if.end34
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end38.dev_name.exit_crit_edge

if.end38.dev_name.exit_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end38.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %35, %if.end.i ], [ %33, %if.end38.dev_name.exit_crit_edge ]
  %call.i202 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call35, ptr noundef nonnull @fsl_lpspi_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool43.not = icmp eq i32 %call.i202, 0
  br i1 %tobool43.not, label %if.end46, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call35, i32 noundef %call.i202) #11
  br label %spi_controller_put.exit

if.end46:                                         ; preds = %dev_name.exit
  %call48 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  %clk_per = getelementptr inbounds %struct.fsl_lpspi_data, ptr %4, i32 0, i32 4
  %36 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call48, ptr %clk_per, align 4
  %cmp.i203 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %call48 to i32
  br label %spi_controller_put.exit

if.end54:                                         ; preds = %if.end46
  %call56 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  %clk_ipg = getelementptr inbounds %struct.fsl_lpspi_data, ptr %4, i32 0, i32 3
  %38 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call56, ptr %clk_ipg, align 4
  %cmp.i204 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %call56 to i32
  br label %spi_controller_put.exit

if.end62:                                         ; preds = %if.end54
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %4, align 4
  tail call void @pm_runtime_enable(ptr noundef %41) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %41, i32 noundef 50) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %41, i1 noundef zeroext true) #8
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %4, align 4
  %call.i205 = tail call i32 @__pm_runtime_resume(ptr noundef %43, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp69 = icmp slt i32 %call.i205, 0
  br i1 %cmp69, label %do.end74, label %if.end76

do.end74:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.11) #11
  br label %out_pm_get

if.end76:                                         ; preds = %if.end62
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !125
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %and = and i32 %49, 15
  %shl = shl nuw nsw i32 1, %and
  %conv80 = trunc i32 %shl to i8
  %txfifosize = getelementptr inbounds %struct.fsl_lpspi_data, ptr %4, i32 0, i32 14
  %50 = ptrtoint ptr %txfifosize to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv80, ptr %txfifosize, align 1
  %shr = lshr i32 %49, 8
  %and81 = and i32 %shr, 15
  %shl82 = shl nuw nsw i32 1, %and81
  %conv83 = trunc i32 %shl82 to i8
  %rxfifosize = getelementptr inbounds %struct.fsl_lpspi_data, ptr %4, i32 0, i32 15
  %51 = ptrtoint ptr %rxfifosize to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv83, ptr %rxfifosize, align 2
  %call85 = tail call fastcc i32 @fsl_lpspi_dma_init(ptr noundef %dev, ptr noundef %4, ptr noundef nonnull %call.i198)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call85)
  %cmp86 = icmp eq i32 %call85, -517
  br i1 %cmp86, label %if.end76.out_pm_get_crit_edge, label %if.end89

if.end76.out_pm_get_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_pm_get

if.end89:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp90 = icmp slt i32 %call85, 0
  br i1 %cmp90, label %do.end95, label %if.end89.if.end97_crit_edge

if.end89.if.end97_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call85) #11
  br label %if.end97

if.end97:                                         ; preds = %do.end95, %if.end89.if.end97_crit_edge
  %call99 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i198) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then102, label %if.end105

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %call104 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call99, ptr noundef nonnull @.str.16, i32 noundef %call99) #8
  tail call fastcc void @fsl_lpspi_dma_exit(ptr noundef nonnull %call.i198)
  br label %out_pm_get

if.end105:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %4, align 4
  %call.i206 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 12, i32 22
  %54 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store volatile i64 %call.i206, ptr %last_busy.i, align 8
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %4, align 4
  %call.i207 = tail call i32 @__pm_runtime_suspend(ptr noundef %56, i32 noundef 13) #8
  br label %cleanup

out_pm_get:                                       ; preds = %if.then102, %if.end76.out_pm_get_crit_edge, %do.end74
  %ret.0 = phi i32 [ %call.i205, %do.end74 ], [ -517, %if.end76.out_pm_get_crit_edge ], [ %call99, %if.then102 ]
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %4, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %58, i1 noundef zeroext false) #8
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %4, align 4
  %call.i208 = tail call i32 @__pm_runtime_idle(ptr noundef %60, i32 noundef 4) #8
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %4, align 4
  tail call void @__pm_runtime_disable(ptr noundef %62, i1 noundef zeroext true) #8
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %out_pm_get, %if.then59, %if.then51, %do.end, %if.end34.spi_controller_put.exit_crit_edge, %if.then31
  %ret.1 = phi i32 [ %28, %if.then31 ], [ %call.i202, %do.end ], [ %37, %if.then51 ], [ %39, %if.then59 ], [ %ret.0, %out_pm_get ], [ %call35, %if.end34.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i198) #8
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end105, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %spi_controller_put.exit ], [ 0, %if.end105 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_lpspi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i3, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
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
  %6 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dma_rx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  %7 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_tx.i, align 8
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %if.end.i.fsl_lpspi_dma_exit.exit_crit_edge, label %if.then4.i

if.end.i.fsl_lpspi_dma_exit.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_lpspi_dma_exit.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %8) #8
  %9 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %dma_tx.i, align 8
  br label %fsl_lpspi_dma_exit.exit

fsl_lpspi_dma_exit.exit:                          ; preds = %if.then4.i, %if.end.i.fsl_lpspi_dma_exit.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_lpspi_transfer_one(ptr nocapture noundef readonly %controller, ptr nocapture noundef readonly %spi, ptr noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %controller, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %is_first_byte = getelementptr inbounds %struct.fsl_lpspi_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %is_first_byte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_first_byte, align 2
  %controller1.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %3 = ptrtoint ptr %controller1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller1.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp.i = icmp eq ptr %t, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode.i, align 8
  %conv.i = trunc i32 %8 to i16
  %config.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 16
  %mode2.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 16, i32 3
  %9 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %mode2.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits_per_word.i, align 1
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %config.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %13 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed_hz.i, align 4
  %speed_hz5.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 16, i32 4
  %15 = ptrtoint ptr %speed_hz5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %speed_hz5.i, align 4
  %is_only_cs1.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 6
  %16 = ptrtoint ptr %is_only_cs1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_only_cs1.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %chip_select8.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %18 = ptrtoint ptr %chip_select8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_select8.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.end.i.if.end11.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.end.i.if.end11.i_crit_edge ], [ %19, %if.else.i ]
  %20 = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 16, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink.i, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not.i = icmp eq i32 %14, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end11.i.if.end18.i_crit_edge

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %22 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_speed_hz.i, align 8
  %24 = ptrtoint ptr %speed_hz5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %speed_hz5.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end18.i_crit_edge
  %25 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21.not.i = icmp eq i8 %26, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end18.i.if.end26.i_crit_edge

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %bits_per_word23.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %27 = ptrtoint ptr %bits_per_word23.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits_per_word23.i, align 1
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %config.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end26.i_crit_edge
  %30 = phi i8 [ %28, %if.then22.i ], [ %26, %if.end18.i.if.end26.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %30)
  %cmp30.i = icmp ult i8 %30, 9
  br i1 %cmp30.i, label %if.then32.i, label %if.else33.i

if.then32.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 11
  %31 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @fsl_lpspi_buf_rx_u8, ptr %rx.i, align 4
  br label %if.end46.i

if.else33.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %30)
  %cmp37.i = icmp ult i8 %30, 17
  %rx40.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 11
  br i1 %cmp37.i, label %if.then39.i, label %if.else42.i

if.then39.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %rx40.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @fsl_lpspi_buf_rx_u16, ptr %rx40.i, align 4
  br label %if.end46.i

if.else42.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %rx40.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @fsl_lpspi_buf_rx_u32, ptr %rx40.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else42.i, %if.then39.i, %if.then32.i
  %fsl_lpspi_buf_tx_u16.sink.i = phi ptr [ @fsl_lpspi_buf_tx_u16, %if.then39.i ], [ @fsl_lpspi_buf_tx_u32, %if.else42.i ], [ @fsl_lpspi_buf_tx_u8, %if.then32.i ]
  %tx41.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 10
  %34 = ptrtoint ptr %tx41.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %fsl_lpspi_buf_tx_u16.sink.i, ptr %tx41.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %txfifosize.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 14
  %37 = ptrtoint ptr %txfifosize.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %txfifosize.i, align 1
  %conv47.i = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv47.i)
  %cmp48.not.i = icmp ugt i32 %36, %conv47.i
  %conv52.i = trunc i32 %36 to i8
  %conv52.sink.i = select i1 %cmp48.not.i, i8 %38, i8 %conv52.i
  %39 = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 13
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv52.sink.i, ptr %39, align 4
  %dma_rx.i.i = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 61
  %41 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_rx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end46.i.fsl_lpspi_setup_transfer.exit_crit_edge, label %if.end.i.i

if.end46.i.fsl_lpspi_setup_transfer.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_lpspi_setup_transfer.exit

if.end.i.i:                                       ; preds = %if.end46.i
  %43 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bits_per_word.i, align 1
  %conv.i.i = zext i8 %44 to i32
  %sub.i.i.i = add nuw nsw i32 %conv.i.i, 7
  %div.i123.i.i = lshr i32 %sub.i.i.i, 3
  %switch.tableidx = add nsw i32 %div.i123.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %45 = icmp ult i32 %switch.tableidx, 4
  br i1 %45, label %switch.lookup, label %if.end.i.i.fsl_lpspi_setup_transfer.exit_crit_edge

if.end.i.i.fsl_lpspi_setup_transfer.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_lpspi_setup_transfer.exit

switch.lookup:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.shiftamt = shl nsw i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 16777473, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %fsl_lpspi_setup_transfer.exit

fsl_lpspi_setup_transfer.exit:                    ; preds = %switch.lookup, %if.end.i.i.fsl_lpspi_setup_transfer.exit_crit_edge, %if.end46.i.fsl_lpspi_setup_transfer.exit_crit_edge
  %.sink98.i = phi i8 [ %switch.masked, %switch.lookup ], [ 0, %if.end.i.i.fsl_lpspi_setup_transfer.exit_crit_edge ], [ 0, %if.end46.i.fsl_lpspi_setup_transfer.exit_crit_edge ]
  %usedma60.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %6, i32 0, i32 19
  %46 = ptrtoint ptr %usedma60.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink98.i, ptr %usedma60.i, align 1
  %call62.i = tail call fastcc i32 @fsl_lpspi_config(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp = icmp slt i32 %call62.i, 0
  br i1 %cmp, label %fsl_lpspi_setup_transfer.exit.cleanup_crit_edge, label %if.end

fsl_lpspi_setup_transfer.exit.cleanup_crit_edge:  ; preds = %fsl_lpspi_setup_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %fsl_lpspi_setup_transfer.exit
  tail call fastcc void @fsl_lpspi_set_cmd(ptr noundef %1)
  %47 = ptrtoint ptr %is_first_byte to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %is_first_byte, align 2
  %usedma = getelementptr inbounds %struct.fsl_lpspi_data, ptr %1, i32 0, i32 19
  %48 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %usedma, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp eq i8 %49, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call fastcc i32 @fsl_lpspi_dma_transfer(ptr noundef %controller, ptr noundef %1, ptr noundef nonnull %t)
  br label %if.end6

if.else:                                          ; preds = %if.end
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i, align 4
  %52 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %t, align 4
  %tx_buf1.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %51, i32 0, i32 9
  %54 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %tx_buf1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %55 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buf.i, align 4
  %rx_buf2.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %51, i32 0, i32 8
  %57 = ptrtoint ptr %rx_buf2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %rx_buf2.i, align 4
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i, align 4
  %remain.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %51, i32 0, i32 12
  %60 = ptrtoint ptr %remain.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %remain.i, align 4
  %xfer_done.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %51, i32 0, i32 17
  %61 = ptrtoint ptr %xfer_done.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %xfer_done.i, align 4
  %slave_aborted.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %51, i32 0, i32 18
  %62 = ptrtoint ptr %slave_aborted.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %slave_aborted.i, align 4
  tail call fastcc void @fsl_lpspi_write_tx_fifo(ptr noundef %51) #8
  %call3.i = tail call fastcc i32 @fsl_lpspi_wait_for_completion(ptr noundef %controller) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i25 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i25, label %if.end.i27, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i27:                                       ; preds = %if.else
  %usedma.i.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %51, i32 0, i32 19
  %63 = ptrtoint ptr %usedma.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %usedma.i.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i26 = icmp eq i8 %64, 0
  br i1 %tobool.not.i.i26, label %if.then.i.i, label %if.end.i27.fsl_lpspi_reset.exit.i_crit_edge

if.end.i27.fsl_lpspi_reset.exit.i_crit_edge:      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_lpspi_reset.exit.i

if.then.i.i:                                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %base.i.i.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %51, i32 0, i32 1
  %65 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %66, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #8, !srcloc !128
  br label %fsl_lpspi_reset.exit.i

fsl_lpspi_reset.exit.i:                           ; preds = %if.then.i.i, %if.end.i27.fsl_lpspi_reset.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %base.i.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %51, i32 0, i32 1
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 4128768) #8, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 196608) #8, !srcloc !128
  br label %if.end6

if.end6:                                          ; preds = %fsl_lpspi_reset.exit.i, %if.else.if.end6_crit_edge, %if.then3
  %ret.0 = phi i32 [ %call4, %if.then3 ], [ %call3.i, %if.else.if.end6_crit_edge ], [ 0, %fsl_lpspi_reset.exit.i ]
  %71 = tail call i32 @llvm.smin.i32(i32 %ret.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %fsl_lpspi_setup_transfer.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call62.i, %fsl_lpspi_setup_transfer.exit.cleanup_crit_edge ], [ %71, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpspi_prepare_xfer_hardware(ptr nocapture noundef readonly %controller) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %controller, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !132
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpspi_unprepare_xfer_hardware(ptr nocapture noundef readonly %controller) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %controller, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i4 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_lpspi_slave_abort(ptr nocapture noundef readonly %controller) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %controller, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %slave_aborted = getelementptr inbounds %struct.fsl_lpspi_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %slave_aborted, align 4
  %usedma = getelementptr inbounds %struct.fsl_lpspi_data, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %usedma, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %xfer_done = getelementptr inbounds %struct.fsl_lpspi_data, ptr %1, i32 0, i32 17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma_tx_completion = getelementptr inbounds %struct.fsl_lpspi_data, ptr %1, i32 0, i32 21
  tail call void @complete(ptr noundef %dma_tx_completion) #8
  %dma_rx_completion = getelementptr inbounds %struct.fsl_lpspi_data, ptr %1, i32 0, i32 20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dma_rx_completion.sink = phi ptr [ %dma_rx_completion, %if.else ], [ %xfer_done, %if.then ]
  tail call void @complete(ptr noundef %dma_rx_completion.sink) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_lpspi_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !125
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !128
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !125
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 112
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not5.i = icmp eq i32 %13, 0
  br i1 %tobool.not5.i, label %while.body.lr.ph.i, label %entry.fsl_lpspi_read_rx_fifo.exit_crit_edge

entry.fsl_lpspi_read_rx_fifo.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_lpspi_read_rx_fifo.exit

while.body.lr.ph.i:                               ; preds = %entry
  %rx.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %dev_id, i32 0, i32 11
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx.i, align 4
  tail call void %15(ptr noundef %dev_id) #8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i54 = getelementptr i8, ptr %17, i32 112
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %19 = and i32 %18, 33554432
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.fsl_lpspi_read_rx_fifo.exit_crit_edge

while.body.i.fsl_lpspi_read_rx_fifo.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_lpspi_read_rx_fifo.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

fsl_lpspi_read_rx_fifo.exit:                      ; preds = %while.body.i.fsl_lpspi_read_rx_fifo.exit_crit_edge, %entry.fsl_lpspi_read_rx_fifo.exit_crit_edge
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and9 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %fsl_lpspi_read_rx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fsl_lpspi_write_tx_fifo(ptr noundef %dev_id)
  br label %cleanup

if.end:                                           ; preds = %fsl_lpspi_read_rx_fifo.exit
  %and11 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %21, i32 92
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %22)
  %tobool21.not = icmp ult i32 %22, 16777216
  br i1 %tobool21.not, label %if.end25, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 131072) #8, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr.i56 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 131072) #8, !srcloc !128
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %and26 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %and29 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %or.cond52 = select i1 %tobool27.not, i1 true, i1 %tobool30.not
  br i1 %or.cond52, label %if.end25.cleanup_crit_edge, label %do.body32

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr36 = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 131072) #8, !srcloc !128
  %xfer_done = getelementptr inbounds %struct.fsl_lpspi_data, ptr %dev_id, i32 0, i32 17
  tail call void @complete(ptr noundef %xfer_done) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %if.end25.cleanup_crit_edge, %do.body, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %do.body ], [ 1, %do.body32 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_lpspi_dma_init(ptr noundef %dev, ptr noundef %fsl_lpspi, ptr nocapture noundef %controller) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.42) #8
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 60
  %0 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %dma_tx, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_lpspi_dma_init.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_lpspi_dma_init, %do.end)) #8
          to label %if.then9 [label %do.end], !srcloc !140

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_lpspi_dma_init.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.then
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dma_tx, align 8
  br label %err

if.end11:                                         ; preds = %entry
  %call12 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.45) #8
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 61
  %3 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %dma_rx, align 4
  %cmp.i57 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57, label %if.then15, label %if.end37

if.then15:                                        ; preds = %if.end11
  %4 = ptrtoint ptr %call12 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_lpspi_dma_init.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_lpspi_dma_init, %do.end35)) #8
          to label %if.then32 [label %do.end35], !srcloc !140

if.then32:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_lpspi_dma_init.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %4) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %if.then15
  %5 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dma_rx, align 4
  br label %err

if.end37:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %dma_rx_completion = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 20
  %6 = ptrtoint ptr %dma_rx_completion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dma_rx_completion, align 4
  %wait.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 20, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_completion.__key) #8
  %dma_tx_completion = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 21
  %7 = ptrtoint ptr %dma_tx_completion to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dma_tx_completion, align 4
  %wait.i58 = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i58, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_completion.__key) #8
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 24
  %8 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fsl_lpspi_can_dma, ptr %can_dma, align 4
  %max_dma_len = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 43
  %9 = ptrtoint ptr %max_dma_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32767, ptr %max_dma_len, align 4
  br label %cleanup

err:                                              ; preds = %do.end35, %do.end
  %ret.0 = phi i32 [ %1, %do.end ], [ %4, %do.end35 ]
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 61
  %10 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %err.if.end.i_crit_edge, label %if.then.i

err.if.end.i_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %11) #8
  %12 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dma_rx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %err.if.end.i_crit_edge
  %13 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_tx, align 8
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.then4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %14) #8
  %15 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dma_tx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.end.i.cleanup_crit_edge, %if.end37
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %ret.0, %if.end.i.cleanup_crit_edge ], [ %ret.0, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_lpspi_dma_exit(ptr nocapture noundef %controller) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 61
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
  %2 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dma_rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 60
  %3 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_tx, align 8
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %4) #8
  %5 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dma_tx, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_lpspi_set_cmd(ptr nocapture noundef readonly %fsl_lpspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 16
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config, align 4
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  %mode = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  %and = zext i16 %3 to i32
  %shl = shl i32 %and, 30
  %or3 = or i32 %shl, %sub
  %chip_select = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 1
  %6 = and i8 %5, 3
  %and6 = zext i8 %6 to i32
  %shl7 = shl nuw nsw i32 %and6, 24
  %or8 = or i32 %or3, %shl7
  %is_slave = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 5
  %7 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_slave, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  %prescale = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 16, i32 2
  %9 = ptrtoint ptr %prescale to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %prescale, align 2
  %conv10 = zext i8 %10 to i32
  %shl11 = shl i32 %conv10, 27
  %or12 = or i32 %shl11, %or8
  %usedma = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 19
  %11 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %usedma, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %if.then14, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then14:                                        ; preds = %if.then
  %is_first_byte = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 7
  %13 = ptrtoint ptr %is_first_byte to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_first_byte, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %or15 = and i32 %or12, -3145729
  %and18 = or i32 %or15, 2097152
  br label %do.body

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %or19 = or i32 %or12, 3145728
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then17, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %temp.0 = phi i32 [ %or8, %entry.do.body_crit_edge ], [ %or12, %if.then.do.body_crit_edge ], [ %and18, %if.then17 ], [ %or19, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %temp.0)
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #8, !srcloc !128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_lpspi_set_cmd.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_lpspi_set_cmd, %do.end30)) #8
          to label %if.then27 [label %do.end30], !srcloc !140

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %fsl_lpspi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fsl_lpspi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_lpspi_set_cmd.__UNIQUE_ID_ddebug239, ptr noundef %19, ptr noundef nonnull @.str.24, i32 noundef %temp.0) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_lpspi_dma_transfer(ptr nocapture noundef readonly %controller, ptr noundef %fsl_lpspi, ptr nocapture noundef readonly %transfer) unnamed_addr #2 align 64 {
entry:
  %rx.i = alloca %struct.dma_slave_config, align 4
  %tx.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_sg = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx.i) #8
  %0 = getelementptr inbounds i8, ptr %rx.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tx.i) #8
  %2 = getelementptr inbounds i8, ptr %tx.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 44)
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %controller, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %config.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %7 to i32
  %sub.i.i = add nuw nsw i32 %conv.i, 7
  %div.i444546.i = lshr i32 %sub.i.i, 3
  %8 = zext i32 %div.i444546.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div.i444546.i, label %entry.fsl_lpspi_dma_configure.exit.thread_crit_edge [
    i32 4, label %entry.sw.epilog.i_crit_edge
    i32 2, label %entry.sw.epilog.i_crit_edge240
    i32 1, label %entry.sw.epilog.i_crit_edge241
  ]

entry.sw.epilog.i_crit_edge241:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge240:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

entry.fsl_lpspi_dma_configure.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_lpspi_dma_configure.exit.thread

sw.epilog.i:                                      ; preds = %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge240, %entry.sw.epilog.i_crit_edge241
  %9 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %tx.i, align 4
  %base_phys.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %base_phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_phys.i, align 4
  %add.i = add i32 %11, 100
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx.i, i32 0, i32 2
  %12 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx.i, i32 0, i32 4
  %13 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.i444546.i, ptr %dst_addr_width.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %tx.i, i32 0, i32 6
  %14 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dst_maxburst.i, align 4
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 60
  %15 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_tx.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %sw.epilog.i.do.end.i_crit_edge, label %dmaengine_slave_config.exit.i

sw.epilog.i.do.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_slave_config.exit.i:                    ; preds = %sw.epilog.i
  %call.i.i = call i32 %20(ptr noundef %16, ptr noundef nonnull %tx.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_slave_config.exit.i.do.end.i_crit_edge

dmaengine_slave_config.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_slave_config.exit.i.do.end.i_crit_edge, %sw.epilog.i.do.end.i_crit_edge
  %retval.0.i40.i = phi i32 [ %call.i.i, %dmaengine_slave_config.exit.i.do.end.i_crit_edge ], [ -38, %sw.epilog.i.do.end.i_crit_edge ]
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i40.i) #11
  br label %fsl_lpspi_dma_configure.exit.thread

if.end.i:                                         ; preds = %dmaengine_slave_config.exit.i
  %23 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %rx.i, align 4
  %24 = ptrtoint ptr %base_phys.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_phys.i, align 4
  %add7.i = add i32 %25, 116
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx.i, i32 0, i32 1
  %26 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add7.i, ptr %src_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx.i, i32 0, i32 3
  %27 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div.i444546.i, ptr %src_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %rx.i, i32 0, i32 5
  %28 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %src_maxburst.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 61
  %29 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_rx.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %device_config.i32.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %device_config.i32.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_config.i32.i, align 4
  %tobool.not.i33.i = icmp eq ptr %34, null
  br i1 %tobool.not.i33.i, label %if.end.i.do.end13.i_crit_edge, label %dmaengine_slave_config.exit37.i

if.end.i.do.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

dmaengine_slave_config.exit37.i:                  ; preds = %if.end.i
  %call.i34.i = call i32 %34(ptr noundef %30, ptr noundef nonnull %rx.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool9.not.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool9.not.i, label %if.end, label %dmaengine_slave_config.exit37.i.do.end13.i_crit_edge

dmaengine_slave_config.exit37.i.do.end13.i_crit_edge: ; preds = %dmaengine_slave_config.exit37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

do.end13.i:                                       ; preds = %dmaengine_slave_config.exit37.i.do.end13.i_crit_edge, %if.end.i.do.end13.i_crit_edge
  %retval.0.i3643.i = phi i32 [ %call.i34.i, %dmaengine_slave_config.exit37.i.do.end13.i_crit_edge ], [ -38, %if.end.i.do.end13.i_crit_edge ]
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i3643.i) #11
  br label %fsl_lpspi_dma_configure.exit.thread

fsl_lpspi_dma_configure.exit.thread:              ; preds = %do.end13.i, %do.end.i, %entry.fsl_lpspi_dma_configure.exit.thread_crit_edge
  %retval.0.i159.ph = phi i32 [ -22, %entry.fsl_lpspi_dma_configure.exit.thread_crit_edge ], [ %retval.0.i3643.i, %do.end13.i ], [ %retval.0.i40.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tx.i) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx.i) #8
  br label %cleanup

if.end:                                           ; preds = %dmaengine_slave_config.exit37.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tx.i) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx.i) #8
  %rx_sg = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 6
  %37 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_rx.i, align 4
  %39 = ptrtoint ptr %rx_sg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_sg, align 4
  %nents = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nents, align 4
  %tobool.not.i160 = icmp eq ptr %38, null
  br i1 %tobool.not.i160, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %38, align 4
  %tobool1.not.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 39
  %45 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %46, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = call ptr %46(ptr noundef nonnull %38, ptr noundef %40, i32 noundef %42, i32 noundef 2, i32 noundef 3, ptr noundef null) #8
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, label %if.end4

dmaengine_prep_slave_sg.exit.cleanup_crit_edge:   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %47 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @fsl_lpspi_dma_rx_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %48 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %fsl_lpspi, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_submit.i, align 4
  %call.i163 = call i32 %50(ptr noundef nonnull %call.i) #8
  %dma_rx_completion = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 20
  %51 = ptrtoint ptr %dma_rx_completion to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %dma_rx_completion, align 4
  %52 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_rx.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 50
  %56 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_issue_pending.i, align 4
  call void %57(ptr noundef %53) #8
  %58 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_tx.i, align 8
  %60 = ptrtoint ptr %tx_sg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_sg, align 4
  %nents8 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 5, i32 1
  %62 = ptrtoint ptr %nents8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nents8, align 4
  %tobool.not.i164 = icmp eq ptr %59, null
  br i1 %tobool.not.i164, label %if.end4.if.then11_crit_edge, label %lor.lhs.false.i166

if.end4.if.then11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false.i166:                               ; preds = %if.end4
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %59, align 4
  %tobool1.not.i165 = icmp eq ptr %65, null
  br i1 %tobool1.not.i165, label %lor.lhs.false.i166.if.then11_crit_edge, label %lor.lhs.false2.i169

lor.lhs.false.i166.if.then11_crit_edge:           ; preds = %lor.lhs.false.i166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false2.i169:                              ; preds = %lor.lhs.false.i166
  %device_prep_slave_sg.i167 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 39
  %66 = ptrtoint ptr %device_prep_slave_sg.i167 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device_prep_slave_sg.i167, align 4
  %tobool4.not.i168 = icmp eq ptr %67, null
  br i1 %tobool4.not.i168, label %lor.lhs.false2.i169.if.then11_crit_edge, label %dmaengine_prep_slave_sg.exit173

lor.lhs.false2.i169.if.then11_crit_edge:          ; preds = %lor.lhs.false2.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

dmaengine_prep_slave_sg.exit173:                  ; preds = %lor.lhs.false2.i169
  %call.i170 = call ptr %67(ptr noundef nonnull %59, ptr noundef %61, i32 noundef %63, i32 noundef 1, i32 noundef 3, ptr noundef null) #8
  %tobool10.not = icmp eq ptr %call.i170, null
  br i1 %tobool10.not, label %dmaengine_prep_slave_sg.exit173.if.then11_crit_edge, label %if.end14

dmaengine_prep_slave_sg.exit173.if.then11_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %dmaengine_prep_slave_sg.exit173.if.then11_crit_edge, %lor.lhs.false2.i169.if.then11_crit_edge, %lor.lhs.false.i166.if.then11_crit_edge, %if.end4.if.then11_crit_edge
  %68 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma_tx.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %71, i32 0, i32 47
  %72 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i174 = icmp eq ptr %73, null
  br i1 %tobool.not.i174, label %if.then11.cleanup_crit_edge, label %if.then.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %call.i175 = call i32 %73(ptr noundef %69) #8
  br label %cleanup

if.end14:                                         ; preds = %dmaengine_prep_slave_sg.exit173
  %callback15 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i170, i32 0, i32 6
  %74 = ptrtoint ptr %callback15 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @fsl_lpspi_dma_tx_callback, ptr %callback15, align 4
  %callback_param16 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i170, i32 0, i32 8
  %75 = ptrtoint ptr %callback_param16 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %fsl_lpspi, ptr %callback_param16, align 4
  %tx_submit.i176 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i170, i32 0, i32 4
  %76 = ptrtoint ptr %tx_submit.i176 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_submit.i176, align 4
  %call.i177 = call i32 %77(ptr noundef nonnull %call.i170) #8
  %dma_tx_completion = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 21
  %78 = ptrtoint ptr %dma_tx_completion to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %dma_tx_completion, align 4
  %79 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dma_tx.i, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %device_issue_pending.i178 = getelementptr inbounds %struct.dma_device, ptr %82, i32 0, i32 50
  %83 = ptrtoint ptr %device_issue_pending.i178 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device_issue_pending.i178, align 4
  call void %84(ptr noundef %80) #8
  %slave_aborted = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 18
  %85 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %slave_aborted, align 4
  %is_slave = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 5
  %86 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %is_slave, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool19.not = icmp eq i8 %87, 0
  br i1 %tobool19.not, label %if.else.i.i, label %if.else

if.else.i.i:                                      ; preds = %if.end14
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  %mul.i = mul i32 %89, 12
  %speed_hz.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 16, i32 4
  %90 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %speed_hz.i, align 4
  %div.i = udiv i32 %mul.i, %91
  %92 = mul i32 %div.i, 2000
  %mul2.i = add i32 %92, 2000
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %mul2.i) #8
  %call23 = call i32 @wait_for_completion_timeout(ptr noundef %dma_tx_completion, i32 noundef %call2.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end, label %if.end31

do.end:                                           ; preds = %if.else.i.i
  %93 = ptrtoint ptr %fsl_lpspi to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fsl_lpspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.25) #11
  %95 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dma_tx.i, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %device_terminate_all.i179 = getelementptr inbounds %struct.dma_device, ptr %98, i32 0, i32 47
  %99 = ptrtoint ptr %device_terminate_all.i179 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device_terminate_all.i179, align 4
  %tobool.not.i180 = icmp eq ptr %100, null
  br i1 %tobool.not.i180, label %do.end.dmaengine_terminate_all.exit183_crit_edge, label %if.then.i182

do.end.dmaengine_terminate_all.exit183_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit183

if.then.i182:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i181 = call i32 %100(ptr noundef %96) #8
  br label %dmaengine_terminate_all.exit183

dmaengine_terminate_all.exit183:                  ; preds = %if.then.i182, %do.end.dmaengine_terminate_all.exit183_crit_edge
  %101 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dma_rx.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %device_terminate_all.i184 = getelementptr inbounds %struct.dma_device, ptr %104, i32 0, i32 47
  %105 = ptrtoint ptr %device_terminate_all.i184 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device_terminate_all.i184, align 4
  %tobool.not.i185 = icmp eq ptr %106, null
  br i1 %tobool.not.i185, label %dmaengine_terminate_all.exit183.dmaengine_terminate_all.exit188_crit_edge, label %if.then.i187

dmaengine_terminate_all.exit183.dmaengine_terminate_all.exit188_crit_edge: ; preds = %dmaengine_terminate_all.exit183
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit188

if.then.i187:                                     ; preds = %dmaengine_terminate_all.exit183
  call void @__sanitizer_cov_trace_pc() #10
  %call.i186 = call i32 %106(ptr noundef %102) #8
  br label %dmaengine_terminate_all.exit188

dmaengine_terminate_all.exit188:                  ; preds = %if.then.i187, %dmaengine_terminate_all.exit183.dmaengine_terminate_all.exit188_crit_edge
  call fastcc void @fsl_lpspi_reset(ptr noundef %fsl_lpspi)
  br label %cleanup

if.end31:                                         ; preds = %if.else.i.i
  %call33 = call i32 @wait_for_completion_timeout(ptr noundef %dma_rx_completion, i32 noundef %call2.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end38, label %if.end31.if.end101_crit_edge

if.end31.if.end101_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

do.end38:                                         ; preds = %if.end31
  %107 = ptrtoint ptr %fsl_lpspi to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fsl_lpspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.28) #11
  %109 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dma_tx.i, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %device_terminate_all.i189 = getelementptr inbounds %struct.dma_device, ptr %112, i32 0, i32 47
  %113 = ptrtoint ptr %device_terminate_all.i189 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device_terminate_all.i189, align 4
  %tobool.not.i190 = icmp eq ptr %114, null
  br i1 %tobool.not.i190, label %do.end38.dmaengine_terminate_all.exit193_crit_edge, label %if.then.i192

do.end38.dmaengine_terminate_all.exit193_crit_edge: ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit193

if.then.i192:                                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call.i191 = call i32 %114(ptr noundef %110) #8
  br label %dmaengine_terminate_all.exit193

dmaengine_terminate_all.exit193:                  ; preds = %if.then.i192, %do.end38.dmaengine_terminate_all.exit193_crit_edge
  %115 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dma_rx.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %device_terminate_all.i194 = getelementptr inbounds %struct.dma_device, ptr %118, i32 0, i32 47
  %119 = ptrtoint ptr %device_terminate_all.i194 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device_terminate_all.i194, align 4
  %tobool.not.i195 = icmp eq ptr %120, null
  br i1 %tobool.not.i195, label %dmaengine_terminate_all.exit193.dmaengine_terminate_all.exit198_crit_edge, label %if.then.i197

dmaengine_terminate_all.exit193.dmaengine_terminate_all.exit198_crit_edge: ; preds = %dmaengine_terminate_all.exit193
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit198

if.then.i197:                                     ; preds = %dmaengine_terminate_all.exit193
  call void @__sanitizer_cov_trace_pc() #10
  %call.i196 = call i32 %120(ptr noundef %116) #8
  br label %dmaengine_terminate_all.exit198

dmaengine_terminate_all.exit198:                  ; preds = %if.then.i197, %dmaengine_terminate_all.exit193.dmaengine_terminate_all.exit198_crit_edge
  call fastcc void @fsl_lpspi_reset(ptr noundef %fsl_lpspi)
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %call47 = call i32 @wait_for_completion_interruptible(ptr noundef %dma_tx_completion) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false, label %if.else.do.body52_crit_edge

if.else.do.body52_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body52

lor.lhs.false:                                    ; preds = %if.else
  %121 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %slave_aborted, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool50.not = icmp eq i8 %122, 0
  br i1 %tobool50.not, label %if.end68, label %lor.lhs.false.do.body52_crit_edge

lor.lhs.false.do.body52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body52

do.body52:                                        ; preds = %lor.lhs.false.do.body52_crit_edge, %if.else.do.body52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_lpspi_dma_transfer.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_lpspi_dma_transfer, %do.end62)) #8
          to label %if.then58 [label %do.end62], !srcloc !140

if.then58:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %fsl_lpspi to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fsl_lpspi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_lpspi_dma_transfer.__UNIQUE_ID_ddebug244, ptr noundef %124, ptr noundef nonnull @.str.30) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %do.body52
  %125 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dma_tx.i, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %device_terminate_all.i199 = getelementptr inbounds %struct.dma_device, ptr %128, i32 0, i32 47
  %129 = ptrtoint ptr %device_terminate_all.i199 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device_terminate_all.i199, align 4
  %tobool.not.i200 = icmp eq ptr %130, null
  br i1 %tobool.not.i200, label %do.end62.dmaengine_terminate_all.exit203_crit_edge, label %if.then.i202

do.end62.dmaengine_terminate_all.exit203_crit_edge: ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit203

if.then.i202:                                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call.i201 = call i32 %130(ptr noundef %126) #8
  br label %dmaengine_terminate_all.exit203

dmaengine_terminate_all.exit203:                  ; preds = %if.then.i202, %do.end62.dmaengine_terminate_all.exit203_crit_edge
  %131 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dma_rx.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %device_terminate_all.i204 = getelementptr inbounds %struct.dma_device, ptr %134, i32 0, i32 47
  %135 = ptrtoint ptr %device_terminate_all.i204 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %device_terminate_all.i204, align 4
  %tobool.not.i205 = icmp eq ptr %136, null
  br i1 %tobool.not.i205, label %dmaengine_terminate_all.exit203.dmaengine_terminate_all.exit208_crit_edge, label %if.then.i207

dmaengine_terminate_all.exit203.dmaengine_terminate_all.exit208_crit_edge: ; preds = %dmaengine_terminate_all.exit203
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit208

if.then.i207:                                     ; preds = %dmaengine_terminate_all.exit203
  call void @__sanitizer_cov_trace_pc() #10
  %call.i206 = call i32 %136(ptr noundef %132) #8
  br label %dmaengine_terminate_all.exit208

dmaengine_terminate_all.exit208:                  ; preds = %if.then.i207, %dmaengine_terminate_all.exit203.dmaengine_terminate_all.exit208_crit_edge
  %usedma.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 19
  %137 = ptrtoint ptr %usedma.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %usedma.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i209 = icmp eq i8 %138, 0
  br i1 %tobool.not.i209, label %if.then.i210, label %dmaengine_terminate_all.exit208.fsl_lpspi_reset.exit_crit_edge

dmaengine_terminate_all.exit208.fsl_lpspi_reset.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit208
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_lpspi_reset.exit

if.then.i210:                                     ; preds = %dmaengine_terminate_all.exit208
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  call void @arm_heavy_mb() #8
  %base.i.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %139 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %140, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !128
  br label %fsl_lpspi_reset.exit

fsl_lpspi_reset.exit:                             ; preds = %if.then.i210, %dmaengine_terminate_all.exit208.fsl_lpspi_reset.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %141 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %142, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4128768) #8, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @arm_heavy_mb() #8
  %143 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %144, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 196608) #8, !srcloc !128
  br label %cleanup

if.end68:                                         ; preds = %lor.lhs.false
  %call70 = call i32 @wait_for_completion_interruptible(ptr noundef %dma_rx_completion) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %if.end68.do.body76_crit_edge

if.end68.do.body76_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76

lor.lhs.false72:                                  ; preds = %if.end68
  %145 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %slave_aborted, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool74.not = icmp eq i8 %146, 0
  br i1 %tobool74.not, label %lor.lhs.false72.if.end101_crit_edge, label %lor.lhs.false72.do.body76_crit_edge

lor.lhs.false72.do.body76_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76

lor.lhs.false72.if.end101_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

do.body76:                                        ; preds = %lor.lhs.false72.do.body76_crit_edge, %if.end68.do.body76_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_lpspi_dma_transfer.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_lpspi_dma_transfer, %do.end94)) #8
          to label %if.then90 [label %do.end94], !srcloc !140

if.then90:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %fsl_lpspi to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %fsl_lpspi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_lpspi_dma_transfer.__UNIQUE_ID_ddebug245, ptr noundef %148, ptr noundef nonnull @.str.31) #8
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %do.body76
  %149 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dma_tx.i, align 8
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %device_terminate_all.i212 = getelementptr inbounds %struct.dma_device, ptr %152, i32 0, i32 47
  %153 = ptrtoint ptr %device_terminate_all.i212 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device_terminate_all.i212, align 4
  %tobool.not.i213 = icmp eq ptr %154, null
  br i1 %tobool.not.i213, label %do.end94.dmaengine_terminate_all.exit216_crit_edge, label %if.then.i215

do.end94.dmaengine_terminate_all.exit216_crit_edge: ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit216

if.then.i215:                                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #10
  %call.i214 = call i32 %154(ptr noundef %150) #8
  br label %dmaengine_terminate_all.exit216

dmaengine_terminate_all.exit216:                  ; preds = %if.then.i215, %do.end94.dmaengine_terminate_all.exit216_crit_edge
  %155 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dma_rx.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %device_terminate_all.i217 = getelementptr inbounds %struct.dma_device, ptr %158, i32 0, i32 47
  %159 = ptrtoint ptr %device_terminate_all.i217 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %device_terminate_all.i217, align 4
  %tobool.not.i218 = icmp eq ptr %160, null
  br i1 %tobool.not.i218, label %dmaengine_terminate_all.exit216.dmaengine_terminate_all.exit221_crit_edge, label %if.then.i220

dmaengine_terminate_all.exit216.dmaengine_terminate_all.exit221_crit_edge: ; preds = %dmaengine_terminate_all.exit216
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit221

if.then.i220:                                     ; preds = %dmaengine_terminate_all.exit216
  call void @__sanitizer_cov_trace_pc() #10
  %call.i219 = call i32 %160(ptr noundef %156) #8
  br label %dmaengine_terminate_all.exit221

dmaengine_terminate_all.exit221:                  ; preds = %if.then.i220, %dmaengine_terminate_all.exit216.dmaengine_terminate_all.exit221_crit_edge
  call fastcc void @fsl_lpspi_reset(ptr noundef %fsl_lpspi)
  br label %cleanup

if.end101:                                        ; preds = %lor.lhs.false72.if.end101_crit_edge, %if.end31.if.end101_crit_edge
  %usedma.i222 = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 19
  %161 = ptrtoint ptr %usedma.i222 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %usedma.i222, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool.not.i223 = icmp eq i8 %162, 0
  br i1 %tobool.not.i223, label %if.then.i226, label %if.end101.fsl_lpspi_reset.exit231_crit_edge

if.end101.fsl_lpspi_reset.exit231_crit_edge:      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_lpspi_reset.exit231

if.then.i226:                                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  call void @arm_heavy_mb() #8
  %base.i.i224 = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %163 = ptrtoint ptr %base.i.i224 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i.i224, align 4
  %add.ptr.i.i225 = getelementptr i8, ptr %164, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i225, i32 0) #8, !srcloc !128
  br label %fsl_lpspi_reset.exit231

fsl_lpspi_reset.exit231:                          ; preds = %if.then.i226, %if.end101.fsl_lpspi_reset.exit231_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  call void @arm_heavy_mb() #8
  %base.i227 = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %165 = ptrtoint ptr %base.i227 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i227, align 4
  %add.ptr.i228 = getelementptr i8, ptr %166, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228, i32 4128768) #8, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @arm_heavy_mb() #8
  %167 = ptrtoint ptr %base.i227 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base.i227, align 4
  %add.ptr5.i229 = getelementptr i8, ptr %168, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i229, i32 196608) #8, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %fsl_lpspi_reset.exit231, %dmaengine_terminate_all.exit221, %fsl_lpspi_reset.exit, %dmaengine_terminate_all.exit198, %dmaengine_terminate_all.exit188, %if.then.i, %if.then11.cleanup_crit_edge, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %fsl_lpspi_dma_configure.exit.thread
  %retval.0 = phi i32 [ -4, %fsl_lpspi_reset.exit ], [ -4, %dmaengine_terminate_all.exit221 ], [ 0, %fsl_lpspi_reset.exit231 ], [ -110, %dmaengine_terminate_all.exit198 ], [ -110, %dmaengine_terminate_all.exit188 ], [ -22, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge ], [ %retval.0.i159.ph, %fsl_lpspi_dma_configure.exit.thread ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %lor.lhs.false2.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_lpspi_buf_rx_u8(ptr nocapture noundef %fsl_lpspi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %rx_buf = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 8
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_lpspi_buf_tx_u8(ptr nocapture noundef %fsl_lpspi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 9
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %remain = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 12
  %5 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %remain, align 4
  %sub = add i32 %6, -1
  store i32 %sub, ptr %remain, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %val.0) #8, !srcloc !128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_lpspi_buf_rx_u16(ptr nocapture noundef %fsl_lpspi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %rx_buf = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 8
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_lpspi_buf_tx_u16(ptr nocapture noundef %fsl_lpspi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 9
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %remain = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 12
  %5 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %remain, align 4
  %sub = add i32 %6, -2
  store i32 %sub, ptr %remain, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %7) #8, !srcloc !128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_lpspi_buf_rx_u32(ptr nocapture noundef %fsl_lpspi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %rx_buf = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 8
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_lpspi_buf_tx_u32(ptr nocapture noundef %fsl_lpspi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 9
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %remain = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 12
  %5 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %remain, align 4
  %sub = add i32 %6, -4
  store i32 %sub, ptr %remain, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %7) #8, !srcloc !128
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_lpspi_can_dma(ptr nocapture noundef readonly %controller, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %transfer) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 61
  %0 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 8
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %3 to i32
  %sub.i = add nuw nsw i32 %conv, 7
  %div.i123 = lshr i32 %sub.i, 3
  %switch.tableidx = add nsw i32 %div.i123, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast = trunc i32 %switch.tableidx to i4
  %switch.downshift = lshr i4 -5, %switch.cast
  %5 = and i4 %switch.downshift, 1
  %6 = sext i4 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.masked = icmp ne i4 %5, 0
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %switch.masked, %switch.lookup ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_lpspi_config(ptr nocapture noundef %fsl_lpspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_slave = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 5
  %0 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_slave, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @fsl_lpspi_set_bitrate(ptr noundef %fsl_lpspi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %usedma.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 19
  %2 = ptrtoint ptr %usedma.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usedma.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %watermark.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 13
  %4 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %watermark.i, align 4
  %6 = lshr i8 %5, 1
  %7 = zext i8 %6 to i32
  %or.i = mul nuw nsw i32 %7, 65537
  %temp.0.i = select i1 %tobool.not.i, i32 %or.i, i32 %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %temp.0.i) #8
  %base.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_lpspi_set_watermark.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_lpspi_config, %fsl_lpspi_set_watermark.exit)) #8
          to label %if.then12.i [label %fsl_lpspi_set_watermark.exit], !srcloc !140

if.then12.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %fsl_lpspi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fsl_lpspi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_lpspi_set_watermark.__UNIQUE_ID_ddebug240, ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef %temp.0.i) #8
  br label %fsl_lpspi_set_watermark.exit

fsl_lpspi_set_watermark.exit:                     ; preds = %if.then12.i, %if.end3
  %13 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_slave, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  %. = select i1 %tobool5.not, i32 1, i32 50331648
  %mode = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 16, i32 3
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mode, align 4
  %17 = shl i16 %16, 6
  %18 = and i16 %17, 256
  %19 = zext i16 %18 to i32
  %20 = or i32 %., %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #8, !srcloc !128
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr12 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %27 = or i32 %26, 16973824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr20 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %27) #8, !srcloc !128
  %30 = ptrtoint ptr %usedma.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %usedma.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool21.not = icmp eq i8 %31, 0
  %spec.store.select = select i1 %tobool21.not, i32 0, i32 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr28 = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %spec.store.select) #8, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %fsl_lpspi_set_watermark.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %fsl_lpspi_set_watermark.exit ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_lpspi_set_bitrate(ptr nocapture noundef %fsl_lpspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config.sroa.4.0.config1.sroa_idx = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 16, i32 4
  %0 = ptrtoint ptr %config.sroa.4.0.config1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %config.sroa.4.0.copyload50 = load i32, ptr %config.sroa.4.0.config1.sroa_idx, align 4
  %clk_per = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 4
  %1 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk_per, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %2) #8
  %div58 = lshr i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %config.sroa.4.0.copyload50, i32 %div58)
  %cmp = icmp ugt i32 %config.sroa.4.0.copyload50, %div58
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %div5 = udiv i32 %call, %config.sroa.4.0.copyload50
  %sub = add i32 %div5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub)
  %cmp8 = icmp ult i32 %sub, 256
  br i1 %cmp8, label %for.cond.preheader.do.body18_crit_edge, label %for.inc

for.cond.preheader.do.body18_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %fsl_lpspi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fsl_lpspi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.17) #11
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %div759.1 = lshr i32 %div5, 1
  %sub.1 = add nsw i32 %div759.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.1)
  %cmp8.1 = icmp ult i32 %sub.1, 256
  br i1 %cmp8.1, label %for.inc.do.body18_crit_edge, label %for.inc.1

for.inc.do.body18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

for.inc.1:                                        ; preds = %for.inc
  %div759.2 = lshr i32 %div5, 2
  %sub.2 = add nsw i32 %div759.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.2)
  %cmp8.2 = icmp ult i32 %sub.2, 256
  br i1 %cmp8.2, label %for.inc.1.do.body18_crit_edge, label %for.inc.2

for.inc.1.do.body18_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

for.inc.2:                                        ; preds = %for.inc.1
  %div759.3 = lshr i32 %div5, 3
  %sub.3 = add nsw i32 %div759.3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.3)
  %cmp8.3 = icmp ult i32 %sub.3, 256
  br i1 %cmp8.3, label %for.inc.2.do.body18_crit_edge, label %for.inc.3

for.inc.2.do.body18_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

for.inc.3:                                        ; preds = %for.inc.2
  %div759.4 = lshr i32 %div5, 4
  %sub.4 = add nsw i32 %div759.4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.4)
  %cmp8.4 = icmp ult i32 %sub.4, 256
  br i1 %cmp8.4, label %for.inc.3.do.body18_crit_edge, label %for.inc.4

for.inc.3.do.body18_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

for.inc.4:                                        ; preds = %for.inc.3
  %div759.5 = lshr i32 %div5, 5
  %sub.5 = add nsw i32 %div759.5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.5)
  %cmp8.5 = icmp ult i32 %sub.5, 256
  br i1 %cmp8.5, label %for.inc.4.do.body18_crit_edge, label %for.inc.5

for.inc.4.do.body18_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

for.inc.5:                                        ; preds = %for.inc.4
  %div759.6 = lshr i32 %div5, 6
  %sub.6 = add nsw i32 %div759.6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.6)
  %cmp8.6 = icmp ult i32 %sub.6, 256
  br i1 %cmp8.6, label %for.inc.5.do.body18_crit_edge, label %for.inc.6

for.inc.5.do.body18_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

for.inc.6:                                        ; preds = %for.inc.5
  %div759.7 = lshr i32 %div5, 7
  %sub.7 = add nsw i32 %div759.7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.7)
  %cmp8.7 = icmp ult i32 %sub.7, 256
  br i1 %cmp8.7, label %for.inc.6.do.body18_crit_edge, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.6.do.body18_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.body18:                                        ; preds = %for.inc.6.do.body18_crit_edge, %for.inc.5.do.body18_crit_edge, %for.inc.4.do.body18_crit_edge, %for.inc.3.do.body18_crit_edge, %for.inc.2.do.body18_crit_edge, %for.inc.1.do.body18_crit_edge, %for.inc.do.body18_crit_edge, %for.cond.preheader.do.body18_crit_edge
  %conv66.lcssa = phi i32 [ 0, %for.cond.preheader.do.body18_crit_edge ], [ 1, %for.inc.do.body18_crit_edge ], [ 2, %for.inc.1.do.body18_crit_edge ], [ 3, %for.inc.2.do.body18_crit_edge ], [ 4, %for.inc.3.do.body18_crit_edge ], [ 5, %for.inc.4.do.body18_crit_edge ], [ 6, %for.inc.5.do.body18_crit_edge ], [ 7, %for.inc.6.do.body18_crit_edge ]
  %sub.lcssa = phi i32 [ %sub, %for.cond.preheader.do.body18_crit_edge ], [ %sub.1, %for.inc.do.body18_crit_edge ], [ %sub.2, %for.inc.1.do.body18_crit_edge ], [ %sub.3, %for.inc.2.do.body18_crit_edge ], [ %sub.4, %for.inc.3.do.body18_crit_edge ], [ %sub.5, %for.inc.4.do.body18_crit_edge ], [ %sub.6, %for.inc.5.do.body18_crit_edge ], [ %sub.7, %for.inc.6.do.body18_crit_edge ]
  %5 = trunc i32 %conv66.lcssa to i8
  %prescale12 = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 16, i32 2
  %6 = ptrtoint ptr %prescale12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %prescale12, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %shl21 = shl nuw nsw i32 %sub.lcssa, 8
  %or = or i32 %shl21, %sub.lcssa
  %7 = shl nuw nsw i32 %sub.lcssa, 15
  %shl22 = and i32 %7, -65536
  %or23 = or i32 %or, %shl22
  %8 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_lpspi_set_bitrate.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_lpspi_set_bitrate, %cleanup)) #8
          to label %if.then29 [label %cleanup], !srcloc !140

if.then29:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %fsl_lpspi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fsl_lpspi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_lpspi_set_bitrate.__UNIQUE_ID_ddebug241, ptr noundef %12, ptr noundef nonnull @.str.20, i32 noundef %call, i32 noundef %config.sroa.4.0.copyload50, i32 noundef %conv66.lcssa, i32 noundef %sub.lcssa) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body18, %for.inc.6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then29 ], [ 0, %do.body18 ], [ -22, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_lpspi_dma_rx_callback(ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx_completion = getelementptr inbounds %struct.fsl_lpspi_data, ptr %cookie, i32 0, i32 20
  tail call void @complete(ptr noundef %dma_rx_completion) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_lpspi_dma_tx_callback(ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_tx_completion = getelementptr inbounds %struct.fsl_lpspi_data, ptr %cookie, i32 0, i32 21
  tail call void @complete(ptr noundef %dma_tx_completion) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_lpspi_reset(ptr nocapture noundef readonly %fsl_lpspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usedma = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 19
  %0 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %usedma, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !128
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4128768) #8, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 196608) #8, !srcloc !128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_lpspi_write_tx_fifo(ptr noundef %fsl_lpspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 92
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !125
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %conv = trunc i32 %3 to i8
  %txfifosize = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 14
  %4 = ptrtoint ptr %txfifosize to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %txfifosize, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %conv)
  %cmp40 = icmp ugt i8 %5, %conv
  br i1 %cmp40, label %while.body.lr.ph, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

while.body.lr.ph:                                 ; preds = %entry
  %remain = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 12
  %tx = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %txfifo_cnt.041 = phi i8 [ %conv, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %remain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then10, label %if.end

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx, align 4
  tail call void %9(ptr noundef %fsl_lpspi) #8
  %inc = add nuw i8 %txfifo_cnt.041, 1
  %10 = ptrtoint ptr %txfifosize to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %txfifosize, align 1
  %cmp = icmp ult i8 %inc, %11
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.then10:                                        ; preds = %while.body
  %is_slave = getelementptr inbounds %struct.fsl_lpspi_data, ptr %fsl_lpspi, i32 0, i32 5
  %12 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_slave, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %if.then12, label %if.then10.if.end23_crit_edge

if.then10.if.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 96
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %17 = and i32 %16, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %19, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %17) #8, !srcloc !128
  br label %if.end23

if.end23:                                         ; preds = %if.then12, %if.then10.if.end23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 131072) #8, !srcloc !128
  br label %if.end24

if.else:                                          ; preds = %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr.i39 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 16777216) #8, !srcloc !128
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_lpspi_wait_for_completion(ptr nocapture noundef readonly %controller) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %controller, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %is_slave = getelementptr inbounds %struct.fsl_lpspi_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_slave, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %xfer_done12 = getelementptr inbounds %struct.fsl_lpspi_data, ptr %1, i32 0, i32 17
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @wait_for_completion_interruptible(ptr noundef %xfer_done12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %slave_aborted = getelementptr inbounds %struct.fsl_lpspi_data, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %slave_aborted, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_lpspi_wait_for_completion.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_lpspi_wait_for_completion, %cleanup)) #8
          to label %if.then10 [label %cleanup], !srcloc !140

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_lpspi_wait_for_completion.__UNIQUE_ID_ddebug242, ptr noundef %7, ptr noundef nonnull @.str.38) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %call13 = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_done12, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body16, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_lpspi_wait_for_completion.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_lpspi_wait_for_completion, %cleanup)) #8
          to label %if.then30 [label %cleanup], !srcloc !140

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_lpspi_wait_for_completion.__UNIQUE_ID_ddebug243, ptr noundef %9, ptr noundef nonnull @.str.39) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body16, %if.else.cleanup_crit_edge, %if.then10, %do.body, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %if.then10 ], [ -110, %if.then30 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -4, %do.body ], [ -110, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_lpspi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_lpspi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_lpspi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk_per = getelementptr inbounds %struct.fsl_lpspi_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %clk_ipg = getelementptr inbounds %struct.fsl_lpspi_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_lpspi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk_per = getelementptr inbounds %struct.fsl_lpspi_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_per, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk_ipg = getelementptr inbounds %struct.fsl_lpspi_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ipg, align 4
  %call.i15 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.end.i19:                                       ; preds = %if.end
  %call1.i17 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end.i19.cleanup_crit_edge, label %if.then3.i20

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %if.then5

if.then5:                                         ; preds = %if.then3.i20, %if.end.if.then5_crit_edge
  %retval.0.i21.ph = phi i32 [ %call1.i17, %if.then3.i20 ], [ %call.i15, %if.end.if.then5_crit_edge ]
  %8 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.then5 ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i21.ph, %if.then5 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i19.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !99, !100, !101, !103, !105, !106, !108, !110, !112, !113, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_spi_fsl_lpspi__248_987_fsl_lpspi_driver_init6, !1, !"__initcall__kmod_spi_fsl_lpspi__248_987_fsl_lpspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 987, i32 1}
!2 = !{ptr @__exitcall_fsl_lpspi_driver_exit, !1, !"__exitcall_fsl_lpspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description249, !4, !"__UNIQUE_ID_description249", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 989, i32 1}
!5 = !{ptr @__UNIQUE_ID_author250, !6, !"__UNIQUE_ID_author250", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 990, i32 1}
!7 = !{ptr @__UNIQUE_ID_file251, !8, !"__UNIQUE_ID_file251", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 991, i32 1}
!9 = !{ptr @__UNIQUE_ID_license252, !8, !"__UNIQUE_ID_license252", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 980, i32 11}
!12 = !{ptr @fsl_lpspi_driver, !13, !"fsl_lpspi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 978, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 825, i32 58}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 842, i32 7}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 875, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @fsl_lpspi_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @fsl_lpspi_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 879, i32 48}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 885, i32 48}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 898, i32 3}
!32 = !{ptr @fsl_lpspi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @fsl_lpspi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 911, i32 3}
!36 = !{ptr @fsl_lpspi_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @fsl_lpspi_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 915, i32 34}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 306, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @fsl_lpspi_set_bitrate._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @fsl_lpspi_set_bitrate._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 325, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @fsl_lpspi_set_bitrate.__UNIQUE_ID_ddebug241, !46, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 294, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @fsl_lpspi_set_watermark.__UNIQUE_ID_ddebug240, !50, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 279, i32 2}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @fsl_lpspi_set_cmd.__UNIQUE_ID_ddebug239, !54, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 595, i32 4}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @fsl_lpspi_dma_transfer._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @fsl_lpspi_dma_transfer._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 605, i32 4}
!64 = !{ptr @fsl_lpspi_dma_transfer._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @fsl_lpspi_dma_transfer._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 614, i32 4}
!68 = !{ptr @fsl_lpspi_dma_transfer.__UNIQUE_ID_ddebug244, !67, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 624, i32 4}
!71 = !{ptr @fsl_lpspi_dma_transfer.__UNIQUE_ID_ddebug245, !70, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 359, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @fsl_lpspi_dma_configure._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @fsl_lpspi_dma_configure._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 370, i32 3}
!79 = !{ptr @fsl_lpspi_dma_configure._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @fsl_lpspi_dma_configure._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 483, i32 4}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @fsl_lpspi_wait_for_completion.__UNIQUE_ID_ddebug242, !82, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 488, i32 4}
!87 = !{ptr @fsl_lpspi_wait_for_completion.__UNIQUE_ID_ddebug243, !86, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 205, i32 3}
!90 = !{ptr @lpspi_prepare_xfer_hardware._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @lpspi_prepare_xfer_hardware._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @init_completion.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../include/linux/completion.h", i32 87, i32 2}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 658, i32 45}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 661, i32 3}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @fsl_lpspi_dma_init.__UNIQUE_ID_ddebug246, !98, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 667, i32 45}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 670, i32 3}
!105 = !{ptr @fsl_lpspi_dma_init.__UNIQUE_ID_ddebug247, !104, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!106 = !{ptr @fsl_lpspi_dt_ids, !107, !"fsl_lpspi_dt_ids", i1 false, i1 false}
!107 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 125, i32 34}
!108 = !{ptr @fsl_lpspi_pm_ops, !109, !"fsl_lpspi_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 972, i32 32}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/spi/spi-fsl-lpspi.c", i32 963, i32 3}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @fsl_lpspi_resume._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @fsl_lpspi_resume._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i8 0, i8 2}
!125 = !{i64 6329235}
!126 = !{i64 2154609949}
!127 = !{i64 2154558661}
!128 = !{i64 6328817}
!129 = !{i64 2154584153}
!130 = !{i64 2154584725}
!131 = !{i64 2148261831}
!132 = !{i64 746654, i64 746679, i64 746701, i64 746717, i64 746729, i64 746749, i64 746773, i64 746789, i64 746801}
!133 = !{i64 2148262019}
!134 = !{i64 2154598226}
!135 = !{i64 2154598737}
!136 = !{i64 2154562698}
!137 = !{i64 2154599496}
!138 = !{i64 2154599833}
!139 = !{i64 2154604722}
!140 = !{i64 2148744227, i64 2148744232, i64 2148744245, i64 2148744289, i64 2148744323, i64 2148744344}
!141 = !{i64 2154563257}
!142 = !{i64 2154554367}
!143 = !{i64 2154554974}
!144 = !{i64 2154556001}
!145 = !{i64 2154556614}
!146 = !{i64 2154557641}
!147 = !{i64 2154558254}
!148 = !{i64 2154565852}
!149 = !{i64 2154577449}
!150 = !{i64 2154578143}
!151 = !{i64 2154578614}
!152 = !{i64 2154579186}
!153 = !{i64 2154570368}
!154 = !{i64 2154561020}
!155 = !{i64 2154561531}
!156 = !{i64 2154561840}
