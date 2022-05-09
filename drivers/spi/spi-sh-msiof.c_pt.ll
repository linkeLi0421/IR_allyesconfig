; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-sh-msiof.c_pt.bc'
source_filename = "../drivers/spi/spi-sh-msiof.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.sh_msiof_chipdata = type { i32, i16, i16, i16, i16 }
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
%struct.sh_msiof_spi_info = type { i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.sh_msiof_spi_priv = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@__initcall__kmod_spi_sh_msiof__248_1424_sh_msiof_spi_drv_init6 = internal global ptr @sh_msiof_spi_drv_init, section ".initcall6.init", align 4
@sh_msiof_spi_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sh_msiof_spi_probe, ptr @sh_msiof_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_msiof_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_msiof_spi_pm_ops, ptr null, ptr null }, ptr @spi_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sh_msiof_spi_drv_exit = internal global ptr @sh_msiof_spi_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [70 x i8] c"spi_sh_msiof.description=SuperH MSIOF SPI Controller Interface Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [32 x i8] c"spi_sh_msiof.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [43 x i8] c"spi_sh_msiof.file=drivers/spi/spi-sh-msiof\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [28 x i8] c"spi_sh_msiof.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_sh_msiof\00", [19 x i8] zeroinitializer }, align 32
@sh_msiof_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh-mobile-msiof\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sh_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-msiof\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-msiof\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh-msiof\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sh_data }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@sh_msiof_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_msiof_spi_suspend, ptr @sh_msiof_spi_resume, ptr @sh_msiof_spi_suspend, ptr @sh_msiof_spi_resume, ptr @sh_msiof_spi_suspend, ptr @sh_msiof_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@spi_driver_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"spi_sh_msiof\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh_data to i32) }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sh_msiof_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to obtain device info\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sh_msiof_spi_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-sh-msiof.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_msiof_spi_probe._entry_ptr = internal global ptr @sh_msiof_spi_probe._entry, section ".printk_index", align 4
@sh_msiof_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@sh_msiof_spi_probe._entry_ptr.8 = internal global ptr @sh_msiof_spi_probe._entry.6, section ".printk_index", align 4
@sh_msiof_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@sh_msiof_spi_probe._entry_ptr.11 = internal global ptr @sh_msiof_spi_probe._entry.9, section ".printk_index", align 4
@sh_msiof_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1359, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA not available, using PIO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sh_msiof_spi_probe._entry_ptr.15 = internal global ptr @sh_msiof_spi_probe._entry.12, section ".printk_index", align 4
@sh_msiof_spi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"devm_spi_register_controller error.\0A\00", [59 x i8] zeroinitializer }, align 32
@sh_msiof_spi_probe._entry_ptr.18 = internal global ptr @sh_msiof_spi_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi-slave\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"renesas,tx-fifo-size\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"renesas,rx-fifo-size\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"renesas,dtdl\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"renesas,syncdl\00", [17 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sh_msiof_spi_get_dtdl_and_syncdl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 331, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DTDL or SYNCDL is too large\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sh_msiof_spi_get_dtdl_and_syncdl\00", [63 x i8] zeroinitializer }, align 32
@sh_msiof_spi_get_dtdl_and_syncdl._entry_ptr = internal global ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry, section ".printk_index", align 4
@sh_msiof_spi_get_dtdl_and_syncdl._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 337, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"the sum of DTDL/SYNCDL is not good\0A\00", [60 x i8] zeroinitializer }, align 32
@sh_msiof_spi_get_dtdl_and_syncdl._entry_ptr.30 = internal global ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry.28, section ".printk_index", align 4
@sh_msiof_transfer_one.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@sh_msiof_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 958, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DMA not available, falling back to PIO\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sh_msiof_transfer_one\00", [42 x i8] zeroinitializer }, align 32
@sh_msiof_transfer_one._entry_ptr = internal global ptr @sh_msiof_transfer_one._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid clock rate parameters %lu and %u\0A\00", [54 x i8] zeroinitializer }, align 32
@sh_msiof_spi_set_clk_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Requested SPI transfer rate %d is too low\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sh_msiof_spi_set_clk_regs\00", [38 x i8] zeroinitializer }, align 32
@sh_msiof_spi_set_clk_regs._entry_ptr = internal global ptr @sh_msiof_spi_set_clk_regs._entry, section ".printk_index", align 4
@sh_msiof_spi_div_array = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 7, i32 0, i32 1, i32 2, i32 3, i32 4], [40 x i8] zeroinitializer }, align 32
@sh_msiof_dma_once._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 810, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to start hardware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sh_msiof_dma_once\00", [46 x i8] zeroinitializer }, align 32
@sh_msiof_dma_once._entry_ptr = internal global ptr @sh_msiof_dma_once._entry, section ".printk_index", align 4
@sh_msiof_dma_once._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 841, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to shut down hardware\0A\00", [34 x i8] zeroinitializer }, align 32
@sh_msiof_dma_once._entry_ptr.40 = internal global ptr @sh_msiof_dma_once._entry.38, section ".printk_index", align 4
@sh_msiof_wait_for_completion.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -92, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sh_msiof_wait_for_completion\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"interrupted\0A\00", [19 x i8] zeroinitializer }, align 32
@sh_msiof_wait_for_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 663, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeout\0A\00", [23 x i8] zeroinitializer }, align 32
@sh_msiof_wait_for_completion._entry_ptr = internal global ptr @sh_msiof_wait_for_completion._entry, section ".printk_index", align 4
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@sh_msiof_spi_txrx_once._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.45, ptr @.str.3, i32 707, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sh_msiof_spi_txrx_once\00", [41 x i8] zeroinitializer }, align 32
@sh_msiof_spi_txrx_once._entry_ptr = internal global ptr @sh_msiof_spi_txrx_once._entry, section ".printk_index", align 4
@sh_msiof_spi_txrx_once._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.45, ptr @.str.3, i32 725, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sh_msiof_spi_txrx_once._entry_ptr.47 = internal global ptr @sh_msiof_spi_txrx_once._entry.46, section ".printk_index", align 4
@sh_msiof_request_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 1225, ptr @.str.50, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA available\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sh_msiof_request_dma\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sh_msiof_request_dma._entry_ptr = internal global ptr @sh_msiof_request_dma._entry, section ".printk_index", align 4
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@sh_msiof_request_dma_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 1143, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dma_request_slave_channel_compat failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sh_msiof_request_dma_chan\00", [38 x i8] zeroinitializer }, align 32
@sh_msiof_request_dma_chan._entry_ptr = internal global ptr @sh_msiof_request_dma_chan._entry, section ".printk_index", align 4
@sh_msiof_request_dma_chan._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 1159, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dmaengine_slave_config failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sh_msiof_request_dma_chan._entry_ptr.57 = internal global ptr @sh_msiof_request_dma_chan._entry.55, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@sh_data = internal constant { %struct.sh_msiof_chipdata, [20 x i8] } { %struct.sh_msiof_chipdata { i32 -128, i16 64, i16 64, i16 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@rcar_gen2_data = internal constant { %struct.sh_msiof_chipdata, [20 x i8] } { %struct.sh_msiof_chipdata { i32 -2139062144, i16 64, i16 64, i16 16, i16 0 }, [20 x i8] zeroinitializer }, align 32
@rcar_gen3_data = internal constant { %struct.sh_msiof_chipdata, [20 x i8] } { %struct.sh_msiof_chipdata { i32 -2139062144, i16 64, i16 64, i16 16, i16 1 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"sh_msiof_spi_drv\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1414, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1419, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"sh_msiof_match\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1076, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"sh_msiof_spi_pm_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1407, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"spi_driver_ids\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1386, i32 40 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1278, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1303, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1323, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1359, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1363, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1104, i32 41 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1109, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1110, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1112, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1114, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1115, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 87, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 331, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 337, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 957, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 271, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 291, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [23 x i8] c"sh_msiof_spi_div_array\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 256, i32 18 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 810, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 841, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 658, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 663, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1169, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 707, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 725, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1225, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1141, i32 29 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1141, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1143, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1159, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 326, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant [8 x i8] c"sh_data\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1050, i32 39 }
@___asan_gen_.264 = private unnamed_addr constant [15 x i8] c"rcar_gen2_data\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1058, i32 39 }
@___asan_gen_.267 = private unnamed_addr constant [15 x i8] c"rcar_gen3_data\00", align 1
@___asan_gen_.268 = private constant [30 x i8] c"../drivers/spi/spi-sh-msiof.c\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1067, i32 39 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_sh_msiof_spi_drv_exit, ptr @__initcall__kmod_spi_sh_msiof__248_1424_sh_msiof_spi_drv_init6, ptr @sh_msiof_dma_once._entry, ptr @sh_msiof_dma_once._entry.38, ptr @sh_msiof_dma_once._entry_ptr, ptr @sh_msiof_dma_once._entry_ptr.40, ptr @sh_msiof_request_dma._entry, ptr @sh_msiof_request_dma._entry_ptr, ptr @sh_msiof_request_dma_chan._entry, ptr @sh_msiof_request_dma_chan._entry.55, ptr @sh_msiof_request_dma_chan._entry_ptr, ptr @sh_msiof_request_dma_chan._entry_ptr.57, ptr @sh_msiof_spi_drv_exit, ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry, ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry.28, ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry_ptr, ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry_ptr.30, ptr @sh_msiof_spi_probe._entry, ptr @sh_msiof_spi_probe._entry.12, ptr @sh_msiof_spi_probe._entry.16, ptr @sh_msiof_spi_probe._entry.6, ptr @sh_msiof_spi_probe._entry.9, ptr @sh_msiof_spi_probe._entry_ptr, ptr @sh_msiof_spi_probe._entry_ptr.11, ptr @sh_msiof_spi_probe._entry_ptr.15, ptr @sh_msiof_spi_probe._entry_ptr.18, ptr @sh_msiof_spi_probe._entry_ptr.8, ptr @sh_msiof_spi_set_clk_regs._entry, ptr @sh_msiof_spi_set_clk_regs._entry_ptr, ptr @sh_msiof_spi_txrx_once._entry, ptr @sh_msiof_spi_txrx_once._entry.46, ptr @sh_msiof_spi_txrx_once._entry_ptr, ptr @sh_msiof_spi_txrx_once._entry_ptr.47, ptr @sh_msiof_transfer_one._entry, ptr @sh_msiof_transfer_one._entry_ptr, ptr @sh_msiof_wait_for_completion._entry, ptr @sh_msiof_wait_for_completion._entry_ptr, ptr @sh_msiof_spi_drv, ptr @.str, ptr @sh_msiof_match, ptr @sh_msiof_spi_pm_ops, ptr @spi_driver_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @init_completion.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @sh_msiof_spi_div_array, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @sh_data, ptr @rcar_gen2_data, ptr @rcar_gen3_data], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_driver_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_set_clk_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_div_array to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_dma_once._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_dma_once._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_wait_for_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_txrx_once._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_spi_txrx_once._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_request_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_request_dma_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_msiof_request_dma_chan._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_msiof_spi_drv, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_msiof_spi_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs.i) #8
  %2 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_cs.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.sh_msiof_spi_parse_dt.exit_crit_edge, label %if.end.i

if.then.sh_msiof_spi_parse_dt.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_msiof_spi_parse_dt.exit

if.end.i:                                         ; preds = %if.then
  %call.i26.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #8
  %tobool.i.i = icmp ne ptr %call.i26.i, null
  %cond.i = zext i1 %tobool.i.i to i32
  %mode.i = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %call.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond.i, ptr %mode.i, align 4
  br i1 %tobool.i.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %num_cs.i, i32 noundef 1, i32 noundef 0) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %call.i.i27.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #8
  %rx_fifo_override.i = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %call.i.i, i32 0, i32 1
  %call.i.i28.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %rx_fifo_override.i, i32 noundef 1, i32 noundef 0) #8
  %dtdl.i = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %call.i.i, i32 0, i32 6
  %call.i.i29.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef %dtdl.i, i32 noundef 1, i32 noundef 0) #8
  %syncdl.i = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %call.i.i, i32 0, i32 7
  %call.i.i30.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %syncdl.i, i32 noundef 1, i32 noundef 0) #8
  %4 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cs.i, align 4
  %conv.i = trunc i32 %5 to i16
  %num_chipselect.i = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %call.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %num_chipselect.i, align 4
  br label %sh_msiof_spi_parse_dt.exit

sh_msiof_spi_parse_dt.exit:                       ; preds = %if.end5.i, %if.then.sh_msiof_spi_parse_dt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %7 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  %11 = inttoptr i32 %10 to ptr
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %sh_msiof_spi_parse_dt.exit
  %chipdata.0 = phi ptr [ %call, %sh_msiof_spi_parse_dt.exit ], [ %11, %if.else ]
  %info.0 = phi ptr [ %call.i.i, %sh_msiof_spi_parse_dt.exit ], [ %13, %if.else ]
  %tobool5.not = icmp eq ptr %info.0, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %info.0, i32 0, i32 3
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  %call.i205 = call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 164, i1 noundef zeroext %cmp) #8
  %cmp16 = icmp eq ptr %call.i205, null
  br i1 %cmp16, label %if.end8.cleanup_crit_edge, label %if.end18

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i205, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i206 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i206 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %driver_data.i.i206, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i205, ptr %17, align 4
  %info21 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %info21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %info.0, ptr %info21, align 4
  %min_div_pow = getelementptr inbounds %struct.sh_msiof_chipdata, ptr %chipdata.0, i32 0, i32 4
  %21 = ptrtoint ptr %min_div_pow to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %min_div_pow, align 2
  %conv = zext i16 %22 to i32
  %min_div_pow22 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 9
  %23 = ptrtoint ptr %min_div_pow22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %min_div_pow22, align 4
  %done = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 5
  %24 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #8
  %done_txdma = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 6
  %25 = ptrtoint ptr %done_txdma to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %done_txdma, align 4
  %wait.i207 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i207, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #8
  %call24 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 2
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call24, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end30, label %if.end34

do.end30:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %spi_controller_put.exit

if.end34:                                         ; preds = %if.end18
  %call35 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.spi_controller_put.exit_crit_edge, label %if.end39

if.end34.spi_controller_put.exit_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end39:                                         ; preds = %if.end34
  %call40 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %mapbase = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 1
  %30 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call40, ptr %mapbase, align 4
  %cmp.i208 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %call40 to i32
  br label %spi_controller_put.exit

if.end46:                                         ; preds = %if.end39
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i209 = icmp eq ptr %33, null
  br i1 %tobool.not.i209, label %if.end.i210, label %if.end46.dev_name.exit_crit_edge

if.end46.dev_name.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i210:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i210, %if.end46.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %35, %if.end.i210 ], [ %33, %if.end46.dev_name.exit_crit_edge ]
  %call.i211 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call35, ptr noundef nonnull @sh_msiof_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool51.not = icmp eq i32 %call.i211, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %spi_controller_put.exit

if.end57:                                         ; preds = %dev_name.exit
  %pdev58 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 3
  %36 = ptrtoint ptr %pdev58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pdev, ptr %pdev58, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %tx_fifo_size = getelementptr inbounds %struct.sh_msiof_chipdata, ptr %chipdata.0, i32 0, i32 1
  %37 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tx_fifo_size, align 4
  %conv60 = zext i16 %38 to i32
  %tx_fifo_size61 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 7
  %39 = ptrtoint ptr %tx_fifo_size61 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv60, ptr %tx_fifo_size61, align 4
  %rx_fifo_size = getelementptr inbounds %struct.sh_msiof_chipdata, ptr %chipdata.0, i32 0, i32 2
  %40 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rx_fifo_size, align 2
  %conv62 = zext i16 %41 to i32
  %rx_fifo_size63 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 8
  %42 = ptrtoint ptr %rx_fifo_size63 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv62, ptr %rx_fifo_size63, align 4
  %43 = ptrtoint ptr %info21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %info21, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool65.not = icmp eq i32 %46, 0
  br i1 %tobool65.not, label %if.end57.if.end70_crit_edge, label %if.then66

if.end57.if.end70_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then66:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %tx_fifo_size61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tx_fifo_size61, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end57.if.end70_crit_edge
  %48 = ptrtoint ptr %info21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info21, align 4
  %rx_fifo_override = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %rx_fifo_override to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_fifo_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool72.not = icmp eq i32 %51, 0
  br i1 %tobool72.not, label %if.end70.if.end77_crit_edge, label %if.then73

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %rx_fifo_size63 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %rx_fifo_size63, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end70.if.end77_crit_edge
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 5
  %53 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 31, ptr %mode_bits, align 8
  %54 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk, align 4
  %call80 = call i32 @clk_get_rate(ptr noundef %55) #8
  %sub = add i32 %call80, 1023
  %div203 = lshr i32 %sub, 10
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 8
  %56 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div203, ptr %min_speed_hz, align 4
  %57 = ptrtoint ptr %min_div_pow22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %min_div_pow22, align 4
  %shl = shl nuw i32 1, %58
  %add82 = add i32 %call80, -1
  %sub83 = add i32 %add82, %shl
  %div86204 = lshr i32 %sub83, %58
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 9
  %59 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div86204, ptr %max_speed_hz, align 8
  %ctlr_flags = getelementptr inbounds %struct.sh_msiof_chipdata, ptr %chipdata.0, i32 0, i32 3
  %60 = ptrtoint ptr %ctlr_flags to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ctlr_flags, align 4
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 10
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %flags, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %63 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id, align 4
  %conv87 = trunc i32 %64 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 2
  %65 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv87, ptr %bus_num, align 8
  %66 = ptrtoint ptr %info21 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info21, align 4
  %num_chipselect = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %num_chipselect, align 4
  %num_chipselect89 = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 3
  %70 = ptrtoint ptr %num_chipselect89 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %num_chipselect89, align 2
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %71 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %of_node, align 8
  %of_node92 = getelementptr inbounds %struct.device, ptr %call.i205, i32 0, i32 27
  %73 = ptrtoint ptr %of_node92 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %of_node92, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 20
  %74 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @sh_msiof_spi_setup, ptr %setup, align 4
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 47
  %75 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @sh_msiof_prepare_message, ptr %prepare_message, align 4
  %slave_abort = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 49
  %76 = ptrtoint ptr %slave_abort to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @sh_msiof_slave_abort, ptr %slave_abort, align 4
  %77 = ptrtoint ptr %chipdata.0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chipdata.0, align 4
  %bits_per_word_mask93 = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 7
  %79 = ptrtoint ptr %bits_per_word_mask93 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %bits_per_word_mask93, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 36
  %80 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %auto_runtime_pm, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 51
  %81 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @sh_msiof_transfer_one, ptr %transfer_one, align 4
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 56
  %82 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %max_native_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i205, i32 0, i32 58
  %83 = ptrtoint ptr %max_native_cs to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %max_native_cs, align 2
  %84 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev58, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %85, i32 0, i32 3
  %86 = load ptr, ptr %info21, align 4
  %of_node.i212 = getelementptr inbounds %struct.platform_device, ptr %85, i32 0, i32 3, i32 27
  %87 = ptrtoint ptr %of_node.i212 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %of_node.i212, align 8
  %tobool.not.i213 = icmp eq ptr %88, null
  br i1 %tobool.not.i213, label %if.else.i, label %if.end77.if.end14.i_crit_edge

if.end77.if.end14.i_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end77
  %tobool4.not.i = icmp eq ptr %86, null
  br i1 %tobool4.not.i, label %if.else.i.if.end102_crit_edge, label %land.lhs.true.i

if.else.i.if.end102_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

land.lhs.true.i:                                  ; preds = %if.else.i
  %dma_tx_id5.i = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %86, i32 0, i32 4
  %89 = ptrtoint ptr %dma_tx_id5.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dma_tx_id5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool6.not.i = icmp eq i32 %90, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end102_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.if.end102_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %dma_rx_id8.i = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %86, i32 0, i32 5
  %91 = ptrtoint ptr %dma_rx_id8.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_rx_id8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool9.not.i = icmp eq i32 %92, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.if.end102_crit_edge, label %land.lhs.true7.i.if.end14.i_crit_edge

land.lhs.true7.i.if.end14.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

land.lhs.true7.i.if.end102_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.end14.i:                                       ; preds = %land.lhs.true7.i.if.end14.i_crit_edge, %if.end77.if.end14.i_crit_edge
  %dma_tx_id.0.i = phi i32 [ 0, %if.end77.if.end14.i_crit_edge ], [ %90, %land.lhs.true7.i.if.end14.i_crit_edge ]
  %dma_rx_id.0.i = phi i32 [ 0, %if.end77.if.end14.i_crit_edge ], [ %92, %land.lhs.true7.i.if.end14.i_crit_edge ]
  %call.i214 = call ptr @platform_get_resource(ptr noundef %85, i32 noundef 512, i32 noundef 1) #8
  %tobool15.not.i = icmp eq ptr %call.i214, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end14.i.if.end18.i_crit_edge

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = call ptr @platform_get_resource(ptr noundef %85, i32 noundef 512, i32 noundef 0) #8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end18.i_crit_edge
  %res.0.i = phi ptr [ %call.i214, %if.end14.i.if.end18.i_crit_edge ], [ %call17.i, %if.then16.i ]
  %93 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %17, align 4
  %95 = ptrtoint ptr %res.0.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %res.0.i, align 4
  %add.i = add i32 %96, 80
  %call20.i = call fastcc ptr @sh_msiof_request_dma_chan(ptr noundef %dev2.i, i32 noundef 1, i32 noundef %dma_tx_id.0.i, i32 noundef %add.i) #8
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %94, i32 0, i32 60
  %97 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call20.i, ptr %dma_tx.i, align 8
  %tobool22.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool22.not.i, label %if.end18.i.do.end100_crit_edge, label %if.end24.i

if.end18.i.do.end100_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end100

if.end24.i:                                       ; preds = %if.end18.i
  %98 = ptrtoint ptr %res.0.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %res.0.i, align 4
  %add26.i = add i32 %99, 96
  %call27.i = call fastcc ptr @sh_msiof_request_dma_chan(ptr noundef %dev2.i, i32 noundef 2, i32 noundef %dma_rx_id.0.i, i32 noundef %add26.i) #8
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %94, i32 0, i32 61
  %100 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call27.i, ptr %dma_rx.i, align 4
  %tobool29.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool29.not.i, label %if.end24.i.free_tx_chan.i_crit_edge, label %if.end31.i

if.end24.i.free_tx_chan.i_crit_edge:              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tx_chan.i

if.end31.i:                                       ; preds = %if.end24.i
  %call32.i = call i32 @__get_free_pages(i32 noundef 3265, i32 noundef 0) #8
  %101 = inttoptr i32 %call32.i to ptr
  %tx_dma_page.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 10
  %102 = ptrtoint ptr %tx_dma_page.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %tx_dma_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool34.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool34.not.i, label %if.end31.i.free_rx_chan.i_crit_edge, label %if.end36.i

if.end31.i.free_rx_chan.i_crit_edge:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rx_chan.i

if.end36.i:                                       ; preds = %if.end31.i
  %call37.i = call i32 @__get_free_pages(i32 noundef 3265, i32 noundef 0) #8
  %103 = inttoptr i32 %call37.i to ptr
  %rx_dma_page.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 11
  %104 = ptrtoint ptr %rx_dma_page.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %rx_dma_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool39.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool39.not.i, label %if.end36.i.free_tx_page.i_crit_edge, label %if.end41.i

if.end36.i.free_tx_page.i_crit_edge:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tx_page.i

if.end41.i:                                       ; preds = %if.end36.i
  %105 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dma_tx.i, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %dev43.i = getelementptr inbounds %struct.dma_device, ptr %108, i32 0, i32 15
  %109 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev43.i, align 4
  %111 = ptrtoint ptr %tx_dma_page.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tx_dma_page.i, align 4
  %call.i.i215 = call zeroext i1 @is_vmalloc_addr(ptr noundef %112) #8
  br i1 %call.i.i215, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end41.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !148

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %110) #8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 3
  %113 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %110, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %116, %if.end.i.i.i ], [ %114, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %tx_dma_addr135.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 12
  %117 = ptrtoint ptr %tx_dma_addr135.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %tx_dma_addr135.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %110, i32 noundef -1) #8
  br label %free_rx_page.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end41.i
  call void @debug_dma_map_single(ptr noundef %110, ptr noundef %112, i32 noundef 4096) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %118 = load ptr, ptr @mem_map, align 4
  %119 = ptrtoint ptr %112 to i32
  %sub.i.i = add i32 %119, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %118, i32 %shr.i.i
  %and.i.i = and i32 %119, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %110, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %tx_dma_addr.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 12
  %120 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %call41.i.i, ptr %tx_dma_addr.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %110, i32 noundef %call41.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.free_rx_page.i_crit_edge, label %if.end50.i

dma_map_single_attrs.exit.i.free_rx_page.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rx_page.i

if.end50.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %121 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dma_rx.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %dev53.i = getelementptr inbounds %struct.dma_device, ptr %124, i32 0, i32 15
  %125 = ptrtoint ptr %dev53.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev53.i, align 4
  %127 = ptrtoint ptr %rx_dma_page.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rx_dma_page.i, align 4
  %call.i114.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %128) #8
  br i1 %call.i114.i, label %land.rhs.i116.i, label %dma_map_single_attrs.exit131.i

land.rhs.i116.i:                                  ; preds = %if.end50.i
  %.b1.i115.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i115.i, label %land.rhs.i116.i.dma_map_single_attrs.exit131.thread.i_crit_edge, label %if.then.i120.i, !prof !148

land.rhs.i116.i.dma_map_single_attrs.exit131.thread.i_crit_edge: ; preds = %land.rhs.i116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit131.thread.i

if.then.i120.i:                                   ; preds = %land.rhs.i116.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i117.i = call ptr @dev_driver_string(ptr noundef %126) #8
  %init_name.i.i118.i = getelementptr inbounds %struct.device, ptr %126, i32 0, i32 3
  %129 = ptrtoint ptr %init_name.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %init_name.i.i118.i, align 8
  %tobool.not.i.i119.i = icmp eq ptr %130, null
  br i1 %tobool.not.i.i119.i, label %if.end.i.i121.i, label %if.then.i120.i.dev_name.exit.i123.i_crit_edge

if.then.i120.i.dev_name.exit.i123.i_crit_edge:    ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i123.i

if.end.i.i121.i:                                  ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %126, align 4
  br label %dev_name.exit.i123.i

dev_name.exit.i123.i:                             ; preds = %if.end.i.i121.i, %if.then.i120.i.dev_name.exit.i123.i_crit_edge
  %retval.0.i.i122.i = phi ptr [ %132, %if.end.i.i121.i ], [ %130, %if.then.i120.i.dev_name.exit.i123.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call16.i117.i, ptr noundef %retval.0.i.i122.i) #8
  br label %dma_map_single_attrs.exit131.thread.i

dma_map_single_attrs.exit131.thread.i:            ; preds = %dev_name.exit.i123.i, %land.rhs.i116.i.dma_map_single_attrs.exit131.thread.i_crit_edge
  %rx_dma_addr143.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 13
  %133 = ptrtoint ptr %rx_dma_addr143.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %rx_dma_addr143.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %126, i32 noundef -1) #8
  br label %unmap_tx_page.i

dma_map_single_attrs.exit131.i:                   ; preds = %if.end50.i
  call void @debug_dma_map_single(ptr noundef %126, ptr noundef %128, i32 noundef 4096) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %134 = load ptr, ptr @mem_map, align 4
  %135 = ptrtoint ptr %128 to i32
  %sub.i124.i = add i32 %135, 1073741824
  %shr.i125.i = lshr i32 %sub.i124.i, 12
  %add.ptr.i126.i = getelementptr %struct.page, ptr %134, i32 %shr.i125.i
  %and.i127.i = and i32 %135, 4095
  %call41.i128.i = call i32 @dma_map_page_attrs(ptr noundef %126, ptr noundef %add.ptr.i126.i, i32 noundef %and.i127.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #8
  %rx_dma_addr.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %17, i32 0, i32 13
  %136 = ptrtoint ptr %rx_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call41.i128.i, ptr %rx_dma_addr.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %126, i32 noundef %call41.i128.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i128.i)
  %cmp.i132.i = icmp eq i32 %call41.i128.i, -1
  br i1 %cmp.i132.i, label %dma_map_single_attrs.exit131.i.unmap_tx_page.i_crit_edge, label %do.end.i

dma_map_single_attrs.exit131.i.unmap_tx_page.i_crit_edge: ; preds = %dma_map_single_attrs.exit131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmap_tx_page.i

do.end.i:                                         ; preds = %dma_map_single_attrs.exit131.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.48) #11
  br label %if.end102

unmap_tx_page.i:                                  ; preds = %dma_map_single_attrs.exit131.i.unmap_tx_page.i_crit_edge, %dma_map_single_attrs.exit131.thread.i
  %137 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tx_dma_addr.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %110, i32 noundef %138, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  br label %free_rx_page.i

free_rx_page.i:                                   ; preds = %unmap_tx_page.i, %dma_map_single_attrs.exit.i.free_rx_page.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %139 = ptrtoint ptr %rx_dma_page.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rx_dma_page.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @free_pages(i32 noundef %141, i32 noundef 0) #8
  br label %free_tx_page.i

free_tx_page.i:                                   ; preds = %free_rx_page.i, %if.end36.i.free_tx_page.i_crit_edge
  %142 = ptrtoint ptr %tx_dma_page.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tx_dma_page.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @free_pages(i32 noundef %144, i32 noundef 0) #8
  br label %free_rx_chan.i

free_rx_chan.i:                                   ; preds = %free_tx_page.i, %if.end31.i.free_rx_chan.i_crit_edge
  %145 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dma_rx.i, align 4
  call void @dma_release_channel(ptr noundef %146) #8
  br label %free_tx_chan.i

free_tx_chan.i:                                   ; preds = %free_rx_chan.i, %if.end24.i.free_tx_chan.i_crit_edge
  %147 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dma_tx.i, align 8
  call void @dma_release_channel(ptr noundef %148) #8
  %149 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %dma_tx.i, align 8
  br label %do.end100

do.end100:                                        ; preds = %free_tx_chan.i, %if.end18.i.do.end100_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %if.end102

if.end102:                                        ; preds = %do.end100, %do.end.i, %land.lhs.true7.i.if.end102_crit_edge, %land.lhs.true.i.if.end102_crit_edge, %if.else.i.if.end102_crit_edge
  %call104 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i205) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end110, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end110:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  call fastcc void @sh_msiof_release_dma(ptr noundef %17)
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %do.end110, %do.end55, %if.then43, %if.end34.spi_controller_put.exit_crit_edge, %do.end30
  %ret.0 = phi i32 [ %29, %do.end30 ], [ %31, %if.then43 ], [ %call.i211, %do.end55 ], [ %call104, %do.end110 ], [ %call35, %if.end34.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i205) #8
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end102.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ -6, %do.end ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end102.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @sh_msiof_release_dma(ptr noundef %1)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !150
  %done = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %data, i32 0, i32 5
  tail call void @complete(ptr noundef %done) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
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
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %4 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %slave.i = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %slave.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %slave.i, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not = icmp eq i8 %9, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %native_cs_inited = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %native_cs_inited to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %native_cs_inited, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %native_cs_high = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %native_cs_high to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %native_cs_high, align 1, !range !151
  %14 = zext i8 %13 to i32
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 8
  %and = lshr i32 %16, 2
  %and.lobit = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %14)
  %cmp = icmp eq i32 %and.lobit, %14
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %mode9 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %17 = ptrtoint ptr %mode9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode9, align 8
  %and10 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %. = select i1 %tobool11.not, i32 -805306369, i32 -838860801
  %.55 = select i1 %tobool11.not, i32 570425344, i32 536870912
  %pdev = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mapbase1.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !152
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %and17 = and i32 %24, %.
  %or18 = or i32 %.55, %and17
  %or20 = or i32 %or18, -1073741824
  %25 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mapbase1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %or20) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %27) #8, !srcloc !150
  %28 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !152
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %and23 = and i32 %31, %.
  %or24 = or i32 %and23, %.55
  %32 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i59 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or24) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i59, i32 %34) #8, !srcloc !150
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 4
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %call.i60 = tail call i32 @__pm_runtime_idle(ptr noundef %dev26, i32 noundef 5) #8
  %37 = ptrtoint ptr %mode9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode9, align 8
  %native_cs_high31 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %3, i32 0, i32 15
  %39 = trunc i32 %38 to i8
  %40 = lshr i8 %39, 2
  %41 = and i8 %40, 1
  %42 = ptrtoint ptr %native_cs_high31 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %native_cs_high31, align 1
  %43 = ptrtoint ptr %native_cs_inited to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %native_cs_inited, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_msiof_prepare_message(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %unused_native_cs = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 57
  %6 = ptrtoint ptr %unused_native_cs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %unused_native_cs, align 1
  %conv = sext i8 %7 to i32
  %native_cs_high = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %native_cs_high to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %native_cs_high, align 1, !range !151
  %10 = zext i8 %9 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_select, align 4
  %conv4 = zext i8 %12 to i32
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 8
  %and = lshr i32 %14, 2
  %and.lobit = and i32 %and, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ss.0 = phi i32 [ %conv, %if.then ], [ %conv4, %if.else ]
  %cs_high.0 = phi i32 [ %10, %if.then ], [ %and.lobit, %if.else ]
  %mode7 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %mode7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs_high.0)
  %tobool.not.i = icmp eq i32 %cs_high.0, 0
  %or.i = select i1 %tobool.not.i, i32 570425349, i32 536870917
  %17 = shl i32 %16, 21
  %shl1.i = and i32 %17, 16777216
  %or2.i = or i32 %shl1.i, %or.i
  %info.i.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.sh_msiof_spi_get_dtdl_and_syncdl.exit.i_crit_edge, label %if.end.i.i

if.end.sh_msiof_spi_get_dtdl_and_syncdl.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_msiof_spi_get_dtdl_and_syncdl.exit.i

if.end.i.i:                                       ; preds = %if.end
  %dtdl.i.i = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %dtdl.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dtdl.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %21)
  %cmp.i.i = icmp ugt i32 %21, 200
  br i1 %cmp.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %syncdl.i.i = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %19, i32 0, i32 7
  %22 = ptrtoint ptr %syncdl.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %syncdl.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %23)
  %cmp3.i.i = icmp ugt i32 %23, 300
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge, label %if.end5.i.i

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  %pdev.i.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.26) #11
  br label %sh_msiof_spi_get_dtdl_and_syncdl.exit.i

if.end5.i.i:                                      ; preds = %lor.lhs.false.i.i
  %add.i.i = add nuw nsw i32 %23, %21
  %rem.lhs.trunc.i.i = trunc i32 %add.i.i to i16
  %rem40.i.i = urem i16 %rem.lhs.trunc.i.i, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem40.i.i)
  %tobool10.not.i.i = icmp eq i16 %rem40.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end17.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev15.i.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %pdev15.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev15.i.i, align 4
  %dev16.i.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16.i.i, ptr noundef nonnull @.str.29) #11
  br label %sh_msiof_spi_get_dtdl_and_syncdl.exit.i

if.end17.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i.lhs.trunc.i.i = trunc i32 %21 to i8
  %rem.i.lhs.trunc.i.i.frozen = freeze i8 %rem.i.lhs.trunc.i.i
  %div.i42.i.i = udiv i8 %rem.i.lhs.trunc.i.i.frozen, 100
  %28 = mul i8 %div.i42.i.i, 100
  %rem.i41.i.i.decomposed = sub i8 %rem.i.lhs.trunc.i.i.frozen, %28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rem.i41.i.i.decomposed)
  %tobool.not.i.i.i = icmp eq i8 %rem.i41.i.i.decomposed, 0
  %div.i.zext.i.i = zext i8 %div.i42.i.i to i32
  %29 = shl nuw nsw i32 %div.i.zext.i.i, 20
  %30 = add nuw nsw i32 %29, 5242880
  %shl.i.i = select i1 %tobool.not.i.i.i, i32 %29, i32 %30
  %rem.i35.lhs.trunc.i.i = trunc i32 %23 to i16
  %rem.i35.lhs.trunc.i.i.frozen = freeze i16 %rem.i35.lhs.trunc.i.i
  %div.i3744.i.i = udiv i16 %rem.i35.lhs.trunc.i.i.frozen, 100
  %31 = mul i16 %div.i3744.i.i, 100
  %rem.i3543.i.i.decomposed = sub i16 %rem.i35.lhs.trunc.i.i.frozen, %31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i3543.i.i.decomposed)
  %tobool.not.i36.i.i = icmp eq i16 %rem.i3543.i.i.decomposed, 0
  %div.i37.zext.i.i = zext i16 %div.i3744.i.i to i32
  %32 = shl nuw nsw i32 %div.i37.zext.i.i, 16
  %33 = add nuw nsw i32 %32, 327680
  %shl23.i.i = select i1 %tobool.not.i36.i.i, i32 %32, i32 %33
  %or.i.i = or i32 %shl23.i.i, %shl.i.i
  br label %sh_msiof_spi_get_dtdl_and_syncdl.exit.i

sh_msiof_spi_get_dtdl_and_syncdl.exit.i:          ; preds = %if.end17.i.i, %do.end14.i.i, %do.end.i.i, %if.end.sh_msiof_spi_get_dtdl_and_syncdl.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ 0, %do.end14.i.i ], [ %or.i.i, %if.end17.i.i ], [ 0, %if.end.sh_msiof_spi_get_dtdl_and_syncdl.exit.i_crit_edge ]
  %or3.i = or i32 %or2.i, %retval.0.i.i
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %slave.i.i = getelementptr inbounds %struct.spi_controller, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %slave.i.i, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i.not.i = icmp eq i8 %37, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sh_msiof_spi_get_dtdl_and_syncdl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %or5.i = or i32 %or3.i, 1073741824
  %mapbase1.i.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %mapbase1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mapbase1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %40) #8, !srcloc !150
  br label %sh_msiof_spi_set_pin_regs.exit

if.else.i:                                        ; preds = %sh_msiof_spi_get_dtdl_and_syncdl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ss.0)
  %cmp.i = icmp ult i32 %ss.0, 3
  %phi.bo.i = shl i32 %ss.0, 26
  %phi.bo.op.i = or i32 %phi.bo.i, -1073741824
  %or7.i = select i1 %cmp.i, i32 %phi.bo.op.i, i32 -1073741824
  %or9.i = or i32 %or3.i, %or7.i
  %mapbase1.i54.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %mapbase1.i54.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mapbase1.i54.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %43) #8, !srcloc !150
  br label %sh_msiof_spi_set_pin_regs.exit

sh_msiof_spi_set_pin_regs.exit:                   ; preds = %if.else.i, %if.then.i
  %and15 = and i32 %16, 1
  %and8 = lshr i32 %16, 1
  %and8.lobit = and i32 %and8, 1
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.spi_controller, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags.i, align 4
  %48 = and i16 %47, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool11.not.i = icmp eq i16 %48, 0
  %and13.i = and i32 %or3.i, -65536
  %spec.select53.i = select i1 %tobool11.not.i, i32 %or3.i, i32 %and13.i
  %mapbase1.i55.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %mapbase1.i55.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mapbase1.i55.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %spec.select53.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %51) #8, !srcloc !150
  %52 = xor i32 %and15, %and8.lobit
  %xor.i = xor i32 %52, 1
  %shl24.i = shl nuw nsw i32 %xor.i, 27
  %shl26.i = shl nuw nsw i32 %xor.i, 26
  %53 = shl i32 %16, 19
  %54 = and i32 %53, 8388608
  %or19.i = mul nuw nsw i32 %and8.lobit, 1342177280
  %or20.i = or i32 %or19.i, %54
  %or25.i = or i32 %or20.i, %shl24.i
  %or27.i = or i32 %or25.i, %shl26.i
  %or30.i = add nuw nsw i32 %or27.i, -1610612736
  %55 = ptrtoint ptr %mapbase1.i55.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mapbase1.i55.i, align 4
  %add.ptr2.i57.i = getelementptr i8, ptr %56, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %or30.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i57.i, i32 %57) #8, !srcloc !150
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_msiof_slave_abort(ptr nocapture noundef readonly %ctlr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %slave_aborted = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %slave_aborted, align 2
  %done = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %done) #8
  %done_txdma = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %done_txdma) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_msiof_transfer_one(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %spi, ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t, align 4
  %rx_buf2 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %rx_buf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buf2, align 4
  %len3 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len3, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %8 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %9 to i32
  %mapbase1.i.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %mapbase1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapbase1.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %11, i32 40
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %13 = or i32 %12, 50331648
  %14 = ptrtoint ptr %mapbase1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mapbase1.i.i, align 4
  %add.ptr2.i41.i = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i41.i, i32 %13) #8, !srcloc !150
  %call1.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call1.i, 100000
  %16 = ptrtoint ptr %mapbase1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapbase1.i.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %17, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %19 = and i32 %18, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not43.i = icmp eq i32 %19, 0
  br i1 %tobool.not43.i, label %entry.sh_msiof_spi_reset_regs.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.sh_msiof_spi_reset_regs.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_msiof_spi_reset_regs.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call6.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call6.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then8.i, label %cond.false.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %mapbase1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mapbase1.i.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %21, i32 40
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  br label %sh_msiof_spi_reset_regs.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #8
  %24 = ptrtoint ptr %mapbase1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mapbase1.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 40
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %27 = and i32 %26, 50331648
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %cond.false.i.sh_msiof_spi_reset_regs.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

cond.false.i.sh_msiof_spi_reset_regs.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_msiof_spi_reset_regs.exit

sh_msiof_spi_reset_regs.exit:                     ; preds = %cond.false.i.sh_msiof_spi_reset_regs.exit_crit_edge, %if.then8.i, %entry.sh_msiof_spi_reset_regs.exit_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %slave.i = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %slave.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %slave.i, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.i.not = icmp eq i8 %31, 0
  br i1 %tobool.i.not, label %if.then, label %sh_msiof_spi_reset_regs.exit.if.end_crit_edge

sh_msiof_spi_reset_regs.exit.if.end_crit_edge:    ; preds = %sh_msiof_spi_reset_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sh_msiof_spi_reset_regs.exit
  %clk.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %33) #8
  %min_div_pow.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %min_div_pow.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %min_div_pow.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %36 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed_hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i235 = icmp eq i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  %or.cond.i = select i1 %tobool.not.i235, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end18.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 272, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef %call.i, i32 noundef %37) #8
  br label %if.end

if.end18.i:                                       ; preds = %if.then
  %add.i = add i32 %call.i, -1
  %sub.i = add i32 %add.i, %37
  %div19.i = udiv i32 %sub.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %div19.i)
  %cmp.i = icmp ult i32 %div19.i, 1025
  br i1 %cmp.i, label %if.then20.i, label %do.end37.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool21.not.i = icmp eq i32 %35, 0
  %38 = add nsw i32 %div19.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %38)
  %39 = icmp ult i32 %38, 30
  %spec.select.i = zext i1 %39 to i32
  %div_pow.0.i = select i1 %tobool21.not.i, i32 %spec.select.i, i32 %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div_pow.0.i)
  %tobool27.not.i = icmp eq i32 %div_pow.0.i, 0
  %add29.i = add nuw nsw i32 %div19.i, 1
  %shr.i = lshr i32 %add29.i, %div_pow.0.i
  %brps.0.i = select i1 %tobool27.not.i, i32 %div19.i, i32 %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %brps.0.i)
  %cmp3182.i = icmp ugt i32 %brps.0.i, 32
  br i1 %cmp3182.i, label %if.then20.i.for.body.i_crit_edge, label %if.then20.i.if.end38.i_crit_edge

if.then20.i.if.end38.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then20.i.for.body.i_crit_edge:                 ; preds = %if.then20.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then20.i.for.body.i_crit_edge
  %brps.184.i = phi i32 [ %shr33.i, %for.body.i.for.body.i_crit_edge ], [ %brps.0.i, %if.then20.i.for.body.i_crit_edge ]
  %div_pow.183.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %div_pow.0.i, %if.then20.i.for.body.i_crit_edge ]
  %add32.i = add i32 %brps.184.i, 1
  %shr33.i = lshr i32 %add32.i, 1
  %inc.i = add i32 %div_pow.183.i, 1
  %cmp31.i = icmp ugt i32 %add32.i, 65
  br i1 %cmp31.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end38.i_crit_edge

for.body.i.if.end38.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end37.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34, i32 noundef %37) #11
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end37.i, %for.body.i.if.end38.i_crit_edge, %if.then20.i.if.end38.i_crit_edge
  %div_pow.2.i = phi i32 [ 5, %do.end37.i ], [ %div_pow.0.i, %if.then20.i.if.end38.i_crit_edge ], [ %inc.i, %for.body.i.if.end38.i_crit_edge ]
  %brps.2.i = phi i32 [ 32, %do.end37.i ], [ %brps.0.i, %if.then20.i.if.end38.i_crit_edge ], [ %shr33.i, %for.body.i.if.end38.i_crit_edge ]
  %shl.i = shl i32 %brps.2.i, %div_pow.2.i
  %div39.i = udiv i32 %call.i, %shl.i
  %effective_speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 13
  %42 = ptrtoint ptr %effective_speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div39.i, ptr %effective_speed_hz.i, align 4
  %arrayidx.i = getelementptr [6 x i32], ptr @sh_msiof_spi_div_array, i32 0, i32 %div_pow.2.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %sub40.i = shl nuw nsw i32 %brps.2.i, 8
  %shl41.i = add i32 %sub40.i, 65280
  %or.i = or i32 %44, %shl41.i
  %conv.i.i = trunc i32 %or.i to i16
  %45 = ptrtoint ptr %mapbase1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mapbase1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %47) #8, !srcloc !157
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.spi_controller, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags.i, align 4
  %52 = and i16 %51, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool42.not.i = icmp eq i16 %52, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.end38.i.if.end_crit_edge

if.end38.i.if.end_crit_edge:                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then43.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %mapbase1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mapbase1.i.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %54, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i81.i, i16 %47) #8, !srcloc !157
  br label %if.end

if.end:                                           ; preds = %if.then43.i, %if.end38.i.if.end_crit_edge, %do.end.i, %sh_msiof_spi_reset_regs.exit.if.end_crit_edge
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %tx_fifo_size = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 7
  %rx_fifo_size = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %9)
  %cmp24 = icmp ult i8 %9, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %9)
  %cmp27 = icmp ult i8 %9, 17
  %copy_wswap32.copy_plain32 = select i1 %cmp27, ptr @copy_wswap32, ptr @copy_plain32
  %copy32.0 = select i1 %cmp24, ptr @copy_bswap32, ptr %copy_wswap32.copy_plain32
  %tx_dma_page = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 10
  %rx_dma_page = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %if.end53.while.cond_crit_edge, %if.end
  %tx_buf.0 = phi ptr [ %3, %if.end ], [ %spec.select, %if.end53.while.cond_crit_edge ]
  %rx_buf.0 = phi ptr [ %5, %if.end ], [ %rx_buf.1, %if.end53.while.cond_crit_edge ]
  %len.0 = phi i32 [ %7, %if.end ], [ %sub, %if.end53.while.cond_crit_edge ]
  %55 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp ne ptr %56, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len.0)
  %cmp = icmp ugt i32 %len.0, 15
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %tobool7.not = icmp eq ptr %tx_buf.0, null
  br i1 %tobool7.not, label %while.body.if.end11_crit_edge, label %if.then8

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %len.0, -4
  %57 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_fifo_size, align 4
  %mul = shl i32 %58, 2
  %59 = tail call i32 @llvm.umin.i32(i32 %and, i32 %mul)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %while.body.if.end11_crit_edge
  %l.0 = phi i32 [ %59, %if.then8 ], [ 0, %while.body.if.end11_crit_edge ]
  %tobool12.not = icmp eq ptr %rx_buf.0, null
  br i1 %tobool12.not, label %if.end11.if.end23_crit_edge, label %if.then13

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %len.0, -4
  %60 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_fifo_size, align 4
  %mul15 = shl i32 %61, 2
  %62 = tail call i32 @llvm.umin.i32(i32 %and14, i32 %mul15)
  br label %if.end23

if.end23:                                         ; preds = %if.then13, %if.end11.if.end23_crit_edge
  %l.1 = phi i32 [ %62, %if.then13 ], [ %l.0, %if.end11.if.end23_crit_edge ]
  br i1 %tobool7.not, label %if.end23.if.end35_crit_edge, label %if.then34

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %tx_dma_page to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_dma_page, align 4
  %div230 = lshr i32 %l.1, 2
  tail call void %copy32.0(ptr noundef %64, ptr noundef nonnull %tx_buf.0, i32 noundef %div230) #8, !callees !158
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end23.if.end35_crit_edge
  %call36 = tail call fastcc i32 @sh_msiof_dma_once(ptr noundef %1, ptr noundef %tx_buf.0, ptr noundef %rx_buf.0, i32 noundef %l.1)
  %65 = zext i32 %call36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call36, label %if.end35.cleanup143_crit_edge [
    i32 -11, label %do.body
    i32 0, label %if.end49
  ]

if.end35.cleanup143_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

do.body:                                          ; preds = %if.end35
  %.b229 = load i1, ptr @sh_msiof_transfer_one.__print_once, align 1
  br i1 %.b229, label %do.body.while.end_crit_edge, label %if.then41

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sh_msiof_transfer_one.__print_once, align 1
  %pdev = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  br label %while.end

if.end49:                                         ; preds = %if.end35
  br i1 %tobool12.not, label %if.end49.if.end53_crit_edge, label %if.then51

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %rx_dma_page to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_dma_page, align 4
  %div52228 = lshr i32 %l.1, 2
  tail call void %copy32.0(ptr noundef nonnull %rx_buf.0, ptr noundef %69, i32 noundef %div52228) #8, !callees !158
  %add.ptr = getelementptr i8, ptr %rx_buf.0, i32 %l.1
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge
  %rx_buf.1 = phi ptr [ %add.ptr, %if.then51 ], [ null, %if.end49.if.end53_crit_edge ]
  %add.ptr56 = getelementptr i8, ptr %tx_buf.0, i32 %l.1
  %spec.select = select i1 %tobool7.not, ptr null, ptr %add.ptr56
  %sub = sub i32 %len.0, %l.1
  %tobool58.not = icmp eq i32 %sub, 0
  br i1 %tobool58.not, label %if.end53.cleanup143_crit_edge, label %if.end53.while.cond_crit_edge

if.end53.while.cond_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end53.cleanup143_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

while.end:                                        ; preds = %if.then41, %do.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %or.cond231 = select i1 %cmp24, i1 %cmp, i1 false
  %bits.0 = select i1 %or.cond231, i32 32, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bits.0)
  %cmp68 = icmp ult i32 %bits.0, 9
  br i1 %cmp68, label %while.end.if.end111_crit_edge, label %if.else71

while.end.if.end111_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.else71:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %bits.0)
  %cmp72 = icmp ult i32 %bits.0, 17
  %70 = ptrtoint ptr %tx_buf.0 to i32
  br i1 %cmp72, label %if.then74, label %if.else85

if.then74:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  %and75 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %sh_msiof_spi_write_fifo_16.sh_msiof_spi_write_fifo_16u = select i1 %tobool76.not, ptr @sh_msiof_spi_write_fifo_16, ptr @sh_msiof_spi_write_fifo_16u
  %71 = ptrtoint ptr %rx_buf.0 to i32
  %and80 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %spec.select232 = select i1 %tobool81.not, ptr @sh_msiof_spi_read_fifo_16, ptr @sh_msiof_spi_read_fifo_16u
  br label %if.end111

if.else85:                                        ; preds = %if.else71
  %and88 = and i32 %70, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %or.cond231, label %if.then87, label %if.else98

if.then87:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  %sh_msiof_spi_write_fifo_s32.sh_msiof_spi_write_fifo_s32u = select i1 %tobool89.not, ptr @sh_msiof_spi_write_fifo_s32, ptr @sh_msiof_spi_write_fifo_s32u
  %72 = ptrtoint ptr %rx_buf.0 to i32
  %and93 = and i32 %72, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %spec.select233 = select i1 %tobool94.not, ptr @sh_msiof_spi_read_fifo_s32, ptr @sh_msiof_spi_read_fifo_s32u
  br label %if.end111

if.else98:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  %sh_msiof_spi_write_fifo_32.sh_msiof_spi_write_fifo_32u = select i1 %tobool89.not, ptr @sh_msiof_spi_write_fifo_32, ptr @sh_msiof_spi_write_fifo_32u
  %73 = ptrtoint ptr %rx_buf.0 to i32
  %and104 = and i32 %73, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %spec.select234 = select i1 %tobool105.not, ptr @sh_msiof_spi_read_fifo_32, ptr @sh_msiof_spi_read_fifo_32u
  br label %if.end111

if.end111:                                        ; preds = %if.else98, %if.then87, %if.then74, %while.end.if.end111_crit_edge
  %tx_fifo.3 = phi ptr [ @sh_msiof_spi_write_fifo_8, %while.end.if.end111_crit_edge ], [ %sh_msiof_spi_write_fifo_16.sh_msiof_spi_write_fifo_16u, %if.then74 ], [ %sh_msiof_spi_write_fifo_s32.sh_msiof_spi_write_fifo_s32u, %if.then87 ], [ %sh_msiof_spi_write_fifo_32.sh_msiof_spi_write_fifo_32u, %if.else98 ]
  %rx_fifo.0 = phi ptr [ @sh_msiof_spi_read_fifo_8, %while.end.if.end111_crit_edge ], [ %spec.select232, %if.then74 ], [ %spec.select233, %if.then87 ], [ %spec.select234, %if.else98 ]
  %bytes_per_word.0 = phi i32 [ 1, %while.end.if.end111_crit_edge ], [ 2, %if.then74 ], [ 4, %if.then87 ], [ 4, %if.else98 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_per_word.0, i32 %len.0)
  %cmp114.not259 = icmp ugt i32 %bytes_per_word.0, %len.0
  br i1 %cmp114.not259, label %if.end111.cleanup143_crit_edge, label %while.body116.preheader

if.end111.cleanup143_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

while.body116.preheader:                          ; preds = %if.end111
  %div112 = udiv i32 %len.0, %bytes_per_word.0
  %call117313 = tail call fastcc i32 @sh_msiof_spi_txrx_once(ptr noundef %1, ptr noundef nonnull %tx_fifo.3, ptr noundef nonnull %rx_fifo.0, ptr noundef %tx_buf.0, ptr noundef %rx_buf.0, i32 noundef %div112, i32 noundef %bits.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117313)
  %cmp118314 = icmp slt i32 %call117313, 0
  br i1 %cmp118314, label %while.body116.preheader.cleanup143_crit_edge, label %while.body116.preheader.if.end121_crit_edge

while.body116.preheader.if.end121_crit_edge:      ; preds = %while.body116.preheader
  br label %if.end121

while.body116.preheader.cleanup143_crit_edge:     ; preds = %while.body116.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

if.end121:                                        ; preds = %if.end141.if.end121_crit_edge, %while.body116.preheader.if.end121_crit_edge
  %call117322 = phi i32 [ %call117, %if.end141.if.end121_crit_edge ], [ %call117313, %while.body116.preheader.if.end121_crit_edge ]
  %tx_fifo.4260321 = phi ptr [ %tx_fifo.5, %if.end141.if.end121_crit_edge ], [ %tx_fifo.3, %while.body116.preheader.if.end121_crit_edge ]
  %rx_fifo.1261320 = phi ptr [ %rx_fifo.2, %if.end141.if.end121_crit_edge ], [ %rx_fifo.0, %while.body116.preheader.if.end121_crit_edge ]
  %tx_buf.4262319 = phi ptr [ %tx_buf.5, %if.end141.if.end121_crit_edge ], [ %tx_buf.0, %while.body116.preheader.if.end121_crit_edge ]
  %rx_buf.4263318 = phi ptr [ %rx_buf.5, %if.end141.if.end121_crit_edge ], [ %rx_buf.0, %while.body116.preheader.if.end121_crit_edge ]
  %bits.1264317 = phi i32 [ %bits.2, %if.end141.if.end121_crit_edge ], [ %bits.0, %while.body116.preheader.if.end121_crit_edge ]
  %bytes_per_word.1265316 = phi i32 [ %bytes_per_word.2, %if.end141.if.end121_crit_edge ], [ %bytes_per_word.0, %while.body116.preheader.if.end121_crit_edge ]
  %words.0266315 = phi i32 [ %words.1, %if.end141.if.end121_crit_edge ], [ %div112, %while.body116.preheader.if.end121_crit_edge ]
  %tobool122.not = icmp eq ptr %tx_buf.4262319, null
  %mul124 = mul i32 %call117322, %bytes_per_word.1265316
  %add.ptr125 = getelementptr i8, ptr %tx_buf.4262319, i32 %mul124
  %tx_buf.5 = select i1 %tobool122.not, ptr null, ptr %add.ptr125
  %tobool127.not = icmp eq ptr %rx_buf.4263318, null
  %add.ptr130 = getelementptr i8, ptr %rx_buf.4263318, i32 %mul124
  %rx_buf.5 = select i1 %tobool127.not, ptr null, ptr %add.ptr130
  %sub132 = sub i32 %words.0266315, %call117322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub132)
  %cmp133 = icmp eq i32 %sub132, 0
  br i1 %cmp133, label %land.lhs.true135, label %if.end121.if.end141_crit_edge

if.end121.if.end141_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

land.lhs.true135:                                 ; preds = %if.end121
  %rem = urem i32 %len.0, %bytes_per_word.1265316
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool136.not = icmp eq i32 %rem, 0
  br i1 %tobool136.not, label %land.lhs.true135.cleanup143_crit_edge, label %if.then137

land.lhs.true135.cleanup143_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

if.then137:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bits_per_word, align 1
  %conv140 = zext i8 %75 to i32
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.end121.if.end141_crit_edge
  %tx_fifo.5 = phi ptr [ @sh_msiof_spi_write_fifo_8, %if.then137 ], [ %tx_fifo.4260321, %if.end121.if.end141_crit_edge ]
  %rx_fifo.2 = phi ptr [ @sh_msiof_spi_read_fifo_8, %if.then137 ], [ %rx_fifo.1261320, %if.end121.if.end141_crit_edge ]
  %bits.2 = phi i32 [ %conv140, %if.then137 ], [ %bits.1264317, %if.end121.if.end141_crit_edge ]
  %bytes_per_word.2 = phi i32 [ 1, %if.then137 ], [ %bytes_per_word.1265316, %if.end121.if.end141_crit_edge ]
  %words.1 = phi i32 [ %rem, %if.then137 ], [ %sub132, %if.end121.if.end141_crit_edge ]
  %call117 = tail call fastcc i32 @sh_msiof_spi_txrx_once(ptr noundef %1, ptr noundef %tx_fifo.5, ptr noundef %rx_fifo.2, ptr noundef %tx_buf.5, ptr noundef %rx_buf.5, i32 noundef %words.1, i32 noundef %bits.2)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.end141.cleanup143_crit_edge, label %if.end141.if.end121_crit_edge

if.end141.if.end121_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.end141.cleanup143_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

cleanup143:                                       ; preds = %if.end141.cleanup143_crit_edge, %land.lhs.true135.cleanup143_crit_edge, %while.body116.preheader.cleanup143_crit_edge, %if.end111.cleanup143_crit_edge, %if.end53.cleanup143_crit_edge, %if.end35.cleanup143_crit_edge
  %retval.2 = phi i32 [ 0, %if.end111.cleanup143_crit_edge ], [ %call117313, %while.body116.preheader.cleanup143_crit_edge ], [ 0, %land.lhs.true135.cleanup143_crit_edge ], [ %call117, %if.end141.cleanup143_crit_edge ], [ %call36, %if.end35.cleanup143_crit_edge ], [ 0, %if.end53.cleanup143_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_msiof_release_dma(ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_rx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %rx_dma_addr = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 13
  %10 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_dma_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #8
  %12 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_tx, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev4 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev4, align 4
  %tx_dma_addr = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 12
  %18 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_dma_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %rx_dma_page = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 11
  %20 = ptrtoint ptr %rx_dma_page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_dma_page, align 4
  %22 = ptrtoint ptr %21 to i32
  tail call void @free_pages(i32 noundef %22, i32 noundef 0) #8
  %tx_dma_page = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 10
  %23 = ptrtoint ptr %tx_dma_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_dma_page, align 4
  %25 = ptrtoint ptr %24 to i32
  tail call void @free_pages(i32 noundef %25, i32 noundef 0) #8
  %26 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_rx, align 4
  tail call void @dma_release_channel(ptr noundef %27) #8
  %28 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_tx, align 8
  tail call void @dma_release_channel(ptr noundef %29) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @copy_bswap32(ptr noundef %dst, ptr noundef %src, i32 noundef %words) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %tobool1.not36 = icmp eq i32 %words, 0
  br i1 %tobool1.not36, label %while.cond.preheader.if.end23_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end23_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dst.addr.039 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %dst, %while.cond.preheader.while.body_crit_edge ]
  %src.addr.038 = phi ptr [ %incdec.ptr2, %while.body.while.body_crit_edge ], [ %src, %while.cond.preheader.while.body_crit_edge ]
  %words.addr.037 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %words, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %words.addr.037, -1
  %1 = ptrtoint ptr %src.addr.038 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %src.addr.038, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %incdec.ptr = getelementptr i32, ptr %dst.addr.039, i32 1
  %4 = ptrtoint ptr %dst.addr.039 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dst.addr.039, align 4
  %incdec.ptr2 = getelementptr i32, ptr %src.addr.038, i32 1
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %while.body.if.end23_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %dst to i32
  %and3 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %tobool18.not44 = icmp eq i32 %words, 0
  br i1 %tobool4.not, label %while.cond16.preheader, label %while.cond6.preheader

while.cond6.preheader:                            ; preds = %if.else
  br i1 %tobool18.not44, label %while.cond6.preheader.if.end23_crit_edge, label %while.cond6.preheader.do.body_crit_edge

while.cond6.preheader.do.body_crit_edge:          ; preds = %while.cond6.preheader
  br label %do.body

while.cond6.preheader.if.end23_crit_edge:         ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

while.cond16.preheader:                           ; preds = %if.else
  br i1 %tobool18.not44, label %while.cond16.preheader.if.end23_crit_edge, label %while.cond16.preheader.while.body19_crit_edge

while.cond16.preheader.while.body19_crit_edge:    ; preds = %while.cond16.preheader
  br label %while.body19

while.cond16.preheader.if.end23_crit_edge:        ; preds = %while.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.body:                                          ; preds = %do.body.do.body_crit_edge, %while.cond6.preheader.do.body_crit_edge
  %dst.addr.143 = phi ptr [ %incdec.ptr13, %do.body.do.body_crit_edge ], [ %dst, %while.cond6.preheader.do.body_crit_edge ]
  %src.addr.142 = phi ptr [ %incdec.ptr11, %do.body.do.body_crit_edge ], [ %src, %while.cond6.preheader.do.body_crit_edge ]
  %words.addr.141 = phi i32 [ %dec7, %do.body.do.body_crit_edge ], [ %words, %while.cond6.preheader.do.body_crit_edge ]
  %dec7 = add i32 %words.addr.141, -1
  %incdec.ptr11 = getelementptr i32, ptr %src.addr.142, i32 1
  %6 = ptrtoint ptr %src.addr.142 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src.addr.142, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %dst.addr.143 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %dst.addr.143, align 1
  %incdec.ptr13 = getelementptr i32, ptr %dst.addr.143, i32 1
  %tobool8.not = icmp eq i32 %dec7, 0
  br i1 %tobool8.not, label %do.body.if.end23_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

while.body19:                                     ; preds = %while.body19.while.body19_crit_edge, %while.cond16.preheader.while.body19_crit_edge
  %dst.addr.247 = phi ptr [ %incdec.ptr21, %while.body19.while.body19_crit_edge ], [ %dst, %while.cond16.preheader.while.body19_crit_edge ]
  %src.addr.246 = phi ptr [ %incdec.ptr20, %while.body19.while.body19_crit_edge ], [ %src, %while.cond16.preheader.while.body19_crit_edge ]
  %words.addr.245 = phi i32 [ %dec17, %while.body19.while.body19_crit_edge ], [ %words, %while.cond16.preheader.while.body19_crit_edge ]
  %dec17 = add i32 %words.addr.245, -1
  %incdec.ptr20 = getelementptr i32, ptr %src.addr.246, i32 1
  %10 = ptrtoint ptr %src.addr.246 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src.addr.246, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %incdec.ptr21 = getelementptr i32, ptr %dst.addr.247, i32 1
  %13 = ptrtoint ptr %dst.addr.247 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dst.addr.247, align 4
  %tobool18.not = icmp eq i32 %dec17, 0
  br i1 %tobool18.not, label %while.body19.if.end23_crit_edge, label %while.body19.while.body19_crit_edge

while.body19.while.body19_crit_edge:              ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body19

while.body19.if.end23_crit_edge:                  ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %while.body19.if.end23_crit_edge, %do.body.if.end23_crit_edge, %while.cond16.preheader.if.end23_crit_edge, %while.cond6.preheader.if.end23_crit_edge, %while.body.if.end23_crit_edge, %while.cond.preheader.if.end23_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @copy_wswap32(ptr noundef %dst, ptr noundef %src, i32 noundef %words) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %tobool1.not55 = icmp eq i32 %words, 0
  br i1 %tobool1.not55, label %while.cond.preheader.if.end36_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end36_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec58.in = phi i32 [ %dec58, %while.body.while.body_crit_edge ], [ %words, %while.cond.preheader.while.body_crit_edge ]
  %dst.addr.057 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %dst, %while.cond.preheader.while.body_crit_edge ]
  %src.addr.056 = phi ptr [ %incdec.ptr13, %while.body.while.body_crit_edge ], [ %src, %while.cond.preheader.while.body_crit_edge ]
  %dec58 = add i32 %dec58.in, -1
  %1 = ptrtoint ptr %src.addr.056 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %src.addr.056, align 1
  %or.i = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 16) #8
  %incdec.ptr = getelementptr i32, ptr %dst.addr.057, i32 1
  %3 = ptrtoint ptr %dst.addr.057 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %dst.addr.057, align 4
  %incdec.ptr13 = getelementptr i32, ptr %src.addr.056, i32 1
  %tobool1.not = icmp eq i32 %dec58, 0
  br i1 %tobool1.not, label %while.body.if.end36_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end36_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %dst to i32
  %and14 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %tobool30.not63 = icmp eq i32 %words, 0
  br i1 %tobool15.not, label %while.cond28.preheader, label %while.cond17.preheader

while.cond17.preheader:                           ; preds = %if.else
  br i1 %tobool30.not63, label %while.cond17.preheader.if.end36_crit_edge, label %while.cond17.preheader.do.body_crit_edge

while.cond17.preheader.do.body_crit_edge:         ; preds = %while.cond17.preheader
  br label %do.body

while.cond17.preheader.if.end36_crit_edge:        ; preds = %while.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

while.cond28.preheader:                           ; preds = %if.else
  br i1 %tobool30.not63, label %while.cond28.preheader.if.end36_crit_edge, label %while.cond28.preheader.while.body31_crit_edge

while.cond28.preheader.while.body31_crit_edge:    ; preds = %while.cond28.preheader
  br label %while.body31

while.cond28.preheader.if.end36_crit_edge:        ; preds = %while.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.body:                                          ; preds = %do.body.do.body_crit_edge, %while.cond17.preheader.do.body_crit_edge
  %dst.addr.162 = phi ptr [ %incdec.ptr25, %do.body.do.body_crit_edge ], [ %dst, %while.cond17.preheader.do.body_crit_edge ]
  %src.addr.161 = phi ptr [ %incdec.ptr22, %do.body.do.body_crit_edge ], [ %src, %while.cond17.preheader.do.body_crit_edge ]
  %words.addr.160 = phi i32 [ %dec18, %do.body.do.body_crit_edge ], [ %words, %while.cond17.preheader.do.body_crit_edge ]
  %dec18 = add i32 %words.addr.160, -1
  %incdec.ptr22 = getelementptr i32, ptr %src.addr.161, i32 1
  %5 = ptrtoint ptr %src.addr.161 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src.addr.161, align 4
  %or.i50 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 16) #8
  %7 = ptrtoint ptr %dst.addr.162 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %or.i50, ptr %dst.addr.162, align 1
  %incdec.ptr25 = getelementptr i32, ptr %dst.addr.162, i32 1
  %tobool19.not = icmp eq i32 %dec18, 0
  br i1 %tobool19.not, label %do.body.if.end36_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.if.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

while.body31:                                     ; preds = %while.body31.while.body31_crit_edge, %while.cond28.preheader.while.body31_crit_edge
  %dst.addr.266 = phi ptr [ %incdec.ptr34, %while.body31.while.body31_crit_edge ], [ %dst, %while.cond28.preheader.while.body31_crit_edge ]
  %src.addr.265 = phi ptr [ %incdec.ptr32, %while.body31.while.body31_crit_edge ], [ %src, %while.cond28.preheader.while.body31_crit_edge ]
  %words.addr.264 = phi i32 [ %dec29, %while.body31.while.body31_crit_edge ], [ %words, %while.cond28.preheader.while.body31_crit_edge ]
  %dec29 = add i32 %words.addr.264, -1
  %incdec.ptr32 = getelementptr i32, ptr %src.addr.265, i32 1
  %8 = ptrtoint ptr %src.addr.265 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src.addr.265, align 4
  %or.i51 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 16) #8
  %incdec.ptr34 = getelementptr i32, ptr %dst.addr.266, i32 1
  %10 = ptrtoint ptr %dst.addr.266 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i51, ptr %dst.addr.266, align 4
  %tobool30.not = icmp eq i32 %dec29, 0
  br i1 %tobool30.not, label %while.body31.if.end36_crit_edge, label %while.body31.while.body31_crit_edge

while.body31.while.body31_crit_edge:              ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body31

while.body31.if.end36_crit_edge:                  ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end36:                                         ; preds = %while.body31.if.end36_crit_edge, %do.body.if.end36_crit_edge, %while.cond28.preheader.if.end36_crit_edge, %while.cond17.preheader.if.end36_crit_edge, %while.body.if.end36_crit_edge, %while.cond.preheader.if.end36_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @copy_plain32(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %words) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %words, 2
  %0 = call ptr @memcpy(ptr %dst, ptr %src, i32 %mul)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_msiof_dma_once(ptr noundef %p, ptr noundef readnone %tx, ptr noundef readnone %rx, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %sg.i174 = alloca %struct.scatterlist, align 4
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rx, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_rx, align 4
  %rx_dma_addr = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 13
  %4 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_dma_addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #8
  %6 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %8 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %6, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.then.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %14, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.then.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  br label %cleanup

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %14(ptr noundef nonnull %3, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %dmaengine_prep_slave_single.exit.cleanup_crit_edge, label %if.end

dmaengine_prep_slave_single.exit.cleanup_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_slave_single.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sh_msiof_dma_complete, ptr %callback, align 4
  %done = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 5
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %done, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_submit.i, align 4
  %call.i173 = call i32 %18(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i173)
  %tobool5.not = icmp sgt i32 %call.i173, -1
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ier_bits.0 = phi i32 [ 36864, %if.end.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  %tobool9.not = icmp eq ptr %tx, null
  br i1 %tobool9.not, label %if.end8.if.end27_crit_edge, label %if.then10

if.end8.if.end27_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then10:                                        ; preds = %if.end8
  %19 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %20, i32 0, i32 60
  %21 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_tx, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %tx_dma_addr = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 12
  %27 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_dma_addr, align 4
  call void @dma_sync_single_for_device(ptr noundef %26, i32 noundef %28, i32 noundef %len, i32 noundef 1) #8
  %29 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p, align 4
  %dma_tx14 = getelementptr inbounds %struct.spi_controller, ptr %30, i32 0, i32 60
  %31 = ptrtoint ptr %dma_tx14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_tx14, align 8
  %33 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_dma_addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i174) #8
  %35 = getelementptr inbounds %struct.scatterlist, ptr %sg.i174, i32 0, i32 3
  %36 = getelementptr inbounds %struct.scatterlist, ptr %sg.i174, i32 0, i32 4
  %37 = call ptr @memset(ptr %sg.i174, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i174, i32 noundef 1) #8
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %34, ptr %35, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %len, ptr %36, align 4
  %tobool.not.i175 = icmp eq ptr %32, null
  br i1 %tobool.not.i175, label %if.then10.dmaengine_prep_slave_single.exit184.thread_crit_edge, label %lor.lhs.false.i177

if.then10.dmaengine_prep_slave_single.exit184.thread_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit184.thread

lor.lhs.false.i177:                               ; preds = %if.then10
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %32, align 4
  %tobool1.not.i176 = icmp eq ptr %41, null
  br i1 %tobool1.not.i176, label %lor.lhs.false.i177.dmaengine_prep_slave_single.exit184.thread_crit_edge, label %lor.lhs.false2.i180

lor.lhs.false.i177.dmaengine_prep_slave_single.exit184.thread_crit_edge: ; preds = %lor.lhs.false.i177
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit184.thread

lor.lhs.false2.i180:                              ; preds = %lor.lhs.false.i177
  %device_prep_slave_sg.i178 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 39
  %42 = ptrtoint ptr %device_prep_slave_sg.i178 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_prep_slave_sg.i178, align 4
  %tobool4.not.i179 = icmp eq ptr %43, null
  br i1 %tobool4.not.i179, label %lor.lhs.false2.i180.dmaengine_prep_slave_single.exit184.thread_crit_edge, label %dmaengine_prep_slave_single.exit184

lor.lhs.false2.i180.dmaengine_prep_slave_single.exit184.thread_crit_edge: ; preds = %lor.lhs.false2.i180
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit184.thread

dmaengine_prep_slave_single.exit184.thread:       ; preds = %lor.lhs.false2.i180.dmaengine_prep_slave_single.exit184.thread_crit_edge, %lor.lhs.false.i177.dmaengine_prep_slave_single.exit184.thread_crit_edge, %if.then10.dmaengine_prep_slave_single.exit184.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i174) #8
  br label %no_dma_tx

dmaengine_prep_slave_single.exit184:              ; preds = %lor.lhs.false2.i180
  %call.i181 = call ptr %43(ptr noundef nonnull %32, ptr noundef nonnull %sg.i174, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i174) #8
  %tobool17.not = icmp eq ptr %call.i181, null
  br i1 %tobool17.not, label %dmaengine_prep_slave_single.exit184.no_dma_tx_crit_edge, label %if.end19

dmaengine_prep_slave_single.exit184.no_dma_tx_crit_edge: ; preds = %dmaengine_prep_slave_single.exit184
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_dma_tx

if.end19:                                         ; preds = %dmaengine_prep_slave_single.exit184
  %or11 = or i32 %ier_bits.0, -1879048192
  %callback20 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i181, i32 0, i32 6
  %44 = ptrtoint ptr %callback20 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @sh_msiof_dma_complete, ptr %callback20, align 4
  %done_txdma = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 6
  %callback_param21 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i181, i32 0, i32 8
  %45 = ptrtoint ptr %callback_param21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %done_txdma, ptr %callback_param21, align 4
  %tx_submit.i185 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i181, i32 0, i32 4
  %46 = ptrtoint ptr %tx_submit.i185 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_submit.i185, align 4
  %call.i186 = call i32 %47(ptr noundef nonnull %call.i181) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i186)
  %tobool24.not = icmp sgt i32 %call.i186, -1
  br i1 %tobool24.not, label %if.end19.if.end27_crit_edge, label %if.end19.no_dma_tx_crit_edge

if.end19.no_dma_tx_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_dma_tx

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %if.end19.if.end27_crit_edge, %if.end8.if.end27_crit_edge
  %ier_bits.1 = phi i32 [ %or11, %if.end19.if.end27_crit_edge ], [ %ier_bits.0, %if.end8.if.end27_crit_edge ]
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  %48 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %49, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 224) #8, !srcloc !150
  %50 = shl i32 %len, 14
  %51 = add i32 %50, -65536
  %shl2.i = and i32 %51, -520159232
  %or.i = or i32 %shl2.i, 520093696
  br i1 %tobool9.not, label %lor.lhs.false.i188, label %if.end27.if.then.i_crit_edge

if.end27.if.then.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i188:                               ; preds = %if.end27
  %52 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %p, align 4
  %flags.i = getelementptr inbounds %struct.spi_controller, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flags.i, align 4
  %56 = and i16 %55, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool3.not.i = icmp eq i16 %56, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i188.if.then.i_crit_edge

lor.lhs.false.i188.if.then.i_crit_edge:           ; preds = %lor.lhs.false.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i188.if.then.i_crit_edge, %if.end27.if.then.i_crit_edge
  %57 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %58, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %59 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %59) #8, !srcloc !150
  br label %if.end.i189

if.else.i:                                        ; preds = %lor.lhs.false.i188
  call void @__sanitizer_cov_trace_pc() #10
  %or4.i = or i32 %shl2.i, 520093697
  %60 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i14.i = getelementptr i8, ptr %61, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %62 = call i32 @llvm.bswap.i32(i32 %or4.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i14.i, i32 %62) #8, !srcloc !150
  br label %if.end.i189

if.end.i189:                                      ; preds = %if.else.i, %if.then.i
  br i1 %tobool.not, label %if.end.i189.sh_msiof_spi_set_mode_regs.exit_crit_edge, label %if.then6.i

if.end.i189.sh_msiof_spi_set_mode_regs.exit_crit_edge: ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_msiof_spi_set_mode_regs.exit

if.then6.i:                                       ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i16.i = getelementptr i8, ptr %64, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %65 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i16.i, i32 %65) #8, !srcloc !150
  br label %sh_msiof_spi_set_mode_regs.exit

sh_msiof_spi_set_mode_regs.exit:                  ; preds = %if.then6.i, %if.end.i189.sh_msiof_spi_set_mode_regs.exit_crit_edge
  %66 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i191 = getelementptr i8, ptr %67, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %68 = call i32 @llvm.bswap.i32(i32 %ier_bits.1) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i191, i32 %68) #8, !srcloc !150
  %done28 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 5
  %69 = ptrtoint ptr %done28 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %done28, align 4
  br i1 %tobool9.not, label %sh_msiof_spi_set_mode_regs.exit.if.end32_crit_edge, label %if.then30

sh_msiof_spi_set_mode_regs.exit.if.end32_crit_edge: ; preds = %sh_msiof_spi_set_mode_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %sh_msiof_spi_set_mode_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %done_txdma31 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 6
  %70 = ptrtoint ptr %done_txdma31 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %done_txdma31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %sh_msiof_spi_set_mode_regs.exit.if.end32_crit_edge
  %slave_aborted = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 16
  %71 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %slave_aborted, align 2
  br i1 %tobool.not, label %if.end32.if.end37_crit_edge, label %if.then34

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %p, align 4
  %dma_rx36 = getelementptr inbounds %struct.spi_controller, ptr %73, i32 0, i32 61
  %74 = ptrtoint ptr %dma_rx36 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma_rx36, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %77, i32 0, i32 50
  %78 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device_issue_pending.i, align 4
  call void %79(ptr noundef %75) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32.if.end37_crit_edge
  br i1 %tobool9.not, label %if.end37.if.end42_crit_edge, label %if.then39

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %p, align 4
  %dma_tx41 = getelementptr inbounds %struct.spi_controller, ptr %81, i32 0, i32 60
  %82 = ptrtoint ptr %dma_tx41 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dma_tx41, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %device_issue_pending.i192 = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 50
  %86 = ptrtoint ptr %device_issue_pending.i192 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device_issue_pending.i192, align 4
  call void %87(ptr noundef %83) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end37.if.end42_crit_edge
  %88 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %p, align 4
  %slave.i.i = getelementptr inbounds %struct.spi_controller, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %slave.i.i, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.i.i = icmp ne i8 %91, 0
  br i1 %tobool.i.i, label %if.end42.if.end.i195_crit_edge, label %if.then.i193

if.end42.if.end.i195_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i195

if.then.i193:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 0, i32 noundef 32768) #8
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then.i193, %if.end42.if.end.i195_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end42.if.end.i195_crit_edge ], [ %call1.i, %if.then.i193 ]
  %tobool2.not.i = icmp ne ptr %rx, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool3.not.i194 = icmp eq i32 %ret.0.i, 0
  %or.cond.i = select i1 %tobool2.not.i, i1 %tobool3.not.i194, i1 false
  br i1 %or.cond.i, label %if.then4.i, label %if.end.i195.if.end6.i_crit_edge

if.end.i195.if.end6.i_crit_edge:                  ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 0, i32 noundef 256) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i195.if.end6.i_crit_edge
  %ret.1.i = phi i32 [ %call5.i, %if.then4.i ], [ %ret.0.i, %if.end.i195.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool7.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool7.not.i, label %if.end10.i, label %if.end6.i.do.end_crit_edge

if.end6.i.do.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end10.i:                                       ; preds = %if.end6.i
  %call9.i = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 0, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool11.not.i = icmp ne i32 %call9.i, 0
  %brmerge.i = select i1 %tobool11.not.i, i1 true, i1 %tobool.i.i
  br i1 %brmerge.i, label %if.end10.i.sh_msiof_spi_start.exit_crit_edge, label %if.then14.i

if.end10.i.sh_msiof_spi_start.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_msiof_spi_start.exit

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 0, i32 noundef 16384) #8
  br label %sh_msiof_spi_start.exit

sh_msiof_spi_start.exit:                          ; preds = %if.then14.i, %if.end10.i.sh_msiof_spi_start.exit_crit_edge
  %ret.3.i = phi i32 [ %call9.i, %if.end10.i.sh_msiof_spi_start.exit_crit_edge ], [ %call15.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool44.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool44.not, label %if.end47, label %sh_msiof_spi_start.exit.do.end_crit_edge

sh_msiof_spi_start.exit.do.end_crit_edge:         ; preds = %sh_msiof_spi_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %sh_msiof_spi_start.exit.do.end_crit_edge, %if.end6.i.do.end_crit_edge
  %ret.3.i307 = phi i32 [ %ret.3.i, %sh_msiof_spi_start.exit.do.end_crit_edge ], [ %ret.1.i, %if.end6.i.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %92 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev, align 4
  %dev46 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.36) #11
  br label %stop_dma

if.end47:                                         ; preds = %sh_msiof_spi_start.exit
  br i1 %tobool9.not, label %if.end47.if.end55_crit_edge, label %if.then49

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then49:                                        ; preds = %if.end47
  %done_txdma50 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 6
  %94 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %p, align 4
  %slave.i.i196 = getelementptr inbounds %struct.spi_controller, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %slave.i.i196 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %slave.i.i196, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.i.not.i = icmp eq i8 %97, 0
  br i1 %tobool.i.not.i, label %if.else.i202, label %if.then.i199

if.then.i199:                                     ; preds = %if.then49
  %call1.i197 = call i32 @wait_for_completion_interruptible(ptr noundef %done_txdma50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i197)
  %tobool.not.i198 = icmp eq i32 %call1.i197, 0
  br i1 %tobool.not.i198, label %lor.lhs.false.i201, label %if.then.i199.do.body.i_crit_edge

if.then.i199.do.body.i_crit_edge:                 ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

lor.lhs.false.i201:                               ; preds = %if.then.i199
  %98 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %slave_aborted, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool2.not.i200 = icmp eq i8 %99, 0
  br i1 %tobool2.not.i200, label %lor.lhs.false.i201.if.end55_crit_edge, label %lor.lhs.false.i201.do.body.i_crit_edge

lor.lhs.false.i201.do.body.i_crit_edge:           ; preds = %lor.lhs.false.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

lor.lhs.false.i201.if.end55_crit_edge:            ; preds = %lor.lhs.false.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.body.i:                                        ; preds = %lor.lhs.false.i201.do.body.i_crit_edge, %if.then.i199.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_msiof_wait_for_completion.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_msiof_dma_once, %stop_reset)) #8
          to label %if.then9.i [label %stop_reset], !srcloc !159

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %100 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_msiof_wait_for_completion.__UNIQUE_ID_ddebug239, ptr noundef %dev.i, ptr noundef nonnull @.str.42) #8
  br label %stop_reset

if.else.i202:                                     ; preds = %if.then49
  %call11.i = call i32 @wait_for_completion_timeout(ptr noundef %done_txdma50, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %do.end15.i, label %if.else.i202.if.end55_crit_edge

if.else.i202.if.end55_crit_edge:                  ; preds = %if.else.i202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end15.i:                                       ; preds = %if.else.i202
  call void @__sanitizer_cov_trace_pc() #10
  %pdev16.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %102 = ptrtoint ptr %pdev16.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev16.i, align 4
  %dev17.i = getelementptr inbounds %struct.platform_device, ptr %103, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.43) #11
  br label %stop_reset

if.end55:                                         ; preds = %if.else.i202.if.end55_crit_edge, %lor.lhs.false.i201.if.end55_crit_edge, %if.end47.if.end55_crit_edge
  br i1 %tobool.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end55
  %104 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %p, align 4
  %slave.i.i204 = getelementptr inbounds %struct.spi_controller, ptr %105, i32 0, i32 12
  %106 = ptrtoint ptr %slave.i.i204 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %slave.i.i204, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.i.not.i205 = icmp eq i8 %107, 0
  br i1 %tobool.i.not.i205, label %if.else.i218, label %if.then.i208

if.then.i208:                                     ; preds = %if.then57
  %call1.i206 = call i32 @wait_for_completion_interruptible(ptr noundef %done28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i206)
  %tobool.not.i207 = icmp eq i32 %call1.i206, 0
  br i1 %tobool.not.i207, label %lor.lhs.false.i211, label %if.then.i208.do.body.i212_crit_edge

if.then.i208.do.body.i212_crit_edge:              ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i212

lor.lhs.false.i211:                               ; preds = %if.then.i208
  %108 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %slave_aborted, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool2.not.i210 = icmp eq i8 %109, 0
  br i1 %tobool2.not.i210, label %lor.lhs.false.i211.if.end62_crit_edge, label %lor.lhs.false.i211.do.body.i212_crit_edge

lor.lhs.false.i211.do.body.i212_crit_edge:        ; preds = %lor.lhs.false.i211
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i212

lor.lhs.false.i211.if.end62_crit_edge:            ; preds = %lor.lhs.false.i211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.body.i212:                                     ; preds = %lor.lhs.false.i211.do.body.i212_crit_edge, %if.then.i208.do.body.i212_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_msiof_wait_for_completion.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_msiof_dma_once, %stop_reset)) #8
          to label %if.then9.i215 [label %stop_reset], !srcloc !159

if.then9.i215:                                    ; preds = %do.body.i212
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i213 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %110 = ptrtoint ptr %pdev.i213 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev.i213, align 4
  %dev.i214 = getelementptr inbounds %struct.platform_device, ptr %111, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_msiof_wait_for_completion.__UNIQUE_ID_ddebug239, ptr noundef %dev.i214, ptr noundef nonnull @.str.42) #8
  br label %stop_reset

if.else.i218:                                     ; preds = %if.then57
  %call11.i216 = call i32 @wait_for_completion_timeout(ptr noundef %done28, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i216)
  %tobool12.not.i217 = icmp eq i32 %call11.i216, 0
  br i1 %tobool12.not.i217, label %do.end15.i221, label %if.else.i218.if.end62_crit_edge

if.else.i218.if.end62_crit_edge:                  ; preds = %if.else.i218
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.end15.i221:                                    ; preds = %if.else.i218
  call void @__sanitizer_cov_trace_pc() #10
  %pdev16.i219 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %112 = ptrtoint ptr %pdev16.i219 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev16.i219, align 4
  %dev17.i220 = getelementptr inbounds %struct.platform_device, ptr %113, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i220, ptr noundef nonnull @.str.43) #11
  br label %stop_reset

if.end62:                                         ; preds = %if.else.i218.if.end62_crit_edge, %lor.lhs.false.i211.if.end62_crit_edge
  %114 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i225 = getelementptr i8, ptr %115, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i225, i32 0) #8, !srcloc !150
  br label %if.end68

if.else:                                          ; preds = %if.end55
  %116 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i227 = getelementptr i8, ptr %117, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i227, i32 32768) #8, !srcloc !150
  %118 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %p, align 4
  %slave.i.i228 = getelementptr inbounds %struct.spi_controller, ptr %119, i32 0, i32 12
  %120 = ptrtoint ptr %slave.i.i228 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %slave.i.i228, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.i.not.i229 = icmp eq i8 %121, 0
  br i1 %tobool.i.not.i229, label %if.else.i242, label %if.then.i232

if.then.i232:                                     ; preds = %if.else
  %call1.i230 = call i32 @wait_for_completion_interruptible(ptr noundef %done28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i230)
  %tobool.not.i231 = icmp eq i32 %call1.i230, 0
  br i1 %tobool.not.i231, label %lor.lhs.false.i235, label %if.then.i232.do.body.i236_crit_edge

if.then.i232.do.body.i236_crit_edge:              ; preds = %if.then.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i236

lor.lhs.false.i235:                               ; preds = %if.then.i232
  %122 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %slave_aborted, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool2.not.i234 = icmp eq i8 %123, 0
  br i1 %tobool2.not.i234, label %lor.lhs.false.i235.if.end68_crit_edge, label %lor.lhs.false.i235.do.body.i236_crit_edge

lor.lhs.false.i235.do.body.i236_crit_edge:        ; preds = %lor.lhs.false.i235
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i236

lor.lhs.false.i235.if.end68_crit_edge:            ; preds = %lor.lhs.false.i235
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.body.i236:                                     ; preds = %lor.lhs.false.i235.do.body.i236_crit_edge, %if.then.i232.do.body.i236_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_msiof_wait_for_completion.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_msiof_dma_once, %stop_reset)) #8
          to label %if.then9.i239 [label %stop_reset], !srcloc !159

if.then9.i239:                                    ; preds = %do.body.i236
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i237 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %124 = ptrtoint ptr %pdev.i237 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev.i237, align 4
  %dev.i238 = getelementptr inbounds %struct.platform_device, ptr %125, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_msiof_wait_for_completion.__UNIQUE_ID_ddebug239, ptr noundef %dev.i238, ptr noundef nonnull @.str.42) #8
  br label %stop_reset

if.else.i242:                                     ; preds = %if.else
  %call11.i240 = call i32 @wait_for_completion_timeout(ptr noundef %done28, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i240)
  %tobool12.not.i241 = icmp eq i32 %call11.i240, 0
  br i1 %tobool12.not.i241, label %do.end15.i245, label %if.else.i242.if.end68_crit_edge

if.else.i242.if.end68_crit_edge:                  ; preds = %if.else.i242
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end15.i245:                                    ; preds = %if.else.i242
  call void @__sanitizer_cov_trace_pc() #10
  %pdev16.i243 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %126 = ptrtoint ptr %pdev16.i243 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdev16.i243, align 4
  %dev17.i244 = getelementptr inbounds %struct.platform_device, ptr %127, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i244, ptr noundef nonnull @.str.43) #11
  br label %stop_reset

if.end68:                                         ; preds = %if.else.i242.if.end68_crit_edge, %lor.lhs.false.i235.if.end68_crit_edge, %if.end62
  %128 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i.i249 = getelementptr i8, ptr %129, i32 64
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i249) #8, !srcloc !152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %131 = and i32 %130, -1048593
  %132 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i3.i = getelementptr i8, ptr %133, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3.i, i32 %131) #8, !srcloc !150
  %134 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %p, align 4
  %slave.i.i250 = getelementptr inbounds %struct.spi_controller, ptr %135, i32 0, i32 12
  %136 = ptrtoint ptr %slave.i.i250 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %slave.i.i250, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.i.i251 = icmp ne i8 %137, 0
  br i1 %tobool.i.i251, label %if.end68.if.end5.i_crit_edge, label %if.end.i254

if.end68.if.end5.i_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end.i254:                                      ; preds = %if.end68
  %call1.i252 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 16384, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i252)
  %tobool2.not.i253 = icmp eq i32 %call1.i252, 0
  br i1 %tobool2.not.i253, label %if.end.i254.if.end5.i_crit_edge, label %if.end.i254.do.end74_crit_edge

if.end.i254.do.end74_crit_edge:                   ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

if.end.i254.if.end5.i_crit_edge:                  ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i254.if.end5.i_crit_edge, %if.end68.if.end5.i_crit_edge
  %call4.i = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 512, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool7.not.i255 = icmp eq i32 %call4.i, 0
  %or.cond.i256 = select i1 %tobool2.not.i, i1 %tobool7.not.i255, i1 false
  br i1 %or.cond.i256, label %if.then8.i, label %if.end5.i.if.end10.i260_crit_edge

if.end5.i.if.end10.i260_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i260

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i257 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 256, i32 noundef 0) #8
  br label %if.end10.i260

if.end10.i260:                                    ; preds = %if.then8.i, %if.end5.i.if.end10.i260_crit_edge
  %ret.2.i = phi i32 [ %call9.i257, %if.then8.i ], [ %call4.i, %if.end5.i.if.end10.i260_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool11.not.i258 = icmp ne i32 %ret.2.i, 0
  %brmerge.i259 = select i1 %tobool11.not.i258, i1 true, i1 %tobool.i.i251
  br i1 %brmerge.i259, label %if.end10.i260.sh_msiof_spi_stop.exit_crit_edge, label %if.then14.i262

if.end10.i260.sh_msiof_spi_stop.exit_crit_edge:   ; preds = %if.end10.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_msiof_spi_stop.exit

if.then14.i262:                                   ; preds = %if.end10.i260
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i261 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 32768, i32 noundef 0) #8
  br label %sh_msiof_spi_stop.exit

sh_msiof_spi_stop.exit:                           ; preds = %if.then14.i262, %if.end10.i260.sh_msiof_spi_stop.exit_crit_edge
  %ret.3.i263 = phi i32 [ %ret.2.i, %if.end10.i260.sh_msiof_spi_stop.exit_crit_edge ], [ %call15.i261, %if.then14.i262 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i263)
  %tobool70.not = icmp eq i32 %ret.3.i263, 0
  br i1 %tobool70.not, label %if.end77, label %sh_msiof_spi_stop.exit.do.end74_crit_edge

sh_msiof_spi_stop.exit.do.end74_crit_edge:        ; preds = %sh_msiof_spi_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

do.end74:                                         ; preds = %sh_msiof_spi_stop.exit.do.end74_crit_edge, %if.end.i254.do.end74_crit_edge
  %ret.3.i263316 = phi i32 [ %ret.3.i263, %sh_msiof_spi_stop.exit.do.end74_crit_edge ], [ %call1.i252, %if.end.i254.do.end74_crit_edge ]
  %pdev75 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %138 = ptrtoint ptr %pdev75 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev75, align 4
  %dev76 = getelementptr inbounds %struct.platform_device, ptr %139, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end77:                                         ; preds = %sh_msiof_spi_stop.exit
  br i1 %tobool.not, label %if.end77.cleanup_crit_edge, label %if.then79

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %p, align 4
  %dma_rx81 = getelementptr inbounds %struct.spi_controller, ptr %141, i32 0, i32 61
  %142 = ptrtoint ptr %dma_rx81 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dma_rx81, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %dev83 = getelementptr inbounds %struct.dma_device, ptr %145, i32 0, i32 15
  %146 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev83, align 4
  %rx_dma_addr84 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 13
  %148 = ptrtoint ptr %rx_dma_addr84 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rx_dma_addr84, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %147, i32 noundef %149, i32 noundef %len, i32 noundef 2) #8
  br label %cleanup

stop_reset:                                       ; preds = %do.end15.i245, %if.then9.i239, %do.body.i236, %do.end15.i221, %if.then9.i215, %do.body.i212, %do.end15.i, %if.then9.i, %do.body.i
  %ret.0 = phi i32 [ -110, %do.end15.i ], [ -4, %if.then9.i ], [ -4, %do.body.i ], [ -110, %do.end15.i221 ], [ -4, %if.then9.i215 ], [ -4, %do.body.i212 ], [ -110, %do.end15.i245 ], [ -4, %if.then9.i239 ], [ -4, %do.body.i236 ]
  %150 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i.i265 = getelementptr i8, ptr %151, i32 64
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i265) #8, !srcloc !152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %153 = and i32 %152, -1048593
  %154 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i3.i266 = getelementptr i8, ptr %155, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3.i266, i32 %153) #8, !srcloc !150
  %156 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %p, align 4
  %slave.i.i267 = getelementptr inbounds %struct.spi_controller, ptr %157, i32 0, i32 12
  %158 = ptrtoint ptr %slave.i.i267 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %slave.i.i267, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.i.i268 = icmp ne i8 %159, 0
  br i1 %tobool.i.i268, label %stop_reset.if.end5.i276_crit_edge, label %if.end.i271

stop_reset.if.end5.i276_crit_edge:                ; preds = %stop_reset
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i276

if.end.i271:                                      ; preds = %stop_reset
  %call1.i269 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 16384, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i269)
  %tobool2.not.i270 = icmp eq i32 %call1.i269, 0
  br i1 %tobool2.not.i270, label %if.end.i271.if.end5.i276_crit_edge, label %if.end.i271.stop_dma_crit_edge

if.end.i271.stop_dma_crit_edge:                   ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_dma

if.end.i271.if.end5.i276_crit_edge:               ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i276

if.end5.i276:                                     ; preds = %if.end.i271.if.end5.i276_crit_edge, %stop_reset.if.end5.i276_crit_edge
  %call4.i272 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 512, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i272)
  %tobool7.not.i274 = icmp eq i32 %call4.i272, 0
  %or.cond.i275 = select i1 %tobool2.not.i, i1 %tobool7.not.i274, i1 false
  br i1 %or.cond.i275, label %if.then8.i278, label %if.end5.i276.if.end10.i282_crit_edge

if.end5.i276.if.end10.i282_crit_edge:             ; preds = %if.end5.i276
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i282

if.then8.i278:                                    ; preds = %if.end5.i276
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i277 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 256, i32 noundef 0) #8
  br label %if.end10.i282

if.end10.i282:                                    ; preds = %if.then8.i278, %if.end5.i276.if.end10.i282_crit_edge
  %ret.2.i279 = phi i32 [ %call9.i277, %if.then8.i278 ], [ %call4.i272, %if.end5.i276.if.end10.i282_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i279)
  %tobool11.not.i280 = icmp ne i32 %ret.2.i279, 0
  %brmerge.i281 = select i1 %tobool11.not.i280, i1 true, i1 %tobool.i.i268
  br i1 %brmerge.i281, label %if.end10.i282.stop_dma_crit_edge, label %if.then14.i284

if.end10.i282.stop_dma_crit_edge:                 ; preds = %if.end10.i282
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_dma

if.then14.i284:                                   ; preds = %if.end10.i282
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i283 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 32768, i32 noundef 0) #8
  br label %stop_dma

stop_dma:                                         ; preds = %if.then14.i284, %if.end10.i282.stop_dma_crit_edge, %if.end.i271.stop_dma_crit_edge, %do.end
  %ret.1 = phi i32 [ %ret.3.i307, %do.end ], [ %ret.0, %if.end.i271.stop_dma_crit_edge ], [ %ret.0, %if.end10.i282.stop_dma_crit_edge ], [ %ret.0, %if.then14.i284 ]
  br i1 %tobool9.not, label %stop_dma.no_dma_tx_crit_edge, label %if.then88

stop_dma.no_dma_tx_crit_edge:                     ; preds = %stop_dma
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_dma_tx

if.then88:                                        ; preds = %stop_dma
  %160 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %p, align 4
  %dma_tx90 = getelementptr inbounds %struct.spi_controller, ptr %161, i32 0, i32 60
  %162 = ptrtoint ptr %dma_tx90 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dma_tx90, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %165, i32 0, i32 47
  %166 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %167, null
  br i1 %tobool.not.i.i, label %if.then88.no_dma_tx_crit_edge, label %dmaengine_terminate_async.exit.i

if.then88.no_dma_tx_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_dma_tx

dmaengine_terminate_async.exit.i:                 ; preds = %if.then88
  %call.i.i = call i32 %167(ptr noundef %163) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i287 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i287, label %if.end.i288, label %dmaengine_terminate_async.exit.i.no_dma_tx_crit_edge

dmaengine_terminate_async.exit.i.no_dma_tx_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_dma_tx

if.end.i288:                                      ; preds = %dmaengine_terminate_async.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.44, i32 noundef 1169) #8
  %168 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %163, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %169, i32 0, i32 48
  %170 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %171, null
  br i1 %tobool.not.i1.i, label %if.end.i288.no_dma_tx_crit_edge, label %if.then.i2.i

if.end.i288.no_dma_tx_crit_edge:                  ; preds = %if.end.i288
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_dma_tx

if.then.i2.i:                                     ; preds = %if.end.i288
  call void @__sanitizer_cov_trace_pc() #10
  call void %171(ptr noundef %163) #8
  br label %no_dma_tx

no_dma_tx:                                        ; preds = %if.then.i2.i, %if.end.i288.no_dma_tx_crit_edge, %dmaengine_terminate_async.exit.i.no_dma_tx_crit_edge, %if.then88.no_dma_tx_crit_edge, %stop_dma.no_dma_tx_crit_edge, %if.end19.no_dma_tx_crit_edge, %dmaengine_prep_slave_single.exit184.no_dma_tx_crit_edge, %dmaengine_prep_slave_single.exit184.thread
  %ret.2 = phi i32 [ %ret.1, %stop_dma.no_dma_tx_crit_edge ], [ -11, %dmaengine_prep_slave_single.exit184.no_dma_tx_crit_edge ], [ %call.i186, %if.end19.no_dma_tx_crit_edge ], [ -11, %dmaengine_prep_slave_single.exit184.thread ], [ %ret.1, %if.then88.no_dma_tx_crit_edge ], [ %ret.1, %dmaengine_terminate_async.exit.i.no_dma_tx_crit_edge ], [ %ret.1, %if.end.i288.no_dma_tx_crit_edge ], [ %ret.1, %if.then.i2.i ]
  br i1 %tobool.not, label %no_dma_tx.if.end98_crit_edge, label %if.then94

no_dma_tx.if.end98_crit_edge:                     ; preds = %no_dma_tx
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then94:                                        ; preds = %no_dma_tx
  %172 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %p, align 4
  %dma_rx96 = getelementptr inbounds %struct.spi_controller, ptr %173, i32 0, i32 61
  %174 = ptrtoint ptr %dma_rx96 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dma_rx96, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %device_terminate_all.i.i289 = getelementptr inbounds %struct.dma_device, ptr %177, i32 0, i32 47
  %178 = ptrtoint ptr %device_terminate_all.i.i289 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %device_terminate_all.i.i289, align 4
  %tobool.not.i.i290 = icmp eq ptr %179, null
  br i1 %tobool.not.i.i290, label %if.then94.if.end98_crit_edge, label %dmaengine_terminate_async.exit.i293

if.then94.if.end98_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

dmaengine_terminate_async.exit.i293:              ; preds = %if.then94
  %call.i.i291 = call i32 %179(ptr noundef %175) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i291)
  %tobool.not.i292 = icmp eq i32 %call.i.i291, 0
  br i1 %tobool.not.i292, label %if.end.i296, label %dmaengine_terminate_async.exit.i293.if.end98_crit_edge

dmaengine_terminate_async.exit.i293.if.end98_crit_edge: ; preds = %dmaengine_terminate_async.exit.i293
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.end.i296:                                      ; preds = %dmaengine_terminate_async.exit.i293
  call void @__might_sleep(ptr noundef nonnull @.str.44, i32 noundef 1169) #8
  %180 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %175, align 4
  %device_synchronize.i.i294 = getelementptr inbounds %struct.dma_device, ptr %181, i32 0, i32 48
  %182 = ptrtoint ptr %device_synchronize.i.i294 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %device_synchronize.i.i294, align 4
  %tobool.not.i1.i295 = icmp eq ptr %183, null
  br i1 %tobool.not.i1.i295, label %if.end.i296.if.end98_crit_edge, label %if.then.i2.i297

if.end.i296.if.end98_crit_edge:                   ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then.i2.i297:                                  ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #10
  call void %183(ptr noundef %175) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then.i2.i297, %if.end.i296.if.end98_crit_edge, %dmaengine_terminate_async.exit.i293.if.end98_crit_edge, %if.then94.if.end98_crit_edge, %no_dma_tx.if.end98_crit_edge
  %mapbase1.i299 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  %184 = ptrtoint ptr %mapbase1.i299 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mapbase1.i299, align 4
  %add.ptr2.i300 = getelementptr i8, ptr %185, i32 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i300, i32 0) #8, !srcloc !150
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then79, %if.end77.cleanup_crit_edge, %do.end74, %if.end.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.thread
  %retval.0 = phi i32 [ %ret.2, %if.end98 ], [ %ret.3.i263316, %do.end74 ], [ -11, %dmaengine_prep_slave_single.exit.cleanup_crit_edge ], [ %call.i173, %if.end.cleanup_crit_edge ], [ 0, %if.then79 ], [ 0, %if.end77.cleanup_crit_edge ], [ -11, %dmaengine_prep_slave_single.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_8(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %tx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %tx_buf, i32 %k.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, %fs
  %2 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !150
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_8(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %rx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %shr = lshr i32 %3, %fs
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr i8, ptr %rx_buf, i32 %k.04
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_16u(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %tx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %tx_buf, i32 %k.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %arrayidx, align 1
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, %fs
  %2 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !150
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_16(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %tx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %tx_buf, i32 %k.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, %fs
  %2 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !150
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_16u(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %rx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %k.04 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %rx_buf, i32 %k.04
  %0 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %shr = lshr i32 %3, %fs
  %conv = trunc i32 %shr to i16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %do.body.for.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_16(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %rx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %shr = lshr i32 %3, %fs
  %conv = trunc i32 %shr to i16
  %arrayidx = getelementptr i16, ptr %rx_buf, i32 %k.04
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_s32u(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %tx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %tx_buf, i32 %k.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %arrayidx, align 1
  %shl = shl i32 %1, %fs
  %2 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %shl) #8, !srcloc !150
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_s32(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %tx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %tx_buf, i32 %k.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %1, %fs
  %2 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %shl) #8, !srcloc !150
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_s32u(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %rx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %k.04 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %rx_buf, i32 %k.04
  %0 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %shr = lshr i32 %3, %fs
  %4 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %do.body.for.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_s32(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %rx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %shr = lshr i32 %3, %fs
  %4 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %arrayidx = getelementptr i32, ptr %rx_buf, i32 %k.04
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_32u(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %tx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %tx_buf, i32 %k.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %arrayidx, align 1
  %shl = shl i32 %1, %fs
  %2 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !150
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_32(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %tx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %tx_buf, i32 %k.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %1, %fs
  %2 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !150
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_32u(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %rx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %k.04 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %rx_buf, i32 %k.04
  %0 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %shr = lshr i32 %3, %fs
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %shr, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %do.body.for.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_32(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %rx_buf, i32 noundef %words, i32 noundef %fs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words)
  %cmp3 = icmp sgt i32 %words, 0
  br i1 %cmp3, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %shr = lshr i32 %3, %fs
  %arrayidx = getelementptr i32, ptr %rx_buf, i32 %k.04
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %k.04, 1
  %exitcond.not = icmp eq i32 %inc, %words
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_msiof_spi_txrx_once(ptr noundef %p, ptr nocapture noundef readonly %tx_fifo, ptr nocapture noundef readonly %rx_fifo, ptr noundef %tx_buf, ptr noundef %rx_buf, i32 noundef %words, i32 noundef %bits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tx_buf, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_fifo_size = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_fifo_size, align 4
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 %words)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %words.addr.0 = phi i32 [ %2, %if.then ], [ %words, %entry.if.end_crit_edge ]
  %tobool1.not = icmp eq ptr %rx_buf, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rx_fifo_size = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 8
  %3 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_fifo_size, align 4
  %5 = tail call i32 @llvm.smin.i32(i32 %words.addr.0, i32 %4)
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end.if.end9_crit_edge
  %words.addr.1 = phi i32 [ %5, %if.then2 ], [ %words.addr.0, %if.end.if.end9_crit_edge ]
  %sub = sub i32 32, %bits
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !150
  %sub.i = shl i32 %bits, 24
  %shl.i = add i32 %sub.i, -16777216
  %sub1.i = shl i32 %words.addr.1, 16
  %shl2.i = add i32 %sub1.i, -65536
  %or.i = or i32 %shl2.i, %shl.i
  br i1 %tobool.not, label %lor.lhs.false.i, label %if.end9.if.then.i_crit_edge

if.end9.if.then.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end9
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p, align 4
  %flags.i = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i, align 4
  %12 = and i16 %11, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool3.not.i = icmp eq i16 %12, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end9.if.then.i_crit_edge
  %13 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %15) #8, !srcloc !150
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %or4.i = or i32 %or.i, 1
  %16 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i14.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i14.i, i32 %18) #8, !srcloc !150
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  br i1 %tobool1.not, label %if.end.i.sh_msiof_spi_set_mode_regs.exit_crit_edge, label %if.then6.i

if.end.i.sh_msiof_spi_set_mode_regs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_msiof_spi_set_mode_regs.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i16.i = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i16.i, i32 %21) #8, !srcloc !150
  br label %sh_msiof_spi_set_mode_regs.exit

sh_msiof_spi_set_mode_regs.exit:                  ; preds = %if.then6.i, %if.end.i.sh_msiof_spi_set_mode_regs.exit_crit_edge
  %22 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i79 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i79, i32 -2147450880) #8, !srcloc !150
  br i1 %tobool.not, label %sh_msiof_spi_set_mode_regs.exit.if.end12_crit_edge, label %if.then11

sh_msiof_spi_set_mode_regs.exit.if.end12_crit_edge: ; preds = %sh_msiof_spi_set_mode_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %sh_msiof_spi_set_mode_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %tx_fifo(ptr noundef %p, ptr noundef nonnull %tx_buf, i32 noundef %words.addr.1, i32 noundef %sub) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %sh_msiof_spi_set_mode_regs.exit.if.end12_crit_edge
  %done = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 5
  %24 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %done, align 4
  %slave_aborted = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 16
  %25 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %slave_aborted, align 2
  %26 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p, align 4
  %slave.i.i = getelementptr inbounds %struct.spi_controller, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %slave.i.i, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i.i = icmp ne i8 %29, 0
  br i1 %tobool.i.i, label %if.end12.if.end.i82_crit_edge, label %if.then.i80

if.end12.if.end.i82_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i82

if.then.i80:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 0, i32 noundef 32768) #8
  br label %if.end.i82

if.end.i82:                                       ; preds = %if.then.i80, %if.end12.if.end.i82_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end12.if.end.i82_crit_edge ], [ %call1.i, %if.then.i80 ]
  %tobool2.not.i = icmp ne ptr %rx_buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool3.not.i81 = icmp eq i32 %ret.0.i, 0
  %or.cond.i = select i1 %tobool2.not.i, i1 %tobool3.not.i81, i1 false
  br i1 %or.cond.i, label %if.then4.i, label %if.end.i82.if.end6.i_crit_edge

if.end.i82.if.end6.i_crit_edge:                   ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 0, i32 noundef 256) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i82.if.end6.i_crit_edge
  %ret.1.i = phi i32 [ %call5.i, %if.then4.i ], [ %ret.0.i, %if.end.i82.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool7.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool7.not.i, label %if.end10.i, label %if.end6.i.do.end_crit_edge

if.end6.i.do.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end10.i:                                       ; preds = %if.end6.i
  %call9.i = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 0, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool11.not.i = icmp ne i32 %call9.i, 0
  %brmerge.i = select i1 %tobool11.not.i, i1 true, i1 %tobool.i.i
  br i1 %brmerge.i, label %if.end10.i.sh_msiof_spi_start.exit_crit_edge, label %if.then14.i

if.end10.i.sh_msiof_spi_start.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_msiof_spi_start.exit

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 0, i32 noundef 16384) #8
  br label %sh_msiof_spi_start.exit

sh_msiof_spi_start.exit:                          ; preds = %if.then14.i, %if.end10.i.sh_msiof_spi_start.exit_crit_edge
  %ret.3.i = phi i32 [ %call9.i, %if.end10.i.sh_msiof_spi_start.exit_crit_edge ], [ %call15.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool13.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool13.not, label %if.end15, label %sh_msiof_spi_start.exit.do.end_crit_edge

sh_msiof_spi_start.exit.do.end_crit_edge:         ; preds = %sh_msiof_spi_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %sh_msiof_spi_start.exit.do.end_crit_edge, %if.end6.i.do.end_crit_edge
  %ret.3.i133 = phi i32 [ %ret.3.i, %sh_msiof_spi_start.exit.do.end_crit_edge ], [ %ret.1.i, %if.end6.i.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #11
  br label %stop_ier

if.end15:                                         ; preds = %sh_msiof_spi_start.exit
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p, align 4
  %slave.i.i83 = getelementptr inbounds %struct.spi_controller, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %slave.i.i83 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %slave.i.i83, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.i.not.i = icmp eq i8 %35, 0
  br i1 %tobool.i.not.i, label %if.else.i89, label %if.then.i86

if.then.i86:                                      ; preds = %if.end15
  %call1.i84 = tail call i32 @wait_for_completion_interruptible(ptr noundef %done) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84)
  %tobool.not.i85 = icmp eq i32 %call1.i84, 0
  br i1 %tobool.not.i85, label %lor.lhs.false.i88, label %if.then.i86.do.body.i_crit_edge

if.then.i86.do.body.i_crit_edge:                  ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

lor.lhs.false.i88:                                ; preds = %if.then.i86
  %36 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %slave_aborted, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool2.not.i87 = icmp eq i8 %37, 0
  br i1 %tobool2.not.i87, label %lor.lhs.false.i88.if.end20_crit_edge, label %lor.lhs.false.i88.do.body.i_crit_edge

lor.lhs.false.i88.do.body.i_crit_edge:            ; preds = %lor.lhs.false.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

lor.lhs.false.i88.if.end20_crit_edge:             ; preds = %lor.lhs.false.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.body.i:                                        ; preds = %lor.lhs.false.i88.do.body.i_crit_edge, %if.then.i86.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_msiof_wait_for_completion.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_msiof_spi_txrx_once, %stop_reset)) #8
          to label %if.then9.i [label %stop_reset], !srcloc !159

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %38 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_msiof_wait_for_completion.__UNIQUE_ID_ddebug239, ptr noundef %dev.i, ptr noundef nonnull @.str.42) #8
  br label %stop_reset

if.else.i89:                                      ; preds = %if.end15
  %call11.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %do.end15.i, label %if.else.i89.if.end20_crit_edge

if.else.i89.if.end20_crit_edge:                   ; preds = %if.else.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end15.i:                                       ; preds = %if.else.i89
  call void @__sanitizer_cov_trace_pc() #10
  %pdev16.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %40 = ptrtoint ptr %pdev16.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev16.i, align 4
  %dev17.i = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.43) #11
  br label %stop_reset

if.end20:                                         ; preds = %if.else.i89.if.end20_crit_edge, %lor.lhs.false.i88.if.end20_crit_edge
  br i1 %tobool1.not, label %if.end20.if.end23_crit_edge, label %if.then22

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %rx_fifo(ptr noundef %p, ptr noundef nonnull %rx_buf, i32 noundef %words.addr.1, i32 noundef %sub) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20.if.end23_crit_edge
  %42 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i.i91 = getelementptr i8, ptr %43, i32 64
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i91) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %45 = and i32 %44, -1048593
  %46 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i3.i = getelementptr i8, ptr %47, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3.i, i32 %45) #8, !srcloc !150
  %48 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %p, align 4
  %slave.i.i92 = getelementptr inbounds %struct.spi_controller, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %slave.i.i92 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %slave.i.i92, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.i.i93 = icmp ne i8 %51, 0
  br i1 %tobool.i.i93, label %if.end23.if.end5.i_crit_edge, label %if.end.i96

if.end23.if.end5.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end.i96:                                       ; preds = %if.end23
  %call1.i94 = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 16384, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool2.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool2.not.i95, label %if.end.i96.if.end5.i_crit_edge, label %if.end.i96.do.end29_crit_edge

if.end.i96.do.end29_crit_edge:                    ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.end.i96.if.end5.i_crit_edge:                   ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i96.if.end5.i_crit_edge, %if.end23.if.end5.i_crit_edge
  %call4.i = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 512, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool7.not.i97 = icmp eq i32 %call4.i, 0
  %or.cond.i98 = select i1 %tobool2.not.i, i1 %tobool7.not.i97, i1 false
  br i1 %or.cond.i98, label %if.then8.i, label %if.end5.i.if.end10.i102_crit_edge

if.end5.i.if.end10.i102_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i102

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i99 = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 256, i32 noundef 0) #8
  br label %if.end10.i102

if.end10.i102:                                    ; preds = %if.then8.i, %if.end5.i.if.end10.i102_crit_edge
  %ret.2.i = phi i32 [ %call9.i99, %if.then8.i ], [ %call4.i, %if.end5.i.if.end10.i102_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool11.not.i100 = icmp ne i32 %ret.2.i, 0
  %brmerge.i101 = select i1 %tobool11.not.i100, i1 true, i1 %tobool.i.i93
  br i1 %brmerge.i101, label %if.end10.i102.sh_msiof_spi_stop.exit_crit_edge, label %if.then14.i104

if.end10.i102.sh_msiof_spi_stop.exit_crit_edge:   ; preds = %if.end10.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_msiof_spi_stop.exit

if.then14.i104:                                   ; preds = %if.end10.i102
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i103 = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 32768, i32 noundef 0) #8
  br label %sh_msiof_spi_stop.exit

sh_msiof_spi_stop.exit:                           ; preds = %if.then14.i104, %if.end10.i102.sh_msiof_spi_stop.exit_crit_edge
  %ret.3.i105 = phi i32 [ %ret.2.i, %if.end10.i102.sh_msiof_spi_stop.exit_crit_edge ], [ %call15.i103, %if.then14.i104 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i105)
  %tobool25.not = icmp eq i32 %ret.3.i105, 0
  br i1 %tobool25.not, label %sh_msiof_spi_stop.exit.cleanup_crit_edge, label %sh_msiof_spi_stop.exit.do.end29_crit_edge

sh_msiof_spi_stop.exit.do.end29_crit_edge:        ; preds = %sh_msiof_spi_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

sh_msiof_spi_stop.exit.cleanup_crit_edge:         ; preds = %sh_msiof_spi_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end29:                                         ; preds = %sh_msiof_spi_stop.exit.do.end29_crit_edge, %if.end.i96.do.end29_crit_edge
  %ret.3.i105138 = phi i32 [ %ret.3.i105, %sh_msiof_spi_stop.exit.do.end29_crit_edge ], [ %call1.i94, %if.end.i96.do.end29_crit_edge ]
  %pdev30 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 3
  %52 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev30, align 4
  %dev31 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.39) #11
  br label %cleanup

stop_reset:                                       ; preds = %do.end15.i, %if.then9.i, %do.body.i
  %retval.0.i = phi i32 [ -110, %do.end15.i ], [ -4, %if.then9.i ], [ -4, %do.body.i ]
  %54 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i.i107 = getelementptr i8, ptr %55, i32 64
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i107) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %57 = and i32 %56, -1048593
  %58 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i3.i108 = getelementptr i8, ptr %59, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3.i108, i32 %57) #8, !srcloc !150
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p, align 4
  %slave.i.i109 = getelementptr inbounds %struct.spi_controller, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %slave.i.i109 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %slave.i.i109, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.i.i110 = icmp ne i8 %63, 0
  br i1 %tobool.i.i110, label %stop_reset.if.end5.i118_crit_edge, label %if.end.i113

stop_reset.if.end5.i118_crit_edge:                ; preds = %stop_reset
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i118

if.end.i113:                                      ; preds = %stop_reset
  %call1.i111 = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 16384, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool2.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool2.not.i112, label %if.end.i113.if.end5.i118_crit_edge, label %if.end.i113.stop_ier_crit_edge

if.end.i113.stop_ier_crit_edge:                   ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_ier

if.end.i113.if.end5.i118_crit_edge:               ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i118

if.end5.i118:                                     ; preds = %if.end.i113.if.end5.i118_crit_edge, %stop_reset.if.end5.i118_crit_edge
  %call4.i114 = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 512, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i114)
  %tobool7.not.i116 = icmp eq i32 %call4.i114, 0
  %or.cond.i117 = select i1 %tobool2.not.i, i1 %tobool7.not.i116, i1 false
  br i1 %or.cond.i117, label %if.then8.i120, label %if.end5.i118.if.end10.i124_crit_edge

if.end5.i118.if.end10.i124_crit_edge:             ; preds = %if.end5.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i124

if.then8.i120:                                    ; preds = %if.end5.i118
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i119 = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 256, i32 noundef 0) #8
  br label %if.end10.i124

if.end10.i124:                                    ; preds = %if.then8.i120, %if.end5.i118.if.end10.i124_crit_edge
  %ret.2.i121 = phi i32 [ %call9.i119, %if.then8.i120 ], [ %call4.i114, %if.end5.i118.if.end10.i124_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i121)
  %tobool11.not.i122 = icmp ne i32 %ret.2.i121, 0
  %brmerge.i123 = select i1 %tobool11.not.i122, i1 true, i1 %tobool.i.i110
  br i1 %brmerge.i123, label %if.end10.i124.stop_ier_crit_edge, label %if.then14.i126

if.end10.i124.stop_ier_crit_edge:                 ; preds = %if.end10.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_ier

if.then14.i126:                                   ; preds = %if.end10.i124
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i125 = tail call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %p, i32 noundef 32768, i32 noundef 0) #8
  br label %stop_ier

stop_ier:                                         ; preds = %if.then14.i126, %if.end10.i124.stop_ier_crit_edge, %if.end.i113.stop_ier_crit_edge, %do.end
  %ret.0 = phi i32 [ %ret.3.i133, %do.end ], [ %retval.0.i, %if.end.i113.stop_ier_crit_edge ], [ %retval.0.i, %if.end10.i124.stop_ier_crit_edge ], [ %retval.0.i, %if.then14.i126 ]
  %64 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i130 = getelementptr i8, ptr %65, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i130, i32 0) #8, !srcloc !150
  br label %cleanup

cleanup:                                          ; preds = %stop_ier, %do.end29, %sh_msiof_spi_stop.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %stop_ier ], [ %ret.3.i105138, %do.end29 ], [ %words.addr.1, %sh_msiof_spi_stop.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_msiof_dma_complete(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %arg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_msiof_modify_ctr_wait(ptr nocapture noundef readonly %p, i32 noundef %clr, i32 noundef %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %set, %clr
  %mapbase1.i = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %neg = xor i32 %clr, -1
  %and = and i32 %3, %neg
  %or1 = or i32 %and, %set
  %4 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr2.i47 = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %or1) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i47, i32 %6) #8, !srcloc !150
  %call2 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call2, 100000
  %7 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr49 = getelementptr i8, ptr %8, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #8, !srcloc !152
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %and650 = and i32 %10, %or
  call void @__sanitizer_cov_trace_cmp4(i32 %and650, i32 %set)
  %cmp51 = icmp eq i32 %and650, %set
  br i1 %cmp51, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call7 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call7, %add.i
  br i1 %cmp3.i, label %if.then10, label %cond.false

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 40
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #8, !srcloc !152
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %.pre = and i32 %14, %or
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  %16 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapbase1.i, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !152
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %and6 = and i32 %19, %or
  %cmp = icmp eq i32 %and6, %set
  br i1 %cmp, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then10, %entry.for.end_crit_edge
  %and27.pre-phi = phi i32 [ %and650, %entry.for.end_crit_edge ], [ %.pre, %if.then10 ], [ %and6, %cond.false.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and27.pre-phi, i32 %set)
  %cmp28 = icmp eq i32 %and27.pre-phi, %set
  %cond = select i1 %cmp28, i32 0, i32 -110
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sh_msiof_request_dma_chan(ptr noundef %dev, i32 noundef %dir, i32 noundef %id, i32 noundef %port_addr) unnamed_addr #2 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #8
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #8
  %1 = inttoptr i32 %id to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %cond = select i1 %cmp, ptr @.str.51, ptr @.str.52
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i)
  %3 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.fca.0.load, ptr %mask.i, align 4
  %call.i.i = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull %cond) #8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool.not1.i = icmp eq ptr %call.i.i, null
  %tobool.not.i = or i1 %cmp.i.i.i, %tobool.not1.i
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %dma_request_slave_channel_compat.exit.thread27

dma_request_slave_channel_compat.exit.thread27:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool2.not.i = icmp eq i32 %id, 0
  br i1 %tobool2.not.i, label %dma_request_slave_channel_compat.exit.thread, label %dma_request_slave_channel_compat.exit

dma_request_slave_channel_compat.exit.thread:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  br label %do.end

dma_request_slave_channel_compat.exit:            ; preds = %lor.lhs.false.i
  %call5.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull @shdma_chan_filter, ptr noundef nonnull %1, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  %tobool.not = icmp eq ptr %call5.i, null
  br i1 %tobool.not, label %dma_request_slave_channel_compat.exit.do.end_crit_edge, label %dma_request_slave_channel_compat.exit.if.end_crit_edge

dma_request_slave_channel_compat.exit.if.end_crit_edge: ; preds = %dma_request_slave_channel_compat.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dma_request_slave_channel_compat.exit.do.end_crit_edge: ; preds = %dma_request_slave_channel_compat.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %dma_request_slave_channel_compat.exit.do.end_crit_edge, %dma_request_slave_channel_compat.exit.thread
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.53) #11
  br label %cleanup

if.end:                                           ; preds = %dma_request_slave_channel_compat.exit.if.end_crit_edge, %dma_request_slave_channel_compat.exit.thread27
  %retval.0.i30 = phi ptr [ %call.i.i, %dma_request_slave_channel_compat.exit.thread27 ], [ %call5.i, %dma_request_slave_channel_compat.exit.if.end_crit_edge ]
  %4 = getelementptr inbounds i8, ptr %cfg, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 44)
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dir, ptr %cfg, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %7 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %port_addr, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %8 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %port_addr, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %src_addr_width.sink = phi ptr [ %src_addr_width, %if.else ], [ %dst_addr_width, %if.then2 ]
  %9 = ptrtoint ptr %src_addr_width.sink to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %src_addr_width.sink, align 4
  %10 = ptrtoint ptr %retval.0.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %retval.0.i30, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i23 = icmp eq ptr %13, null
  br i1 %tobool.not.i23, label %if.end3.do.end9_crit_edge, label %dmaengine_slave_config.exit

if.end3.do.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

dmaengine_slave_config.exit:                      ; preds = %if.end3
  %call.i = call i32 %13(ptr noundef nonnull %retval.0.i30, ptr noundef nonnull %cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %dmaengine_slave_config.exit.cleanup_crit_edge, label %dmaengine_slave_config.exit.do.end9_crit_edge

dmaengine_slave_config.exit.do.end9_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end9:                                          ; preds = %dmaengine_slave_config.exit.do.end9_crit_edge, %if.end3.do.end9_crit_edge
  %retval.0.i2433 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.end9_crit_edge ], [ -38, %if.end3.do.end9_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i2433) #11
  call void @dma_release_channel(ptr noundef nonnull %retval.0.i30) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %dmaengine_slave_config.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end9 ], [ null, %do.end ], [ %retval.0.i30, %dmaengine_slave_config.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @shdma_chan_filter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %3) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @spi_controller_resume(ptr noundef %3) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !71, !73, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !103, !104, !106, !107, !108, !109, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !133, !135, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__initcall__kmod_spi_sh_msiof__248_1424_sh_msiof_spi_drv_init6, !1, !"__initcall__kmod_spi_sh_msiof__248_1424_sh_msiof_spi_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1424, i32 1}
!2 = !{ptr @__exitcall_sh_msiof_spi_drv_exit, !1, !"__exitcall_sh_msiof_spi_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description249, !4, !"__UNIQUE_ID_description249", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1426, i32 1}
!5 = !{ptr @__UNIQUE_ID_author250, !6, !"__UNIQUE_ID_author250", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1427, i32 1}
!7 = !{ptr @__UNIQUE_ID_file251, !8, !"__UNIQUE_ID_file251", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1428, i32 1}
!9 = !{ptr @__UNIQUE_ID_license252, !8, !"__UNIQUE_ID_license252", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1419, i32 12}
!12 = !{ptr @sh_msiof_spi_drv, !13, !"sh_msiof_spi_drv", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1414, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1278, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sh_msiof_spi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sh_msiof_spi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1303, i32 3}
!24 = !{ptr @sh_msiof_spi_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sh_msiof_spi_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1323, i32 3}
!28 = !{ptr @sh_msiof_spi_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sh_msiof_spi_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1359, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sh_msiof_spi_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sh_msiof_spi_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1363, i32 3}
!37 = !{ptr @sh_msiof_spi_probe._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sh_msiof_spi_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1104, i32 41}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1109, i32 28}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1110, i32 27}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1112, i32 27}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1114, i32 27}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1115, i32 27}
!51 = !{ptr @init_completion.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/completion.h", i32 87, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-sh-msiof.c", i32 331, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-sh-msiof.c", i32 337, i32 3}
!61 = !{ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sh_msiof_spi_get_dtdl_and_syncdl._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__print_once", i1 false, i1 false}
!64 = !{!"../drivers/spi/spi-sh-msiof.c", i32 957, i32 4}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sh_msiof_transfer_one._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @sh_msiof_transfer_one._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-sh-msiof.c", i32 271, i32 3}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/spi/spi-sh-msiof.c", i32 291, i32 3}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sh_msiof_spi_set_clk_regs._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @sh_msiof_spi_set_clk_regs._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @sh_msiof_spi_div_array, !77, !"sh_msiof_spi_div_array", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-sh-msiof.c", i32 256, i32 18}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-sh-msiof.c", i32 810, i32 3}
!80 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sh_msiof_dma_once._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @sh_msiof_dma_once._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-sh-msiof.c", i32 841, i32 3}
!85 = !{ptr @sh_msiof_dma_once._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sh_msiof_dma_once._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-sh-msiof.c", i32 658, i32 4}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sh_msiof_wait_for_completion.__UNIQUE_ID_ddebug239, !88, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-sh-msiof.c", i32 663, i32 4}
!93 = !{ptr @sh_msiof_wait_for_completion._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @sh_msiof_wait_for_completion._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-sh-msiof.c", i32 707, i32 3}
!99 = !{ptr @sh_msiof_spi_txrx_once._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @sh_msiof_spi_txrx_once._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @sh_msiof_spi_txrx_once._entry.46, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/spi/spi-sh-msiof.c", i32 725, i32 3}
!103 = !{ptr @sh_msiof_spi_txrx_once._entry_ptr.47, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1225, i32 2}
!106 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @sh_msiof_request_dma._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @sh_msiof_request_dma._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1141, i32 29}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1141, i32 36}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1143, i32 3}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @sh_msiof_request_dma_chan._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @sh_msiof_request_dma_chan._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1159, i32 3}
!121 = !{ptr @sh_msiof_request_dma_chan._entry.55, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @sh_msiof_request_dma_chan._entry_ptr.57, !120, !"_entry_ptr", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!125 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @sh_msiof_match, !128, !"sh_msiof_match", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1076, i32 34}
!129 = !{ptr @sh_data, !130, !"sh_data", i1 false, i1 false}
!130 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1050, i32 39}
!131 = !{ptr @rcar_gen2_data, !132, !"rcar_gen2_data", i1 false, i1 false}
!132 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1058, i32 39}
!133 = !{ptr @rcar_gen3_data, !134, !"rcar_gen3_data", i1 false, i1 false}
!134 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1067, i32 39}
!135 = !{ptr @sh_msiof_spi_pm_ops, !136, !"sh_msiof_spi_pm_ops", i1 false, i1 false}
!136 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1407, i32 8}
!137 = !{ptr @spi_driver_ids, !138, !"spi_driver_ids", i1 false, i1 false}
!138 = !{!"../drivers/spi/spi-sh-msiof.c", i32 1386, i32 40}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{i64 2153835864}
!150 = !{i64 6293742}
!151 = !{i8 0, i8 2}
!152 = !{i64 6294160}
!153 = !{i64 2153834509}
!154 = !{i64 2154556745}
!155 = !{i64 2154557231}
!156 = !{i64 2153835314}
!157 = !{i64 6293122}
!158 = !{ptr @copy_bswap32, ptr @copy_plain32, ptr @copy_wswap32}
!159 = !{i64 2148818325, i64 2148818330, i64 2148818343, i64 2148818387, i64 2148818421, i64 2148818442}
!160 = !{i64 2154553590}
!161 = !{i64 2154554076}
