; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-s3c64xx.c_pt.bc'
source_filename = "../drivers/spi/spi-s3c64xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.s3c64xx_spi_port_config = type { [6 x i32], i32, i32, i32, i8, i8, i8 }
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
%struct.s3c64xx_spi_info = type { i32, i32, i8, ptr }
%struct.s3c64xx_spi_driver_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.completion, i32, i32, i32, i32, %struct.s3c64xx_spi_dma_data, %struct.s3c64xx_spi_dma_data, ptr, i32 }
%struct.s3c64xx_spi_dma_data = type { ptr, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.s3c64xx_spi_csinfo = type { i8, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__UNIQUE_ID_alias243 = internal constant [39 x i8] c"spi_s3c64xx.alias=platform:s3c64xx-spi\00", section ".modinfo", align 1
@__initcall__kmod_spi_s3c64xx__244_1491_s3c64xx_spi_driver_init6 = internal global ptr @s3c64xx_spi_driver_init, section ".initcall6.init", align 4
@s3c64xx_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c64xx_spi_probe, ptr @s3c64xx_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c64xx_spi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c64xx_spi_pm, ptr null, ptr null }, ptr @s3c64xx_spi_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s3c64xx_spi_driver_exit = internal global ptr @s3c64xx_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [60 x i8] c"spi_s3c64xx.author=Jaswinder Singh <jassi.brar@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [54 x i8] c"spi_s3c64xx.description=S3C64XX SPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [41 x i8] c"spi_s3c64xx.file=drivers/spi/spi-s3c64xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [24 x i8] c"spi_s3c64xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c64xx-spi\00", [20 x i8] zeroinitializer }, align 32
@s3c64xx_spi_dt_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2443-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2443_spi_port_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c6410_spi_port_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_spi_port_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_spi_port_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_spi_port_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_spi_port_config }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@s3c64xx_spi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s3c64xx_spi_suspend, ptr @s3c64xx_spi_resume, ptr @s3c64xx_spi_suspend, ptr @s3c64xx_spi_resume, ptr @s3c64xx_spi_suspend, ptr @s3c64xx_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c64xx_spi_runtime_suspend, ptr @s3c64xx_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3c64xx_spi_driver_ids = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2443-spi\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @s3c2443_spi_port_config to i32) }, %struct.platform_device_id { [20 x i8] c"s3c6410-spi\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @s3c6410_spi_port_config to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1078, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"platform_data missing!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c64xx_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-s3c64xx.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr = internal global ptr @s3c64xx_spi_probe._entry, section ".printk_index", align 4
@s3c64xx_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1084, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to get SPI MEM resource\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.8 = internal global ptr @s3c64xx_spi_probe._entry.6, section ".printk_index", align 4
@s3c64xx_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1090, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get IRQ: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.12 = internal global ptr @s3c64xx_spi_probe._entry.9, section ".printk_index", align 4
@s3c64xx_spi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1097, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to allocate SPI Master\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.15 = internal global ptr @s3c64xx_spi_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get alias id, errno %d\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.19 = internal global ptr @s3c64xx_spi_probe._entry.17, section ".printk_index", align 4
@s3c64xx_spi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to config gpio\0A\00", [41 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.22 = internal global ptr @s3c64xx_spi_probe._entry.20, section ".printk_index", align 4
@s3c64xx_spi_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to acquire clock 'spi'\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.25 = internal global ptr @s3c64xx_spi_probe._entry.23, section ".printk_index", align 4
@s3c64xx_spi_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't enable clock 'spi'\0A\00", [35 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.28 = internal global ptr @s3c64xx_spi_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_busclk%d\00", [19 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to acquire clock '%s'\0A\00", [34 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.32 = internal global ptr @s3c64xx_spi_probe._entry.30, section ".printk_index", align 4
@s3c64xx_spi_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't enable clock '%s'\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.35 = internal global ptr @s3c64xx_spi_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_ioclk\00", [22 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 1187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to acquire 'ioclk'\0A\00", [37 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.39 = internal global ptr @s3c64xx_spi_probe._entry.37, section ".printk_index", align 4
@s3c64xx_spi_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 1194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't enable clock 'ioclk'\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.42 = internal global ptr @s3c64xx_spi_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 1203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get RX DMA channel\0A\00", [34 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.46 = internal global ptr @s3c64xx_spi_probe._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.2, ptr @.str.3, i32 1209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get TX DMA channel\0A\00", [34 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.50 = internal global ptr @s3c64xx_spi_probe._entry.48, section ".printk_index", align 4
@s3c64xx_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&sdd->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi-s3c64xx\00", [20 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.2, ptr @.str.3, i32 1231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.55 = internal global ptr @s3c64xx_spi_probe._entry.53, section ".printk_index", align 4
@s3c64xx_spi_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.2, ptr @.str.3, i32 1241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot register SPI master: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe._entry_ptr.58 = internal global ptr @s3c64xx_spi_probe._entry.56, section ".printk_index", align 4
@s3c64xx_spi_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.2, ptr @.str.3, ptr @.str.60, i8 1, i8 55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_s3c64xx\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Samsung SoC SPI Driver loaded for Bus SPI-%d with %d Slaves attached\0A\00", [58 x i8] zeroinitializer }, align 32
@s3c64xx_spi_probe.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.2, ptr @.str.3, ptr @.str.61, i8 1, i8 56, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09IOmem=[%pR]\09FIFO %dbytes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,spi-src-clk\00", [44 x i8] zeroinitializer }, align 32
@s3c64xx_spi_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 1028, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"spi bus clock parent not specified, using clock at index 0 as parent\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s3c64xx_spi_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@s3c64xx_spi_parse_dt._entry_ptr = internal global ptr @s3c64xx_spi_parse_dt._entry, section ".printk_index", align 4
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@s3c64xx_spi_parse_dt._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.64, ptr @.str.3, i32 1035, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"number of chip select lines not specified, assuming 1 chip select line\0A\00", [56 x i8] zeroinitializer }, align 32
@s3c64xx_spi_parse_dt._entry_ptr.68 = internal global ptr @s3c64xx_spi_parse_dt._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no-cs-readback\00", [17 x i8] zeroinitializer }, align 32
@s3c64xx_spi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 843, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No CS for SPI(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c64xx_spi_setup\00", [46 x i8] zeroinitializer }, align 32
@s3c64xx_spi_setup._entry_ptr = internal global ptr @s3c64xx_spi_setup._entry, section ".printk_index", align 4
@s3c64xx_spi_setup._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 854, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get /CS gpio [%d]: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@s3c64xx_spi_setup._entry_ptr.74 = internal global ptr @s3c64xx_spi_setup._entry.72, section ".printk_index", align 4
@s3c64xx_spi_setup._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.3, i32 894, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't set %dHz transfer speed\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c64xx_spi_setup._entry_ptr.77 = internal global ptr @s3c64xx_spi_setup._entry.75, section ".printk_index", align 4
@s3c64xx_get_slave_ctrldata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device node not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s3c64xx_get_slave_ctrldata\00", [37 x i8] zeroinitializer }, align 32
@s3c64xx_get_slave_ctrldata._entry_ptr = internal global ptr @s3c64xx_get_slave_ctrldata._entry, section ".printk_index", align 4
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"controller-data\00", [16 x i8] zeroinitializer }, align 32
@s3c64xx_get_slave_ctrldata._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.79, ptr @.str.3, i32 801, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"child node 'controller-data' not found\0A\00", [56 x i8] zeroinitializer }, align 32
@s3c64xx_get_slave_ctrldata._entry_ptr.83 = internal global ptr @s3c64xx_get_slave_ctrldata._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,spi-feedback-delay\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@s3c64xx_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to enable data path for transfer: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s3c64xx_spi_transfer_one\00", [39 x i8] zeroinitializer }, align 32
@s3c64xx_spi_transfer_one._entry_ptr = internal global ptr @s3c64xx_spi_transfer_one._entry, section ".printk_index", align 4
@s3c64xx_spi_transfer_one._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 738, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"I/O Error: rx-%d tx-%d rx-%c tx-%c len-%d dma-%d res-(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@s3c64xx_spi_transfer_one._entry_ptr.89 = internal global ptr @s3c64xx_spi_transfer_one._entry.87, section ".printk_index", align 4
@s3c64xx_spi_transfer_one._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.3, i32 747, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX residue: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@s3c64xx_spi_transfer_one._entry_ptr.92 = internal global ptr @s3c64xx_spi_transfer_one._entry.90, section ".printk_index", align 4
@s3c64xx_spi_transfer_one._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.3, i32 754, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX residue: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@s3c64xx_spi_transfer_one._entry_ptr.95 = internal global ptr @s3c64xx_spi_transfer_one._entry.93, section ".printk_index", align 4
@prepare_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to prepare %s scatterlist\00", [63 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"prepare_dma\00", [20 x i8] zeroinitializer }, align 32
@prepare_dma._entry_ptr = internal global ptr @prepare_dma._entry, section ".printk_index", align 4
@prepare_dma._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.3, i32 315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DMA submission failed\00", [42 x i8] zeroinitializer }, align 32
@prepare_dma._entry_ptr.100 = internal global ptr @prepare_dma._entry.98, section ".printk_index", align 4
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@s3c64xx_flush_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 221, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Timed out flushing TX FIFO\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c64xx_flush_fifo\00", [45 x i8] zeroinitializer }, align 32
@s3c64xx_flush_fifo._entry_ptr = internal global ptr @s3c64xx_flush_fifo._entry, section ".printk_index", align 4
@s3c64xx_flush_fifo._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.3, i32 234, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Timed out flushing RX FIFO\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c64xx_flush_fifo._entry_ptr.105 = internal global ptr @s3c64xx_flush_fifo._entry.103, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@s3c64xx_spi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 954, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX overrun\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c64xx_spi_irq\00", [16 x i8] zeroinitializer }, align 32
@s3c64xx_spi_irq._entry_ptr = internal global ptr @s3c64xx_spi_irq._entry, section ".printk_index", align 4
@s3c64xx_spi_irq._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.3, i32 958, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RX underrun\0A\00", [19 x i8] zeroinitializer }, align 32
@s3c64xx_spi_irq._entry_ptr.111 = internal global ptr @s3c64xx_spi_irq._entry.109, section ".printk_index", align 4
@s3c64xx_spi_irq._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.3, i32 962, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX overrun\0A\00", [20 x i8] zeroinitializer }, align 32
@s3c64xx_spi_irq._entry_ptr.114 = internal global ptr @s3c64xx_spi_irq._entry.112, section ".printk_index", align 4
@s3c64xx_spi_irq._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.108, ptr @.str.3, i32 966, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX underrun\0A\00", [19 x i8] zeroinitializer }, align 32
@s3c64xx_spi_irq._entry_ptr.117 = internal global ptr @s3c64xx_spi_irq._entry.115, section ".printk_index", align 4
@s3c2443_spi_port_config = internal constant { %struct.s3c64xx_spi_port_config, [56 x i8] } { %struct.s3c64xx_spi_port_config { [6 x i32] [i32 127, i32 0, i32 0, i32 0, i32 0, i32 0], i32 13, i32 21, i32 0, i8 1, i8 0, i8 0 }, [56 x i8] zeroinitializer }, align 32
@s3c6410_spi_port_config = internal constant { %struct.s3c64xx_spi_port_config, [56 x i8] } { %struct.s3c64xx_spi_port_config { [6 x i32] [i32 127, i32 127, i32 0, i32 0, i32 0, i32 0], i32 13, i32 21, i32 0, i8 0, i8 0, i8 0 }, [56 x i8] zeroinitializer }, align 32
@s5pv210_spi_port_config = internal constant { %struct.s3c64xx_spi_port_config, [56 x i8] } { %struct.s3c64xx_spi_port_config { [6 x i32] [i32 511, i32 127, i32 0, i32 0, i32 0, i32 0], i32 15, i32 25, i32 0, i8 1, i8 0, i8 0 }, [56 x i8] zeroinitializer }, align 32
@exynos4_spi_port_config = internal constant { %struct.s3c64xx_spi_port_config, [56 x i8] } { %struct.s3c64xx_spi_port_config { [6 x i32] [i32 511, i32 127, i32 127, i32 0, i32 0, i32 0], i32 15, i32 25, i32 2, i8 1, i8 1, i8 0 }, [56 x i8] zeroinitializer }, align 32
@exynos7_spi_port_config = internal constant { %struct.s3c64xx_spi_port_config, [56 x i8] } { %struct.s3c64xx_spi_port_config { [6 x i32] [i32 511, i32 127, i32 127, i32 127, i32 127, i32 511], i32 15, i32 25, i32 2, i8 1, i8 1, i8 0 }, [56 x i8] zeroinitializer }, align 32
@exynos5433_spi_port_config = internal constant { %struct.s3c64xx_spi_port_config, [56 x i8] } { %struct.s3c64xx_spi_port_config { [6 x i32] [i32 511, i32 127, i32 127, i32 127, i32 127, i32 511], i32 15, i32 25, i32 2, i8 1, i8 1, i8 1 }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"s3c64xx_spi_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1479, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1481, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"s3c64xx_spi_dt_match\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1456, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"s3c64xx_spi_pm\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1391, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant [23 x i8] c"s3c64xx_spi_driver_ids\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1445, i32 40 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1078, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1084, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1090, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1097, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1110, i32 44 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1112, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1150, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1158, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1165, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1169, i32 20 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1172, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1180, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1185, i32 41 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1187, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1194, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1201, i32 49 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1203, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1207, i32 49 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1209, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1224, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1228, i32 5 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1230, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1241, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1245, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1247, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1027, i32 41 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1028, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1034, i32 41 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1035, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1041, i32 51 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 843, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 852, i32 5 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 893, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 795, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 799, i32 43 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 801, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 811, i32 32 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 723, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 733, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 747, i32 6 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 754, i32 6 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 304, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 315, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 221, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 234, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 87, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 954, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 958, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 962, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 966, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant [24 x i8] c"s3c2443_spi_port_config\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1397, i32 45 }
@___asan_gen_.438 = private unnamed_addr constant [24 x i8] c"s3c6410_spi_port_config\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1404, i32 45 }
@___asan_gen_.441 = private unnamed_addr constant [24 x i8] c"s5pv210_spi_port_config\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1410, i32 45 }
@___asan_gen_.444 = private unnamed_addr constant [24 x i8] c"exynos4_spi_port_config\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1417, i32 45 }
@___asan_gen_.447 = private unnamed_addr constant [24 x i8] c"exynos7_spi_port_config\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1426, i32 45 }
@___asan_gen_.450 = private unnamed_addr constant [27 x i8] c"exynos5433_spi_port_config\00", align 1
@___asan_gen_.451 = private constant [29 x i8] c"../drivers/spi/spi-s3c64xx.c\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1435, i32 45 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_s3c64xx_spi_driver_exit, ptr @__initcall__kmod_spi_s3c64xx__244_1491_s3c64xx_spi_driver_init6, ptr @prepare_dma._entry, ptr @prepare_dma._entry.98, ptr @prepare_dma._entry_ptr, ptr @prepare_dma._entry_ptr.100, ptr @s3c64xx_flush_fifo._entry, ptr @s3c64xx_flush_fifo._entry.103, ptr @s3c64xx_flush_fifo._entry_ptr, ptr @s3c64xx_flush_fifo._entry_ptr.105, ptr @s3c64xx_get_slave_ctrldata._entry, ptr @s3c64xx_get_slave_ctrldata._entry.81, ptr @s3c64xx_get_slave_ctrldata._entry_ptr, ptr @s3c64xx_get_slave_ctrldata._entry_ptr.83, ptr @s3c64xx_spi_driver_exit, ptr @s3c64xx_spi_irq._entry, ptr @s3c64xx_spi_irq._entry.109, ptr @s3c64xx_spi_irq._entry.112, ptr @s3c64xx_spi_irq._entry.115, ptr @s3c64xx_spi_irq._entry_ptr, ptr @s3c64xx_spi_irq._entry_ptr.111, ptr @s3c64xx_spi_irq._entry_ptr.114, ptr @s3c64xx_spi_irq._entry_ptr.117, ptr @s3c64xx_spi_parse_dt._entry, ptr @s3c64xx_spi_parse_dt._entry.66, ptr @s3c64xx_spi_parse_dt._entry_ptr, ptr @s3c64xx_spi_parse_dt._entry_ptr.68, ptr @s3c64xx_spi_probe._entry, ptr @s3c64xx_spi_probe._entry.13, ptr @s3c64xx_spi_probe._entry.17, ptr @s3c64xx_spi_probe._entry.20, ptr @s3c64xx_spi_probe._entry.23, ptr @s3c64xx_spi_probe._entry.26, ptr @s3c64xx_spi_probe._entry.30, ptr @s3c64xx_spi_probe._entry.33, ptr @s3c64xx_spi_probe._entry.37, ptr @s3c64xx_spi_probe._entry.40, ptr @s3c64xx_spi_probe._entry.44, ptr @s3c64xx_spi_probe._entry.48, ptr @s3c64xx_spi_probe._entry.53, ptr @s3c64xx_spi_probe._entry.56, ptr @s3c64xx_spi_probe._entry.6, ptr @s3c64xx_spi_probe._entry.9, ptr @s3c64xx_spi_probe._entry_ptr, ptr @s3c64xx_spi_probe._entry_ptr.12, ptr @s3c64xx_spi_probe._entry_ptr.15, ptr @s3c64xx_spi_probe._entry_ptr.19, ptr @s3c64xx_spi_probe._entry_ptr.22, ptr @s3c64xx_spi_probe._entry_ptr.25, ptr @s3c64xx_spi_probe._entry_ptr.28, ptr @s3c64xx_spi_probe._entry_ptr.32, ptr @s3c64xx_spi_probe._entry_ptr.35, ptr @s3c64xx_spi_probe._entry_ptr.39, ptr @s3c64xx_spi_probe._entry_ptr.42, ptr @s3c64xx_spi_probe._entry_ptr.46, ptr @s3c64xx_spi_probe._entry_ptr.50, ptr @s3c64xx_spi_probe._entry_ptr.55, ptr @s3c64xx_spi_probe._entry_ptr.58, ptr @s3c64xx_spi_probe._entry_ptr.8, ptr @s3c64xx_spi_setup._entry, ptr @s3c64xx_spi_setup._entry.72, ptr @s3c64xx_spi_setup._entry.75, ptr @s3c64xx_spi_setup._entry_ptr, ptr @s3c64xx_spi_setup._entry_ptr.74, ptr @s3c64xx_spi_setup._entry_ptr.77, ptr @s3c64xx_spi_transfer_one._entry, ptr @s3c64xx_spi_transfer_one._entry.87, ptr @s3c64xx_spi_transfer_one._entry.90, ptr @s3c64xx_spi_transfer_one._entry.93, ptr @s3c64xx_spi_transfer_one._entry_ptr, ptr @s3c64xx_spi_transfer_one._entry_ptr.89, ptr @s3c64xx_spi_transfer_one._entry_ptr.92, ptr @s3c64xx_spi_transfer_one._entry_ptr.95, ptr @s3c64xx_spi_driver, ptr @.str, ptr @s3c64xx_spi_dt_match, ptr @s3c64xx_spi_pm, ptr @s3c64xx_spi_driver_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @s3c64xx_spi_probe.__key, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @init_completion.__key, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @s3c2443_spi_port_config, ptr @s3c6410_spi_port_config, ptr @s5pv210_spi_port_config, ptr @exynos4_spi_port_config, ptr @exynos7_spi_port_config, ptr @exynos5433_spi_port_config], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_dt_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_driver_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_parse_dt._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_setup._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_setup._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_get_slave_ctrldata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_get_slave_ctrldata._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_transfer_one._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_transfer_one._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_transfer_one._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_dma._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_flush_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_flush_fifo._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_irq._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_irq._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi_irq._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2443_spi_port_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c6410_spi_port_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_spi_port_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_spi_port_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_spi_port_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_spi_port_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c64xx_spi_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c64xx_spi_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %temp.i = alloca i32, align 4
  %clk_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clk_name) #11
  %tobool.not = icmp eq ptr %1, null
  %2 = call ptr @memset(ptr %clk_name, i32 255, i32 16)
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %do.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #11
  %5 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %temp.i, align 4, !annotation !230
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %s3c64xx_spi_parse_dt.exit.thread, label %if.end.i

s3c64xx_spi_parse_dt.exit.thread:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #11
  br label %if.then6

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.62, ptr noundef nonnull %temp.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.63) #14
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %do.end.i
  %storemerge.i = phi i32 [ %9, %if.else.i ], [ 0, %do.end.i ]
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge.i, ptr %call.i.i, align 4
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i.i31.i = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.65, ptr noundef nonnull %temp.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i31.i)
  %tobool9.not.i = icmp sgt i32 %call.i.i31.i, -1
  br i1 %tobool9.not.i, label %if.else14.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.67) #14
  br label %s3c64xx_spi_parse_dt.exit

if.else14.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp.i, align 4
  br label %s3c64xx_spi_parse_dt.exit

s3c64xx_spi_parse_dt.exit:                        ; preds = %if.else14.i, %do.end13.i
  %.sink.i = phi i32 [ %14, %if.else14.i ], [ 1, %do.end13.i ]
  %15 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %call.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i, ptr %15, align 4
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i32.i = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.69, ptr noundef null) #11
  %tobool.i.i = icmp ne ptr %call.i32.i, null
  %no_cs.i = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %call.i.i, i32 0, i32 2
  %frombool.i = zext i1 %tobool.i.i to i8
  %19 = ptrtoint ptr %no_cs.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool.i, ptr %no_cs.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #11
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %s3c64xx_spi_parse_dt.exit.if.then6_crit_edge, label %s3c64xx_spi_parse_dt.exit.if.end12_crit_edge

s3c64xx_spi_parse_dt.exit.if.end12_crit_edge:     ; preds = %s3c64xx_spi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

s3c64xx_spi_parse_dt.exit.if.then6_crit_edge:     ; preds = %s3c64xx_spi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %s3c64xx_spi_parse_dt.exit.if.then6_crit_edge, %s3c64xx_spi_parse_dt.exit.thread
  %retval.0.i443488 = phi ptr [ inttoptr (i32 -12 to ptr), %s3c64xx_spi_parse_dt.exit.thread ], [ %call.i.i, %s3c64xx_spi_parse_dt.exit.if.then6_crit_edge ]
  %20 = ptrtoint ptr %retval.0.i443488 to i32
  br label %cleanup291

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup291

if.end12:                                         ; preds = %s3c64xx_spi_parse_dt.exit.if.end12_crit_edge, %entry.if.end12_crit_edge
  %sci.0.ph = phi ptr [ %call.i.i, %s3c64xx_spi_parse_dt.exit.if.end12_crit_edge ], [ %1, %entry.if.end12_crit_edge ]
  %call13 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %cmp = icmp eq ptr %call13, null
  br i1 %cmp, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #14
  br label %cleanup291

if.end19:                                         ; preds = %if.end12
  %call20 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call20) #14
  br label %cleanup291

if.end27:                                         ; preds = %if.end19
  %call.i = call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 180, i1 noundef zeroext false) #11
  %cmp30 = icmp eq ptr %call.i, null
  br i1 %cmp30, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #14
  br label %cleanup291

if.end36:                                         ; preds = %if.end27
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i444 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i444 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i444, align 4
  %of_node.i445 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %24 = ptrtoint ptr %of_node.i445 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i445, align 8
  %tobool.not.i446 = icmp eq ptr %25, null
  br i1 %tobool.not.i446, label %if.end.i448, label %if.then.i

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %call.i447 = call ptr @of_device_get_match_data(ptr noundef %dev) #11
  br label %s3c64xx_spi_get_port_config.exit

if.end.i448:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %26 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %driver_data.i, align 4
  %30 = inttoptr i32 %29 to ptr
  br label %s3c64xx_spi_get_port_config.exit

s3c64xx_spi_get_port_config.exit:                 ; preds = %if.end.i448, %if.then.i
  %retval.0.i449 = phi ptr [ %call.i447, %if.then.i ], [ %30, %if.end.i448 ]
  %port_conf = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 16
  %31 = ptrtoint ptr %port_conf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %retval.0.i449, ptr %port_conf, align 4
  %master39 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 5
  %32 = ptrtoint ptr %master39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %master39, align 4
  %cntrlr_info = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 6
  %33 = ptrtoint ptr %cntrlr_info to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %sci.0.ph, ptr %cntrlr_info, align 4
  %pdev40 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 4
  %34 = ptrtoint ptr %pdev40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pdev, ptr %pdev40, align 4
  %35 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call13, align 4
  %sfr_start = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 8
  %37 = ptrtoint ptr %sfr_start to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sfr_start, align 4
  %38 = ptrtoint ptr %of_node.i445 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node.i445, align 8
  %tobool43.not = icmp eq ptr %39, null
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %s3c64xx_spi_get_port_config.exit
  %call47 = call i32 @of_alias_get_id(ptr noundef nonnull %39, ptr noundef nonnull @.str.16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end52, label %if.then44.if.end56_crit_edge

if.then44.if.end56_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

do.end52:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call47) #14
  br label %spi_controller_put.exit

if.else:                                          ; preds = %s3c64xx_spi_get_port_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then44.if.end56_crit_edge
  %.sink = phi i32 [ %41, %if.else ], [ %call47, %if.then44.if.end56_crit_edge ]
  %port_id55 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 17
  %42 = ptrtoint ptr %port_id55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %port_id55, align 4
  %cur_bpw = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 12
  %43 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %cur_bpw, align 4
  %tx_dma = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 15
  %direction = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 15, i32 2
  %44 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %direction, align 4
  %rx_dma = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 14
  %direction57 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 14, i32 2
  %45 = ptrtoint ptr %direction57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %direction57, align 4
  %46 = ptrtoint ptr %of_node.i445 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node.i445, align 8
  %of_node61 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %48 = ptrtoint ptr %of_node61 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %of_node61, align 8
  %port_id62 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 17
  %49 = ptrtoint ptr %port_id62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port_id62, align 4
  %conv = trunc i32 %50 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %51 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv, ptr %bus_num, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %52 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @s3c64xx_spi_setup, ptr %setup, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %53 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @s3c64xx_spi_cleanup, ptr %cleanup, align 8
  %prepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 44
  %54 = ptrtoint ptr %prepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @s3c64xx_spi_prepare_transfer, ptr %prepare_transfer_hardware, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %55 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @s3c64xx_spi_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %56 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @s3c64xx_spi_transfer_one, ptr %transfer_one, align 4
  %num_cs = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %sci.0.ph, i32 0, i32 1
  %57 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_cs, align 4
  %conv63 = trunc i32 %58 to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %59 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv63, ptr %num_chipselect, align 2
  %dma_alignment = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 4
  %60 = ptrtoint ptr %dma_alignment to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 8, ptr %dma_alignment, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %61 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -2147450752, ptr %bits_per_word_mask, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 7, ptr %mode_bits, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %63 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %auto_runtime_pm, align 4
  %64 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port_conf, align 4
  %quirks = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %quirks, align 4
  %and = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %if.then66, label %if.end56.if.end67_crit_edge

if.end56.if.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then66:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %68 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @s3c64xx_spi_can_dma, ptr %can_dma, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end56.if.end67_crit_edge
  %call69 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call13) #11
  %69 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call69, ptr %23, align 4
  %cmp.i450 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i450, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %call69 to i32
  br label %spi_controller_put.exit

if.end75:                                         ; preds = %if.end67
  %cfg_gpio = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %sci.0.ph, i32 0, i32 3
  %71 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg_gpio, align 4
  %tobool76.not = icmp eq ptr %72, null
  br i1 %tobool76.not, label %if.end75.if.end86_crit_edge, label %land.lhs.true77

if.end75.if.end86_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

land.lhs.true77:                                  ; preds = %if.end75
  %call79 = call i32 %72() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %land.lhs.true77.if.end86_crit_edge, label %do.end84

land.lhs.true77.if.end86_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

do.end84:                                         ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #14
  br label %spi_controller_put.exit

if.end86:                                         ; preds = %land.lhs.true77.if.end86_crit_edge, %if.end75.if.end86_crit_edge
  %call88 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  %clk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 1
  %73 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call88, ptr %clk, align 4
  %cmp.i451 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i451, label %do.end94, label %if.end98

do.end94:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #14
  %74 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk, align 4
  %76 = ptrtoint ptr %75 to i32
  br label %spi_controller_put.exit

if.end98:                                         ; preds = %if.end86
  %call.i452 = call i32 @clk_prepare(ptr noundef %call88) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i452)
  %tobool.not.i453 = icmp eq i32 %call.i452, 0
  br i1 %tobool.not.i453, label %if.end.i454, label %if.end98.do.end105_crit_edge

if.end98.do.end105_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end105

if.end.i454:                                      ; preds = %if.end98
  %call1.i = call i32 @clk_enable(ptr noundef %call88) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end107, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i454
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %call88) #11
  br label %do.end105

do.end105:                                        ; preds = %if.then3.i, %if.end98.do.end105_crit_edge
  %retval.0.i455.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i452, %if.end98.do.end105_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #14
  br label %spi_controller_put.exit

if.end107:                                        ; preds = %if.end.i454
  %77 = ptrtoint ptr %sci.0.ph to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sci.0.ph, align 4
  %call108 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %clk_name, ptr noundef nonnull @.str.29, i32 noundef %78)
  %call111 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %clk_name) #11
  %src_clk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 2
  %79 = ptrtoint ptr %src_clk to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call111, ptr %src_clk, align 4
  %cmp.i456 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i456, label %do.end117, label %if.end122

do.end117:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull %clk_name) #14
  %80 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %src_clk, align 4
  %82 = ptrtoint ptr %81 to i32
  br label %err_disable_clk

if.end122:                                        ; preds = %if.end107
  %call.i457 = call i32 @clk_prepare(ptr noundef %call111) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i457)
  %tobool.not.i458 = icmp eq i32 %call.i457, 0
  br i1 %tobool.not.i458, label %if.end.i461, label %if.end122.do.end129_crit_edge

if.end122.do.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end129

if.end.i461:                                      ; preds = %if.end122
  %call1.i459 = call i32 @clk_enable(ptr noundef %call111) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i459)
  %tobool2.not.i460 = icmp eq i32 %call1.i459, 0
  br i1 %tobool2.not.i460, label %if.end132, label %if.then3.i462

if.then3.i462:                                    ; preds = %if.end.i461
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %call111) #11
  br label %do.end129

do.end129:                                        ; preds = %if.then3.i462, %if.end122.do.end129_crit_edge
  %retval.0.i463.ph = phi i32 [ %call1.i459, %if.then3.i462 ], [ %call.i457, %if.end122.do.end129_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull %clk_name) #14
  br label %err_disable_clk

if.end132:                                        ; preds = %if.end.i461
  %83 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %port_conf, align 4
  %clk_ioclk = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %clk_ioclk to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %clk_ioclk, align 2, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool134.not = icmp eq i8 %86, 0
  br i1 %tobool134.not, label %if.end132.if.end157_crit_edge, label %if.then135

if.end132.if.end157_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then135:                                       ; preds = %if.end132
  %call137 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.36) #11
  %ioclk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 3
  %87 = ptrtoint ptr %ioclk to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call137, ptr %ioclk, align 4
  %cmp.i465 = icmp ugt ptr %call137, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i465, label %do.end143, label %if.end147

do.end143:                                        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #14
  %88 = ptrtoint ptr %ioclk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioclk, align 4
  %90 = ptrtoint ptr %89 to i32
  br label %err_disable_src_clk

if.end147:                                        ; preds = %if.then135
  %call.i466 = call i32 @clk_prepare(ptr noundef %call137) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i466)
  %tobool.not.i467 = icmp eq i32 %call.i466, 0
  br i1 %tobool.not.i467, label %if.end.i470, label %if.end147.do.end154_crit_edge

if.end147.do.end154_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end154

if.end.i470:                                      ; preds = %if.end147
  %call1.i468 = call i32 @clk_enable(ptr noundef %call137) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i468)
  %tobool2.not.i469 = icmp eq i32 %call1.i468, 0
  br i1 %tobool2.not.i469, label %if.end.i470.if.end157_crit_edge, label %if.then3.i471

if.end.i470.if.end157_crit_edge:                  ; preds = %if.end.i470
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then3.i471:                                    ; preds = %if.end.i470
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %call137) #11
  br label %do.end154

do.end154:                                        ; preds = %if.then3.i471, %if.end147.do.end154_crit_edge
  %retval.0.i472.ph = phi i32 [ %call1.i468, %if.then3.i471 ], [ %call.i466, %if.end147.do.end154_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #14
  br label %err_disable_src_clk

if.end157:                                        ; preds = %if.end.i470.if.end157_crit_edge, %if.end132.if.end157_crit_edge
  %91 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %port_conf, align 4
  %quirks159 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %quirks159 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %quirks159, align 4
  %and160 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.then162, label %if.end157.if.end194_crit_edge

if.end157.if.end194_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

if.then162:                                       ; preds = %if.end157
  %call164 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.43) #11
  %95 = ptrtoint ptr %rx_dma to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call164, ptr %rx_dma, align 4
  %cmp.i474 = icmp ugt ptr %call164, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i474, label %do.end172, label %if.end177

do.end172:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #14
  %96 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx_dma, align 4
  %98 = ptrtoint ptr %97 to i32
  br label %err_disable_io_clk

if.end177:                                        ; preds = %if.then162
  %call179 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.47) #11
  %99 = ptrtoint ptr %tx_dma to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call179, ptr %tx_dma, align 4
  %cmp.i475 = icmp ugt ptr %call179, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i475, label %do.end188, label %if.end177.if.end194_crit_edge

if.end177.if.end194_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

do.end188:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #14
  %100 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tx_dma, align 4
  %102 = ptrtoint ptr %101 to i32
  br label %err_release_rx_dma

if.end194:                                        ; preds = %if.end177.if.end194_crit_edge, %if.end157.if.end194_crit_edge
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #11
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i476 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #11
  call void @pm_runtime_enable(ptr noundef %dev) #11
  %call.i477 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  call fastcc void @s3c64xx_spi_hwinit(ptr noundef %23)
  %lock = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.51, ptr noundef nonnull @s3c64xx_spi_probe.__key, i16 noundef signext 3) #11
  %xfer_completion = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 9
  %103 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %xfer_completion, align 4
  %wait.i = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 9, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @init_completion.__key) #11
  %call.i478 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call20, ptr noundef nonnull @s3c64xx_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.52, ptr noundef %23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i478)
  %cmp208.not = icmp eq i32 %call.i478, 0
  br i1 %cmp208.not, label %do.body216, label %do.end213

do.end213:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call20, i32 noundef %call.i478) #14
  br label %err_pm_put

do.body216:                                       ; preds = %if.end194
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  call void @arm_heavy_mb() #11
  %104 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %23, align 4
  %add.ptr = getelementptr i8, ptr %105, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1006632960) #11, !srcloc !233
  %call221 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %cmp222.not = icmp eq i32 %call221, 0
  br i1 %cmp222.not, label %do.body230, label %do.end227

do.end227:                                        ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %call221) #14
  br label %err_pm_put

do.body230:                                       ; preds = %do.body216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c64xx_spi_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c64xx_spi_probe, %do.body244)) #11
          to label %if.then236 [label %do.body244], !srcloc !234

if.then236:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %port_id62 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port_id62, align 4
  %108 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %num_chipselect, align 2
  %conv240 = zext i16 %109 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c64xx_spi_probe.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %107, i32 noundef %conv240) #11
  br label %do.body244

do.body244:                                       ; preds = %if.then236, %do.body230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c64xx_spi_probe.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c64xx_spi_probe, %do.end264)) #11
          to label %if.then258 [label %do.end264], !srcloc !234

if.then258:                                       ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %port_conf, align 4
  %112 = ptrtoint ptr %port_id62 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %port_id62, align 4
  %arrayidx = getelementptr [6 x i32], ptr %111, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx, align 4
  %shr = ashr i32 %115, 1
  %add = add nsw i32 %shr, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c64xx_spi_probe.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull %call13, i32 noundef %add) #11
  br label %do.end264

do.end264:                                        ; preds = %if.then258, %do.body244
  %call.i479 = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %116 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store volatile i64 %call.i479, ptr %last_busy.i, align 8
  %call.i480 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #11
  br label %cleanup291

err_pm_put:                                       ; preds = %do.end227, %do.end213
  %ret.0 = phi i32 [ %call.i478, %do.end213 ], [ %call221, %do.end227 ]
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i481 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !235
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %117 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !236
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err_pm_put.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

err_pm_put.pm_runtime_put_noidle.exit_crit_edge:  ; preds = %err_pm_put
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %err_pm_put
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !237
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %err_pm_put.pm_runtime_put_noidle.exit_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i482 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  %118 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %port_conf, align 4
  %quirks273 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %quirks273 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %quirks273, align 4
  %and274 = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  br i1 %tobool275.not, label %if.then276, label %pm_runtime_put_noidle.exit.err_release_rx_dma_crit_edge

pm_runtime_put_noidle.exit.err_release_rx_dma_crit_edge: ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_release_rx_dma

if.then276:                                       ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tx_dma, align 4
  call void @dma_release_channel(ptr noundef %123) #11
  br label %err_release_rx_dma

err_release_rx_dma:                               ; preds = %if.then276, %pm_runtime_put_noidle.exit.err_release_rx_dma_crit_edge, %do.end188
  %ret.1 = phi i32 [ %ret.0, %pm_runtime_put_noidle.exit.err_release_rx_dma_crit_edge ], [ %ret.0, %if.then276 ], [ %102, %do.end188 ]
  %124 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %port_conf, align 4
  %quirks281 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %quirks281 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %quirks281, align 4
  %and282 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %tobool283.not = icmp eq i32 %and282, 0
  br i1 %tobool283.not, label %if.then284, label %err_release_rx_dma.err_disable_io_clk_crit_edge

err_release_rx_dma.err_disable_io_clk_crit_edge:  ; preds = %err_release_rx_dma
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_disable_io_clk

if.then284:                                       ; preds = %err_release_rx_dma
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rx_dma, align 4
  call void @dma_release_channel(ptr noundef %129) #11
  br label %err_disable_io_clk

err_disable_io_clk:                               ; preds = %if.then284, %err_release_rx_dma.err_disable_io_clk_crit_edge, %do.end172
  %ret.2 = phi i32 [ %ret.1, %err_release_rx_dma.err_disable_io_clk_crit_edge ], [ %ret.1, %if.then284 ], [ %98, %do.end172 ]
  %ioclk288 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %23, i32 0, i32 3
  %130 = ptrtoint ptr %ioclk288 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ioclk288, align 4
  call void @clk_disable(ptr noundef %131) #11
  call void @clk_unprepare(ptr noundef %131) #11
  br label %err_disable_src_clk

err_disable_src_clk:                              ; preds = %err_disable_io_clk, %do.end154, %do.end143
  %ret.3 = phi i32 [ %90, %do.end143 ], [ %retval.0.i472.ph, %do.end154 ], [ %ret.2, %err_disable_io_clk ]
  %132 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %src_clk, align 4
  call void @clk_disable(ptr noundef %133) #11
  call void @clk_unprepare(ptr noundef %133) #11
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_disable_src_clk, %do.end129, %do.end117
  %ret.4 = phi i32 [ %82, %do.end117 ], [ %retval.0.i463.ph, %do.end129 ], [ %ret.3, %err_disable_src_clk ]
  %134 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %135) #11
  call void @clk_unprepare(ptr noundef %135) #11
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %err_disable_clk, %do.end105, %do.end94, %do.end84, %if.then72, %do.end52
  %ret.5 = phi i32 [ %call47, %do.end52 ], [ %70, %if.then72 ], [ -16, %do.end84 ], [ %76, %do.end94 ], [ %retval.0.i455.ph, %do.end105 ], [ %ret.4, %err_disable_clk ]
  call void @put_device(ptr noundef nonnull %call.i) #11
  br label %cleanup291

cleanup291:                                       ; preds = %spi_controller_put.exit, %do.end264, %do.end34, %do.end25, %do.end17, %do.end, %if.then6
  %retval.0 = phi i32 [ -6, %do.end17 ], [ %call20, %do.end25 ], [ -12, %do.end34 ], [ %ret.5, %spi_controller_put.exit ], [ 0, %do.end264 ], [ -19, %do.end ], [ %20, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk_name) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i18 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i18, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !238
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !233
  %port_conf = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_conf, align 4
  %quirks = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dma = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_dma, align 4
  tail call void @dma_release_channel(ptr noundef %11) #11
  %tx_dma = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_dma, align 4
  tail call void @dma_release_channel(ptr noundef %13) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ioclk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %ioclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioclk, align 4
  tail call void @clk_disable(ptr noundef %15) #11
  tail call void @clk_unprepare(ptr noundef %15) #11
  %src_clk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src_clk, align 4
  tail call void @clk_disable(ptr noundef %17) #11
  tail call void @clk_unprepare(ptr noundef %17) #11
  %clk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #11
  tail call void @clk_unprepare(ptr noundef %19) #11
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !236
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !237
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i19 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_setup(ptr noundef %spi) #2 align 64 {
entry:
  %fb_delay.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %0 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_data, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fb_delay.i) #11
  %8 = ptrtoint ptr %fb_delay.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fb_delay.i, align 4
  %call2.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %7, ptr noundef nonnull @.str.80) #11
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.82) #14
  br label %s3c64xx_get_slave_ctrldata.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 8) #15
  %tobool12.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @of_node_put(ptr noundef nonnull %call2.i) #11
  br label %s3c64xx_get_slave_ctrldata.exit

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.84, ptr noundef nonnull %fb_delay.i, i32 noundef 1, i32 noundef 0) #11
  %10 = ptrtoint ptr %fb_delay.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fb_delay.i, align 4
  %conv.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %call7.i.i.i, align 8
  call void @of_node_put(ptr noundef nonnull %call2.i) #11
  br label %s3c64xx_get_slave_ctrldata.exit

s3c64xx_get_slave_ctrldata.exit:                  ; preds = %if.end15.i, %if.then13.i, %do.end7.i
  %retval.0.i = phi ptr [ %call7.i.i.i, %if.end15.i ], [ inttoptr (i32 -12 to ptr), %if.then13.i ], [ inttoptr (i32 -22 to ptr), %do.end7.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fb_delay.i) #11
  %13 = ptrtoint ptr %controller_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i, ptr %controller_data, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.else.do.end_crit_edge, label %if.then4

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %line = getelementptr inbounds %struct.s3c64xx_spi_csinfo, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %line, align 4
  %cs_gpio = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %16 = ptrtoint ptr %cs_gpio to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cs_gpio, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %s3c64xx_get_slave_ctrldata.exit
  %cs.0 = phi ptr [ %retval.0.i, %s3c64xx_get_slave_ctrldata.exit ], [ %1, %if.then4 ]
  %cmp.i = icmp ugt ptr %cs.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end5.do.end_crit_edge, label %if.end9

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end5.do.end_crit_edge, %if.else.do.end_crit_edge
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %17 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.70, i32 noundef %conv) #14
  br label %cleanup103

if.end9:                                          ; preds = %if.end5
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %19 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %controller_state.i, align 8
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end29_crit_edge

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then12:                                        ; preds = %if.end9
  %cs_gpio13 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %21 = ptrtoint ptr %cs_gpio13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cs_gpio13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %23 = icmp ult i32 %22, 2048
  br i1 %23, label %if.then15, label %if.then12.if.end28_crit_edge

if.then12.if.end28_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then15:                                        ; preds = %if.then12
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i166 = icmp eq ptr %25, null
  br i1 %tobool.not.i166, label %if.end.i167, label %if.then15.dev_name.exit_crit_edge

if.then15.dev_name.exit_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i167:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i167, %if.then15.dev_name.exit_crit_edge
  %retval.0.i168 = phi ptr [ %27, %if.end.i167 ], [ %25, %if.then15.dev_name.exit_crit_edge ]
  %call19 = call i32 @gpio_request_one(i32 noundef %22, i32 noundef 2, ptr noundef %retval.0.i168) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %dev_name.exit.if.end28_crit_edge, label %do.end24

dev_name.exit.if.end28_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.end24:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %cs_gpio13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cs_gpio13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.73, i32 noundef %29, i32 noundef %call19) #14
  br label %err_gpio_req

if.end28:                                         ; preds = %dev_name.exit.if.end28_crit_edge, %if.then12.if.end28_crit_edge
  %30 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cs.0, ptr %controller_state.i, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end9.if.end29_crit_edge
  %pdev = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 4
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %dev30, i32 noundef 4) #11
  %port_conf = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 16
  %33 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port_conf, align 4
  %clk_from_cmu = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %clk_from_cmu to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %clk_from_cmu, align 1, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool32.not = icmp eq i8 %36, 0
  br i1 %tobool32.not, label %if.then33, label %if.end29.if.end82_crit_edge

if.end29.if.end82_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then33:                                        ; preds = %if.end29
  %src_clk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %src_clk, align 4
  %call34 = call i32 @clk_get_rate(ptr noundef %38) #11
  %div161 = lshr i32 %call34, 1
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %39 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %div161)
  %cmp = icmp ugt i32 %40, %div161
  br i1 %cmp, label %if.then37, label %if.then33.if.end39_crit_edge

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div161, ptr %max_speed_hz, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then33.if.end39_crit_edge
  %42 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %src_clk, align 4
  %call41 = call i32 @clk_get_rate(ptr noundef %43) #11
  %div42162 = lshr i32 %call41, 1
  %44 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_speed_hz, align 8
  %div44 = udiv i32 %div42162, %45
  %sub = add nuw i32 %div44, 255
  %and = and i32 %sub, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and)
  %cmp45 = icmp eq i32 %and, 255
  %spec.select = select i1 %cmp45, i32 254, i32 %and
  %46 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %src_clk, align 4
  %call50 = call i32 @clk_get_rate(ptr noundef %47) #11
  %div51163 = lshr i32 %call50, 1
  %add = add nuw nsw i32 %spec.select, 1
  %div52 = udiv i32 %div51163, %add
  %48 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %div52)
  %cmp54 = icmp ult i32 %49, %div52
  br i1 %cmp54, label %if.then56, label %if.end39.if.end63_crit_edge

if.end39.if.end63_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then56:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %spec.select)
  %cmp58 = icmp ult i32 %spec.select, 254
  br i1 %cmp58, label %if.then56.if.end63_crit_edge, label %if.then56.setup_exit_crit_edge

if.then56.setup_exit_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_exit

if.then56.if.end63_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = add nuw nsw i32 %spec.select, 2
  br label %if.end63

if.end63:                                         ; preds = %if.then56.if.end63_crit_edge, %if.end39.if.end63_crit_edge
  %add67.pre-phi = phi i32 [ %.pre, %if.then56.if.end63_crit_edge ], [ %add, %if.end39.if.end63_crit_edge ]
  %50 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %src_clk, align 4
  %call65 = call i32 @clk_get_rate(ptr noundef %51) #11
  %div66164 = lshr i32 %call65, 1
  %div68 = udiv i32 %div66164, %add67.pre-phi
  %52 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %div68)
  %cmp70.not = icmp ult i32 %53, %div68
  br i1 %cmp70.not, label %do.end77, label %cleanup

do.end77:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.76, i32 noundef %53) #14
  br label %setup_exit

cleanup:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div68, ptr %max_speed_hz, align 8
  br label %if.end82

if.end82:                                         ; preds = %cleanup, %if.end29.if.end82_crit_edge
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 4
  %call.i170 = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3, i32 12, i32 22
  %57 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store volatile i64 %call.i170, ptr %last_busy.i, align 8
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev, align 4
  %dev86 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  %call.i171 = call i32 @__pm_runtime_suspend(ptr noundef %dev86, i32 noundef 13) #11
  %60 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %master, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver_data.i.i.i, align 4
  %cntrlr_info.i = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %cntrlr_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cntrlr_info.i, align 4
  %no_cs.i = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %no_cs.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %no_cs.i, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i172 = icmp eq i8 %67, 0
  br i1 %tobool.not.i172, label %if.end.i174, label %if.end82.cleanup103_crit_edge

if.end82.cleanup103_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup103

if.end.i174:                                      ; preds = %if.end82
  %port_conf.i = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %63, i32 0, i32 16
  %68 = ptrtoint ptr %port_conf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port_conf.i, align 4
  %quirks.i = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i173 = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i173, label %do.body21.i, label %if.end.i174.cleanup103_crit_edge

if.end.i174.cleanup103_crit_edge:                 ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup103

do.body21.i:                                      ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !239
  call void @arm_heavy_mb() #11
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %63, align 4
  %add.ptr25.i = getelementptr i8, ptr %73, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 16777216) #11, !srcloc !233
  br label %cleanup103

setup_exit:                                       ; preds = %do.end77, %if.then56.setup_exit_crit_edge
  %74 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev, align 4
  %call.i175 = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i176 = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3, i32 12, i32 22
  %76 = ptrtoint ptr %last_busy.i176 to i32
  call void @__asan_store8_noabort(i32 %76)
  store volatile i64 %call.i175, ptr %last_busy.i176, align 8
  %77 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev, align 4
  %dev91 = getelementptr inbounds %struct.platform_device, ptr %78, i32 0, i32 3
  %call.i177 = call i32 @__pm_runtime_suspend(ptr noundef %dev91, i32 noundef 13) #11
  %79 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %master, align 4
  %driver_data.i.i.i179 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %driver_data.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver_data.i.i.i179, align 4
  %cntrlr_info.i180 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %cntrlr_info.i180 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cntrlr_info.i180, align 4
  %no_cs.i181 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %no_cs.i181 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %no_cs.i181, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i182 = icmp eq i8 %86, 0
  br i1 %tobool.not.i182, label %if.end.i187, label %setup_exit.s3c64xx_spi_set_cs.exit190_crit_edge

setup_exit.s3c64xx_spi_set_cs.exit190_crit_edge:  ; preds = %setup_exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %s3c64xx_spi_set_cs.exit190

if.end.i187:                                      ; preds = %setup_exit
  %port_conf.i183 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %82, i32 0, i32 16
  %87 = ptrtoint ptr %port_conf.i183 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %port_conf.i183, align 4
  %quirks.i184 = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %quirks.i184 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %quirks.i184, align 4
  %and.i185 = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i185)
  %tobool3.not.i186 = icmp eq i32 %and.i185, 0
  br i1 %tobool3.not.i186, label %do.body21.i189, label %if.end.i187.s3c64xx_spi_set_cs.exit190_crit_edge

if.end.i187.s3c64xx_spi_set_cs.exit190_crit_edge: ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #13
  br label %s3c64xx_spi_set_cs.exit190

do.body21.i189:                                   ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !239
  call void @arm_heavy_mb() #11
  %91 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %82, align 4
  %add.ptr25.i188 = getelementptr i8, ptr %92, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i188, i32 16777216) #11, !srcloc !233
  br label %s3c64xx_spi_set_cs.exit190

s3c64xx_spi_set_cs.exit190:                       ; preds = %do.body21.i189, %if.end.i187.s3c64xx_spi_set_cs.exit190_crit_edge, %setup_exit.s3c64xx_spi_set_cs.exit190_crit_edge
  %cs_gpio93 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %93 = ptrtoint ptr %cs_gpio93 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cs_gpio93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %94)
  %95 = icmp ult i32 %94, 2048
  br i1 %95, label %if.then95, label %s3c64xx_spi_set_cs.exit190.if.end97_crit_edge

s3c64xx_spi_set_cs.exit190.if.end97_crit_edge:    ; preds = %s3c64xx_spi_set_cs.exit190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then95:                                        ; preds = %s3c64xx_spi_set_cs.exit190
  call void @__sanitizer_cov_trace_pc() #13
  call void @gpio_free(i32 noundef %94) #11
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %s3c64xx_spi_set_cs.exit190.if.end97_crit_edge
  %96 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %controller_state.i, align 8
  br label %err_gpio_req

err_gpio_req:                                     ; preds = %if.end97, %do.end24
  %err.3 = phi i32 [ -22, %if.end97 ], [ %call19, %do.end24 ]
  %97 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %of_node, align 8
  %tobool100.not = icmp eq ptr %98, null
  br i1 %tobool100.not, label %err_gpio_req.cleanup103_crit_edge, label %if.then101

err_gpio_req.cleanup103_crit_edge:                ; preds = %err_gpio_req
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup103

if.then101:                                       ; preds = %err_gpio_req
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %cs.0) #11
  br label %cleanup103

cleanup103:                                       ; preds = %if.then101, %err_gpio_req.cleanup103_crit_edge, %do.body21.i, %if.end.i174.cleanup103_crit_edge, %if.end82.cleanup103_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %err.3, %if.then101 ], [ %err.3, %err_gpio_req.cleanup103_crit_edge ], [ 0, %if.end82.cleanup103_crit_edge ], [ 0, %if.end.i174.cleanup103_crit_edge ], [ 0, %do.body21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_spi_cleanup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state.i, align 8
  %cs_gpio = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %2 = ptrtoint ptr %cs_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cs_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void @gpio_free(i32 noundef %3) #11
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %1) #11
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %cs_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2, ptr %cs_gpio, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3, %entry.if.end5_crit_edge
  %8 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %controller_state.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c64xx_spi_prepare_transfer(ptr nocapture noundef %spi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %port_conf = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_conf, align 4
  %quirks = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dma = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_dma, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %spi, i32 0, i32 61
  %8 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dma_rx, align 4
  %tx_dma = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_dma, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %spi, i32 0, i32 60
  %11 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dma_tx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !240
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %8 = and i8 %7, 3
  %and = zext i8 %8 to i32
  %9 = shl nuw nsw i32 %and, 24
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #11, !srcloc !233
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_transfer_one(ptr nocapture noundef readonly %master, ptr noundef %spi, ptr noundef %xfer) #2 align 64 {
entry:
  %s = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %port_conf = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_conf, align 4
  %port_id = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_id, align 4
  %arrayidx = getelementptr [6 x i32], ptr %3, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %shr = ashr i32 %7, 1
  %add = add nsw i32 %shr, 1
  %xfer_completion = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %xfer_completion, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %9 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bits_per_word, align 1
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %11 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed_hz, align 4
  %conv = zext i8 %10 to i32
  %cur_bpw = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_bpw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv)
  %cmp.not = icmp eq i32 %14, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cur_speed = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %cur_speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %16)
  %cmp2.not = icmp eq i32 %12, %16
  br i1 %cmp2.not, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %17 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %cur_bpw, align 4
  %cur_speed6 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %cur_speed6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %12, ptr %cur_speed6, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode, align 8
  %cur_mode = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cur_mode, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %clk_from_cmu.i = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %clk_from_cmu.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %clk_from_cmu.i, align 1, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !242
  %27 = and i32 %26, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !243
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #11, !srcloc !233
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %29 = and i32 %28, -469762049
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  %31 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_mode, align 4
  %and11.i = shl i32 %32, 2
  %33 = and i32 %and11.i, 8
  %34 = or i32 %33, %30
  %35 = and i32 %and11.i, 4
  %36 = or i32 %34, %35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %37) #11, !srcloc !233
  %add.ptr27.i = getelementptr i8, ptr %23, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !246
  %39 = and i32 %38, -1633
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  %41 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_bpw, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %if.end.i.do.body39.i_crit_edge [
    i32 32, label %sw.bb.i
    i32 16, label %sw.bb34.i
  ]

if.end.i.do.body39.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %or33.i = or i32 %40, 1074003968
  br label %do.body39.i

sw.bb34.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %or36.i = or i32 %40, 537001984
  br label %do.body39.i

do.body39.i:                                      ; preds = %sw.bb34.i, %sw.bb.i, %if.end.i.do.body39.i_crit_edge
  %val.2.i = phi i32 [ %or36.i, %sw.bb34.i ], [ %or33.i, %sw.bb.i ], [ %40, %if.end.i.do.body39.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !247
  tail call void @arm_heavy_mb() #11
  %44 = tail call i32 @llvm.bswap.i32(i32 %val.2.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %44) #11, !srcloc !233
  %45 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port_conf, align 4
  %clk_from_cmu44.i = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %clk_from_cmu44.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %clk_from_cmu44.i, align 1, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool45.not.i = icmp eq i8 %48, 0
  br i1 %tobool45.not.i, label %if.else.i, label %if.then46.i

if.then46.i:                                      ; preds = %do.body39.i
  %src_clk.i = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %src_clk.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %src_clk.i, align 4
  %51 = ptrtoint ptr %cur_speed6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cur_speed6, align 4
  %mul.i = shl i32 %52, 1
  %call47.i = tail call i32 @clk_set_rate(ptr noundef %50, i32 noundef %mul.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.then46.i.cleanup_crit_edge

if.then46.i.cleanup_crit_edge:                    ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end50.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %src_clk.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %src_clk.i, align 4
  %call52.i = tail call i32 @clk_get_rate(ptr noundef %54) #11
  %div126.i = lshr i32 %call52.i, 1
  %55 = ptrtoint ptr %cur_speed6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div126.i, ptr %cur_speed6, align 4
  br label %if.end9

if.else.i:                                        ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr56.i = getelementptr i8, ptr %23, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56.i) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !248
  %57 = and i32 %56, 16777215
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  %src_clk61.i = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %src_clk61.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %src_clk61.i, align 4
  %call62.i = tail call i32 @clk_get_rate(ptr noundef %60) #11
  %61 = ptrtoint ptr %cur_speed6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cur_speed6, align 4
  %div64.i = udiv i32 %call62.i, %62
  %div65125.i = lshr i32 %div64.i, 1
  %sub.i = add nuw i32 %div65125.i, 255
  %and66.i = and i32 %sub.i, 255
  %or67.i = or i32 %and66.i, %58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !249
  tail call void @arm_heavy_mb() #11
  %63 = tail call i32 @llvm.bswap.i32(i32 %or67.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %63) #11, !srcloc !233
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56.i) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %65 = or i32 %64, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !251
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %65) #11, !srcloc !233
  br label %if.end9

if.end9:                                          ; preds = %if.else.i, %if.end50.i, %lor.lhs.false.if.end9_crit_edge
  %66 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %port_conf, align 4
  %quirks = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %quirks, align 4
  %and = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %add)
  %cmp12 = icmp ugt i32 %71, %add
  br i1 %tobool11.not, label %land.lhs.true, label %land.lhs.true24

land.lhs.true:                                    ; preds = %if.end9
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.if.else.thread_crit_edge

land.lhs.true.if.else.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread

land.lhs.true14:                                  ; preds = %land.lhs.true
  %rx_dma = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 14
  %72 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_dma, align 4
  %tobool15.not = icmp eq ptr %73, null
  br i1 %tobool15.not, label %land.lhs.true14.if.else.thread_crit_edge, label %land.lhs.true16

land.lhs.true14.if.else.thread_crit_edge:         ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %tx_dma = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 15
  %74 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_dma, align 4
  %tobool18.not = icmp eq ptr %75, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else.thread_crit_edge, label %land.lhs.true16.if.end40_crit_edge

land.lhs.true16.if.end40_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true16.if.else.thread_crit_edge:         ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread

if.else.thread:                                   ; preds = %land.lhs.true16.if.else.thread_crit_edge, %land.lhs.true14.if.else.thread_crit_edge, %land.lhs.true.if.else.thread_crit_edge
  br label %if.end40

land.lhs.true24:                                  ; preds = %if.end9
  br i1 %cmp12, label %if.then36, label %land.lhs.true24.if.end40_crit_edge

land.lhs.true24.if.end40_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then36:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  %rx_buf30 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %76 = ptrtoint ptr %rx_buf30 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_buf30, align 4
  %78 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %xfer, align 4
  %80 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add, ptr %len, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %land.lhs.true24.if.end40_crit_edge, %if.else.thread, %land.lhs.true16.if.end40_crit_edge
  %tx_buf.0 = phi ptr [ %79, %if.then36 ], [ null, %land.lhs.true24.if.end40_crit_edge ], [ null, %land.lhs.true16.if.end40_crit_edge ], [ null, %if.else.thread ]
  %rx_buf.0 = phi ptr [ %77, %if.then36 ], [ null, %land.lhs.true24.if.end40_crit_edge ], [ null, %land.lhs.true16.if.end40_crit_edge ], [ null, %if.else.thread ]
  %origin_len.0 = phi i32 [ %71, %if.then36 ], [ 0, %land.lhs.true24.if.end40_crit_edge ], [ 0, %land.lhs.true16.if.end40_crit_edge ], [ 0, %if.else.thread ]
  %tobool60.not = phi i1 [ true, %if.then36 ], [ true, %land.lhs.true24.if.end40_crit_edge ], [ false, %land.lhs.true16.if.end40_crit_edge ], [ true, %if.else.thread ]
  %lock = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 7
  %state = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 10
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %tx_dma.i = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 15
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %cur_speed.i287 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 13
  %cur_mode.i288 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 11
  %rx_dma.i = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 14
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %not.tobool60.not = xor i1 %tobool60.not, true
  %cond87 = zext i1 %not.tobool60.not to i32
  %81 = getelementptr inbounds %struct.dma_tx_state, ptr %s, i32 0, i32 2
  %cookie = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 15, i32 1
  %cookie125 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 14, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end155.do.body_crit_edge, %if.end40
  %target_len.1 = phi i32 [ %origin_len.0, %if.end40 ], [ %sub, %if.end155.do.body_crit_edge ]
  %call46 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state, align 4
  %and51 = and i32 %83, -13
  store i32 %and51, ptr %state, align 4
  %84 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver_data.i.i.i, align 4
  %cntrlr_info.i = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %cntrlr_info.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cntrlr_info.i, align 4
  %no_cs.i = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %no_cs.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %no_cs.i, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i273 = icmp eq i8 %91, 0
  br i1 %tobool.not.i273, label %if.end.i275, label %do.body.s3c64xx_spi_set_cs.exit_crit_edge

do.body.s3c64xx_spi_set_cs.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %s3c64xx_spi_set_cs.exit

if.end.i275:                                      ; preds = %do.body
  %port_conf.i274 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %87, i32 0, i32 16
  %92 = ptrtoint ptr %port_conf.i274 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %port_conf.i274, align 4
  %quirks.i = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i, label %if.else.i277

do.body.i:                                        ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  call void @arm_heavy_mb() #11
  %96 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %87, align 4
  %add.ptr.i276 = getelementptr i8, ptr %97, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276, i32 0) #11, !srcloc !233
  br label %s3c64xx_spi_set_cs.exit

if.else.i277:                                     ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %87, align 4
  %add.ptr6.i = getelementptr i8, ptr %99, i32 12
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !241
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  %101 = or i32 %100, 570425344
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  call void @arm_heavy_mb() #11
  %102 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %87, align 4
  %add.ptr13.i = getelementptr i8, ptr %103, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %101) #11, !srcloc !233
  br label %s3c64xx_spi_set_cs.exit

s3c64xx_spi_set_cs.exit:                          ; preds = %if.else.i277, %do.body.i, %do.body.s3c64xx_spi_set_cs.exit_crit_edge
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  %add.ptr.i278 = getelementptr i8, ptr %105, i32 8
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278) #11, !srcloc !241
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !255
  %107 = and i32 %106, -100663297
  %108 = call i32 @llvm.bswap.i32(i32 %107) #11
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #11, !srcloc !241
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !256
  %110 = and i32 %109, -16777217
  %111 = call i32 @llvm.bswap.i32(i32 %110) #11
  br i1 %tobool60.not, label %if.end.i284, label %if.end.thread.i

if.end.i284:                                      ; preds = %s3c64xx_spi_set_cs.exit
  %or.i = or i32 %111, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !257
  call void @arm_heavy_mb() #11
  %112 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len.i, align 4
  %mul.i280 = shl i32 %113, 3
  %114 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cur_bpw, align 4
  %div.i = udiv i32 %mul.i280, %115
  %and11.i282 = and i32 %div.i, 65535
  %or12.i = or i32 %and11.i282, 65536
  %116 = call i32 @llvm.bswap.i32(i32 %or12.i) #11
  %add.ptr13.i283 = getelementptr i8, ptr %105, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i283, i32 %116) #11, !srcloc !233
  %117 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %xfer, align 4
  %cmp.not.i = icmp eq ptr %118, null
  br i1 %cmp.not.i, label %if.end.i284.if.end36.i_crit_edge, label %if.else21.i

if.end.i284.if.end36.i_crit_edge:                 ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.end.thread.i:                                  ; preds = %s3c64xx_spi_set_cs.exit
  %and10.i = and i32 %111, -4
  %119 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %xfer, align 4
  %cmp.not124.i = icmp eq ptr %120, null
  br i1 %cmp.not124.i, label %if.end.thread.i.if.end36.i_crit_edge, label %if.then18.i

if.end.thread.i.if.end36.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then18.i:                                      ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %state, align 4
  %or15128.i = or i32 %122, 8
  store i32 %or15128.i, ptr %state, align 4
  %or16129.i = or i32 %and10.i, 1
  %or19.i = or i32 %108, 2
  %call20.i = call fastcc i32 @prepare_dma(ptr noundef %tx_dma.i, ptr noundef %tx_sg.i) #11
  br label %if.end36.i

if.else21.i:                                      ; preds = %if.end.i284
  %123 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %state, align 4
  %or15.i = or i32 %124, 8
  store i32 %or15.i, ptr %state, align 4
  %or16.i = or i32 %111, 3
  %125 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cur_bpw, align 4
  %127 = zext i32 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %126, label %sw.default.i [
    i32 32, label %sw.bb.i285
    i32 16, label %sw.bb27.i
  ]

sw.bb.i285:                                       ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr23.i = getelementptr i8, ptr %105, i32 24
  %128 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %xfer, align 4
  %130 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len.i, align 4
  %div26122.i = lshr i32 %131, 2
  call void @__raw_writesl(ptr noundef %add.ptr23.i, ptr noundef %129, i32 noundef %div26122.i) #11
  br label %if.end36.i

sw.bb27.i:                                        ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr28.i = getelementptr i8, ptr %105, i32 24
  %132 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %xfer, align 4
  %134 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len.i, align 4
  %div31121.i = lshr i32 %135, 1
  call void @__raw_writesw(ptr noundef %add.ptr28.i, ptr noundef %133, i32 noundef %div31121.i) #11
  br label %if.end36.i

sw.default.i:                                     ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr32.i = getelementptr i8, ptr %105, i32 24
  %136 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %xfer, align 4
  %138 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len.i, align 4
  call void @__raw_writesb(ptr noundef %add.ptr32.i, ptr noundef %137, i32 noundef %139) #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %sw.default.i, %sw.bb27.i, %sw.bb.i285, %if.then18.i, %if.end.thread.i.if.end36.i_crit_edge, %if.end.i284.if.end36.i_crit_edge
  %ret.0.i = phi i32 [ %call20.i, %if.then18.i ], [ 0, %sw.default.i ], [ 0, %sw.bb27.i ], [ 0, %sw.bb.i285 ], [ 0, %if.end.i284.if.end36.i_crit_edge ], [ 0, %if.end.thread.i.if.end36.i_crit_edge ]
  %chcfg.1.i = phi i32 [ %or16129.i, %if.then18.i ], [ %or16.i, %sw.default.i ], [ %or16.i, %sw.bb27.i ], [ %or16.i, %sw.bb.i285 ], [ %or.i, %if.end.i284.if.end36.i_crit_edge ], [ %and10.i, %if.end.thread.i.if.end36.i_crit_edge ]
  %modecfg.0.i = phi i32 [ %or19.i, %if.then18.i ], [ %108, %sw.default.i ], [ %108, %sw.bb27.i ], [ %108, %sw.bb.i285 ], [ %108, %if.end.i284.if.end36.i_crit_edge ], [ %108, %if.end.thread.i.if.end36.i_crit_edge ]
  %140 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rx_buf.i, align 4
  %cmp37.not.i = icmp eq ptr %141, null
  br i1 %cmp37.not.i, label %if.end36.i.if.end65.i_crit_edge, label %if.then38.i

if.end36.i.if.end65.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.then38.i:                                      ; preds = %if.end36.i
  %142 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %state, align 4
  %or40.i = or i32 %143, 4
  store i32 %or40.i, ptr %state, align 4
  %144 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %port_conf, align 4
  %high_speed.i = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %high_speed.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %high_speed.i, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool41.not.i = icmp eq i8 %147, 0
  br i1 %tobool41.not.i, label %if.then38.i.if.end48.i_crit_edge, label %land.lhs.true.i

if.then38.i.if.end48.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

land.lhs.true.i:                                  ; preds = %if.then38.i
  %148 = ptrtoint ptr %cur_speed.i287 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cur_speed.i287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999999, i32 %149)
  %cmp42.i = icmp ugt i32 %149, 29999999
  br i1 %cmp42.i, label %land.lhs.true43.i, label %land.lhs.true.i.if.end48.i_crit_edge

land.lhs.true.i.if.end48.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

land.lhs.true43.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %cur_mode.i288 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cur_mode.i288, align 4
  %and44.i = shl i32 %151, 6
  %152 = and i32 %and44.i, 64
  %153 = xor i32 %152, 64
  %154 = or i32 %153, %chcfg.1.i
  br label %if.end48.i

if.end48.i:                                       ; preds = %land.lhs.true43.i, %land.lhs.true.i.if.end48.i_crit_edge, %if.then38.i.if.end48.i_crit_edge
  %chcfg.2.i = phi i32 [ %chcfg.1.i, %land.lhs.true.i.if.end48.i_crit_edge ], [ %chcfg.1.i, %if.then38.i.if.end48.i_crit_edge ], [ %154, %land.lhs.true43.i ]
  br i1 %tobool60.not, label %if.end48.i.if.end65.i_crit_edge, label %if.then50.i

if.end48.i.if.end65.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  %or51.i = or i32 %modecfg.0.i, 4
  %or52.i = or i32 %chcfg.2.i, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !258
  call void @arm_heavy_mb() #11
  %155 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %len.i, align 4
  %mul57.i = shl i32 %156, 3
  %157 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cur_bpw, align 4
  %div59.i = udiv i32 %mul57.i, %158
  %and60.i = and i32 %div59.i, 65535
  %or61.i = or i32 %and60.i, 65536
  %159 = call i32 @llvm.bswap.i32(i32 %or61.i) #11
  %add.ptr62.i = getelementptr i8, ptr %105, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %159) #11, !srcloc !233
  %call63.i = call fastcc i32 @prepare_dma(ptr noundef %rx_dma.i, ptr noundef %rx_sg.i) #11
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then50.i, %if.end48.i.if.end65.i_crit_edge, %if.end36.i.if.end65.i_crit_edge
  %ret.1.i = phi i32 [ %call63.i, %if.then50.i ], [ %ret.0.i, %if.end48.i.if.end65.i_crit_edge ], [ %ret.0.i, %if.end36.i.if.end65.i_crit_edge ]
  %chcfg.3.i = phi i32 [ %or52.i, %if.then50.i ], [ %chcfg.2.i, %if.end48.i.if.end65.i_crit_edge ], [ %chcfg.1.i, %if.end36.i.if.end65.i_crit_edge ]
  %modecfg.1.i = phi i32 [ %or51.i, %if.then50.i ], [ %modecfg.0.i, %if.end48.i.if.end65.i_crit_edge ], [ %modecfg.0.i, %if.end36.i.if.end65.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool66.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool66.not.i, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call46) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.85, i32 noundef %ret.1.i) #14
  br label %do.end167

if.end59:                                         ; preds = %if.end65.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !259
  call void @arm_heavy_mb() #11
  %160 = call i32 @llvm.bswap.i32(i32 %modecfg.1.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 %160) #11, !srcloc !233
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !260
  call void @arm_heavy_mb() #11
  %161 = call i32 @llvm.bswap.i32(i32 %chcfg.3.i) #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %161) #11, !srcloc !233
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call46) #11
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 4
  %164 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len.i, align 4
  %mul2.i302 = mul i32 %165, 8000
  %166 = ptrtoint ptr %cur_speed.i287 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cur_speed.i287, align 4
  %div.i304 = udiv i32 %mul2.i302, %167
  br i1 %tobool60.not, label %if.else63, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end59
  %add.i = add i32 %div.i304, 30
  %168 = call i32 @llvm.smax.i32(i32 %add.i, i32 100) #11
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %168) #11
  %add3.i = add i32 %call2.i.i, 10
  %call4.i = call i32 @wait_for_completion_timeout(ptr noundef %xfer_completion, i32 noundef %add3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i292 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i292, label %if.else.i.i.do.end70_crit_edge, label %land.lhs.true.i294

if.else.i.i.do.end70_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

land.lhs.true.i294:                               ; preds = %if.else.i.i
  %169 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rx_buf.i, align 4
  %tobool5.not.i = icmp eq ptr %170, null
  br i1 %tobool5.not.i, label %if.then.i297, label %land.lhs.true.i294.if.else137_crit_edge

land.lhs.true.i294.if.else137_crit_edge:          ; preds = %land.lhs.true.i294
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else137

if.then.i297:                                     ; preds = %land.lhs.true.i294
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %171 = load i32, ptr @loops_per_jiffy, align 4
  %172 = urem i32 %171, 1000
  %mul8.i = sub i32 %171, %172
  %add.ptr.i295 = getelementptr i8, ptr %163, i32 20
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i295) #11, !srcloc !241
  %174 = call i32 @llvm.bswap.i32(i32 %173) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !261
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %if.then.i297
  %status.0.i = phi i32 [ %174, %if.then.i297 ], [ %184, %do.end.i ]
  %val.0.i = phi i32 [ %mul8.i, %if.then.i297 ], [ %dec.i, %do.end.i ]
  %shr.i = lshr i32 %status.0.i, 6
  %175 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %port_conf, align 4
  %177 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port_id, align 4
  %arrayidx.i = getelementptr [6 x i32], ptr %176, i32 0, i32 %178
  %179 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i, align 4
  %and.i298 = and i32 %180, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i298)
  %tobool12.not.i = icmp eq i32 %and.i298, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

lor.lhs.false.i:                                  ; preds = %while.cond.i
  %tx_st_done.i = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %176, i32 0, i32 2
  %181 = ptrtoint ptr %tx_st_done.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %tx_st_done.i, align 4
  %shl.i = shl nuw i32 1, %182
  %and14.i = and i32 %shl.i, %status.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i.land.rhs.i_crit_edge, label %if.end.i299

lor.lhs.false.i.land.rhs.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %lor.lhs.false.i.land.rhs.i_crit_edge, %while.cond.i.land.rhs.i_crit_edge
  %dec.i = add i32 %val.0.i, -1
  %tobool18.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool18.not.i, label %land.rhs.i.do.end70_crit_edge, label %do.end.i

land.rhs.i.do.end70_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !262
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !263
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i295) #11, !srcloc !241
  %184 = call i32 @llvm.bswap.i32(i32 %183) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !264
  br label %while.cond.i

if.end.i299:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %tobool31.not.i = icmp eq i32 %val.0.i, 0
  br i1 %tobool31.not.i, label %if.end.i299.do.end70_crit_edge, label %if.end.i299.if.else137_crit_edge

if.end.i299.if.else137_crit_edge:                 ; preds = %if.end.i299
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else137

if.end.i299.do.end70_crit_edge:                   ; preds = %if.end.i299
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

if.else63:                                        ; preds = %if.end59
  %add.i305 = add i32 %div.i304, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %185 = load i32, ptr @loops_per_jiffy, align 4
  %div3.i = udiv i32 %185, 1000
  %mul4.i = mul i32 %add.i305, 100
  %mul5.i = mul i32 %mul4.i, %div3.i
  %add.ptr.i306 = getelementptr i8, ptr %163, i32 20
  br label %do.body.i313

do.body.i313:                                     ; preds = %land.rhs.i316.do.body.i313_crit_edge, %if.else63
  %val.0.i309 = phi i32 [ %mul5.i, %if.else63 ], [ %dec.i314, %land.rhs.i316.do.body.i313_crit_edge ]
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i306) #11, !srcloc !241
  %187 = call i32 @llvm.bswap.i32(i32 %186) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !265
  %188 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %port_conf, align 4
  %rx_lvl_offset.i = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %rx_lvl_offset.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rx_lvl_offset.i, align 4
  %shr.i310 = lshr i32 %187, %191
  %192 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %port_id, align 4
  %arrayidx.i311 = getelementptr [6 x i32], ptr %189, i32 0, i32 %193
  %194 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.i311, align 4
  %and.i312 = and i32 %195, %shr.i310
  %196 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i312, i32 %197)
  %cmp.i = icmp ult i32 %and.i312, %197
  br i1 %cmp.i, label %land.rhs.i316, label %do.end.i317

land.rhs.i316:                                    ; preds = %do.body.i313
  %dec.i314 = add i32 %val.0.i309, -1
  %tobool.not.i315 = icmp eq i32 %dec.i314, 0
  br i1 %tobool.not.i315, label %land.rhs.i316.do.end70_crit_edge, label %land.rhs.i316.do.body.i313_crit_edge

land.rhs.i316.do.body.i313_crit_edge:             ; preds = %land.rhs.i316
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i313

land.rhs.i316.do.end70_crit_edge:                 ; preds = %land.rhs.i316
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

do.end.i317:                                      ; preds = %do.body.i313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i309)
  %tobool9.not.i = icmp eq i32 %val.0.i309, 0
  br i1 %tobool9.not.i, label %do.end.i317.do.end70_crit_edge, label %if.end.i319

do.end.i317.do.end70_crit_edge:                   ; preds = %do.end.i317
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

if.end.i319:                                      ; preds = %do.end.i317
  %198 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rx_buf.i, align 4
  %tobool10.not.i = icmp eq ptr %199, null
  br i1 %tobool10.not.i, label %if.end.i319.cleanup.sink.split.i_crit_edge, label %if.end13.i

if.end.i319.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i319
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %if.end.i319
  %shr19.i = ashr i32 %195, 1
  %add20.i = add nsw i32 %shr19.i, 1
  %div21.i = udiv i32 %197, %add20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i305)
  %tobool.not.i76.i = icmp eq i32 %add.i305, 0
  %add.ptr29.i = getelementptr i8, ptr %163, i32 28
  br label %do.body23.i

do.body23.i:                                      ; preds = %sw.epilog.i.do.body23.i_crit_edge, %if.end13.i
  %loops.0.i = phi i32 [ %div21.i, %if.end13.i ], [ %dec34.i, %sw.epilog.i.do.body23.i_crit_edge ]
  %buf.0.i = phi ptr [ %199, %if.end13.i ], [ %add.ptr32.i324, %sw.epilog.i.do.body23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0.i)
  %tobool24.not.i = icmp eq i32 %loops.0.i, 0
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 4
  %202 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %port_conf, align 4
  %204 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %port_id, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %203, i32 0, i32 %205
  %206 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = ashr i32 %207, 1
  %add.i.i = add nsw i32 %shr.i.i, 1
  %tobool.not.i.i = select i1 %tobool24.not.i, i1 true, i1 %tobool.not.i76.i
  br i1 %tobool.not.i.i, label %do.body23.i.if.end.i.i321_crit_edge, label %if.then.i.i

do.body23.i.if.end.i.i321_crit_edge:              ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i321

if.then.i.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %208 = load i32, ptr @loops_per_jiffy, align 4
  %div.i.i = udiv i32 %208, 1000
  %mul2.i.i = mul i32 %div.i.i, %mul4.i
  br label %if.end.i.i321

if.end.i.i321:                                    ; preds = %if.then.i.i, %do.body23.i.if.end.i.i321_crit_edge
  %val.0.i.i = phi i32 [ %mul2.i.i, %if.then.i.i ], [ 1, %do.body23.i.if.end.i.i321_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %201, i32 20
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end.i.i321
  %val.1.i.i = phi i32 [ %val.0.i.i, %if.end.i.i321 ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %209 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !241
  %210 = call i32 @llvm.bswap.i32(i32 %209) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  %211 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %port_conf, align 4
  %rx_lvl_offset.i.i = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %rx_lvl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %rx_lvl_offset.i.i, align 4
  %shr5.i.i = lshr i32 %210, %214
  %215 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %port_id, align 4
  %arrayidx9.i.i = getelementptr [6 x i32], ptr %212, i32 0, i32 %216
  %217 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx9.i.i, align 4
  %and.i.i = and i32 %218, %shr5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %add.i.i)
  %cmp.i.i = icmp uge i32 %and.i.i, %add.i.i
  %dec.i.i = add i32 %val.1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool10.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool10.not.i.i
  br i1 %or.cond.i.i, label %s3c64xx_spi_wait_for_timeout.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

s3c64xx_spi_wait_for_timeout.exit.i:              ; preds = %do.body.i.i
  %219 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %cur_bpw, align 4
  %221 = zext i32 %220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %220, label %sw.default.i323 [
    i32 32, label %sw.bb.i322
    i32 16, label %sw.bb28.i
  ]

sw.bb.i322:                                       ; preds = %s3c64xx_spi_wait_for_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %div2773.i = lshr i32 %and.i.i, 2
  call void @__raw_readsl(ptr noundef %add.ptr29.i, ptr noundef %buf.0.i, i32 noundef %div2773.i) #11
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %s3c64xx_spi_wait_for_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %div3072.i = lshr i32 %and.i.i, 1
  call void @__raw_readsw(ptr noundef %add.ptr29.i, ptr noundef %buf.0.i, i32 noundef %div3072.i) #11
  br label %sw.epilog.i

sw.default.i323:                                  ; preds = %s3c64xx_spi_wait_for_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__raw_readsb(ptr noundef %add.ptr29.i, ptr noundef %buf.0.i, i32 noundef %and.i.i) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i323, %sw.bb28.i, %sw.bb.i322
  %add.ptr32.i324 = getelementptr i8, ptr %buf.0.i, i32 %and.i.i
  %dec34.i = add i32 %loops.0.i, -1
  br i1 %tobool24.not.i, label %sw.epilog.i.cleanup.sink.split.i_crit_edge, label %sw.epilog.i.do.body23.i_crit_edge

sw.epilog.i.do.body23.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23.i

sw.epilog.i.cleanup.sink.split.i_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.epilog.i.cleanup.sink.split.i_crit_edge, %if.end.i319.cleanup.sink.split.i_crit_edge
  %.sink91.i = phi i32 [ -9, %if.end.i319.cleanup.sink.split.i_crit_edge ], [ -5, %sw.epilog.i.cleanup.sink.split.i_crit_edge ]
  %222 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %state, align 4
  %and38.i = and i32 %223, %.sink91.i
  store i32 %and38.i, ptr %state, align 4
  br label %if.else137

do.end70:                                         ; preds = %do.end.i317.do.end70_crit_edge, %land.rhs.i316.do.end70_crit_edge, %if.end.i299.do.end70_crit_edge, %land.rhs.i.do.end70_crit_edge, %if.else.i.i.do.end70_crit_edge
  %224 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rx_buf.i, align 4
  %tobool73.not = icmp ne ptr %225, null
  %cond = zext i1 %tobool73.not to i32
  %226 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %xfer, align 4
  %tobool75.not = icmp ne ptr %227, null
  %cond76 = zext i1 %tobool75.not to i32
  %228 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %state, align 4
  %and78 = and i32 %229, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %cond80 = select i1 %tobool79.not, i32 112, i32 102
  %and82 = and i32 %229, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %cond84 = select i1 %tobool83.not, i32 112, i32 102
  %230 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %len.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.88, i32 noundef %cond, i32 noundef %cond76, i32 noundef %cond80, i32 noundef %cond84, i32 noundef %231, i32 noundef %cond87, i32 noundef -5) #14
  br i1 %tobool60.not, label %do.end70.if.end138_crit_edge, label %if.then89

do.end70.if.end138_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

if.then89:                                        ; preds = %do.end70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %s) #11
  %232 = call ptr @memset(ptr %s, i32 255, i32 16)
  %233 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %xfer, align 4
  %tobool91.not = icmp eq ptr %234, null
  br i1 %tobool91.not, label %if.then89.if.end111_crit_edge, label %land.lhs.true92

if.then89.if.end111_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

land.lhs.true92:                                  ; preds = %if.then89
  %235 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %state, align 4
  %and94 = and i32 %236, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %land.lhs.true92.if.end111_crit_edge, label %if.then96

land.lhs.true92.if.end111_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then96:                                        ; preds = %land.lhs.true92
  %237 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %tx_dma.i, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %238, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %240, i32 0, i32 45
  %241 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %device_pause.i, align 4
  %tobool.not.i327 = icmp eq ptr %242, null
  br i1 %tobool.not.i327, label %if.then96.dmaengine_pause.exit_crit_edge, label %if.then.i328

if.then96.dmaengine_pause.exit_crit_edge:         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_pause.exit

if.then.i328:                                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 %242(ptr noundef %238) #11
  br label %dmaengine_pause.exit

dmaengine_pause.exit:                             ; preds = %if.then.i328, %if.then96.dmaengine_pause.exit_crit_edge
  %243 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %tx_dma.i, align 4
  %245 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %cookie, align 4
  %247 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %244, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %248, i32 0, i32 49
  %249 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %device_tx_status.i, align 4
  %call.i329 = call i32 %250(ptr noundef %244, i32 noundef %246, ptr noundef nonnull %s) #11
  %251 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %tx_dma.i, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %252, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %254, i32 0, i32 47
  %255 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i330 = icmp eq ptr %256, null
  br i1 %tobool.not.i330, label %dmaengine_pause.exit.dmaengine_terminate_all.exit_crit_edge, label %if.then.i332

dmaengine_pause.exit.dmaengine_terminate_all.exit_crit_edge: ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_all.exit

if.then.i332:                                     ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i331 = call i32 %256(ptr noundef %252) #11
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i332, %dmaengine_pause.exit.dmaengine_terminate_all.exit_crit_edge
  %257 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.91, i32 noundef %258) #14
  br label %if.end111

if.end111:                                        ; preds = %dmaengine_terminate_all.exit, %land.lhs.true92.if.end111_crit_edge, %if.then89.if.end111_crit_edge
  %259 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %rx_buf.i, align 4
  %tobool113.not = icmp eq ptr %260, null
  br i1 %tobool113.not, label %if.end111.if.end135_crit_edge, label %land.lhs.true114

if.end111.if.end135_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

land.lhs.true114:                                 ; preds = %if.end111
  %261 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %state, align 4
  %and116 = and i32 %262, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %land.lhs.true114.if.end135_crit_edge, label %if.then118

land.lhs.true114.if.end135_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then118:                                       ; preds = %land.lhs.true114
  %263 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rx_dma.i, align 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %264, align 4
  %device_pause.i333 = getelementptr inbounds %struct.dma_device, ptr %266, i32 0, i32 45
  %267 = ptrtoint ptr %device_pause.i333 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %device_pause.i333, align 4
  %tobool.not.i334 = icmp eq ptr %268, null
  br i1 %tobool.not.i334, label %if.then118.dmaengine_pause.exit337_crit_edge, label %if.then.i336

if.then118.dmaengine_pause.exit337_crit_edge:     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_pause.exit337

if.then.i336:                                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  %call.i335 = call i32 %268(ptr noundef %264) #11
  br label %dmaengine_pause.exit337

dmaengine_pause.exit337:                          ; preds = %if.then.i336, %if.then118.dmaengine_pause.exit337_crit_edge
  %269 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rx_dma.i, align 4
  %271 = ptrtoint ptr %cookie125 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %cookie125, align 4
  %273 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %270, align 4
  %device_tx_status.i338 = getelementptr inbounds %struct.dma_device, ptr %274, i32 0, i32 49
  %275 = ptrtoint ptr %device_tx_status.i338 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %device_tx_status.i338, align 4
  %call.i339 = call i32 %276(ptr noundef %270, i32 noundef %272, ptr noundef nonnull %s) #11
  %277 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %rx_dma.i, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %278, align 4
  %device_terminate_all.i340 = getelementptr inbounds %struct.dma_device, ptr %280, i32 0, i32 47
  %281 = ptrtoint ptr %device_terminate_all.i340 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %device_terminate_all.i340, align 4
  %tobool.not.i341 = icmp eq ptr %282, null
  br i1 %tobool.not.i341, label %dmaengine_pause.exit337.dmaengine_terminate_all.exit344_crit_edge, label %if.then.i343

dmaengine_pause.exit337.dmaengine_terminate_all.exit344_crit_edge: ; preds = %dmaengine_pause.exit337
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_all.exit344

if.then.i343:                                     ; preds = %dmaengine_pause.exit337
  call void @__sanitizer_cov_trace_pc() #13
  %call.i342 = call i32 %282(ptr noundef %278) #11
  br label %dmaengine_terminate_all.exit344

dmaengine_terminate_all.exit344:                  ; preds = %if.then.i343, %dmaengine_pause.exit337.dmaengine_terminate_all.exit344_crit_edge
  %283 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.94, i32 noundef %284) #14
  br label %if.end135

if.end135:                                        ; preds = %dmaengine_terminate_all.exit344, %land.lhs.true114.if.end135_crit_edge, %if.end111.if.end135_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %s) #11
  br label %if.end138

if.else137:                                       ; preds = %cleanup.sink.split.i, %if.end.i299.if.else137_crit_edge, %land.lhs.true.i294.if.else137_crit_edge
  call fastcc void @s3c64xx_flush_fifo(ptr noundef %1)
  br label %if.end138

if.end138:                                        ; preds = %if.else137, %if.end135, %do.end70.if.end138_crit_edge
  %status.0349 = phi i32 [ -5, %do.end70.if.end138_crit_edge ], [ -5, %if.end135 ], [ 0, %if.else137 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target_len.1)
  %cmp139 = icmp sgt i32 %target_len.1, 0
  br i1 %cmp139, label %if.then141, label %if.end138.do.end167_crit_edge

if.end138.do.end167_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end167

if.then141:                                       ; preds = %if.end138
  %285 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %len.i, align 4
  %sub = sub i32 %target_len.1, %286
  %287 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %xfer, align 4
  %tobool144.not = icmp eq ptr %288, null
  br i1 %tobool144.not, label %if.then141.if.end148_crit_edge, label %if.then145

if.then141.if.end148_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then145:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %288, i32 %286
  %289 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %add.ptr, ptr %xfer, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.then141.if.end148_crit_edge
  %290 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %rx_buf.i, align 4
  %tobool150.not = icmp eq ptr %291, null
  br i1 %tobool150.not, label %if.end148.if.end155_crit_edge, label %if.then151

if.end148.if.end155_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr154 = getelementptr i8, ptr %291, i32 %286
  %292 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %add.ptr154, ptr %rx_buf.i, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then151, %if.end148.if.end155_crit_edge
  %293 = call i32 @llvm.umin.i32(i32 %sub, i32 %add)
  %294 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %len.i, align 4
  %cmp165 = icmp sgt i32 %sub, 0
  br i1 %cmp165, label %if.end155.do.body_crit_edge, label %if.end155.do.end167_crit_edge

if.end155.do.end167_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end167

if.end155.do.body_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end167:                                        ; preds = %if.end155.do.end167_crit_edge, %if.end138.do.end167_crit_edge, %do.end58
  %status.1 = phi i32 [ %ret.1.i, %do.end58 ], [ %status.0349, %if.end155.do.end167_crit_edge ], [ %status.0349, %if.end138.do.end167_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %origin_len.0)
  %tobool168.not = icmp eq i32 %origin_len.0, 0
  br i1 %tobool168.not, label %do.end167.cleanup_crit_edge, label %if.then169

do.end167.cleanup_crit_edge:                      ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then169:                                       ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #13
  %295 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %tx_buf.0, ptr %xfer, align 4
  %296 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %rx_buf.0, ptr %rx_buf.i, align 4
  %297 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %origin_len.0, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then169, %do.end167.cleanup_crit_edge, %if.then46.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %if.then169 ], [ %status.1, %do.end167.cleanup_crit_edge ], [ %call47.i, %if.then46.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @s3c64xx_spi_can_dma(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %port_conf = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_conf, align 4
  %port_id = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_id, align 4
  %arrayidx = getelementptr [6 x i32], ptr %5, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %shr = ashr i32 %9, 1
  %add = add nsw i32 %shr, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp = icmp ugt i32 %3, %add
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c64xx_spi_hwinit(ptr nocapture noundef %sdd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cntrlr_info = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd, i32 0, i32 6
  %0 = ptrtoint ptr %cntrlr_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cntrlr_info, align 4
  %2 = ptrtoint ptr %sdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdd, align 4
  %cur_speed = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd, i32 0, i32 13
  %4 = ptrtoint ptr %cur_speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_speed, align 4
  %no_cs = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %no_cs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %no_cs, align 4, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %sdd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdd, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !233
  br label %do.body11

if.else:                                          ; preds = %entry
  %port_conf = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd, i32 0, i32 16
  %9 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_conf, align 4
  %quirks = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quirks, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body5, label %if.else.do.body11_crit_edge

if.else.do.body11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

do.body5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !268
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %sdd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdd, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 16777216) #11, !srcloc !233
  br label %do.body11

do.body11:                                        ; preds = %do.body5, %if.else.do.body11_crit_edge, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @arm_heavy_mb() #11
  %add.ptr14 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #11, !srcloc !233
  %port_conf15 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd, i32 0, i32 16
  %15 = ptrtoint ptr %port_conf15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_conf15, align 4
  %clk_from_cmu = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %clk_from_cmu to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %clk_from_cmu, align 1, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not = icmp eq i8 %18, 0
  br i1 %tobool16.not, label %do.body18, label %do.body11.do.body23_crit_edge

do.body11.do.body23_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

do.body18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %shl = shl i32 %20, 9
  %21 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr21 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %21) #11, !srcloc !233
  br label %do.body23

do.body23:                                        ; preds = %do.body18, %do.body11.do.body23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  tail call void @arm_heavy_mb() #11
  %add.ptr26 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #11, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %add.ptr30 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #11, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %add.ptr34 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 503316480) #11, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #11, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %add.ptr42 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 0) #11, !srcloc !233
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  %23 = and i32 %22, -16840736
  %24 = or i32 %23, 63519
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %24) #11, !srcloc !233
  tail call fastcc void @s3c64xx_flush_fifo(ptr noundef %sdd)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !241
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.107) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clr.0 = phi i32 [ 2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and2 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %clr.0, 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.110) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %clr.1 = phi i32 [ %or, %if.then4 ], [ %clr.0, %if.end.if.end9_crit_edge ]
  %and10 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %or13 = or i32 %clr.1, 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.113) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end9.if.end18_crit_edge
  %clr.2 = phi i32 [ %or13, %if.then12 ], [ %clr.1, %if.end9.if.end18_crit_edge ]
  %and19 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.do.body28_crit_edge, label %if.then21

if.end18.do.body28_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body28

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %or22 = or i32 %clr.2, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.116) #14
  br label %do.body28

do.body28:                                        ; preds = %if.then21, %if.end18.do.body28_crit_edge
  %clr.3 = phi i32 [ %or22, %if.then21 ], [ %clr.2, %if.end18.do.body28_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %clr.3)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr32 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %6) #11, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !280
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr37 = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #11, !srcloc !233
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c64xx_flush_fifo(ptr nocapture noundef readonly %sdd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdd, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  tail call void @arm_heavy_mb() #11
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !233
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  %3 = and i32 %2, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #11, !srcloc !233
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !284
  %5 = and i32 %4, -1610612737
  %6 = or i32 %5, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !285
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %6) #11, !srcloc !233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %7 = load i32, ptr @loops_per_jiffy, align 4
  %div = udiv i32 %7, 1000
  %mul = mul nuw nsw i32 %div, 100
  %add.ptr23 = getelementptr i8, ptr %1, i32 20
  %port_conf = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd, i32 0, i32 16
  %port_id = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd, i32 0, i32 17
  br label %do.body20

do.body20:                                        ; preds = %land.rhs.do.body20_crit_edge, %entry
  %loops.0 = phi i32 [ %mul, %entry ], [ %dec, %land.rhs.do.body20_crit_edge ]
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #11, !srcloc !241
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !286
  %shr = lshr i32 %9, 6
  %10 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_conf, align 4
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_id, align 4
  %arrayidx = getelementptr [6 x i32], ptr %11, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %and28 = and i32 %15, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool.not = icmp eq i32 %and28, 0
  br i1 %tobool.not, label %do.end30, label %land.rhs

land.rhs:                                         ; preds = %do.body20
  %dec = add nsw i32 %loops.0, -1
  %tobool29.not = icmp eq i32 %loops.0, 0
  br i1 %tobool29.not, label %land.rhs.if.end_crit_edge, label %land.rhs.do.body20_crit_edge

land.rhs.do.body20_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end30:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0)
  %cmp = icmp eq i32 %loops.0, 0
  br i1 %cmp, label %do.end33, label %do.end30.if.end_crit_edge

do.end30.if.end_crit_edge:                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end33:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd, i32 0, i32 4
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.101) #14
  br label %if.end

if.end:                                           ; preds = %do.end33, %do.end30.if.end_crit_edge, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %18 = load i32, ptr @loops_per_jiffy, align 4
  %div34 = udiv i32 %18, 1000
  %mul35 = mul nuw nsw i32 %div34, 100
  %add.ptr55 = getelementptr i8, ptr %1, i32 28
  br label %do.body37

do.body37:                                        ; preds = %if.then52.do.body37_crit_edge, %if.end
  %loops.2 = phi i32 [ %mul35, %if.end ], [ %dec61, %if.then52.do.body37_crit_edge ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #11, !srcloc !241
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !287
  %21 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_conf, align 4
  %rx_lvl_offset = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %rx_lvl_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_lvl_offset, align 4
  %shr45 = lshr i32 %20, %24
  %25 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_id, align 4
  %arrayidx49 = getelementptr [6 x i32], ptr %22, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx49, align 4
  %and50 = and i32 %28, %shr45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.end63, label %if.then52

if.then52:                                        ; preds = %do.body37
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !288
  %dec61 = add nsw i32 %loops.2, -1
  %tobool62.not = icmp eq i32 %loops.2, 0
  br i1 %tobool62.not, label %if.then52.if.end71_crit_edge, label %if.then52.do.body37_crit_edge

if.then52.do.body37_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

if.then52.if.end71_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

do.end63:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.2)
  %cmp64 = icmp eq i32 %loops.2, 0
  br i1 %cmp64, label %do.end68, label %do.end63.if.end71_crit_edge

do.end63.if.end71_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

do.end68:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  %pdev69 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd, i32 0, i32 4
  %30 = ptrtoint ptr %pdev69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev69, align 4
  %dev70 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev70, ptr noundef nonnull @.str.104) #14
  br label %if.end71

if.end71:                                         ; preds = %do.end68, %do.end63.if.end71_crit_edge, %if.then52.if.end71_crit_edge
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !289
  %33 = and i32 %32, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !290
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %33) #11, !srcloc !233
  %add.ptr85 = getelementptr i8, ptr %1, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #11, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !291
  %35 = and i32 %34, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !292
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %35) #11, !srcloc !233
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_dma(ptr noundef %dma, ptr nocapture noundef readonly %sgt) unnamed_addr #2 align 64 {
entry:
  %config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #11
  %0 = call ptr @memset(ptr %config, i32 0, i32 48)
  %direction = getelementptr inbounds %struct.s3c64xx_spi_dma_data, ptr %dma, i32 0, i32 2
  %1 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dma, i32 -148
  %3 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %config, align 4
  %sfr_start = getelementptr i8, ptr %dma, i32 -76
  %4 = ptrtoint ptr %sfr_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sfr_start, align 4
  %add = add i32 %5, 28
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %6 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %src_addr, align 4
  %cur_bpw = getelementptr i8, ptr %dma, i32 -8
  %7 = ptrtoint ptr %cur_bpw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_bpw, align 4
  %div59 = lshr i32 %8, 3
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %9 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div59, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 5
  %10 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %src_maxburst, align 4
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 %16(ptr noundef %12, ptr noundef nonnull %config) #11
  br label %if.endthread-pre-split

if.else:                                          ; preds = %entry
  %add.ptr5 = getelementptr i8, ptr %dma, i32 -160
  %17 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %2, ptr %config, align 4
  %sfr_start8 = getelementptr i8, ptr %dma, i32 -88
  %18 = ptrtoint ptr %sfr_start8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sfr_start8, align 4
  %add9 = add i32 %19, 24
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 2
  %20 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add9, ptr %dst_addr, align 4
  %cur_bpw10 = getelementptr i8, ptr %dma, i32 -20
  %21 = ptrtoint ptr %cur_bpw10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_bpw10, align 4
  %div1158 = lshr i32 %22, 3
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %23 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div1158, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 6
  %24 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %dst_maxburst, align 4
  %25 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %device_config.i60 = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %device_config.i60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_config.i60, align 4
  %tobool.not.i61 = icmp eq ptr %30, null
  br i1 %tobool.not.i61, label %if.else.if.end_crit_edge, label %if.then.i63

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i63:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call.i62 = call i32 %30(ptr noundef %26, ptr noundef nonnull %config) #11
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %if.then.i63, %if.then.i
  %sdd.0.ph = phi ptr [ %add.ptr5, %if.then.i63 ], [ %add.ptr, %if.then.i ]
  %31 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load ptr, ptr %dma, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %32 = phi ptr [ %.pr, %if.endthread-pre-split ], [ %26, %if.else.if.end_crit_edge ], [ %12, %if.then.if.end_crit_edge ]
  %sdd.0 = phi ptr [ %sdd.0.ph, %if.endthread-pre-split ], [ %add.ptr5, %if.else.if.end_crit_edge ], [ %add.ptr, %if.then.if.end_crit_edge ]
  %33 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sgt, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %35 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nents, align 4
  %37 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %direction, align 4
  %tobool.not.i65 = icmp eq ptr %32, null
  br i1 %tobool.not.i65, label %if.end.do.end_crit_edge, label %lor.lhs.false.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.end
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %32, align 4
  %tobool1.not.i = icmp eq ptr %40, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 39
  %41 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %42, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i66 = call ptr %42(ptr noundef nonnull %32, ptr noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef 1, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call.i66, null
  br i1 %tobool.not, label %dmaengine_prep_slave_sg.exit.do.end_crit_edge, label %if.end20

dmaengine_prep_slave_sg.exit.do.end_crit_edge:    ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_sg.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd.0, i32 0, i32 4
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp19 = icmp eq i32 %46, 2
  %cond = select i1 %cmp19, ptr @.str.43, ptr @.str.47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef nonnull %cond) #14
  br label %cleanup

if.end20:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i66, i32 0, i32 6
  %47 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @s3c64xx_spi_dmacb, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i66, i32 0, i32 8
  %48 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dma, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i66, i32 0, i32 4
  %49 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_submit.i, align 4
  %call.i67 = call i32 %50(ptr noundef nonnull %call.i66) #11
  %cookie = getelementptr inbounds %struct.s3c64xx_spi_dma_data, ptr %dma, i32 0, i32 1
  %51 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call.i67, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i67)
  %tobool24.not = icmp sgt i32 %call.i67, -1
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %pdev29 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd.0, i32 0, i32 4
  %52 = ptrtoint ptr %pdev29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev29, align 4
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.99) #14
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 50
  %58 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_issue_pending.i, align 4
  call void %59(ptr noundef %55) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end28, %do.end
  %retval.0 = phi i32 [ -5, %do.end28 ], [ 0, %if.end31 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_spi_dmacb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %direction = getelementptr inbounds %struct.s3c64xx_spi_dma_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %sdd.0.v = select i1 %cmp, i32 -148, i32 -160
  %sdd.0 = getelementptr i8, ptr %data, i32 %sdd.0.v
  %lock = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd.0, i32 0, i32 7
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp11 = icmp eq i32 %3, 2
  %state = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd.0, i32 0, i32 10
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  br i1 %cmp11, label %if.then13, label %if.else18

if.then13:                                        ; preds = %entry
  %and = and i32 %5, -5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %state, align 4
  %and15 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.then13.if.end27.sink.split_crit_edge, label %if.then13.if.end27_crit_edge

if.then13.if.end27_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then13.if.end27.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.sink.split

if.else18:                                        ; preds = %entry
  %and20 = and i32 %5, -9
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and20, ptr %state, align 4
  %and22 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else18.if.end27.sink.split_crit_edge, label %if.else18.if.end27_crit_edge

if.else18.if.end27_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else18.if.end27.sink.split_crit_edge:          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else18.if.end27.sink.split_crit_edge, %if.then13.if.end27.sink.split_crit_edge
  %xfer_completion25 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %sdd.0, i32 0, i32 9
  tail call void @complete(ptr noundef %xfer_completion25) #11
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.else18.if.end27_crit_edge, %if.then13.if.end27_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_suspend(ptr noundef %dev) #2 align 64 {
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
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cur_speed = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %cur_speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_resume(ptr noundef %dev) #2 align 64 {
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
  %cntrlr_info = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cntrlr_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cntrlr_info, align 4
  %cfg_gpio = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg_gpio, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 %7() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @spi_controller_resume(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %clk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  %src_clk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %ioclk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ioclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioclk, align 4
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_spi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %port_conf = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %port_conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_conf, align 4
  %clk_ioclk = getelementptr inbounds %struct.s3c64xx_spi_port_config, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %clk_ioclk to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clk_ioclk, align 2, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %ioclk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ioclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %src_clk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src_clk, align 4
  %call.i28 = tail call i32 @clk_prepare(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end.i32, label %if.end4.err_disable_ioclk_crit_edge

if.end4.err_disable_ioclk_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_disable_ioclk

if.end.i32:                                       ; preds = %if.end4
  %call1.i30 = tail call i32 @clk_enable(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool2.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool2.not.i31, label %if.end8, label %if.end.i32.err_disable_ioclk.sink.split_crit_edge

if.end.i32.err_disable_ioclk.sink.split_crit_edge: ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_disable_ioclk.sink.split

if.end8:                                          ; preds = %if.end.i32
  %clk = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call.i36 = tail call i32 @clk_prepare(ptr noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %if.end.i40, label %if.end8.err_disable_src_clk_crit_edge

if.end8.err_disable_src_clk_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_disable_src_clk

if.end.i40:                                       ; preds = %if.end8
  %call1.i38 = tail call i32 @clk_enable(ptr noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool2.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool2.not.i39, label %if.end12, label %if.then3.i41

if.then3.i41:                                     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %13) #11
  br label %err_disable_src_clk

if.end12:                                         ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @s3c64xx_spi_hwinit(ptr noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1006632960) #11, !srcloc !233
  br label %cleanup

err_disable_src_clk:                              ; preds = %if.then3.i41, %if.end8.err_disable_src_clk_crit_edge
  %retval.0.i42.ph = phi i32 [ %call1.i38, %if.then3.i41 ], [ %call.i36, %if.end8.err_disable_src_clk_crit_edge ]
  %16 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src_clk, align 4
  tail call void @clk_disable(ptr noundef %17) #11
  br label %err_disable_ioclk.sink.split

err_disable_ioclk.sink.split:                     ; preds = %err_disable_src_clk, %if.end.i32.err_disable_ioclk.sink.split_crit_edge
  %.sink = phi ptr [ %17, %err_disable_src_clk ], [ %11, %if.end.i32.err_disable_ioclk.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %retval.0.i42.ph, %err_disable_src_clk ], [ %call1.i30, %if.end.i32.err_disable_ioclk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #11
  br label %err_disable_ioclk

err_disable_ioclk:                                ; preds = %err_disable_ioclk.sink.split, %if.end4.err_disable_ioclk_crit_edge
  %ret.0 = phi i32 [ %call.i28, %if.end4.err_disable_ioclk_crit_edge ], [ %ret.0.ph, %err_disable_ioclk.sink.split ]
  %ioclk14 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %ioclk14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioclk14, align 4
  tail call void @clk_disable(ptr noundef %19) #11
  tail call void @clk_unprepare(ptr noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %err_disable_ioclk, %if.end12, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_disable_ioclk ], [ 0, %if.end12 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !111, !112, !113, !114, !116, !118, !119, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !144, !145, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !207, !209, !211, !213, !215, !217, !219}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @__UNIQUE_ID_alias243, !1, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1489, i32 1}
!2 = !{ptr @__initcall__kmod_spi_s3c64xx__244_1491_s3c64xx_spi_driver_init6, !3, !"__initcall__kmod_spi_s3c64xx__244_1491_s3c64xx_spi_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1491, i32 1}
!4 = !{ptr @__exitcall_s3c64xx_spi_driver_exit, !3, !"__exitcall_s3c64xx_spi_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author245, !6, !"__UNIQUE_ID_author245", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1493, i32 1}
!7 = !{ptr @__UNIQUE_ID_description246, !8, !"__UNIQUE_ID_description246", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1494, i32 1}
!9 = !{ptr @__UNIQUE_ID_file247, !10, !"__UNIQUE_ID_file247", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1495, i32 1}
!11 = !{ptr @__UNIQUE_ID_license248, !10, !"__UNIQUE_ID_license248", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1481, i32 11}
!14 = !{ptr @s3c64xx_spi_driver, !15, !"s3c64xx_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1479, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1078, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @s3c64xx_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @s3c64xx_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1084, i32 3}
!26 = !{ptr @s3c64xx_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @s3c64xx_spi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1090, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @s3c64xx_spi_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @s3c64xx_spi_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1097, i32 3}
!35 = !{ptr @s3c64xx_spi_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @s3c64xx_spi_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1110, i32 44}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1112, i32 4}
!41 = !{ptr @s3c64xx_spi_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @s3c64xx_spi_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1150, i32 3}
!45 = !{ptr @s3c64xx_spi_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @s3c64xx_spi_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1158, i32 3}
!49 = !{ptr @s3c64xx_spi_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @s3c64xx_spi_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1165, i32 3}
!53 = !{ptr @s3c64xx_spi_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @s3c64xx_spi_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1169, i32 20}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1172, i32 3}
!59 = !{ptr @s3c64xx_spi_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @s3c64xx_spi_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1180, i32 3}
!63 = !{ptr @s3c64xx_spi_probe._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @s3c64xx_spi_probe._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1185, i32 41}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1187, i32 4}
!69 = !{ptr @s3c64xx_spi_probe._entry.37, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @s3c64xx_spi_probe._entry_ptr.39, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1194, i32 4}
!73 = !{ptr @s3c64xx_spi_probe._entry.40, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @s3c64xx_spi_probe._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1201, i32 49}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1203, i32 4}
!79 = !{ptr @s3c64xx_spi_probe._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @s3c64xx_spi_probe._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1207, i32 49}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1209, i32 4}
!85 = !{ptr @s3c64xx_spi_probe._entry.48, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @s3c64xx_spi_probe._entry_ptr.50, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @s3c64xx_spi_probe.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1224, i32 2}
!89 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1228, i32 5}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1230, i32 3}
!94 = !{ptr @s3c64xx_spi_probe._entry.53, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @s3c64xx_spi_probe._entry_ptr.55, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1241, i32 3}
!98 = !{ptr @s3c64xx_spi_probe._entry.56, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @s3c64xx_spi_probe._entry_ptr.58, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1245, i32 2}
!102 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @s3c64xx_spi_probe.__UNIQUE_ID_ddebug241, !101, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1247, i32 2}
!106 = !{ptr @s3c64xx_spi_probe.__UNIQUE_ID_ddebug242, !105, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1027, i32 41}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1028, i32 3}
!111 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @s3c64xx_spi_parse_dt._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @s3c64xx_spi_parse_dt._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1034, i32 41}
!116 = !{ptr @.str.67, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1035, i32 3}
!118 = !{ptr @s3c64xx_spi_parse_dt._entry.66, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @s3c64xx_spi_parse_dt._entry_ptr.68, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.69, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1041, i32 51}
!122 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/spi/spi-s3c64xx.c", i32 843, i32 3}
!124 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @s3c64xx_spi_setup._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @s3c64xx_spi_setup._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-s3c64xx.c", i32 852, i32 5}
!129 = !{ptr @s3c64xx_spi_setup._entry.72, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @s3c64xx_spi_setup._entry_ptr.74, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/spi/spi-s3c64xx.c", i32 893, i32 4}
!133 = !{ptr @s3c64xx_spi_setup._entry.75, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @s3c64xx_spi_setup._entry_ptr.77, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/spi/spi-s3c64xx.c", i32 795, i32 3}
!137 = !{ptr @.str.79, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @s3c64xx_get_slave_ctrldata._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @s3c64xx_get_slave_ctrldata._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.80, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/spi/spi-s3c64xx.c", i32 799, i32 43}
!142 = !{ptr @.str.82, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/spi/spi-s3c64xx.c", i32 801, i32 3}
!144 = !{ptr @s3c64xx_get_slave_ctrldata._entry.81, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @s3c64xx_get_slave_ctrldata._entry_ptr.83, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.84, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/spi/spi-s3c64xx.c", i32 811, i32 32}
!148 = !{ptr @.str.85, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/spi/spi-s3c64xx.c", i32 723, i32 4}
!150 = !{ptr @.str.86, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @s3c64xx_spi_transfer_one._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @s3c64xx_spi_transfer_one._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.88, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/spi/spi-s3c64xx.c", i32 733, i32 4}
!155 = !{ptr @s3c64xx_spi_transfer_one._entry.87, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @s3c64xx_spi_transfer_one._entry_ptr.89, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.91, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/spi/spi-s3c64xx.c", i32 747, i32 6}
!159 = !{ptr @s3c64xx_spi_transfer_one._entry.90, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @s3c64xx_spi_transfer_one._entry_ptr.92, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.94, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/spi/spi-s3c64xx.c", i32 754, i32 6}
!163 = !{ptr @s3c64xx_spi_transfer_one._entry.93, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @s3c64xx_spi_transfer_one._entry_ptr.95, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.96, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/spi/spi-s3c64xx.c", i32 304, i32 3}
!167 = !{ptr @.str.97, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @prepare_dma._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @prepare_dma._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.99, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/spi/spi-s3c64xx.c", i32 315, i32 3}
!172 = !{ptr @prepare_dma._entry.98, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @prepare_dma._entry_ptr.100, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.101, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/spi/spi-s3c64xx.c", i32 221, i32 3}
!176 = !{ptr @.str.102, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @s3c64xx_flush_fifo._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @s3c64xx_flush_fifo._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.104, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/spi/spi-s3c64xx.c", i32 234, i32 3}
!181 = !{ptr @s3c64xx_flush_fifo._entry.103, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @s3c64xx_flush_fifo._entry_ptr.105, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @init_completion.__key, !184, !"__key", i1 false, i1 false}
!184 = !{!"../include/linux/completion.h", i32 87, i32 2}
!185 = !{ptr @.str.106, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.107, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/spi/spi-s3c64xx.c", i32 954, i32 3}
!188 = !{ptr @.str.108, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @s3c64xx_spi_irq._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @s3c64xx_spi_irq._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.110, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/spi/spi-s3c64xx.c", i32 958, i32 3}
!193 = !{ptr @s3c64xx_spi_irq._entry.109, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @s3c64xx_spi_irq._entry_ptr.111, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.113, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/spi/spi-s3c64xx.c", i32 962, i32 3}
!197 = !{ptr @s3c64xx_spi_irq._entry.112, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @s3c64xx_spi_irq._entry_ptr.114, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.116, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/spi/spi-s3c64xx.c", i32 966, i32 3}
!201 = !{ptr @s3c64xx_spi_irq._entry.115, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @s3c64xx_spi_irq._entry_ptr.117, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @s3c64xx_spi_dt_match, !204, !"s3c64xx_spi_dt_match", i1 false, i1 false}
!204 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1456, i32 34}
!205 = !{ptr @s3c2443_spi_port_config, !206, !"s3c2443_spi_port_config", i1 false, i1 false}
!206 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1397, i32 45}
!207 = !{ptr @s3c6410_spi_port_config, !208, !"s3c6410_spi_port_config", i1 false, i1 false}
!208 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1404, i32 45}
!209 = !{ptr @s5pv210_spi_port_config, !210, !"s5pv210_spi_port_config", i1 false, i1 false}
!210 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1410, i32 45}
!211 = !{ptr @exynos4_spi_port_config, !212, !"exynos4_spi_port_config", i1 false, i1 false}
!212 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1417, i32 45}
!213 = !{ptr @exynos7_spi_port_config, !214, !"exynos7_spi_port_config", i1 false, i1 false}
!214 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1426, i32 45}
!215 = !{ptr @exynos5433_spi_port_config, !216, !"exynos5433_spi_port_config", i1 false, i1 false}
!216 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1435, i32 45}
!217 = !{ptr @s3c64xx_spi_pm, !218, !"s3c64xx_spi_pm", i1 false, i1 false}
!218 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1391, i32 32}
!219 = !{ptr @s3c64xx_spi_driver_ids, !220, !"s3c64xx_spi_driver_ids", i1 false, i1 false}
!220 = !{!"../drivers/spi/spi-s3c64xx.c", i32 1445, i32 40}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{!"auto-init"}
!231 = !{i8 0, i8 2}
!232 = !{i64 2154761235}
!233 = !{i64 4654259}
!234 = !{i64 2148991754, i64 2148991759, i64 2148991772, i64 2148991816, i64 2148991850, i64 2148991871}
!235 = !{i64 2148390280}
!236 = !{i64 875900, i64 875925, i64 875947, i64 875963, i64 875975, i64 875995, i64 876019, i64 876035, i64 876047}
!237 = !{i64 2148390468}
!238 = !{i64 2154769023}
!239 = !{i64 2154689980}
!240 = !{i64 2154702640}
!241 = !{i64 4654677}
!242 = !{i64 2154698302}
!243 = !{i64 2154698522}
!244 = !{i64 2154699158}
!245 = !{i64 2154699554}
!246 = !{i64 2154700190}
!247 = !{i64 2154700467}
!248 = !{i64 2154701103}
!249 = !{i64 2154701326}
!250 = !{i64 2154701962}
!251 = !{i64 2154702182}
!252 = !{i64 2154688678}
!253 = !{i64 2154689333}
!254 = !{i64 2154689566}
!255 = !{i64 2154690852}
!256 = !{i64 2154691333}
!257 = !{i64 2154691628}
!258 = !{i64 2154692433}
!259 = !{i64 2154692978}
!260 = !{i64 2154693374}
!261 = !{i64 2154696154}
!262 = !{i64 2154696593}
!263 = !{i64 2154696435}
!264 = !{i64 2154697060}
!265 = !{i64 2154697580}
!266 = !{i64 2154694127}
!267 = !{i64 2154726752}
!268 = !{i64 2154727157}
!269 = !{i64 2154727551}
!270 = !{i64 2154727946}
!271 = !{i64 2154728377}
!272 = !{i64 2154728751}
!273 = !{i64 2154729155}
!274 = !{i64 2154729535}
!275 = !{i64 2154729909}
!276 = !{i64 2154730539}
!277 = !{i64 2154730802}
!278 = !{i64 2154719754}
!279 = !{i64 2154725978}
!280 = !{i64 2154726368}
!281 = !{i64 2154666670}
!282 = !{i64 2154667300}
!283 = !{i64 2154667527}
!284 = !{i64 2154668163}
!285 = !{i64 2154668390}
!286 = !{i64 2154669076}
!287 = !{i64 2154671330}
!288 = !{i64 2154671928}
!289 = !{i64 2154674040}
!290 = !{i64 2154674260}
!291 = !{i64 2154674896}
!292 = !{i64 2154675123}
!293 = !{i64 2154769825}
