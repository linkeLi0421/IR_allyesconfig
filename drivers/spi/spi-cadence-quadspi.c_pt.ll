; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-cadence-quadspi.c_pt.bc'
source_filename = "../drivers/spi/spi-cadence-quadspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cqspi_driver_platdata = type { i32, i8, ptr, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.cqspi_st = type { ptr, ptr, i32, ptr, ptr, i32, %struct.completion, ptr, %struct.completion, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, [16 x %struct.cqspi_flash_pdata], i8, i32, i8 }
%struct.cqspi_flash_pdata = type { ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.anon.74 = type { i8, i8, i8, i16 }
%struct.spi_mem_op = type { %struct.anon.74, %struct.anon.75, %struct.anon.76, %struct.anon.77 }
%struct.anon.75 = type { i8, i8, i8, i64 }
%struct.anon.76 = type { i8, i8, i8 }
%struct.anon.77 = type { i8, i8, i32, i32, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_cadence_quadspi__243_1923_cqspi_platform_driver_init6 = internal global ptr @cqspi_platform_driver_init, section ".initcall6.init", align 4
@cqspi_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cqspi_probe, ptr @cqspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cqspi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cqspi__dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cqspi_platform_driver_exit = internal global ptr @cqspi_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description244 = internal constant [63 x i8] c"spi_cadence_quadspi.description=Cadence QSPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [57 x i8] c"spi_cadence_quadspi.file=drivers/spi/spi-cadence-quadspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [35 x i8] c"spi_cadence_quadspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [48 x i8] c"spi_cadence_quadspi.alias=platform:cadence-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [59 x i8] c"spi_cadence_quadspi.author=Ley Foon Tan <lftan@altera.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [72 x i8] c"spi_cadence_quadspi.author=Graham Moore <grmoore@opensource.altera.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [85 x i8] c"spi_cadence_quadspi.author=Vadivel Murugan R <vadivel.muruganx.ramuthevar@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [65 x i8] c"spi_cadence_quadspi.author=Vignesh Raghavendra <vigneshr@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [59 x i8] c"spi_cadence_quadspi.author=Pratyush Yadav <p.yadav@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cadence-qspi\00", [19 x i8] zeroinitializer }, align 32
@cqspi_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,qspi-nor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_qspi }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2g-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k2g_qspi }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-ospi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_ospi }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_lgm_qspi }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,versal-ospi-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @versal_ospi }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,socfpga-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_qspi }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@cqspi__dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cqspi_suspend, ptr @cqspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cqspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1650, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spi_alloc_master failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cqspi_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/spi/spi-cadence-quadspi.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr = internal global ptr @cqspi_probe._entry, section ".printk_index", align 4
@cqspi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr null, ptr @cqspi_supports_mem_op, ptr @cqspi_exec_mem_op, ptr @cqspi_get_name, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cqspi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1665, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot get mandatory OF data.\0A\00", [33 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr.8 = internal global ptr @cqspi_probe._entry.6, section ".printk_index", align 4
@cqspi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot claim QSPI clock.\0A\00", [38 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr.11 = internal global ptr @cqspi_probe._entry.9, section ".printk_index", align 4
@cqspi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot remap controller address.\0A\00", [62 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr.14 = internal global ptr @cqspi_probe._entry.12, section ".printk_index", align 4
@cqspi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot remap AHB address.\0A\00", [37 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr.17 = internal global ptr @cqspi_probe._entry.15, section ".printk_index", align 4
@cqspi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1716, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot enable QSPI clock.\0A\00", [37 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr.20 = internal global ptr @cqspi_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qspi\00", [27 x i8] zeroinitializer }, align 32
@cqspi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot get QSPI reset.\0A\00", [40 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr.24 = internal global ptr @cqspi_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qspi-ocp\00", [23 x i8] zeroinitializer }, align 32
@cqspi_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1731, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot get QSPI OCP reset.\0A\00", [36 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr.28 = internal global ptr @cqspi_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xlnx,versal-ospi-1.0\00", [43 x i8] zeroinitializer }, align 32
@cqspi_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1769, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot request IRQ.\0A\00", [43 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr.32 = internal global ptr @cqspi_probe._entry.30, section ".printk_index", align 4
@cqspi_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to setup flash parameters %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr.35 = internal global ptr @cqspi_probe._entry.33, section ".printk_index", align 4
@cqspi_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 1794, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register SPI ctlr %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cqspi_probe._entry_ptr.38 = internal global ptr @cqspi_probe._entry.36, section ".printk_index", align 4
@cqspi_exec_mem_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"operation failed with %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cqspi_exec_mem_op\00", [46 x i8] zeroinitializer }, align 32
@cqspi_exec_mem_op._entry_ptr = internal global ptr @cqspi_exec_mem_op._entry, section ".printk_index", align 4
@cqspi_command_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 586, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid input argument, len %zu rxbuf 0x%p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cqspi_command_read\00", [45 x i8] zeroinitializer }, align 32
@cqspi_command_read._entry_ptr = internal global ptr @cqspi_command_read._entry, section ".printk_index", align 4
@cqspi_exec_flash_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flash command execution timed out.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cqspi_exec_flash_cmd\00", [43 x i8] zeroinitializer }, align 32
@cqspi_exec_flash_cmd._entry_ptr = internal global ptr @cqspi_exec_flash_cmd._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@cqspi_direct_read_execute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 1322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dma mapping failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cqspi_direct_read_execute\00", [38 x i8] zeroinitializer }, align 32
@cqspi_direct_read_execute._entry_ptr = internal global ptr @cqspi_direct_read_execute._entry, section ".printk_index", align 4
@cqspi_direct_read_execute._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 1328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device_prep_dma_memcpy error\0A\00", [34 x i8] zeroinitializer }, align 32
@cqspi_direct_read_execute._entry_ptr.49 = internal global ptr @cqspi_direct_read_execute._entry.47, section ".printk_index", align 4
@cqspi_direct_read_execute._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 1340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_submit_error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cqspi_direct_read_execute._entry_ptr.52 = internal global ptr @cqspi_direct_read_execute._entry.50, section ".printk_index", align 4
@cqspi_direct_read_execute._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.3, i32 1349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA wait_for_completion_timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@cqspi_direct_read_execute._entry_ptr.55 = internal global ptr @cqspi_direct_read_execute._entry.53, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@cqspi_indirect_read_execute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 780, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Indirect read timeout, no bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cqspi_indirect_read_execute\00", [36 x i8] zeroinitializer }, align 32
@cqspi_indirect_read_execute._entry_ptr = internal global ptr @cqspi_indirect_read_execute._entry, section ".printk_index", align 4
@cqspi_indirect_read_execute._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 816, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Indirect read completion error (%i)\0A\00", [59 x i8] zeroinitializer }, align 32
@cqspi_indirect_read_execute._entry_ptr.63 = internal global ptr @cqspi_indirect_read_execute._entry.61, section ".printk_index", align 4
@cqspi_command_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 659, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid input argument, cmdlen %zu txbuf 0x%p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cqspi_command_write\00", [44 x i8] zeroinitializer }, align 32
@cqspi_command_write._entry_ptr = internal global ptr @cqspi_command_write._entry, section ".printk_index", align 4
@cqspi_indirect_write_execute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1067, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Indirect write timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cqspi_indirect_write_execute\00", [35 x i8] zeroinitializer }, align 32
@cqspi_indirect_write_execute._entry_ptr = internal global ptr @cqspi_indirect_write_execute._entry, section ".printk_index", align 4
@cqspi_indirect_write_execute._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 1082, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Indirect write completion error (%i)\0A\00", [58 x i8] zeroinitializer }, align 32
@cqspi_indirect_write_execute._entry_ptr.70 = internal global ptr @cqspi_indirect_write_execute._entry.68, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns,is-decoded-cs\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns,fifo-depth\00", [16 x i8] zeroinitializer }, align 32
@cqspi_of_get_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't determine fifo-depth\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cqspi_of_get_pdata\00", [45 x i8] zeroinitializer }, align 32
@cqspi_of_get_pdata._entry_ptr = internal global ptr @cqspi_of_get_pdata._entry, section ".printk_index", align 4
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns,fifo-width\00", [16 x i8] zeroinitializer }, align 32
@cqspi_of_get_pdata._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.75, ptr @.str.3, i32 1501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't determine fifo-width\0A\00", [33 x i8] zeroinitializer }, align 32
@cqspi_of_get_pdata._entry_ptr.79 = internal global ptr @cqspi_of_get_pdata._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns,trigger-address\00", [43 x i8] zeroinitializer }, align 32
@cqspi_of_get_pdata._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.75, ptr @.str.3, i32 1507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't determine trigger-address\0A\00", [60 x i8] zeroinitializer }, align 32
@cqspi_of_get_pdata._entry_ptr.83 = internal global ptr @cqspi_of_get_pdata._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cdns,rclk-en\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cqspi_wait_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"QSPI is still busy after %dms timeout.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cqspi_wait_idle\00", [16 x i8] zeroinitializer }, align 32
@cqspi_wait_idle._entry_ptr = internal global ptr @cqspi_wait_idle._entry, section ".printk_index", align 4
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@cqspi_setup_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 1611, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't determine chip select.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cqspi_setup_flash\00", [46 x i8] zeroinitializer }, align 32
@cqspi_setup_flash._entry_ptr = internal global ptr @cqspi_setup_flash._entry, section ".printk_index", align 4
@cqspi_setup_flash._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 1617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Chip select %d out of range.\0A\00", [34 x i8] zeroinitializer }, align 32
@cqspi_setup_flash._entry_ptr.95 = internal global ptr @cqspi_setup_flash._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns,read-delay\00", [16 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.3, i32 1455, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't determine read-delay\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cqspi_of_get_flash_pdata\00", [39 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry_ptr = internal global ptr @cqspi_of_get_flash_pdata._entry, section ".printk_index", align 4
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns,tshsl-ns\00", [18 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.98, ptr @.str.3, i32 1460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't determine tshsl-ns\0A\00", [35 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry_ptr.102 = internal global ptr @cqspi_of_get_flash_pdata._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns,tsd2d-ns\00", [18 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.98, ptr @.str.3, i32 1465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't determine tsd2d-ns\0A\00", [35 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry_ptr.106 = internal global ptr @cqspi_of_get_flash_pdata._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns,tchsh-ns\00", [18 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.98, ptr @.str.3, i32 1470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't determine tchsh-ns\0A\00", [35 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry_ptr.110 = internal global ptr @cqspi_of_get_flash_pdata._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns,tslch-ns\00", [18 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.98, ptr @.str.3, i32 1475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't determine tslch-ns\0A\00", [35 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry_ptr.114 = internal global ptr @cqspi_of_get_flash_pdata._entry.112, section ".printk_index", align 4
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-max-frequency\00", [46 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.98, ptr @.str.3, i32 1480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"couldn't determine spi-max-frequency\0A\00", [58 x i8] zeroinitializer }, align 32
@cqspi_of_get_flash_pdata._entry_ptr.118 = internal global ptr @cqspi_of_get_flash_pdata._entry.116, section ".printk_index", align 4
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No Rx DMA available\0A\00", [43 x i8] zeroinitializer }, align 32
@cdns_qspi = internal constant { %struct.cqspi_driver_platdata, [16 x i8] } { %struct.cqspi_driver_platdata { i32 0, i8 2, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@k2g_qspi = internal constant { %struct.cqspi_driver_platdata, [16 x i8] } { %struct.cqspi_driver_platdata { i32 0, i8 1, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@am654_ospi = internal constant { %struct.cqspi_driver_platdata, [16 x i8] } { %struct.cqspi_driver_platdata { i32 1, i8 1, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@intel_lgm_qspi = internal constant { %struct.cqspi_driver_platdata, [16 x i8] } { %struct.cqspi_driver_platdata { i32 0, i8 2, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@versal_ospi = internal constant { %struct.cqspi_driver_platdata, [16 x i8] } { %struct.cqspi_driver_platdata { i32 1, i8 6, ptr @cqspi_versal_indirect_read_dma, ptr @cqspi_get_versal_dma_status }, [16 x i8] zeroinitializer }, align 32
@socfpga_qspi = internal constant { %struct.cqspi_driver_platdata, [16 x i8] } { %struct.cqspi_driver_platdata { i32 0, i8 8, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@cqspi_versal_indirect_read_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.120, ptr @.str.3, i32 868, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cqspi_versal_indirect_read_dma\00", [33 x i8] zeroinitializer }, align 32
@cqspi_versal_indirect_read_dma._entry_ptr = internal global ptr @cqspi_versal_indirect_read_dma._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@___asan_gen_.124 = private unnamed_addr constant [22 x i8] c"cqspi_platform_driver\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1913, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1917, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"cqspi_dt_ids\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1883, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"cqspi__dev_pm_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1845, i32 32 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1650, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"cqspi_mem_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1592, i32 44 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1665, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1673, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1682, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1691, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1716, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1721, i32 56 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1724, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1728, i32 60 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1731, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1762, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1769, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1782, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1794, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1418, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 584, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 495, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1322, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1328, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1340, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1349, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 326, i32 6 }
@___asan_gen_.287 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1169, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 780, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 816, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 657, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1067, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1082, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1589, i32 41 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1493, i32 51 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1495, i32 31 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1496, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1500, i32 31 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1501, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1505, i32 31 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1507, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1511, i32 31 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1514, i32 45 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1516, i32 38 }
@___asan_gen_.373 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 87, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 470, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1609, i32 34 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1611, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1617, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1454, i32 31 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1455, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1459, i32 31 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1460, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1464, i32 31 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1465, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1469, i32 31 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1470, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1474, i32 31 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1475, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1479, i32 31 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1480, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1577, i32 48 }
@___asan_gen_.466 = private unnamed_addr constant [10 x i8] c"cdns_qspi\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1855, i32 43 }
@___asan_gen_.469 = private unnamed_addr constant [9 x i8] c"k2g_qspi\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1859, i32 43 }
@___asan_gen_.472 = private unnamed_addr constant [11 x i8] c"am654_ospi\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1863, i32 43 }
@___asan_gen_.475 = private unnamed_addr constant [15 x i8] c"intel_lgm_qspi\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1868, i32 43 }
@___asan_gen_.478 = private unnamed_addr constant [12 x i8] c"versal_ospi\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1876, i32 43 }
@___asan_gen_.481 = private unnamed_addr constant [13 x i8] c"socfpga_qspi\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1872, i32 43 }
@___asan_gen_.484 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.488 = private constant [37 x i8] c"../drivers/spi/spi-cadence-quadspi.c\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 868, i32 3 }
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_cqspi_platform_driver_exit, ptr @__initcall__kmod_spi_cadence_quadspi__243_1923_cqspi_platform_driver_init6, ptr @cqspi_command_read._entry, ptr @cqspi_command_read._entry_ptr, ptr @cqspi_command_write._entry, ptr @cqspi_command_write._entry_ptr, ptr @cqspi_direct_read_execute._entry, ptr @cqspi_direct_read_execute._entry.47, ptr @cqspi_direct_read_execute._entry.50, ptr @cqspi_direct_read_execute._entry.53, ptr @cqspi_direct_read_execute._entry_ptr, ptr @cqspi_direct_read_execute._entry_ptr.49, ptr @cqspi_direct_read_execute._entry_ptr.52, ptr @cqspi_direct_read_execute._entry_ptr.55, ptr @cqspi_exec_flash_cmd._entry, ptr @cqspi_exec_flash_cmd._entry_ptr, ptr @cqspi_exec_mem_op._entry, ptr @cqspi_exec_mem_op._entry_ptr, ptr @cqspi_indirect_read_execute._entry, ptr @cqspi_indirect_read_execute._entry.61, ptr @cqspi_indirect_read_execute._entry_ptr, ptr @cqspi_indirect_read_execute._entry_ptr.63, ptr @cqspi_indirect_write_execute._entry, ptr @cqspi_indirect_write_execute._entry.68, ptr @cqspi_indirect_write_execute._entry_ptr, ptr @cqspi_indirect_write_execute._entry_ptr.70, ptr @cqspi_of_get_flash_pdata._entry, ptr @cqspi_of_get_flash_pdata._entry.100, ptr @cqspi_of_get_flash_pdata._entry.104, ptr @cqspi_of_get_flash_pdata._entry.108, ptr @cqspi_of_get_flash_pdata._entry.112, ptr @cqspi_of_get_flash_pdata._entry.116, ptr @cqspi_of_get_flash_pdata._entry_ptr, ptr @cqspi_of_get_flash_pdata._entry_ptr.102, ptr @cqspi_of_get_flash_pdata._entry_ptr.106, ptr @cqspi_of_get_flash_pdata._entry_ptr.110, ptr @cqspi_of_get_flash_pdata._entry_ptr.114, ptr @cqspi_of_get_flash_pdata._entry_ptr.118, ptr @cqspi_of_get_pdata._entry, ptr @cqspi_of_get_pdata._entry.77, ptr @cqspi_of_get_pdata._entry.81, ptr @cqspi_of_get_pdata._entry_ptr, ptr @cqspi_of_get_pdata._entry_ptr.79, ptr @cqspi_of_get_pdata._entry_ptr.83, ptr @cqspi_platform_driver_exit, ptr @cqspi_probe._entry, ptr @cqspi_probe._entry.12, ptr @cqspi_probe._entry.15, ptr @cqspi_probe._entry.18, ptr @cqspi_probe._entry.22, ptr @cqspi_probe._entry.26, ptr @cqspi_probe._entry.30, ptr @cqspi_probe._entry.33, ptr @cqspi_probe._entry.36, ptr @cqspi_probe._entry.6, ptr @cqspi_probe._entry.9, ptr @cqspi_probe._entry_ptr, ptr @cqspi_probe._entry_ptr.11, ptr @cqspi_probe._entry_ptr.14, ptr @cqspi_probe._entry_ptr.17, ptr @cqspi_probe._entry_ptr.20, ptr @cqspi_probe._entry_ptr.24, ptr @cqspi_probe._entry_ptr.28, ptr @cqspi_probe._entry_ptr.32, ptr @cqspi_probe._entry_ptr.35, ptr @cqspi_probe._entry_ptr.38, ptr @cqspi_probe._entry_ptr.8, ptr @cqspi_setup_flash._entry, ptr @cqspi_setup_flash._entry.93, ptr @cqspi_setup_flash._entry_ptr, ptr @cqspi_setup_flash._entry_ptr.95, ptr @cqspi_versal_indirect_read_dma._entry, ptr @cqspi_versal_indirect_read_dma._entry_ptr, ptr @cqspi_wait_idle._entry, ptr @cqspi_wait_idle._entry_ptr, ptr @cqspi_platform_driver, ptr @.str, ptr @cqspi_dt_ids, ptr @cqspi__dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cqspi_mem_ops, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @init_completion.__key, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @cdns_qspi, ptr @k2g_qspi, ptr @am654_ospi, ptr @intel_lgm_qspi, ptr @versal_ospi, ptr @socfpga_qspi, ptr @.str.120], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi__dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_exec_mem_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_command_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_exec_flash_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_direct_read_execute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_direct_read_execute._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_direct_read_execute._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_direct_read_execute._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_indirect_read_execute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_indirect_read_execute._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_command_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_indirect_write_execute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_indirect_write_execute._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_of_get_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_of_get_pdata._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_of_get_pdata._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_wait_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_setup_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_setup_flash._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_of_get_flash_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_of_get_flash_pdata._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_of_get_flash_pdata._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_of_get_flash_pdata._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_of_get_flash_pdata._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_of_get_flash_pdata._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_qspi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k2g_qspi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_ospi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_lgm_qspi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versal_ospi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_qspi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqspi_versal_indirect_read_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cqspi_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cqspi_platform_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cqspi_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @cqspi_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %cs.i = alloca i32, align 4
  %id.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 772, i1 noundef zeroext false) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3072, ptr %mode_bits, align 8
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %1 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cqspi_mem_ops, ptr %mem_ops, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %of_node6 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %4 = ptrtoint ptr %of_node6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %of_node6, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %6, align 4
  %driver_data.i.i274 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i274 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %driver_data.i.i274, align 4
  %9 = load ptr, ptr %6, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %id.i) #9
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %id.i, align 4, !annotation !257
  %13 = getelementptr inbounds [2 x i32], ptr %id.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4, !annotation !257
  %call.i.i = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.72, ptr noundef null) #9
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %is_decoded_cs.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 12
  %frombool.i = zext i1 %tobool.i.i to i8
  %15 = ptrtoint ptr %is_decoded_cs.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %is_decoded_cs.i, align 4
  %fifo_depth.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 13
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.73, ptr noundef %fifo_depth.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

if.end.i:                                         ; preds = %if.end
  %fifo_width.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 14
  %call.i.i47.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.76, ptr noundef %fifo_width.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i47.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i47.i, -1
  br i1 %tobool4.not.i, label %if.end9.i, label %if.end.i.do.end14_crit_edge

if.end.i.do.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

if.end9.i:                                        ; preds = %if.end.i
  %trigger_address.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 17
  %call.i.i48.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.80, ptr noundef %trigger_address.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i48.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i48.i, -1
  br i1 %tobool11.not.i, label %if.end16.i, label %if.end9.i.do.end14_crit_edge

if.end9.i.do.end14_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

if.end16.i:                                       ; preds = %if.end9.i
  %num_chipselect.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 15
  %call.i.i49.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.84, ptr noundef %num_chipselect.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i49.i)
  %tobool18.not.i = icmp sgt i32 %call.i.i49.i, -1
  br i1 %tobool18.not.i, label %if.end16.i.if.end21.i_crit_edge, label %if.then19.i

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %num_chipselect.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end21.i_crit_edge
  %call.i50.i = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.85, ptr noundef null) #9
  %tobool.i51.i = icmp ne ptr %call.i50.i, null
  %rclk_en.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 16
  %frombool23.i = zext i1 %tobool.i51.i to i8
  %17 = ptrtoint ptr %rclk_en.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool23.i, ptr %rclk_en.i, align 4
  %call.i52.i = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.86, ptr noundef nonnull %id.i, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i52.i)
  %tobool25.not.i = icmp sgt i32 %call.i52.i, -1
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end21.i.if.end15_crit_edge

if.end21.i.if.end15_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 4
  %pd_dev_id.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 22
  %20 = ptrtoint ptr %pd_dev_id.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pd_dev_id.i, align 4
  br label %if.end15

do.end14:                                         ; preds = %if.end9.i.do.end14_crit_edge, %if.end.i.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %.str.74.sink = phi ptr [ @.str.74, %if.end.do.end14_crit_edge ], [ @.str.78, %if.end.i.do.end14_crit_edge ], [ @.str.82, %if.end9.i.do.end14_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull %.str.74.sink) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  br label %spi_controller_put.exit

if.end15:                                         ; preds = %if.then26.i, %if.end21.i.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id.i) #9
  %call16 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 1
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call16, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %spi_controller_put.exit

if.end25:                                         ; preds = %if.end15
  %call26 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call27 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call26) #9
  %iobase = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 3
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call27, ptr %iobase, align 4
  %cmp.i275 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #12
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %spi_controller_put.exit

if.end36:                                         ; preds = %if.end25
  %call37 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #9
  %call38 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call37) #9
  %ahb_base = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 4
  %29 = ptrtoint ptr %ahb_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call38, ptr %ahb_base, align 4
  %cmp.i276 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  %30 = ptrtoint ptr %ahb_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ahb_base, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %spi_controller_put.exit

if.end47:                                         ; preds = %if.end36
  %33 = ptrtoint ptr %call37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call37, align 4
  %mmap_phys_base = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 9
  %35 = ptrtoint ptr %mmap_phys_base to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mmap_phys_base, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call37, i32 0, i32 1
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i, align 4
  %38 = load i32, ptr %call37, align 4
  %sub.i = add i32 %37, 1
  %add.i = sub i32 %sub.i, %38
  %ahb_size = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 5
  %39 = ptrtoint ptr %ahb_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i, ptr %ahb_size, align 4
  %transfer_complete = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 6
  %40 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %transfer_complete, align 4
  %wait.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @init_completion.__key) #9
  %call49 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp = icmp slt i32 %call49, 0
  br i1 %cmp, label %if.end47.spi_controller_put.exit_crit_edge, label %if.end51

if.end47.spi_controller_put.exit_crit_edge:       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.end51:                                         ; preds = %if.end47
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call.i277 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %cmp53 = icmp slt i32 %call.i277, 0
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end51
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i278 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !258
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !259
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then54.spi_controller_put.exit_crit_edge, label %do.end11.i.i.i.i

if.then54.spi_controller_put.exit_crit_edge:      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

do.end11.i.i.i.i:                                 ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !260
  br label %spi_controller_put.exit

if.end55:                                         ; preds = %if.end51
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk, align 4
  %call.i279 = call i32 @clk_prepare(ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %tobool.not.i280 = icmp eq i32 %call.i279, 0
  br i1 %tobool.not.i280, label %if.end.i281, label %if.end55.do.end62_crit_edge

if.end55.do.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end.i281:                                      ; preds = %if.end55
  %call1.i = call i32 @clk_enable(ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end63, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %43) #9
  br label %do.end62

do.end62:                                         ; preds = %if.then3.i, %if.end55.do.end62_crit_edge
  %retval.0.i282.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i279, %if.end55.do.end62_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #12
  br label %probe_clk_failed

if.end63:                                         ; preds = %if.end.i281
  %call.i283 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %cmp.i284 = icmp ugt ptr %call.i283, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %if.then66, label %if.end71

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %call.i283 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #12
  br label %probe_reset_failed

if.end71:                                         ; preds = %if.end63
  %call.i285 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %cmp.i286 = icmp ugt ptr %call.i285, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i286, label %if.then74, label %if.end79

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %call.i285 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #12
  br label %probe_reset_failed

if.end79:                                         ; preds = %if.end71
  %call80 = call i32 @reset_control_assert(ptr noundef %call.i283) #9
  %call81 = call i32 @reset_control_deassert(ptr noundef %call.i283) #9
  %call82 = call i32 @reset_control_assert(ptr noundef %call.i285) #9
  %call83 = call i32 @reset_control_deassert(ptr noundef %call.i285) #9
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk, align 4
  %call85 = call i32 @clk_get_rate(ptr noundef %47) #9
  %master_ref_clk_hz = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 11
  %48 = ptrtoint ptr %master_ref_clk_hz to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call85, ptr %master_ref_clk_hz, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %49 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call85, ptr %max_speed_hz, align 8
  %wr_completion = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 23
  %50 = ptrtoint ptr %wr_completion to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %wr_completion, align 4
  %call87 = call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.end79.if.end127_crit_edge, label %if.then89

if.end79.if.end127_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then89:                                        ; preds = %if.end79
  %quirks = getelementptr inbounds %struct.cqspi_driver_platdata, ptr %call87, i32 0, i32 1
  %51 = ptrtoint ptr %quirks to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %quirks, align 4
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool90.not = icmp eq i8 %53, 0
  br i1 %tobool90.not, label %if.then89.if.end94_crit_edge, label %if.then91

if.then89.if.end94_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then91:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %master_ref_clk_hz to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %master_ref_clk_hz, align 4
  %sub = add i32 %55, 999999999
  %div = udiv i32 %sub, %55
  %mul = mul i32 %div, 50
  %wr_delay = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 18
  %56 = ptrtoint ptr %wr_delay to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul, ptr %wr_delay, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.then89.if.end94_crit_edge
  %57 = ptrtoint ptr %call87 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call87, align 4
  %and95 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end99_crit_edge, label %if.then97

if.end94.if.end99_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %mode_bits to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode_bits, align 8
  %or = or i32 %60, 24576
  store i32 %or, ptr %mode_bits, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end94.if.end99_crit_edge
  %61 = ptrtoint ptr %quirks to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %quirks, align 4
  %63 = and i8 %62, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool103.not = icmp eq i8 %63, 0
  br i1 %tobool103.not, label %if.then104, label %if.end99.if.end105_crit_edge

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %use_direct_mode = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 19
  %64 = ptrtoint ptr %use_direct_mode to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %use_direct_mode, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end99.if.end105_crit_edge
  %65 = ptrtoint ptr %quirks to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %quirks, align 4
  %67 = and i8 %66, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool109.not = icmp eq i8 %67, 0
  br i1 %tobool109.not, label %if.end105.if.end111_crit_edge, label %if.then110

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %use_dma_read = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 21
  %68 = ptrtoint ptr %use_dma_read to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %use_dma_read, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end105.if.end111_crit_edge
  %69 = ptrtoint ptr %quirks to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %quirks, align 4
  %71 = and i8 %70, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool115.not = icmp eq i8 %71, 0
  br i1 %tobool115.not, label %if.end111.if.end118_crit_edge, label %if.then116

if.end111.if.end118_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %wr_completion to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %wr_completion, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end111.if.end118_crit_edge
  %73 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %of_node, align 8
  %call121 = call i32 @of_device_is_compatible(ptr noundef %74, ptr noundef nonnull @.str.29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end118.if.end127_crit_edge, label %if.then123

if.end118.if.end127_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %call125 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %if.end118.if.end127_crit_edge, %if.end79.if.end127_crit_edge
  %75 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev, align 8
  %call.i287 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call49, ptr noundef nonnull @cqspi_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %76, ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool129.not = icmp eq i32 %call.i287, 0
  br i1 %tobool129.not, label %if.end134, label %do.end133

do.end133:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #12
  br label %probe_reset_failed

if.end134:                                        ; preds = %if.end127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add.i288 = add i32 %77, 50
  %78 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iobase, align 4
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #9, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %.mask.i20.i = lshr i32 %80, 7
  %.mask.i20.lobit.i = and i32 %.mask.i20.i, 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end11.i.if.end3.i_crit_edge, %if.end134
  %count.123.i = phi i32 [ %.mask.i20.lobit.i, %if.end134 ], [ %count.1.i, %do.end11.i.if.end3.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %sub.i289 = sub i32 %add.i288, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i289)
  %cmp4.i = icmp slt i32 %sub.i289, 0
  br i1 %cmp4.i, label %do.end.i290, label %do.end11.i

do.end.i290:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %6, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %83, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.88, i32 noundef 500) #12
  br label %cqspi_wait_idle.exit

do.end11.i:                                       ; preds = %if.end3.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !263
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !264
  %84 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iobase, align 4
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #9, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %.mask.i.i = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.i.not.i = icmp eq i32 %.mask.i.i, 0
  %inc.i = add nuw nsw i32 %count.123.i, 1
  %count.1.i = select i1 %tobool.i.not.i, i32 0, i32 %inc.i
  %cmp.i291 = icmp ugt i32 %count.1.i, 2
  br i1 %cmp.i291, label %do.end11.i.cqspi_wait_idle.exit_crit_edge, label %do.end11.i.if.end3.i_crit_edge

do.end11.i.if.end3.i_crit_edge:                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

do.end11.i.cqspi_wait_idle.exit_crit_edge:        ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqspi_wait_idle.exit

cqspi_wait_idle.exit:                             ; preds = %do.end11.i.cqspi_wait_idle.exit_crit_edge, %do.end.i290
  %87 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %iobase, align 4
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #9, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %90 = and i32 %89, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %90) #9, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  call void @arm_heavy_mb() #9
  %91 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %92, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %iobase, align 4
  %add.ptr5.i = getelementptr i8, ptr %94, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #9, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  call void @arm_heavy_mb() #9
  %95 = ptrtoint ptr %fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fifo_depth.i, align 4
  %div77.i = lshr i32 %96, 1
  %97 = call i32 @llvm.bswap.i32(i32 %div77.i) #9
  %98 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %iobase, align 4
  %add.ptr10.i = getelementptr i8, ptr %99, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %97) #9, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  call void @arm_heavy_mb() #9
  %100 = ptrtoint ptr %trigger_address.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %trigger_address.i, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %101) #9
  %103 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iobase, align 4
  %add.ptr15.i = getelementptr i8, ptr %104, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %102) #9, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  call void @arm_heavy_mb() #9
  %105 = ptrtoint ptr %fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fifo_depth.i, align 4
  %107 = ptrtoint ptr %fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fifo_width.i, align 4
  %mul.i = mul i32 %108, %106
  %div2078.i = lshr i32 %mul.i, 1
  %109 = call i32 @llvm.bswap.i32(i32 %div2078.i) #9
  %110 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %iobase, align 4
  %add.ptr22.i = getelementptr i8, ptr %111, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %109) #9, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  call void @arm_heavy_mb() #9
  %112 = ptrtoint ptr %fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fifo_depth.i, align 4
  %114 = ptrtoint ptr %fifo_width.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %fifo_width.i, align 4
  %mul28.i = mul i32 %115, %113
  %div2979.i = lshr i32 %mul28.i, 3
  %116 = call i32 @llvm.bswap.i32(i32 %div2979.i) #9
  %117 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %iobase, align 4
  %add.ptr31.i = getelementptr i8, ptr %118, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %116) #9, !srcloc !267
  %use_direct_mode.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 19
  %119 = ptrtoint ptr %use_direct_mode.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %use_direct_mode.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i297 = icmp eq i8 %120, 0
  br i1 %tobool.not.i297, label %if.then.i, label %cqspi_wait_idle.exit.if.end.i298_crit_edge

cqspi_wait_idle.exit.if.end.i298_crit_edge:       ; preds = %cqspi_wait_idle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i298

if.then.i:                                        ; preds = %cqspi_wait_idle.exit
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %iobase, align 4
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #9, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  %124 = and i32 %123, 2147483647
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  call void @arm_heavy_mb() #9
  %125 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %iobase, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #9, !srcloc !267
  br label %if.end.i298

if.end.i298:                                      ; preds = %if.then.i, %cqspi_wait_idle.exit.if.end.i298_crit_edge
  %use_dma_read.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 21
  %127 = ptrtoint ptr %use_dma_read.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %use_dma_read.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool40.not.i = icmp eq i8 %128, 0
  br i1 %tobool40.not.i, label %if.end.i298.cqspi_controller_init.exit_crit_edge, label %if.then41.i

if.end.i298.cqspi_controller_init.exit_crit_edge: ; preds = %if.end.i298
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqspi_controller_init.exit

if.then41.i:                                      ; preds = %if.end.i298
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %iobase, align 4
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #9, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %132 = or i32 %131, 8388608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  call void @arm_heavy_mb() #9
  %133 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %iobase, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #9, !srcloc !267
  br label %cqspi_controller_init.exit

cqspi_controller_init.exit:                       ; preds = %if.then41.i, %if.end.i298.cqspi_controller_init.exit_crit_edge
  %135 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %iobase, align 4
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #9, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %138 = or i32 %137, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %138) #9, !srcloc !267
  %current_cs = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 10
  %139 = ptrtoint ptr %current_cs to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %current_cs, align 4
  %sclk = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 2
  %140 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %sclk, align 4
  %141 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_chipselect.i, align 4
  %conv136 = trunc i32 %142 to i16
  %num_chipselect137 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %143 = ptrtoint ptr %num_chipselect137 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv136, ptr %num_chipselect137, align 2
  %144 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %6, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %145, i32 0, i32 3
  %of_node.i299 = getelementptr inbounds %struct.platform_device, ptr %145, i32 0, i32 3, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i) #9
  %146 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 -1, ptr %cs.i, align 4, !annotation !257
  %147 = ptrtoint ptr %of_node.i299 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %of_node.i299, align 8
  %call.i300 = call ptr @of_get_next_available_child(ptr noundef %148, ptr noundef null) #9
  %cmp.not51.i = icmp eq ptr %call.i300, null
  br i1 %cmp.not51.i, label %cqspi_controller_init.exit.if.end144_crit_edge, label %cqspi_controller_init.exit.for.body.i_crit_edge

cqspi_controller_init.exit.for.body.i_crit_edge:  ; preds = %cqspi_controller_init.exit
  br label %for.body.i

cqspi_controller_init.exit.if.end144_crit_edge:   ; preds = %cqspi_controller_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cqspi_controller_init.exit.for.body.i_crit_edge
  %np.052.i = phi ptr [ %call19.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i300, %cqspi_controller_init.exit.for.body.i_crit_edge ]
  %call.i.i.i301 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.052.i, ptr noundef nonnull @.str.90, ptr noundef nonnull %cs.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i301)
  %tobool.not.i302 = icmp sgt i32 %call.i.i.i301, -1
  br i1 %tobool.not.i302, label %if.end.i304, label %do.end.i303

do.end.i303:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.91) #12
  br label %do.end143

if.end.i304:                                      ; preds = %for.body.i
  %149 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %150)
  %cmp5.i = icmp ugt i32 %150, 15
  br i1 %cmp5.i, label %do.end9.i, label %if.end10.i

do.end9.i:                                        ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.94, i32 noundef %150) #12
  br label %do.end143

if.end10.i:                                       ; preds = %if.end.i304
  %arrayidx.i = getelementptr %struct.cqspi_st, ptr %6, i32 0, i32 20, i32 %150
  %151 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %6, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %150 to i8
  %cs13.i = getelementptr %struct.cqspi_st, ptr %6, i32 0, i32 20, i32 %150, i32 11
  %152 = ptrtoint ptr %cs13.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv.i, ptr %cs13.i, align 4
  %read_delay.i.i = getelementptr %struct.cqspi_st, ptr %6, i32 0, i32 20, i32 %150, i32 2
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.052.i, ptr noundef nonnull @.str.96, ptr noundef %read_delay.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.i.if.then16.i_crit_edge

if.end10.i.if.then16.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.end.i.i:                                       ; preds = %if.end10.i
  %tshsl_ns.i.i = getelementptr %struct.cqspi_st, ptr %6, i32 0, i32 20, i32 %150, i32 3
  %call.i.i51.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.052.i, ptr noundef nonnull @.str.99, ptr noundef %tshsl_ns.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i51.i.i)
  %tobool2.not.i.i = icmp sgt i32 %call.i.i51.i.i, -1
  br i1 %tobool2.not.i.i, label %if.end7.i.i, label %if.end.i.i.if.then16.i_crit_edge

if.end.i.i.if.then16.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %tsd2d_ns.i.i = getelementptr %struct.cqspi_st, ptr %6, i32 0, i32 20, i32 %150, i32 4
  %call.i.i52.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.052.i, ptr noundef nonnull @.str.103, ptr noundef %tsd2d_ns.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i52.i.i)
  %tobool9.not.i.i = icmp sgt i32 %call.i.i52.i.i, -1
  br i1 %tobool9.not.i.i, label %if.end14.i.i, label %if.end7.i.i.if.then16.i_crit_edge

if.end7.i.i.if.then16.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.end14.i.i:                                     ; preds = %if.end7.i.i
  %tchsh_ns.i.i = getelementptr %struct.cqspi_st, ptr %6, i32 0, i32 20, i32 %150, i32 5
  %call.i.i53.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.052.i, ptr noundef nonnull @.str.107, ptr noundef %tchsh_ns.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i53.i.i)
  %tobool16.not.i.i = icmp sgt i32 %call.i.i53.i.i, -1
  br i1 %tobool16.not.i.i, label %if.end21.i.i, label %if.end14.i.i.if.then16.i_crit_edge

if.end14.i.i.if.then16.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.end21.i.i:                                     ; preds = %if.end14.i.i
  %tslch_ns.i.i = getelementptr %struct.cqspi_st, ptr %6, i32 0, i32 20, i32 %150, i32 6
  %call.i.i54.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.052.i, ptr noundef nonnull @.str.111, ptr noundef %tslch_ns.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i54.i.i)
  %tobool23.not.i.i = icmp sgt i32 %call.i.i54.i.i, -1
  br i1 %tobool23.not.i.i, label %if.end28.i.i, label %if.end21.i.i.if.then16.i_crit_edge

if.end21.i.i.if.then16.i_crit_edge:               ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.end28.i.i:                                     ; preds = %if.end21.i.i
  %clk_rate.i.i = getelementptr %struct.cqspi_st, ptr %6, i32 0, i32 20, i32 %150, i32 1
  %call.i.i55.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.052.i, ptr noundef nonnull @.str.115, ptr noundef %clk_rate.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i55.i.i)
  %tobool30.not.i.i = icmp sgt i32 %call.i.i55.i.i, -1
  br i1 %tobool30.not.i.i, label %for.inc.i, label %if.end28.i.i.if.then16.i_crit_edge

if.end28.i.i.if.then16.i_crit_edge:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.end28.i.i.if.then16.i_crit_edge, %if.end21.i.i.if.then16.i_crit_edge, %if.end14.i.i.if.then16.i_crit_edge, %if.end7.i.i.if.then16.i_crit_edge, %if.end.i.i.if.then16.i_crit_edge, %if.end10.i.if.then16.i_crit_edge
  %.str.117.sink.i.i = phi ptr [ @.str.97, %if.end10.i.if.then16.i_crit_edge ], [ @.str.101, %if.end.i.i.if.then16.i_crit_edge ], [ @.str.105, %if.end7.i.i.if.then16.i_crit_edge ], [ @.str.109, %if.end14.i.i.if.then16.i_crit_edge ], [ @.str.113, %if.end21.i.i.if.then16.i_crit_edge ], [ @.str.117, %if.end28.i.i.if.then16.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull %.str.117.sink.i.i) #12
  br label %do.end143

for.inc.i:                                        ; preds = %if.end28.i.i
  %153 = ptrtoint ptr %of_node.i299 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %of_node.i299, align 8
  %call19.i = call ptr @of_get_next_available_child(ptr noundef %154, ptr noundef nonnull %np.052.i) #9
  %cmp.not.i = icmp eq ptr %call19.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end144_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end144_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

do.end143:                                        ; preds = %if.then16.i, %do.end9.i, %do.end.i303
  %retval.0.ph.i = phi i32 [ -6, %if.then16.i ], [ -22, %do.end9.i ], [ %call.i.i.i301, %do.end.i303 ]
  call void @of_node_put(ptr noundef nonnull %np.052.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %retval.0.ph.i) #12
  br label %probe_setup_failed

if.end144:                                        ; preds = %for.inc.i.if.end144_crit_edge, %cqspi_controller_init.exit.if.end144_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #9
  %155 = ptrtoint ptr %use_direct_mode.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %use_direct_mode.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool146.not = icmp eq i8 %156, 0
  br i1 %tobool146.not, label %if.end144.if.end153_crit_edge, label %if.then147

if.end144.if.end153_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then147:                                       ; preds = %if.end144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #9
  %157 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %mask.i) #9
  %call.i306 = call ptr @dma_request_chan_by_mask(ptr noundef nonnull %mask.i) #9
  %rx_chan.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 7
  %158 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i306, ptr %rx_chan.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i306, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cqspi_request_mmap_dma.exit, label %cqspi_request_mmap_dma.exit.thread

cqspi_request_mmap_dma.exit.thread:               ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dma_complete.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 8
  %159 = ptrtoint ptr %rx_dma_complete.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %rx_dma_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.cqspi_st, ptr %6, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @init_completion.__key) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #9
  br label %if.end153

cqspi_request_mmap_dma.exit:                      ; preds = %if.then147
  %160 = ptrtoint ptr %call.i306 to i32
  %161 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %rx_chan.i, align 4
  %162 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %6, align 4
  %dev.i307 = getelementptr inbounds %struct.platform_device, ptr %163, i32 0, i32 3
  %call6.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev.i307, i32 noundef %160, ptr noundef nonnull @.str.119) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call6.i)
  %cmp149 = icmp eq i32 %call6.i, -517
  br i1 %cmp149, label %cqspi_request_mmap_dma.exit.probe_setup_failed_crit_edge, label %cqspi_request_mmap_dma.exit.if.end153_crit_edge

cqspi_request_mmap_dma.exit.if.end153_crit_edge:  ; preds = %cqspi_request_mmap_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

cqspi_request_mmap_dma.exit.probe_setup_failed_crit_edge: ; preds = %cqspi_request_mmap_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %probe_setup_failed

if.end153:                                        ; preds = %cqspi_request_mmap_dma.exit.if.end153_crit_edge, %cqspi_request_mmap_dma.exit.thread, %if.end144.if.end153_crit_edge
  %call154 = call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end153.cleanup_crit_edge, label %do.end159

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end159:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %call154) #12
  br label %probe_setup_failed

probe_setup_failed:                               ; preds = %do.end159, %cqspi_request_mmap_dma.exit.probe_setup_failed_crit_edge, %do.end143
  %ret.0 = phi i32 [ %retval.0.ph.i, %do.end143 ], [ -517, %cqspi_request_mmap_dma.exit.probe_setup_failed_crit_edge ], [ %call154, %do.end159 ]
  %164 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %iobase, align 4
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #9, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %167 = and i32 %166, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %167) #9, !srcloc !267
  br label %probe_reset_failed

probe_reset_failed:                               ; preds = %probe_setup_failed, %do.end133, %if.then74, %if.then66
  %ret.1 = phi i32 [ %44, %if.then66 ], [ %45, %if.then74 ], [ %call.i287, %do.end133 ], [ %ret.0, %probe_setup_failed ]
  %168 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %169) #9
  call void @clk_unprepare(ptr noundef %169) #9
  br label %probe_clk_failed

probe_clk_failed:                                 ; preds = %probe_reset_failed, %do.end62
  %ret.2 = phi i32 [ %retval.0.i282.ph, %do.end62 ], [ %ret.1, %probe_reset_failed ]
  %call.i311 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #9
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %probe_clk_failed, %do.end11.i.i.i.i, %if.then54.spi_controller_put.exit_crit_edge, %if.end47.spi_controller_put.exit_crit_edge, %do.end44, %do.end33, %do.end22, %do.end14
  %ret.3 = phi i32 [ -19, %do.end14 ], [ %24, %do.end22 ], [ %28, %do.end33 ], [ %32, %do.end44 ], [ %ret.2, %probe_clk_failed ], [ -6, %if.end47.spi_controller_put.exit_crit_edge ], [ %call.i277, %if.then54.spi_controller_put.exit_crit_edge ], [ %call.i277, %do.end11.i.i.i.i ]
  call void @put_device(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end153.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.3, %spi_controller_put.exit ], [ -12, %do.end ], [ 0, %if.end153.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqspi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iobase.i = getelementptr inbounds %struct.cqspi_st, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #9, !srcloc !267
  %rx_chan = getelementptr inbounds %struct.cqspi_st, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_chan, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.cqspi_st, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqspi_irq_handler(i32 noundef %this_irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %iobase = getelementptr inbounds %struct.cqspi_st, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #9, !srcloc !267
  %use_dma_read = getelementptr inbounds %struct.cqspi_st, ptr %dev, i32 0, i32 21
  %7 = ptrtoint ptr %use_dma_read to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_dma_read, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %tobool6.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.if.end13_crit_edge, label %land.lhs.true7

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true7:                                   ; preds = %entry
  %get_dma_status = getelementptr inbounds %struct.cqspi_driver_platdata, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %get_dma_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_dma_status, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true7.if.end13_crit_edge, label %if.then

land.lhs.true7.if.end13_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true7
  %call10 = tail call i32 %10(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %11 = and i32 %4, 1175453696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  %or.cond31 = select i1 %tobool11.not, i1 %tobool14.not, i1 false
  br i1 %or.cond31, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true7.if.end13_crit_edge, %entry.if.end13_crit_edge
  %.old = and i32 %4, 1175453696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.old)
  %tobool14.not.old = icmp eq i32 %.old, 0
  br i1 %tobool14.not.old, label %if.end13.cleanup_crit_edge, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end13.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %transfer_complete16 = getelementptr inbounds %struct.cqspi_st, ptr %dev, i32 0, i32 6
  tail call void @complete(ptr noundef %transfer_complete16) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cqspi_wait_idle(ptr nocapture noundef readonly %cqspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 50
  %iobase.i = getelementptr inbounds %struct.cqspi_st, ptr %cqspi, i32 0, i32 3
  %1 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iobase.i, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %.mask.i20 = lshr i32 %3, 7
  %.mask.i20.lobit = and i32 %.mask.i20, 1
  br label %if.end3

if.end3:                                          ; preds = %do.end11.if.end3_crit_edge, %entry
  %count.123 = phi i32 [ %.mask.i20.lobit, %entry ], [ %count.1, %do.end11.if.end3_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %do.end, label %do.end11

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %cqspi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cqspi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef 500) #12
  br label %cleanup

do.end11:                                         ; preds = %if.end3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !264
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %.mask.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.i.not = icmp eq i32 %.mask.i, 0
  %inc = add nuw nsw i32 %count.123, 1
  %count.1 = select i1 %tobool.i.not, i32 0, i32 %inc
  %cmp = icmp ugt i32 %count.1, 2
  br i1 %cmp, label %do.end11.cleanup_crit_edge, label %do.end11.if.end3_crit_edge

do.end11.if.end3_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %do.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cqspi_supports_mem_op(ptr noundef %mem, ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtr = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 2
  %0 = ptrtoint ptr %dtr to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dtr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %land.lhs.true31, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.land.lhs.true8_crit_edge, label %lor.lhs.false

land.lhs.true.land.lhs.true8_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true8

lor.lhs.false:                                    ; preds = %land.lhs.true
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %dtr3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load4 = load i8, ptr %dtr3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4)
  %tobool7.not = icmp sgt i8 %bf.load4, -1
  br i1 %tobool7.not, label %lor.lhs.false.land.end49_crit_edge, label %lor.lhs.false.land.lhs.true8_crit_edge

lor.lhs.false.land.lhs.true8_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true8

lor.lhs.false.land.end49_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end49

land.lhs.true8:                                   ; preds = %lor.lhs.false.land.lhs.true8_crit_edge, %land.lhs.true.land.lhs.true8_crit_edge
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %4 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %land.lhs.true8.land.rhs_crit_edge, label %lor.lhs.false11

land.lhs.true8.land.rhs_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

lor.lhs.false11:                                  ; preds = %land.lhs.true8
  %dtr13 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %dtr13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load14 = load i8, ptr %dtr13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load14)
  %tobool17.not = icmp sgt i8 %bf.load14, -1
  br i1 %tobool17.not, label %lor.lhs.false11.land.end49_crit_edge, label %lor.lhs.false11.land.rhs_crit_edge

lor.lhs.false11.land.rhs_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

lor.lhs.false11.land.end49_crit_edge:             ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end49

land.rhs:                                         ; preds = %lor.lhs.false11.land.rhs_crit_edge, %land.lhs.true8.land.rhs_crit_edge
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbytes18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %land.rhs.if.then57_crit_edge, label %lor.rhs

land.rhs.if.then57_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %dtr21 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %dtr21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load22 = load i8, ptr %dtr21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load22)
  %tobool25 = icmp slt i8 %bf.load22, 0
  br label %land.end49

land.lhs.true31:                                  ; preds = %entry
  %dtr33 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %dtr33 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load34 = load i8, ptr %dtr33, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load34)
  %tobool36.not = icmp sgt i8 %bf.load34, -1
  br i1 %tobool36.not, label %land.lhs.true37, label %land.lhs.true31.land.end49_crit_edge

land.lhs.true31.land.end49_crit_edge:             ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end49

land.lhs.true37:                                  ; preds = %land.lhs.true31
  %dtr39 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %dtr39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load40 = load i8, ptr %dtr39, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load40)
  %tobool42.not = icmp sgt i8 %bf.load40, -1
  br i1 %tobool42.not, label %land.rhs43, label %land.lhs.true37.land.end49_crit_edge

land.lhs.true37.land.end49_crit_edge:             ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end49

land.rhs43:                                       ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  %dtr45 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %dtr45 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load46 = load i8, ptr %dtr45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load46)
  %tobool48.not = icmp sgt i8 %bf.load46, -1
  br label %land.end49

land.end49:                                       ; preds = %land.rhs43, %land.lhs.true37.land.end49_crit_edge, %land.lhs.true31.land.end49_crit_edge, %lor.rhs, %lor.lhs.false11.land.end49_crit_edge, %lor.lhs.false.land.end49_crit_edge
  %13 = phi i1 [ false, %land.lhs.true37.land.end49_crit_edge ], [ false, %land.lhs.true31.land.end49_crit_edge ], [ false, %land.rhs43 ], [ %tobool25, %lor.rhs ], [ false, %lor.lhs.false.land.end49_crit_edge ], [ false, %lor.lhs.false11.land.end49_crit_edge ]
  %14 = phi i1 [ false, %land.lhs.true37.land.end49_crit_edge ], [ false, %land.lhs.true31.land.end49_crit_edge ], [ %tobool48.not, %land.rhs43 ], [ false, %lor.rhs ], [ false, %lor.lhs.false.land.end49_crit_edge ], [ false, %lor.lhs.false11.land.end49_crit_edge ]
  %brmerge = select i1 %13, i1 true, i1 %14
  br i1 %brmerge, label %if.end, label %land.end49.cleanup_crit_edge

land.end49.cleanup_crit_edge:                     ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.end49
  br i1 %13, label %if.end.if.then57_crit_edge, label %if.else

if.end.if.then57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.then57:                                        ; preds = %if.end.if.then57_crit_edge, %land.rhs.if.then57_crit_edge
  %call = tail call zeroext i1 @spi_mem_dtr_supports_op(ptr noundef %mem, ptr noundef %op) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call zeroext i1 @spi_mem_default_supports_op(ptr noundef %mem, ptr noundef %op) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then57, %land.end49.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.then57 ], [ %call58, %if.else ], [ false, %land.end49.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqspi_exec_mem_op(ptr nocapture noundef readonly %mem, ptr noundef readonly %op) #2 align 64 {
entry:
  %temp.i.i.i = alloca i32, align 4
  %data3.i.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select.i, align 4
  %idxprom.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_speed_hz.i, align 8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %current_cs.i.i = getelementptr inbounds %struct.cqspi_st, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %current_cs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %current_cs.i.i, align 4
  %cs.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 11
  %14 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cs.i.i, align 4
  %conv.i.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %13, %conv.i.i
  %sclk3.i.i = getelementptr inbounds %struct.cqspi_st, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %sclk3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sclk3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp4.not.i.i = icmp eq i32 %17, %9
  %18 = select i1 %cmp.not.i.i, i1 %cmp4.not.i.i, i1 false
  br i1 %18, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iobase.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %11, i32 0, i32 3
  %19 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i.i.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %22 = and i32 %21, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %22) #9, !srcloc !267
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %23 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cs.i.i, align 4
  %conv10.i.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %current_cs.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv10.i.i, ptr %current_cs.i.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %iobase.i44.i.i = getelementptr inbounds %struct.cqspi_st, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %iobase.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i44.i.i, align 4
  %30 = load i8, ptr %cs.i.i, align 4
  %conv.i.i.i = zext i8 %30 to i32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !261
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  %is_decoded_cs.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %27, i32 0, i32 12
  %33 = ptrtoint ptr %is_decoded_cs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_decoded_cs.i.i.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i.i = or i32 %32, 512
  br label %cqspi_chipselect.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i.i = and i32 %32, -513
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %neg.i.i.i = and i32 %shl.i.i.i, 15
  %and3.i.i.i = xor i32 %neg.i.i.i, 15
  br label %cqspi_chipselect.exit.i.i

cqspi_chipselect.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  %reg.0.i.i.i = phi i32 [ %or.i.i.i, %if.then.i.i.i ], [ %and.i.i.i, %if.else.i.i.i ]
  %chip_select.0.i.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i.i ], [ %and3.i.i.i, %if.else.i.i.i ]
  %and4.i.i.i = and i32 %reg.0.i.i.i, -15361
  %and5.i.i.i = shl nsw i32 %chip_select.0.i.i.i, 10
  %shl6.i.i.i = and i32 %and5.i.i.i, 15360
  %or7.i.i.i = or i32 %shl6.i.i.i, %and4.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !282
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %35) #9, !srcloc !267
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %cqspi_chipselect.exit.i.i, %if.end.i.i.if.end12.i.i_crit_edge
  br i1 %cmp4.not.i.i, label %if.end12.i.i.if.end17.i.i_crit_edge, label %if.then14.i.i

if.end12.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %sclk3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %9, ptr %sclk3.i.i, align 4
  %master_ref_clk_hz.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %11, i32 0, i32 11
  %37 = ptrtoint ptr %master_ref_clk_hz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %master_ref_clk_hz.i.i.i, align 4
  %iobase.i45.i.i = getelementptr inbounds %struct.cqspi_st, ptr %11, i32 0, i32 3
  %39 = ptrtoint ptr %iobase.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i45.i.i, align 4
  %mul.i.i.i = shl i32 %9, 1
  %add.i.i.i = add i32 %mul.i.i.i, -1
  %sub.i.i.i = add i32 %add.i.i.i, %38
  %div3.i.i.i = udiv i32 %sub.i.i.i, %mul.i.i.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !283
  %42 = and i32 %41, -30721
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %sub4.i.i.i = shl i32 %div3.i.i.i, 19
  %and6.i.i.i = add i32 %sub4.i.i.i, 7864320
  %shl.i46.i.i = and i32 %and6.i.i.i, 7864320
  %or.i47.i.i = or i32 %43, %shl.i46.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i47.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %44) #9, !srcloc !267
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %iobase2.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %iobase2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase2.i.i.i, align 4
  %master_ref_clk_hz.i48.i.i = getelementptr inbounds %struct.cqspi_st, ptr %46, i32 0, i32 11
  %49 = ptrtoint ptr %master_ref_clk_hz.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %master_ref_clk_hz.i48.i.i, align 4
  %sclk.i49.i.i = getelementptr inbounds %struct.cqspi_st, ptr %46, i32 0, i32 2
  %51 = ptrtoint ptr %sclk.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sclk.i49.i.i, align 4
  %add.i50.i.i = add i32 %50, -1
  %sub.i51.i.i = add i32 %add.i50.i.i, %52
  %div.i.i.i = udiv i32 %sub.i51.i.i, %52
  %tshsl_ns.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 3
  %53 = ptrtoint ptr %tshsl_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tshsl_ns.i.i.i, align 4
  %div.i.i.i.i = udiv i32 %50, 1000
  %mul.i.i.i.i = mul i32 %54, %div.i.i.i.i
  %sub.i.i.i.i = add i32 %mul.i.i.i.i, 999999
  %div1.i.i.i.i = udiv i32 %sub.i.i.i.i, 1000000
  %55 = tail call i32 @llvm.umax.i32(i32 %div1.i.i.i.i, i32 %div.i.i.i) #9
  %tchsh_ns.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 5
  %56 = ptrtoint ptr %tchsh_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tchsh_ns.i.i.i, align 4
  %mul.i32.i.i.i = mul i32 %57, %div.i.i.i.i
  %sub.i33.i.i.i = add i32 %mul.i32.i.i.i, 999999
  %div1.i34.i.i.i = udiv i32 %sub.i33.i.i.i, 1000000
  %tslch_ns.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 6
  %58 = ptrtoint ptr %tslch_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tslch_ns.i.i.i, align 4
  %mul.i36.i.i.i = mul i32 %59, %div.i.i.i.i
  %sub.i37.i.i.i = add i32 %mul.i36.i.i.i, 999999
  %div1.i38.i.i.i = udiv i32 %sub.i37.i.i.i, 1000000
  %tsd2d_ns.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 4
  %60 = ptrtoint ptr %tsd2d_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tsd2d_ns.i.i.i, align 4
  %mul.i40.i.i.i = mul i32 %61, %div.i.i.i.i
  %sub.i41.i.i.i = add i32 %mul.i40.i.i.i, 999999
  %div1.i42.i.i.i = udiv i32 %sub.i41.i.i.i, 1000000
  %shl.i52.i.i = shl i32 %55, 24
  %and7.i.i.i = shl nuw nsw i32 %div1.i34.i.i.i, 8
  %shl8.i.i.i = and i32 %and7.i.i.i, 65280
  %or.i53.i.i = or i32 %shl8.i.i.i, %shl.i52.i.i
  %and9.i.i.i = and i32 %div1.i38.i.i.i, 255
  %or11.i.i.i = or i32 %or.i53.i.i, %and9.i.i.i
  %and12.i.i.i = shl nuw nsw i32 %div1.i42.i.i.i, 16
  %shl13.i.i.i = and i32 %and12.i.i.i, 16711680
  %or14.i.i.i = or i32 %or11.i.i.i, %shl13.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !285
  tail call void @arm_heavy_mb() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %or14.i.i.i) #9
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %62) #9, !srcloc !267
  %rclk_en.i.i = getelementptr inbounds %struct.cqspi_st, ptr %11, i32 0, i32 16
  %63 = ptrtoint ptr %rclk_en.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rclk_en.i.i, align 4, !range !274
  %read_delay.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 2
  %65 = ptrtoint ptr %read_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %read_delay.i.i, align 4
  %67 = ptrtoint ptr %iobase.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iobase.i45.i.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %68, i32 16
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i.i) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !286
  %70 = xor i8 %64, 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %69, -520093697
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #9
  %and3.i56.i.i = shl i32 %66, 1
  %shl.i57.i.i = and i32 %and3.i56.i.i, 30
  %and2.i.i.i = or i32 %shl.i57.i.i, %71
  %or4.i.i.i = or i32 %and2.i.i.i, %73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  tail call void @arm_heavy_mb() #9
  %74 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i.i, i32 %74) #9, !srcloc !267
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then14.i.i, %if.end12.i.i.if.end17.i.i_crit_edge
  br i1 %18, label %if.end17.i.i.cqspi_configure.exit.i_crit_edge, label %if.then21.i.i

if.end17.i.i.cqspi_configure.exit.i_crit_edge:    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqspi_configure.exit.i

if.then21.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %iobase.i58.i.i = getelementptr inbounds %struct.cqspi_st, ptr %11, i32 0, i32 3
  %75 = ptrtoint ptr %iobase.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iobase.i58.i.i, align 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %78 = or i32 %77, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %78) #9, !srcloc !267
  br label %cqspi_configure.exit.i

cqspi_configure.exit.i:                           ; preds = %if.then21.i.i, %if.end17.i.i.cqspi_configure.exit.i_crit_edge
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %79 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp.i = icmp eq i32 %80, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %cqspi_configure.exit.i.if.end9.i_crit_edge

cqspi_configure.exit.i.if.end9.i_crit_edge:       ; preds = %cqspi_configure.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %cqspi_configure.exit.i
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %81 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %buf.i, align 4
  %tobool.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %83 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool5.not.i = icmp eq i8 %84, 0
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i, align 4
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  %iobase.i.i = getelementptr inbounds %struct.cqspi_st, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %iobase.i.i, align 4
  %nbytes.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %89 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nbytes.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i)
  %call.i.i = tail call fastcc i32 @cqspi_set_protocol(ptr noundef %arrayidx.i, ptr noundef %op) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i35.i, label %if.then6.i.cqspi_command_read.exit.i_crit_edge

if.then6.i.cqspi_command_read.exit.i_crit_edge:   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqspi_command_read.exit.i

if.end.i35.i:                                     ; preds = %if.then6.i
  %dtr.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 10
  %91 = ptrtoint ptr %dtr.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %dtr.i.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool3.i.i = icmp ne i8 %92, 0
  %call4.i.i = tail call fastcc i32 @cqspi_enable_dtr(ptr noundef %arrayidx.i, ptr noundef %op, i32 noundef 0, i1 noundef zeroext %tobool3.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end.i35.i.cqspi_command_read.exit.i_crit_edge

if.end.i35.i.cqspi_command_read.exit.i_crit_edge: ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqspi_command_read.exit.i

if.end7.i.i:                                      ; preds = %if.end.i35.i
  %93 = add i32 %90, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %93)
  %94 = icmp ult i32 %93, -8
  br i1 %94, label %do.end.i.i, label %if.end12.i39.i

do.end.i.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %86, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.41, i32 noundef %90, ptr noundef nonnull %82) #12
  br label %cqspi_command_read.exit.i

if.end12.i39.i:                                   ; preds = %if.end7.i.i
  %97 = ptrtoint ptr %dtr.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %dtr.i.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool14.not.i.i = icmp eq i8 %98, 0
  %opcode19.i.i = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 3
  %99 = ptrtoint ptr %opcode19.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %opcode19.i.i, align 4
  %101 = lshr i16 %100, 8
  %opcode.0.in.i.i = select i1 %tobool14.not.i.i, i16 %100, i16 %101
  %opcode.0.i.i = zext i16 %opcode.0.in.i.i to i32
  %shl.i.i = shl i32 %opcode.0.i.i, 24
  %102 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %shl.i.i, ptr %reg.i.i, align 4
  %inst_width.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 7
  %103 = ptrtoint ptr %inst_width.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %inst_width.i.i.i, align 4
  %conv.i.i36.i = zext i8 %104 to i32
  %shl.i.i37.i = shl nuw nsw i32 %conv.i.i36.i, 8
  %addr_width.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 8
  %105 = ptrtoint ptr %addr_width.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %addr_width.i.i.i, align 1
  %conv1.i.i.i = zext i8 %106 to i32
  %shl2.i.i.i = shl nuw nsw i32 %conv1.i.i.i, 12
  %or3.i.i.i = or i32 %shl2.i.i.i, %shl.i.i37.i
  %data_width.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 9
  %107 = ptrtoint ptr %data_width.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %data_width.i.i.i, align 2
  %conv4.i.i.i = zext i8 %108 to i32
  %shl5.i.i.i = shl nuw nsw i32 %conv4.i.i.i, 16
  %or6.i.i.i = or i32 %or3.i.i.i, %shl5.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  tail call void @arm_heavy_mb() #9
  %109 = tail call i32 @llvm.bswap.i32(i32 %or6.i.i.i) #9
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %109) #9, !srcloc !267
  %dummy.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %110 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %dummy.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i.i38.i = icmp eq i8 %111, 0
  br i1 %tobool.not.i.i38.i, label %if.end12.i39.i.if.end37.i.i_crit_edge, label %cqspi_calc_dummy.exit.i.i

if.end12.i39.i.if.end37.i.i_crit_edge:            ; preds = %if.end12.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

cqspi_calc_dummy.exit.i.i:                        ; preds = %if.end12.i39.i
  %112 = ptrtoint ptr %dtr.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %dtr.i.i, align 1, !range !274
  %conv.i114.i.i = zext i8 %111 to i32
  %buswidth.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %buswidth.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %buswidth.i.i.i, align 1
  %116 = udiv i8 8, %115
  %div.i.i40.i = zext i8 %116 to i32
  %mul.i.i41.i = mul nuw nsw i32 %div.i.i40.i, %conv.i114.i.i
  %117 = zext i8 %113 to i32
  %spec.select.i.i.i = lshr i32 %mul.i.i41.i, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %spec.select.i.i.i)
  %cmp30.i.i = icmp ugt i32 %spec.select.i.i.i, 31
  br i1 %cmp30.i.i, label %cqspi_calc_dummy.exit.i.i.cqspi_command_read.exit.i_crit_edge, label %if.end33.i.i

cqspi_calc_dummy.exit.i.i.cqspi_command_read.exit.i_crit_edge: ; preds = %cqspi_calc_dummy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqspi_command_read.exit.i

if.end33.i.i:                                     ; preds = %cqspi_calc_dummy.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i)
  %tobool34.not.i.i = icmp eq i32 %spec.select.i.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end33.i.i.if.end37.i.i_crit_edge, label %if.then35.i.i

if.end33.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.then35.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = shl nuw nsw i32 %spec.select.i.i.i, 7
  %shl36.i.i = and i32 %and.i.i, 3968
  %or.i.i = or i32 %shl36.i.i, %shl.i.i
  %118 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or.i.i, ptr %reg.i.i, align 4
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then35.i.i, %if.end33.i.i.if.end37.i.i_crit_edge, %if.end12.i39.i.if.end37.i.i_crit_edge
  %119 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %reg.i.i.0.reg.i.i.0.reg.i.0.reg.i.0.reg.0.reg.0.reg.0.82.i.i = load i32, ptr %reg.i.i, align 4
  %sub.i.i = shl nuw nsw i32 %90, 20
  %and39.i.i = add nuw nsw i32 %sub.i.i, 7340032
  %shl40.i.i = and i32 %and39.i.i, 7340032
  %or38.i.i = or i32 %shl40.i.i, %reg.i.i.0.reg.i.i.0.reg.i.0.reg.i.0.reg.0.reg.0.reg.0.82.i.i
  %or41.i.i = or i32 %or38.i.i, 8388608
  %call42.i.i = tail call fastcc i32 @cqspi_exec_flash_cmd(ptr noundef %86, i32 noundef %or41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end45.i.i, label %if.end37.i.i.cqspi_command_read.exit.i_crit_edge

if.end37.i.i.cqspi_command_read.exit.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqspi_command_read.exit.i

if.end45.i.i:                                     ; preds = %if.end37.i.i
  %add.ptr46.i.i = getelementptr i8, ptr %88, i32 160
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i.i) #9, !srcloc !261
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  %122 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %reg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %cmp49.i.i = icmp ugt i32 %90, 4
  %123 = tail call i32 @llvm.umin.i32(i32 %90, i32 4) #9
  %124 = call ptr @memcpy(ptr %82, ptr %reg.i.i, i32 %123)
  br i1 %cmp49.i.i, label %if.then54.i.i, label %if.end45.i.i.cqspi_command_read.exit.i_crit_edge

if.end45.i.i.cqspi_command_read.exit.i_crit_edge: ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqspi_command_read.exit.i

if.then54.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr51.i.i = getelementptr i8, ptr %82, i32 %123
  %add.ptr57.i.i = getelementptr i8, ptr %88, i32 164
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57.i.i) #9, !srcloc !261
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  %127 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %reg.i.i, align 4
  %sub61.i.i = sub nuw nsw i32 %90, %123
  %128 = call ptr @memcpy(ptr %add.ptr51.i.i, ptr %reg.i.i, i32 %sub61.i.i)
  br label %cqspi_command_read.exit.i

cqspi_command_read.exit.i:                        ; preds = %if.then54.i.i, %if.end45.i.i.cqspi_command_read.exit.i_crit_edge, %if.end37.i.i.cqspi_command_read.exit.i_crit_edge, %cqspi_calc_dummy.exit.i.i.cqspi_command_read.exit.i_crit_edge, %do.end.i.i, %if.end.i35.i.cqspi_command_read.exit.i_crit_edge, %if.then6.i.cqspi_command_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %do.end.i.i ], [ %call.i.i, %if.then6.i.cqspi_command_read.exit.i_crit_edge ], [ %call4.i.i, %if.end.i35.i.cqspi_command_read.exit.i_crit_edge ], [ -95, %cqspi_calc_dummy.exit.i.i.cqspi_command_read.exit.i_crit_edge ], [ %call42.i.i, %if.end37.i.i.cqspi_command_read.exit.i_crit_edge ], [ 0, %if.then54.i.i ], [ 0, %if.end45.i.i.cqspi_command_read.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i)
  br label %cqspi_mem_process.exit

if.end.i:                                         ; preds = %if.then.i
  %129 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %86, align 4
  %dev2.i.i = getelementptr inbounds %struct.platform_device, ptr %130, i32 0, i32 3
  %val.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %131 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %val.i.i, align 8
  %nbytes.i42.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %133 = ptrtoint ptr %nbytes.i42.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %nbytes.i42.i, align 4
  %135 = ptrtoint ptr %82 to i32
  %call.i43.i = tail call ptr @of_device_get_match_data(ptr noundef %dev2.i.i) #9
  %call5.i.i = tail call fastcc i32 @cqspi_set_protocol(ptr noundef %arrayidx.i, ptr noundef %op) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i44.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i44.i, label %if.end.i46.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i46.i:                                     ; preds = %if.end.i
  %136 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i, align 4
  %iobase.i.i45.i = getelementptr inbounds %struct.cqspi_st, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %iobase.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %iobase.i.i45.i, align 4
  %dtr.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 10
  %140 = ptrtoint ptr %dtr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %dtr.i.i.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.i.i.i = icmp ne i8 %141, 0
  %call.i.i.i = tail call fastcc i32 @cqspi_enable_dtr(ptr noundef %arrayidx.i, ptr noundef %op, i32 noundef 24, i1 noundef zeroext %tobool.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i, label %if.end.i46.i.do.end_crit_edge

if.end.i46.i.do.end_crit_edge:                    ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i.i.i:                                     ; preds = %if.end.i46.i
  %142 = ptrtoint ptr %dtr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %dtr.i.i.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool4.not.i.i.i = icmp eq i8 %143, 0
  %opcode9.i.i.i = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 3
  %144 = ptrtoint ptr %opcode9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %opcode9.i.i.i, align 4
  %146 = lshr i16 %145, 8
  %opcode.0.in.i.i.i = select i1 %tobool4.not.i.i.i, i16 %145, i16 %146
  %147 = and i16 %opcode.0.in.i.i.i, 255
  %conv12.i.i.i = zext i16 %147 to i32
  %inst_width.i.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 7
  %148 = ptrtoint ptr %inst_width.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %inst_width.i.i.i.i, align 4
  %conv.i.i.i.i = zext i8 %149 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 8
  %addr_width.i.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 8
  %150 = ptrtoint ptr %addr_width.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %addr_width.i.i.i.i, align 1
  %conv1.i.i.i.i = zext i8 %151 to i32
  %shl2.i.i.i.i = shl nuw nsw i32 %conv1.i.i.i.i, 12
  %data_width.i.i.i.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 9
  %152 = ptrtoint ptr %data_width.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %data_width.i.i.i.i, align 2
  %conv4.i.i.i.i = zext i8 %153 to i32
  %shl5.i.i.i.i = shl nuw nsw i32 %conv4.i.i.i.i, 16
  %or3.i.i.i.i = or i32 %shl.i.i.i.i, %conv12.i.i.i
  %or6.i.i.i.i = or i32 %or3.i.i.i.i, %shl2.i.i.i.i
  %or.i.i47.i = or i32 %or6.i.i.i.i, %shl5.i.i.i.i
  %dummy.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %154 = ptrtoint ptr %dummy.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %dummy.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i.i.i.i = icmp eq i8 %155, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.if.end19.thread.i.i.i_crit_edge, label %cqspi_calc_dummy.exit.i.i.i

if.end.i.i.i.if.end19.thread.i.i.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.thread.i.i.i

cqspi_calc_dummy.exit.i.i.i:                      ; preds = %if.end.i.i.i
  %conv.i59.i.i.i = zext i8 %155 to i32
  %buswidth.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %156 = ptrtoint ptr %buswidth.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %buswidth.i.i.i.i, align 1
  %158 = udiv i8 8, %157
  %div.i.i.i48.i = zext i8 %158 to i32
  %mul.i.i.i49.i = mul nuw nsw i32 %div.i.i.i48.i, %conv.i59.i.i.i
  %159 = zext i8 %143 to i32
  %spec.select.i.i.i.i = lshr i32 %mul.i.i.i49.i, %159
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %spec.select.i.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %spec.select.i.i.i.i, 31
  br i1 %cmp.i.i.i, label %cqspi_calc_dummy.exit.i.i.i.do.end_crit_edge, label %if.end19.i.i.i

cqspi_calc_dummy.exit.i.i.i.do.end_crit_edge:     ; preds = %cqspi_calc_dummy.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end19.i.i.i:                                   ; preds = %cqspi_calc_dummy.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %spec.select.i.i.i.i, 0
  %and.i.i50.i = shl nuw nsw i32 %spec.select.i.i.i.i, 24
  %shl22.i.i.i = and i32 %and.i.i50.i, 520093696
  %or23.i.i.i = or i32 %shl22.i.i.i, %or.i.i47.i
  br i1 %tobool20.not.i.i.i, label %if.end19.i.i.i.if.end19.thread.i.i.i_crit_edge, label %if.end19.i.i.i.if.end9.i.i_crit_edge

if.end19.i.i.i.if.end9.i.i_crit_edge:             ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.end19.i.i.i.if.end19.thread.i.i.i_crit_edge:   ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.thread.i.i.i

if.end19.thread.i.i.i:                            ; preds = %if.end19.i.i.i.if.end19.thread.i.i.i_crit_edge, %if.end.i.i.i.if.end19.thread.i.i.i_crit_edge
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end19.thread.i.i.i, %if.end19.i.i.i.if.end9.i.i_crit_edge
  %160 = phi i32 [ %or.i.i47.i, %if.end19.thread.i.i.i ], [ %or23.i.i.i, %if.end19.i.i.i.if.end9.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  tail call void @arm_heavy_mb() #9
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #9
  %add.ptr.i.i51.i = getelementptr i8, ptr %139, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i51.i, i32 %161) #9, !srcloc !267
  %add.ptr25.i.i.i = getelementptr i8, ptr %139, i32 20
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i.i.i) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  %163 = and i32 %162, -251658241
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #9
  %165 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %addr.i, align 8
  %conv29.i.i.i = zext i8 %166 to i32
  %sub.i.i52.i = add nsw i32 %conv29.i.i.i, -1
  %or30.i.i.i = or i32 %sub.i.i52.i, %164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  tail call void @arm_heavy_mb() #9
  %167 = tail call i32 @llvm.bswap.i32(i32 %or30.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i.i, i32 %167) #9, !srcloc !267
  %use_direct_mode.i.i = getelementptr inbounds %struct.cqspi_st, ptr %86, i32 0, i32 19
  %168 = ptrtoint ptr %use_direct_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %use_direct_mode.i.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool10.not.i53.i = icmp eq i8 %169, 0
  br i1 %tobool10.not.i53.i, label %if.end9.i.i.if.end17.i57.i_crit_edge, label %land.lhs.true.i.i

if.end9.i.i.if.end17.i57.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i57.i

land.lhs.true.i.i:                                ; preds = %if.end9.i.i
  %conv12.i.i = zext i32 %134 to i64
  %add.i.i = add i64 %132, %conv12.i.i
  %ahb_size.i.i = getelementptr inbounds %struct.cqspi_st, ptr %86, i32 0, i32 5
  %170 = ptrtoint ptr %ahb_size.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ahb_size.i.i, align 4
  %conv13.i.i = zext i32 %171 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %conv13.i.i)
  %cmp.not.i54.i = icmp sgt i64 %add.i.i, %conv13.i.i
  br i1 %cmp.not.i54.i, label %land.lhs.true.i.i.if.end17.i57.i_crit_edge, label %if.then15.i.i

land.lhs.true.i.i.if.end17.i57.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i57.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  %172 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %dev2.i.i.i = getelementptr inbounds %struct.platform_device, ptr %175, i32 0, i32 3
  %mmap_phys_base.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %173, i32 0, i32 9
  %176 = ptrtoint ptr %mmap_phys_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mmap_phys_base.i.i.i, align 4
  %178 = trunc i64 %132 to i32
  %conv3.i.i.i = add i32 %177, %178
  %rx_chan.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %173, i32 0, i32 7
  %179 = ptrtoint ptr %rx_chan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rx_chan.i.i.i, align 4
  %tobool.not.i.i55.i = icmp ne ptr %180, null
  %cmp.i80.i.i = icmp ugt ptr %82, inttoptr (i32 -1073741825 to ptr)
  %or.cond89.i.i = select i1 %tobool.not.i.i55.i, i1 %cmp.i80.i.i, i1 false
  br i1 %or.cond89.i.i, label %land.lhs.true.i.i.i, label %if.then15.i.i.if.then.i.i56.i_crit_edge

if.then15.i.i.if.then.i.i56.i_crit_edge:          ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i56.i

land.lhs.true.i.i.i:                              ; preds = %if.then15.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %181 = load ptr, ptr @high_memory, align 4
  %cmp5.i.i.i = icmp ugt ptr %181, %82
  br i1 %cmp5.i.i.i, label %land.lhs.true7.i.i.i, label %land.lhs.true.i.i.i.if.then.i.i56.i_crit_edge

land.lhs.true.i.i.i.if.then.i.i56.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i56.i

land.lhs.true7.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %sub.i81.i.i = add i32 %135, 1073741824
  %shr.i.i.i = lshr i32 %sub.i81.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %182 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add8.i.i.i = add i32 %182, %shr.i.i.i
  %call.i82.i.i = tail call i32 @pfn_valid(i32 noundef %add8.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call.i82.i.i, 0
  br i1 %tobool9.not.i.i.i, label %land.lhs.true7.i.i.i.if.then.i.i56.i_crit_edge, label %if.end.i84.i.i

land.lhs.true7.i.i.i.if.then.i.i56.i_crit_edge:   ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i56.i

if.then.i.i56.i:                                  ; preds = %land.lhs.true7.i.i.i.if.then.i.i56.i_crit_edge, %land.lhs.true.i.i.i.if.then.i.i56.i_crit_edge, %if.then15.i.i.if.then.i.i56.i_crit_edge
  %ahb_base.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %173, i32 0, i32 4
  %183 = ptrtoint ptr %ahb_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ahb_base.i.i.i, align 4
  %add.ptr.i83.i.i = getelementptr i8, ptr %184, i32 %178
  tail call void @mmiocpy(ptr noundef nonnull %82, ptr noundef %add.ptr.i83.i.i, i32 noundef %134) #9
  br label %if.end

if.end.i84.i.i:                                   ; preds = %land.lhs.true7.i.i.i
  %185 = ptrtoint ptr %rx_chan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rx_chan.i.i.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %dev11.i.i.i = getelementptr inbounds %struct.dma_device, ptr %188, i32 0, i32 15
  %189 = ptrtoint ptr %dev11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev11.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %82) #9
  br i1 %call.i.i.i.i, label %land.rhs.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i84.i.i
  %.b1.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge, label %if.then.i89.i.i.i, !prof !294

land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i.i.i

if.then.i89.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i = tail call ptr @dev_driver_string(ptr noundef %190) #9
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %190, i32 0, i32 3
  %191 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %192, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i89.i.i.i.dev_name.exit.i.i.i.i_crit_edge

if.then.i89.i.i.i.dev_name.exit.i.i.i.i_crit_edge: ; preds = %if.then.i89.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i89.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %193 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %190, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i, %if.then.i89.i.i.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %194, %if.end.i.i.i.i.i ], [ %192, %if.then.i89.i.i.i.dev_name.exit.i.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef %call16.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i) #9
  br label %dma_map_single_attrs.exit.thread.i.i.i

dma_map_single_attrs.exit.thread.i.i.i:           ; preds = %dev_name.exit.i.i.i.i, %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %190, i32 noundef -1) #9
  br label %do.end.i.i.i

dma_map_single_attrs.exit.i.i.i:                  ; preds = %if.end.i84.i.i
  tail call void @debug_dma_map_single(ptr noundef %190, ptr noundef nonnull %82, i32 noundef %134) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %195 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %195, i32 %shr.i.i.i
  %and.i.i.i.i = and i32 %135, 4095
  %call41.i.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %190, ptr noundef %add.ptr.i.i.i.i, i32 noundef %and.i.i.i.i, i32 noundef %134, i32 noundef 2, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %190, i32 noundef %call41.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i.i)
  %cmp.i91.i.i.i = icmp eq i32 %call41.i.i.i.i, -1
  br i1 %cmp.i91.i.i.i, label %dma_map_single_attrs.exit.i.i.i.do.end.i.i.i_crit_edge, label %if.end16.i.i.i

dma_map_single_attrs.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i.i.do.end.i.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.45) #12
  br label %do.end

if.end16.i.i.i:                                   ; preds = %dma_map_single_attrs.exit.i.i.i
  %196 = ptrtoint ptr %rx_chan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rx_chan.i.i.i, align 4
  %tobool.not.i.i85.i.i = icmp eq ptr %197, null
  br i1 %tobool.not.i.i85.i.i, label %if.end16.i.i.i.do.end23.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end16.i.i.i.do.end23.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end16.i.i.i
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %199, null
  br i1 %tobool1.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.do.end23.i.i.i_crit_edge, label %lor.lhs.false2.i.i.i.i

lor.lhs.false.i.i.i.i.do.end23.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i.i.i

lor.lhs.false2.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i.i
  %device_prep_dma_memcpy.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %199, i32 0, i32 30
  %200 = ptrtoint ptr %device_prep_dma_memcpy.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %device_prep_dma_memcpy.i.i.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %201, null
  br i1 %tobool4.not.i.i.i.i, label %lor.lhs.false2.i.i.i.i.do.end23.i.i.i_crit_edge, label %dmaengine_prep_dma_memcpy.exit.i.i.i

lor.lhs.false2.i.i.i.i.do.end23.i.i.i_crit_edge:  ; preds = %lor.lhs.false2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i.i.i

dmaengine_prep_dma_memcpy.exit.i.i.i:             ; preds = %lor.lhs.false2.i.i.i.i
  %call.i92.i.i.i = tail call ptr %201(ptr noundef nonnull %197, i32 noundef %call41.i.i.i.i, i32 noundef %conv3.i.i.i, i32 noundef %134, i32 noundef 3) #9
  %tobool19.not.i.i.i = icmp eq ptr %call.i92.i.i.i, null
  br i1 %tobool19.not.i.i.i, label %dmaengine_prep_dma_memcpy.exit.i.i.i.do.end23.i.i.i_crit_edge, label %if.end24.i.i.i

dmaengine_prep_dma_memcpy.exit.i.i.i.do.end23.i.i.i_crit_edge: ; preds = %dmaengine_prep_dma_memcpy.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i.i.i

do.end23.i.i.i:                                   ; preds = %dmaengine_prep_dma_memcpy.exit.i.i.i.do.end23.i.i.i_crit_edge, %lor.lhs.false2.i.i.i.i.do.end23.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.do.end23.i.i.i_crit_edge, %if.end16.i.i.i.do.end23.i.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.48) #12
  br label %err_unmap.i.i.i

if.end24.i.i.i:                                   ; preds = %dmaengine_prep_dma_memcpy.exit.i.i.i
  %callback.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i92.i.i.i, i32 0, i32 6
  %202 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @cqspi_rx_dma_callback, ptr %callback.i.i.i, align 4
  %callback_param.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i92.i.i.i, i32 0, i32 8
  %203 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %173, ptr %callback_param.i.i.i, align 4
  %tx_submit.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i92.i.i.i, i32 0, i32 4
  %204 = ptrtoint ptr %tx_submit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %tx_submit.i.i.i, align 4
  %call25.i.i.i = tail call i32 %205(ptr noundef nonnull %call.i92.i.i.i) #9
  %rx_dma_complete.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %173, i32 0, i32 8
  %206 = ptrtoint ptr %rx_dma_complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %rx_dma_complete.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25.i.i.i)
  %tobool27.not.i.i.i = icmp sgt i32 %call25.i.i.i, -1
  br i1 %tobool27.not.i.i.i, label %if.end32.i.i.i, label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.51, i32 noundef %call25.i.i.i) #12
  br label %err_unmap.i.i.i

if.end32.i.i.i:                                   ; preds = %if.end24.i.i.i
  %207 = ptrtoint ptr %rx_chan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rx_chan.i.i.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 4
  %device_issue_pending.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %210, i32 0, i32 50
  %211 = ptrtoint ptr %device_issue_pending.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %device_issue_pending.i.i.i.i, align 4
  tail call void %212(ptr noundef %208) #9
  %213 = tail call i32 @llvm.umax.i32(i32 %134, i32 500) #9
  %call2.i.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %213) #9
  %call38.i.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %rx_dma_complete.i.i.i, i32 noundef %call2.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i.i)
  %tobool39.not.i.i.i = icmp eq i32 %call38.i.i.i, 0
  br i1 %tobool39.not.i.i.i, label %if.then40.i.i.i, label %if.end32.i.i.i.err_unmap.i.i.i_crit_edge

if.end32.i.i.i.err_unmap.i.i.i_crit_edge:         ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap.i.i.i

if.then40.i.i.i:                                  ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %214 = ptrtoint ptr %rx_chan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rx_chan.i.i.i, align 4
  tail call fastcc void @dmaengine_terminate_sync(ptr noundef %215) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.54) #12
  br label %err_unmap.i.i.i

err_unmap.i.i.i:                                  ; preds = %if.then40.i.i.i, %if.end32.i.i.i.err_unmap.i.i.i_crit_edge, %do.end31.i.i.i, %do.end23.i.i.i
  %ret.0.i.i.i = phi i32 [ -5, %do.end31.i.i.i ], [ 0, %if.end32.i.i.i.err_unmap.i.i.i_crit_edge ], [ -110, %if.then40.i.i.i ], [ -5, %do.end23.i.i.i ]
  tail call void @dma_unmap_page_attrs(ptr noundef %190, i32 noundef %call41.i.i.i.i, i32 noundef %134, i32 noundef 2, i32 noundef 0) #9
  br label %cqspi_mem_process.exit

if.end17.i57.i:                                   ; preds = %land.lhs.true.i.i.if.end17.i57.i_crit_edge, %if.end9.i.i.if.end17.i57.i_crit_edge
  %use_dma_read.i.i = getelementptr inbounds %struct.cqspi_st, ptr %86, i32 0, i32 21
  %216 = ptrtoint ptr %use_dma_read.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %use_dma_read.i.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool18.not.i.i = icmp eq i8 %217, 0
  %tobool21.not.i.i = icmp eq ptr %call.i43.i, null
  %or.cond.i.i = select i1 %tobool18.not.i.i, i1 true, i1 %tobool21.not.i.i
  br i1 %or.cond.i.i, label %if.end17.i57.i.if.end40.i.i_crit_edge, label %land.lhs.true22.i.i

if.end17.i57.i.if.end40.i.i_crit_edge:            ; preds = %if.end17.i57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

land.lhs.true22.i.i:                              ; preds = %if.end17.i57.i
  %indirect_read_dma.i.i = getelementptr inbounds %struct.cqspi_driver_platdata, ptr %call.i43.i, i32 0, i32 2
  %218 = ptrtoint ptr %indirect_read_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %indirect_read_dma.i.i, align 4
  %tobool23.not.i.i = icmp ne ptr %219, null
  %cmp25.i.i = icmp ugt ptr %82, inttoptr (i32 -1073741825 to ptr)
  %or.cond78.i.i = select i1 %tobool23.not.i.i, i1 %cmp25.i.i, i1 false
  br i1 %or.cond78.i.i, label %land.lhs.true27.i.i, label %land.lhs.true22.i.i.if.end40.i.i_crit_edge

land.lhs.true22.i.i.if.end40.i.i_crit_edge:       ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

land.lhs.true27.i.i:                              ; preds = %land.lhs.true22.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %220 = load ptr, ptr @high_memory, align 4
  %cmp28.i.i = icmp ult ptr %82, %220
  br i1 %cmp28.i.i, label %land.lhs.true30.i.i, label %land.lhs.true27.i.i.if.end40.i.i_crit_edge

land.lhs.true27.i.i.if.end40.i.i_crit_edge:       ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

land.lhs.true30.i.i:                              ; preds = %land.lhs.true27.i.i
  %sub.i58.i = add i32 %135, 1073741824
  %shr.i.i = lshr i32 %sub.i58.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %221 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add31.i.i = add i32 %221, %shr.i.i
  %call32.i.i = tail call i32 @pfn_valid(i32 noundef %add31.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp ne i32 %call32.i.i, 0
  %222 = and i32 %135, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp35.i.i = icmp eq i32 %222, 0
  %or.cond79.i.i = select i1 %tobool33.not.i.i, i1 %cmp35.i.i, i1 false
  br i1 %or.cond79.i.i, label %if.then37.i.i, label %land.lhs.true30.i.i.if.end40.i.i_crit_edge

land.lhs.true30.i.i.if.end40.i.i_crit_edge:       ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.then37.i.i:                                    ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %223 = ptrtoint ptr %indirect_read_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %indirect_read_dma.i.i, align 4
  %call39.i.i = tail call i32 %224(ptr noundef %arrayidx.i, ptr noundef nonnull %82, i64 noundef %132, i32 noundef %134) #9
  br label %cqspi_mem_process.exit

if.end40.i.i:                                     ; preds = %land.lhs.true30.i.i.if.end40.i.i_crit_edge, %land.lhs.true27.i.i.if.end40.i.i_crit_edge, %land.lhs.true22.i.i.if.end40.i.i_crit_edge, %if.end17.i57.i.if.end40.i.i_crit_edge
  %call41.i.i = tail call fastcc i32 @cqspi_indirect_read_execute(ptr noundef %arrayidx.i, ptr noundef nonnull %82, i64 noundef %132, i32 noundef %134) #9
  br label %cqspi_mem_process.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %cqspi_configure.exit.i.if.end9.i_crit_edge
  %addr10.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %225 = ptrtoint ptr %addr10.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %addr10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool12.not.i = icmp eq i8 %226, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.then16.i_crit_edge, label %lor.lhs.false.i

if.end9.i.if.then16.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %buf14.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %227 = ptrtoint ptr %buf14.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %buf14.i, align 4
  %tobool15.not.i = icmp eq ptr %228, null
  br i1 %tobool15.not.i, label %lor.lhs.false.i.if.then16.i_crit_edge, label %if.end18.i

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %if.end9.i.if.then16.i_crit_edge
  %229 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx.i, align 4
  %iobase.i60.i = getelementptr inbounds %struct.cqspi_st, ptr %230, i32 0, i32 3
  %231 = ptrtoint ptr %iobase.i60.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %iobase.i60.i, align 4
  %buf.i61.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %233 = ptrtoint ptr %buf.i61.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %buf.i61.i, align 4
  %nbytes.i62.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %235 = ptrtoint ptr %nbytes.i62.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %nbytes.i62.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data3.i.i)
  %call.i63.i = tail call fastcc i32 @cqspi_set_protocol(ptr noundef %arrayidx.i, ptr noundef %op) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool.not.i64.i = icmp eq i32 %call.i63.i, 0
  br i1 %tobool.not.i64.i, label %if.end.i67.i, label %if.then16.i.cqspi_command_write.exit.i_crit_edge

if.then16.i.cqspi_command_write.exit.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqspi_command_write.exit.i

if.end.i67.i:                                     ; preds = %if.then16.i
  %dtr.i65.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 10
  %237 = ptrtoint ptr %dtr.i65.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %dtr.i65.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool4.i.i = icmp ne i8 %238, 0
  %call5.i66.i = tail call fastcc i32 @cqspi_enable_dtr(ptr noundef %arrayidx.i, ptr noundef %op, i32 noundef 0, i1 noundef zeroext %tobool4.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i66.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i66.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i67.i.cqspi_command_write.exit.i_crit_edge

if.end.i67.i.cqspi_command_write.exit.i_crit_edge: ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cqspi_command_write.exit.i

if.end8.i.i:                                      ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %236)
  %cmp.i.i = icmp ugt i32 %236, 8
  br i1 %cmp.i.i, label %if.end8.i.i.do.end.i71.i_crit_edge, label %lor.lhs.false.i.i

if.end8.i.i.do.end.i71.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i71.i

lor.lhs.false.i.i:                                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool9.not.i.i = icmp eq i32 %236, 0
  %tobool9.not.not.i.i = xor i1 %tobool9.not.i.i, true
  %tobool10.not.i68.i = icmp eq ptr %234, null
  %or.cond.i69.i = select i1 %tobool9.not.not.i.i, i1 %tobool10.not.i68.i, i1 false
  br i1 %or.cond.i69.i, label %lor.lhs.false.i.i.do.end.i71.i_crit_edge, label %if.end12.i88.i

lor.lhs.false.i.i.do.end.i71.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i71.i

do.end.i71.i:                                     ; preds = %lor.lhs.false.i.i.do.end.i71.i_crit_edge, %if.end8.i.i.do.end.i71.i_crit_edge
  %239 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %230, align 4
  %dev.i70.i = getelementptr inbounds %struct.platform_device, ptr %240, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i70.i, ptr noundef nonnull @.str.64, i32 noundef %236, ptr noundef %234) #12
  br label %cqspi_command_write.exit.i

if.end12.i88.i:                                   ; preds = %lor.lhs.false.i.i
  %inst_width.i.i72.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 7
  %241 = ptrtoint ptr %inst_width.i.i72.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %inst_width.i.i72.i, align 4
  %conv.i.i73.i = zext i8 %242 to i32
  %shl.i.i74.i = shl nuw nsw i32 %conv.i.i73.i, 8
  %addr_width.i.i75.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 8
  %243 = ptrtoint ptr %addr_width.i.i75.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %addr_width.i.i75.i, align 1
  %conv1.i.i76.i = zext i8 %244 to i32
  %shl2.i.i77.i = shl nuw nsw i32 %conv1.i.i76.i, 12
  %or3.i.i78.i = or i32 %shl2.i.i77.i, %shl.i.i74.i
  %data_width.i.i79.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 9
  %245 = ptrtoint ptr %data_width.i.i79.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %data_width.i.i79.i, align 2
  %conv4.i.i80.i = zext i8 %246 to i32
  %shl5.i.i81.i = shl nuw nsw i32 %conv4.i.i80.i, 16
  %or6.i.i82.i = or i32 %or3.i.i78.i, %shl5.i.i81.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !295
  tail call void @arm_heavy_mb() #9
  %247 = tail call i32 @llvm.bswap.i32(i32 %or6.i.i82.i) #9
  %add.ptr.i83.i = getelementptr i8, ptr %232, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %247) #9, !srcloc !267
  %248 = ptrtoint ptr %dtr.i65.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %dtr.i65.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool18.not.i84.i = icmp eq i8 %249, 0
  %opcode23.i.i = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 3
  %250 = ptrtoint ptr %opcode23.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %opcode23.i.i, align 4
  %252 = lshr i16 %251, 8
  %opcode.0.in.i85.i = select i1 %tobool18.not.i84.i, i16 %251, i16 %252
  %opcode.0.i86.i = zext i16 %opcode.0.in.i85.i to i32
  %shl.i87.i = shl i32 %opcode.0.i86.i, 24
  %253 = ptrtoint ptr %addr10.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %addr10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool28.not.i.i = icmp eq i8 %254, 0
  br i1 %tobool28.not.i.i, label %if.end12.i88.i.if.end41.i.i_crit_edge, label %if.then29.i.i

if.end12.i88.i.if.end41.i.i_crit_edge:            ; preds = %if.end12.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i.i

if.then29.i.i:                                    ; preds = %if.end12.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  %255 = add i8 %254, 3
  %256 = and i8 %255, 3
  %and.i89.i = zext i8 %256 to i32
  %shl33.i.i = shl nuw nsw i32 %and.i89.i, 16
  %or.i90.i = or i32 %shl33.i.i, %shl.i87.i
  %or34.i.i = or i32 %or.i90.i, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  tail call void @arm_heavy_mb() #9
  %val.i91.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %257 = ptrtoint ptr %val.i91.i to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %val.i91.i, align 8
  %conv39.i.i = trunc i64 %258 to i32
  %259 = tail call i32 @llvm.bswap.i32(i32 %conv39.i.i) #9
  %add.ptr40.i.i = getelementptr i8, ptr %232, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i.i, i32 %259) #9, !srcloc !267
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then29.i.i, %if.end12.i88.i.if.end41.i.i_crit_edge
  %reg.0.i.i = phi i32 [ %or34.i.i, %if.then29.i.i ], [ %shl.i87.i, %if.end12.i88.i.if.end41.i.i_crit_edge ]
  br i1 %tobool9.not.i.i, label %if.end41.i.i.if.end65.i.i_crit_edge, label %if.then43.i.i

if.end41.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i.i

if.then43.i.i:                                    ; preds = %if.end41.i.i
  %sub45.i.i = shl nuw nsw i32 %236, 12
  %and46.i.i = add nuw nsw i32 %sub45.i.i, 28672
  %shl47.i.i = and i32 %and46.i.i, 28672
  %or44.i.i = or i32 %shl47.i.i, %reg.0.i.i
  %or48.i.i = or i32 %or44.i.i, 32768
  %260 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 0, ptr %data3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %236)
  %cmp49.i92.i = icmp ugt i32 %236, 4
  %261 = tail call i32 @llvm.umin.i32(i32 %236, i32 4) #9
  %262 = call ptr @memcpy(ptr %data3.i.i, ptr %234, i32 %261)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !297
  tail call void @arm_heavy_mb() #9
  %263 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %data3.i.i.0.data3.i.i.0.data3.i.0.data3.i.0.data3.0.data3.0.data3.0..i.i = load i32, ptr %data3.i.i, align 4
  %264 = tail call i32 @llvm.bswap.i32(i32 %data3.i.i.0.data3.i.i.0.data3.i.0.data3.i.0.data3.0.data3.0.data3.0..i.i) #9
  %add.ptr55.i.i = getelementptr i8, ptr %232, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i.i, i32 %264) #9, !srcloc !267
  br i1 %cmp49.i92.i, label %if.then58.i.i, label %if.then43.i.i.if.end65.i.i_crit_edge

if.then43.i.i.if.end65.i.i_crit_edge:             ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i.i

if.then58.i.i:                                    ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr51.i93.i = getelementptr i8, ptr %234, i32 %261
  %265 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 0, ptr %data3.i.i, align 4
  %sub59.i.i = add nsw i32 %236, -4
  %266 = call ptr @memcpy(ptr %data3.i.i, ptr %add.ptr51.i93.i, i32 %sub59.i.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !298
  tail call void @arm_heavy_mb() #9
  %267 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %data3.i.i.0.data3.i.i.0.data3.i.0.data3.i.0.data3.0.data3.0.data3.0.80.i.i = load i32, ptr %data3.i.i, align 4
  %268 = tail call i32 @llvm.bswap.i32(i32 %data3.i.i.0.data3.i.i.0.data3.i.0.data3.i.0.data3.0.data3.0.data3.0.80.i.i) #9
  %add.ptr63.i.i = getelementptr i8, ptr %232, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63.i.i, i32 %268) #9, !srcloc !267
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.then58.i.i, %if.then43.i.i.if.end65.i.i_crit_edge, %if.end41.i.i.if.end65.i.i_crit_edge
  %reg.1.i.i = phi i32 [ %or48.i.i, %if.then58.i.i ], [ %or48.i.i, %if.then43.i.i.if.end65.i.i_crit_edge ], [ %reg.0.i.i, %if.end41.i.i.if.end65.i.i_crit_edge ]
  %call66.i.i = tail call fastcc i32 @cqspi_exec_flash_cmd(ptr noundef %230, i32 noundef %reg.1.i.i) #9
  br label %cqspi_command_write.exit.i

cqspi_command_write.exit.i:                       ; preds = %if.end65.i.i, %do.end.i71.i, %if.end.i67.i.cqspi_command_write.exit.i_crit_edge, %if.then16.i.cqspi_command_write.exit.i_crit_edge
  %retval.0.i94.i = phi i32 [ -22, %do.end.i71.i ], [ %call66.i.i, %if.end65.i.i ], [ %call.i63.i, %if.then16.i.cqspi_command_write.exit.i_crit_edge ], [ %call5.i66.i, %if.end.i67.i.cqspi_command_write.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data3.i.i)
  br label %cqspi_mem_process.exit

if.end18.i:                                       ; preds = %lor.lhs.false.i
  %269 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx.i, align 4
  %val.i95.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %271 = ptrtoint ptr %val.i95.i to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %val.i95.i, align 8
  %nbytes.i96.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %273 = ptrtoint ptr %nbytes.i96.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %nbytes.i96.i, align 4
  %call.i97.i = tail call fastcc i32 @cqspi_set_protocol(ptr noundef %arrayidx.i, ptr noundef %op) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool.not.i98.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool.not.i98.i, label %if.end.i104.i, label %if.end18.i.do.end_crit_edge

if.end18.i.do.end_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i104.i:                                    ; preds = %if.end18.i
  %275 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %arrayidx.i, align 4
  %iobase.i.i99.i = getelementptr inbounds %struct.cqspi_st, ptr %276, i32 0, i32 3
  %277 = ptrtoint ptr %iobase.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %iobase.i.i99.i, align 4
  %dtr.i.i100.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 10
  %279 = ptrtoint ptr %dtr.i.i100.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %dtr.i.i100.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool.i.i101.i = icmp ne i8 %280, 0
  %call.i.i102.i = tail call fastcc i32 @cqspi_enable_dtr(ptr noundef %arrayidx.i, ptr noundef %op, i32 noundef 16, i1 noundef zeroext %tobool.i.i101.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102.i)
  %tobool2.not.i.i103.i = icmp eq i32 %call.i.i102.i, 0
  br i1 %tobool2.not.i.i103.i, label %if.end.i.i122.i, label %if.end.i104.i.do.end_crit_edge

if.end.i104.i.do.end_crit_edge:                   ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i.i122.i:                                  ; preds = %if.end.i104.i
  %281 = ptrtoint ptr %dtr.i.i100.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %dtr.i.i100.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool4.not.i.i105.i = icmp eq i8 %282, 0
  %opcode9.i.i106.i = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 3
  %283 = ptrtoint ptr %opcode9.i.i106.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %opcode9.i.i106.i, align 4
  %285 = lshr i16 %284, 8
  %opcode.0.in.i.i107.i = select i1 %tobool4.not.i.i105.i, i16 %284, i16 %285
  %286 = and i16 %opcode.0.in.i.i107.i, 255
  %conv12.i.i108.i = zext i16 %286 to i32
  %data_width.i.i109.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 9
  %287 = ptrtoint ptr %data_width.i.i109.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %data_width.i.i109.i, align 2
  %conv13.i.i.i = zext i8 %288 to i32
  %shl14.i.i.i = shl nuw nsw i32 %conv13.i.i.i, 16
  %or.i.i110.i = or i32 %shl14.i.i.i, %conv12.i.i108.i
  %addr_width.i.i111.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 8
  %289 = ptrtoint ptr %addr_width.i.i111.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %addr_width.i.i111.i, align 1
  %conv15.i.i.i = zext i8 %290 to i32
  %shl16.i.i.i = shl nuw nsw i32 %conv15.i.i.i, 12
  %or17.i.i.i = or i32 %or.i.i110.i, %shl16.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !299
  tail call void @arm_heavy_mb() #9
  %291 = tail call i32 @llvm.bswap.i32(i32 %or17.i.i.i) #9
  %add.ptr.i.i112.i = getelementptr i8, ptr %278, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i112.i, i32 %291) #9, !srcloc !267
  %inst_width.i.i.i113.i = getelementptr %struct.cqspi_st, ptr %5, i32 0, i32 20, i32 %idxprom.i, i32 7
  %292 = ptrtoint ptr %inst_width.i.i.i113.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %inst_width.i.i.i113.i, align 4
  %conv.i.i.i114.i = zext i8 %293 to i32
  %shl.i.i.i115.i = shl nuw nsw i32 %conv.i.i.i114.i, 8
  %294 = ptrtoint ptr %addr_width.i.i111.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %addr_width.i.i111.i, align 1
  %conv1.i.i.i116.i = zext i8 %295 to i32
  %shl2.i.i.i117.i = shl nuw nsw i32 %conv1.i.i.i116.i, 12
  %or3.i.i.i118.i = or i32 %shl2.i.i.i117.i, %shl.i.i.i115.i
  %296 = ptrtoint ptr %data_width.i.i109.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %data_width.i.i109.i, align 2
  %conv4.i.i.i119.i = zext i8 %297 to i32
  %shl5.i.i.i120.i = shl nuw nsw i32 %conv4.i.i.i119.i, 16
  %or6.i.i.i121.i = or i32 %or3.i.i.i118.i, %shl5.i.i.i120.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !300
  tail call void @arm_heavy_mb() #9
  %298 = tail call i32 @llvm.bswap.i32(i32 %or6.i.i.i121.i) #9
  %add.ptr22.i.i.i = getelementptr i8, ptr %278, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i.i, i32 %298) #9, !srcloc !267
  %wr_completion.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %276, i32 0, i32 23
  %299 = ptrtoint ptr %wr_completion.i.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %wr_completion.i.i.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool23.not.i.i.i = icmp eq i8 %300, 0
  br i1 %tobool23.not.i.i.i, label %if.end.i.i122.i.if.end7.i126.i_crit_edge, label %if.then24.i.i.i

if.end.i.i122.i.if.end7.i126.i_crit_edge:         ; preds = %if.end.i.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i126.i

if.then24.i.i.i:                                  ; preds = %if.end.i.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr25.i.i123.i = getelementptr i8, ptr %278, i32 56
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i.i123.i) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !301
  %302 = or i32 %301, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !302
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i123.i, i32 %302) #9, !srcloc !267
  br label %if.end7.i126.i

if.end7.i126.i:                                   ; preds = %if.then24.i.i.i, %if.end.i.i122.i.if.end7.i126.i_crit_edge
  %add.ptr36.i.i.i = getelementptr i8, ptr %278, i32 20
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i.i.i) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !303
  %304 = and i32 %303, -251658241
  %305 = tail call i32 @llvm.bswap.i32(i32 %304) #9
  %306 = ptrtoint ptr %addr10.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %addr10.i, align 8
  %conv40.i.i.i = zext i8 %307 to i32
  %sub.i.i125.i = add nsw i32 %conv40.i.i.i, -1
  %or41.i.i.i = or i32 %sub.i.i125.i, %305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !304
  tail call void @arm_heavy_mb() #9
  %308 = tail call i32 @llvm.bswap.i32(i32 %or41.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i.i, i32 %308) #9, !srcloc !267
  %309 = ptrtoint ptr %dtr.i.i100.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %dtr.i.i100.i, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool8.not.i.i = icmp eq i8 %310, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i129.i, label %if.end7.i126.i.if.end15.i.i_crit_edge

if.end7.i126.i.if.end15.i.i_crit_edge:            ; preds = %if.end7.i126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true.i129.i:                             ; preds = %if.end7.i126.i
  %use_direct_mode.i127.i = getelementptr inbounds %struct.cqspi_st, ptr %270, i32 0, i32 19
  %311 = ptrtoint ptr %use_direct_mode.i127.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %use_direct_mode.i127.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool9.not.i128.i = icmp eq i8 %312, 0
  br i1 %tobool9.not.i128.i, label %land.lhs.true.i129.i.if.end15.i.i_crit_edge, label %land.lhs.true10.i.i

land.lhs.true.i129.i.if.end15.i.i_crit_edge:      ; preds = %land.lhs.true.i129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.lhs.true10.i.i:                              ; preds = %land.lhs.true.i129.i
  %conv.i130.i = zext i32 %274 to i64
  %add.i131.i = add i64 %272, %conv.i130.i
  %ahb_size.i132.i = getelementptr inbounds %struct.cqspi_st, ptr %270, i32 0, i32 5
  %313 = ptrtoint ptr %ahb_size.i132.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %ahb_size.i132.i, align 4
  %conv11.i.i = zext i32 %314 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i131.i, i64 %conv11.i.i)
  %cmp.not.i133.i = icmp sgt i64 %add.i131.i, %conv11.i.i
  br i1 %cmp.not.i133.i, label %land.lhs.true10.i.i.if.end15.i.i_crit_edge, label %if.then13.i.i

land.lhs.true10.i.i.if.end15.i.i_crit_edge:       ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.then13.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ahb_base.i.i = getelementptr inbounds %struct.cqspi_st, ptr %270, i32 0, i32 4
  %315 = ptrtoint ptr %ahb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %ahb_base.i.i, align 4
  %idx.ext.i.i = trunc i64 %272 to i32
  %add.ptr.i134.i = getelementptr i8, ptr %316, i32 %idx.ext.i.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i134.i, ptr noundef nonnull %228, i32 noundef %274) #9
  %call14.i.i = tail call fastcc i32 @cqspi_wait_idle(ptr noundef %270) #9
  br label %cqspi_mem_process.exit

if.end15.i.i:                                     ; preds = %land.lhs.true10.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i129.i.if.end15.i.i_crit_edge, %if.end7.i126.i.if.end15.i.i_crit_edge
  %317 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %arrayidx.i, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %318, align 4
  %dev2.i.i135.i = getelementptr inbounds %struct.platform_device, ptr %320, i32 0, i32 3
  %iobase.i40.i.i = getelementptr inbounds %struct.cqspi_st, ptr %318, i32 0, i32 3
  %321 = ptrtoint ptr %iobase.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %iobase.i40.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !305
  tail call void @arm_heavy_mb() #9
  %conv.i.i136.i = trunc i64 %272 to i32
  %323 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i136.i) #9
  %add.ptr.i41.i.i = getelementptr i8, ptr %322, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i.i, i32 %323) #9, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  tail call void @arm_heavy_mb() #9
  %324 = tail call i32 @llvm.bswap.i32(i32 %274) #9
  %add.ptr6.i.i.i = getelementptr i8, ptr %322, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i.i, i32 %324) #9, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  tail call void @arm_heavy_mb() #9
  %add.ptr10.i.i.i = getelementptr i8, ptr %322, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i, i32 -65280) #9, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !308
  tail call void @arm_heavy_mb() #9
  %add.ptr14.i.i.i = getelementptr i8, ptr %322, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i.i, i32 1174405120) #9, !srcloc !267
  %transfer_complete.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %318, i32 0, i32 6
  %325 = ptrtoint ptr %transfer_complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 0, ptr %transfer_complete.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !309
  tail call void @arm_heavy_mb() #9
  %add.ptr18.i.i.i = getelementptr i8, ptr %322, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i.i, i32 16777216) #9, !srcloc !267
  %wr_delay.i.i.i = getelementptr inbounds %struct.cqspi_st, ptr %318, i32 0, i32 18
  %326 = ptrtoint ptr %wr_delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %wr_delay.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool.not.i.i137.i = icmp eq i32 %327, 0
  br i1 %tobool.not.i.i137.i, label %if.end15.i.i.if.end.i42.i.i_crit_edge, label %cond.false8.i.i.i.i

if.end15.i.i.if.end.i42.i.i_crit_edge:            ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i42.i.i

cond.false8.i.i.i.i:                              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i138.i = add i32 %327, 999
  %div.i.i.i139.i = udiv i32 %sub.i.i.i138.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %328 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %328(i32 noundef %div.i.i.i139.i) #9
  br label %if.end.i42.i.i

if.end.i42.i.i:                                   ; preds = %cond.false8.i.i.i.i, %if.end15.i.i.if.end.i42.i.i_crit_edge
  %ahb_base.i.i143.i = getelementptr inbounds %struct.cqspi_st, ptr %318, i32 0, i32 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end29.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i42.i.i
  %txbuf.addr.0.i.i.i = phi ptr [ %228, %if.end.i42.i.i ], [ %txbuf.addr.2.i.i.i, %if.end29.i.i.i.while.cond.i.i.i_crit_edge ]
  %remaining.0.i.i.i = phi i32 [ %274, %if.end.i42.i.i ], [ 0, %if.end29.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %remaining.0.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %while.end.i.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %rem.i.i.i = and i32 %remaining.0.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %remaining.0.i.i.i)
  %tobool21.not.i.i.i = icmp ult i32 %remaining.0.i.i.i, 4
  br i1 %tobool21.not.i.i.i, label %while.body.i.i.i.if.end24.i.i145.i_crit_edge, label %if.then22.i.i.i

while.body.i.i.i.if.end24.i.i145.i_crit_edge:     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i145.i

if.then22.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div109.i.i.i = lshr i32 %remaining.0.i.i.i, 2
  %329 = ptrtoint ptr %ahb_base.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %ahb_base.i.i143.i, align 4
  tail call void @__raw_writesl(ptr noundef %330, ptr noundef %txbuf.addr.0.i.i.i, i32 noundef %div109.i.i.i) #9
  %mul.i.i144.i = and i32 %remaining.0.i.i.i, -4
  %add.ptr23.i.i.i = getelementptr i8, ptr %txbuf.addr.0.i.i.i, i32 %mul.i.i144.i
  br label %if.end24.i.i145.i

if.end24.i.i145.i:                                ; preds = %if.then22.i.i.i, %while.body.i.i.i.if.end24.i.i145.i_crit_edge
  %txbuf.addr.1.i.i.i = phi ptr [ %add.ptr23.i.i.i, %if.then22.i.i.i ], [ %txbuf.addr.0.i.i.i, %while.body.i.i.i.if.end24.i.i145.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %if.end24.i.i145.i.if.end29.i.i.i_crit_edge, label %if.then26.i.i.i

if.end24.i.i145.i.if.end29.i.i.i_crit_edge:       ; preds = %if.end24.i.i145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i.i

if.then26.i.i.i:                                  ; preds = %if.end24.i.i145.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i.i.i)
  %331 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 -1, ptr %temp.i.i.i, align 4
  %332 = call ptr @memcpy(ptr %temp.i.i.i, ptr %txbuf.addr.1.i.i.i, i32 %rem.i.i.i)
  %temp.i.i.i.0.temp.i.i.i.0.temp.i.i.0.temp.i.i.0.temp.i.0.temp.i.0.temp.0.temp.0.temp.0..i.i.i = load i32, ptr %temp.i.i.i, align 4
  %333 = ptrtoint ptr %ahb_base.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %ahb_base.i.i143.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !310
  tail call void @arm_heavy_mb() #9
  %335 = tail call i32 @llvm.bswap.i32(i32 %temp.i.i.i.0.temp.i.i.i.0.temp.i.i.0.temp.i.i.0.temp.i.0.temp.i.0.temp.0.temp.0.temp.0..i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %334, i32 %335) #9, !srcloc !267
  %add.ptr28.i.i.i = getelementptr i8, ptr %txbuf.addr.1.i.i.i, i32 %rem.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i.i)
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then26.i.i.i, %if.end24.i.i145.i.if.end29.i.i.i_crit_edge
  %txbuf.addr.2.i.i.i = phi ptr [ %add.ptr28.i.i.i, %if.then26.i.i.i ], [ %txbuf.addr.1.i.i.i, %if.end24.i.i145.i.if.end29.i.i.i_crit_edge ]
  %call31.i.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %transfer_complete.i.i.i, i32 noundef 50) #9
  %tobool32.not.i.i.i = icmp eq i32 %call31.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %cleanup.thread.i.i.i, label %if.end29.i.i.i.while.cond.i.i.i_crit_edge

if.end29.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i

cleanup.thread.i.i.i:                             ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i135.i, ptr noundef nonnull @.str.66) #12
  br label %do.body61.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %call.i.i.i146.i = tail call i64 @ktime_get() #9
  %add.i.i.i.i.i = add i64 %call.i.i.i146.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 291) #9
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i.i) #9, !srcloc !261
  %337 = and i32 %336, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %cmp949.i.not.i.i.i = icmp eq i32 %337, 0
  br i1 %cmp949.i.not.i.i.i, label %while.end.i.i.i.land.lhs.true.i.i.i.i_crit_edge, label %while.end.i.i.i.do.body52.i.i.i_crit_edge

while.end.i.i.i.do.body52.i.i.i_crit_edge:        ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52.i.i.i

while.end.i.i.i.land.lhs.true.i.i.i.i_crit_edge:  ; preds = %while.end.i.i.i
  br label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then22.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, %while.end.i.i.i.land.lhs.true.i.i.i.i_crit_edge
  %call13.i.i.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i.i.i, i64 %add.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp sgt i64 %call13.i.i.i.i, %add.i.i.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %cqspi_wait_for_bit.exit.i.i.i, label %if.then22.i.i.i.i

if.then22.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %338 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i.i) #9, !srcloc !261
  %339 = and i32 %338, 536870912
  %cmp9.i.not.i.i.i = icmp eq i32 %339, 0
  br i1 %cmp9.i.not.i.i.i, label %if.then22.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, label %if.then22.i.i.i.i.do.body52.i.i.i_crit_edge

if.then22.i.i.i.i.do.body52.i.i.i_crit_edge:      ; preds = %if.then22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52.i.i.i

if.then22.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge: ; preds = %if.then22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i.i

cqspi_wait_for_bit.exit.i.i.i:                    ; preds = %land.lhs.true.i.i.i.i
  %340 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i.i) #9, !srcloc !261
  %341 = and i32 %340, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %cmp32.i.not.i.i.i = icmp eq i32 %341, 0
  br i1 %cmp32.i.not.i.i.i, label %do.end50.i.i.i, label %cqspi_wait_for_bit.exit.i.i.i.do.body52.i.i.i_crit_edge

cqspi_wait_for_bit.exit.i.i.i.do.body52.i.i.i_crit_edge: ; preds = %cqspi_wait_for_bit.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52.i.i.i

do.end50.i.i.i:                                   ; preds = %cqspi_wait_for_bit.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i135.i, ptr noundef nonnull @.str.69, i32 noundef -110) #12
  br label %do.body61.i.i.i

do.body52.i.i.i:                                  ; preds = %cqspi_wait_for_bit.exit.i.i.i.do.body52.i.i.i_crit_edge, %if.then22.i.i.i.i.do.body52.i.i.i_crit_edge, %while.end.i.i.i.do.body52.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !311
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i.i, i32 0) #9, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i.i, i32 536870912) #9, !srcloc !267
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %342 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i.i = add i32 %342, 50
  %343 = ptrtoint ptr %iobase.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %iobase.i40.i.i, align 4
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %344) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %.mask.i20.i.i.i.i = lshr i32 %345, 7
  %.mask.i20.lobit.i.i.i.i = and i32 %.mask.i20.i.i.i.i, 1
  br label %if.end3.i.i.i.i

if.end3.i.i.i.i:                                  ; preds = %do.end11.i.i.i.i.if.end3.i.i.i.i_crit_edge, %do.body52.i.i.i
  %count.123.i.i.i.i = phi i32 [ %.mask.i20.lobit.i.i.i.i, %do.body52.i.i.i ], [ %count.1.i.i.i.i, %do.end11.i.i.i.i.if.end3.i.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %346 = load volatile i32, ptr @jiffies, align 128
  %sub.i111.i.i.i = sub i32 %add.i.i.i.i, %346
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i111.i.i.i)
  %cmp4.i.i.i.i = icmp slt i32 %sub.i111.i.i.i, 0
  br i1 %cmp4.i.i.i.i, label %do.end.i.i.i.i, label %do.end11.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %347 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %318, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %348, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.88, i32 noundef 500) #12
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %if.end3.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !264
  %349 = ptrtoint ptr %iobase.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %iobase.i40.i.i, align 4
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %350) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %.mask.i.i.i.i.i = and i32 %351, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %.mask.i.i.i.i.i, 0
  %inc.i.i.i.i = add nuw nsw i32 %count.123.i.i.i.i, 1
  %count.1.i.i.i.i = select i1 %tobool.i.not.i.i.i.i, i32 0, i32 %inc.i.i.i.i
  %cmp.i112.i.i.i = icmp ugt i32 %count.1.i.i.i.i, 2
  br i1 %cmp.i112.i.i.i, label %do.end11.i.i.i.i.if.end_crit_edge, label %do.end11.i.i.i.i.if.end3.i.i.i.i_crit_edge

do.end11.i.i.i.i.if.end3.i.i.i.i_crit_edge:       ; preds = %do.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i.i.i.i

do.end11.i.i.i.i.if.end_crit_edge:                ; preds = %do.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body61.i.i.i:                                  ; preds = %do.end50.i.i.i, %cleanup.thread.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !313
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i.i, i32 0) #9, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i.i, i32 33554432) #9, !srcloc !267
  br label %do.end

cqspi_mem_process.exit:                           ; preds = %if.then13.i.i, %cqspi_command_write.exit.i, %if.end40.i.i, %if.then37.i.i, %err_unmap.i.i.i, %cqspi_command_read.exit.i
  %retval.0.i = phi i32 [ %retval.0.i.i, %cqspi_command_read.exit.i ], [ %retval.0.i94.i, %cqspi_command_write.exit.i ], [ %call39.i.i, %if.then37.i.i ], [ %call41.i.i, %if.end40.i.i ], [ %ret.0.i.i.i, %err_unmap.i.i.i ], [ %call14.i.i, %if.then13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %cqspi_mem_process.exit.if.end_crit_edge, label %cqspi_mem_process.exit.do.end_crit_edge

cqspi_mem_process.exit.do.end_crit_edge:          ; preds = %cqspi_mem_process.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

cqspi_mem_process.exit.if.end_crit_edge:          ; preds = %cqspi_mem_process.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %cqspi_mem_process.exit.do.end_crit_edge, %do.body61.i.i.i, %if.end.i104.i.do.end_crit_edge, %if.end18.i.do.end_crit_edge, %do.end.i.i.i, %cqspi_calc_dummy.exit.i.i.i.do.end_crit_edge, %if.end.i46.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %retval.0.i6 = phi i32 [ %retval.0.i, %cqspi_mem_process.exit.do.end_crit_edge ], [ -110, %do.body61.i.i.i ], [ %call.i.i102.i, %if.end.i104.i.do.end_crit_edge ], [ %call.i97.i, %if.end18.i.do.end_crit_edge ], [ %call.i.i.i, %if.end.i46.i.do.end_crit_edge ], [ -95, %cqspi_calc_dummy.exit.i.i.i.do.end_crit_edge ], [ -12, %do.end.i.i.i ], [ %call5.i.i, %if.end.i.do.end_crit_edge ]
  %352 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %mem, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %353, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i6) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %cqspi_mem_process.exit.if.end_crit_edge, %do.end11.i.i.i.i.if.end_crit_edge, %do.end.i.i.i.i, %if.then.i.i56.i
  %retval.0.i7 = phi i32 [ %retval.0.i6, %do.end ], [ 0, %cqspi_mem_process.exit.if.end_crit_edge ], [ 0, %if.then.i.i56.i ], [ 0, %do.end.i.i.i.i ], [ 0, %do.end11.i.i.i.i.if.end_crit_edge ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @cqspi_get_name(ptr nocapture noundef readonly %mem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %entry.dev_name.exit_crit_edge ]
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %13 to i32
  %call4 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.71, ptr noundef %retval.0.i, i32 noundef %conv) #9
  ret ptr %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_dtr_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_default_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @cqspi_set_protocol(ptr nocapture noundef %f_pdata, ptr nocapture noundef readonly %op) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %inst_width = getelementptr inbounds %struct.cqspi_flash_pdata, ptr %f_pdata, i32 0, i32 7
  %0 = ptrtoint ptr %inst_width to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %inst_width, align 4
  %addr_width = getelementptr inbounds %struct.cqspi_flash_pdata, ptr %f_pdata, i32 0, i32 8
  %1 = ptrtoint ptr %addr_width to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %addr_width, align 1
  %data_width = getelementptr inbounds %struct.cqspi_flash_pdata, ptr %f_pdata, i32 0, i32 9
  %2 = ptrtoint ptr %data_width to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %data_width, align 2
  %dtr = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 2
  %3 = ptrtoint ptr %dtr to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %dtr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.land.rhs_crit_edge, label %lor.lhs.false

land.lhs.true.land.rhs_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

lor.lhs.false:                                    ; preds = %land.lhs.true
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %dtr3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load4 = load i8, ptr %dtr3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4)
  %tobool7.not = icmp sgt i8 %bf.load4, -1
  br i1 %tobool7.not, label %lor.lhs.false.land.end_crit_edge, label %lor.lhs.false.land.rhs_crit_edge

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %land.lhs.true.land.rhs_crit_edge
  %nbytes8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %nbytes8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbytes8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %land.rhs.land.end_crit_edge, label %lor.rhs

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %dtr11 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %dtr11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load12 = load i8, ptr %dtr11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load12)
  %tobool15 = icmp slt i8 %bf.load12, 0
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %land.rhs.land.end_crit_edge, %lor.lhs.false.land.end_crit_edge, %entry.land.end_crit_edge
  %10 = phi i1 [ false, %lor.lhs.false.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ true, %land.rhs.land.end_crit_edge ], [ %tobool15, %lor.rhs ]
  %dtr16 = getelementptr inbounds %struct.cqspi_flash_pdata, ptr %f_pdata, i32 0, i32 10
  %frombool = zext i1 %10 to i8
  %11 = ptrtoint ptr %dtr16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %dtr16, align 1
  %data17 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %12 = ptrtoint ptr %data17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data17, align 4
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %land.end.return_crit_edge [
    i8 0, label %land.end.sw.epilog_crit_edge
    i8 1, label %land.end.sw.epilog.sink.split_crit_edge
    i8 2, label %sw.bb20
    i8 4, label %sw.bb22
    i8 8, label %sw.bb24
  ]

land.end.sw.epilog.sink.split_crit_edge:          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb20:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb24:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb24, %sw.bb22, %sw.bb20, %land.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 3, %sw.bb24 ], [ 2, %sw.bb22 ], [ 1, %sw.bb20 ], [ 0, %land.end.sw.epilog.sink.split_crit_edge ]
  %15 = ptrtoint ptr %data_width to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %data_width, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.end.sw.epilog_crit_edge
  br i1 %10, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  %buswidth29 = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 1
  %16 = ptrtoint ptr %buswidth29 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buswidth29, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %17, label %if.then.return_crit_edge [
    i8 0, label %if.then.sw.epilog34_crit_edge
    i8 8, label %sw.bb31
  ]

if.then.sw.epilog34_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog34

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb31:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %inst_width to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %inst_width, align 4
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.bb31, %if.then.sw.epilog34_crit_edge
  %buswidth36 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %buswidth36 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buswidth36, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %21, label %sw.epilog34.return_crit_edge [
    i8 0, label %sw.epilog34.sw.epilog41_crit_edge
    i8 8, label %sw.bb38
  ]

sw.epilog34.sw.epilog41_crit_edge:                ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog41

sw.epilog34.return_crit_edge:                     ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb38:                                          ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %addr_width to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %addr_width, align 1
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %sw.bb38, %sw.epilog34.sw.epilog41_crit_edge
  %24 = ptrtoint ptr %data17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data17, align 4
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %25, label %sw.epilog41.return_crit_edge [
    i8 0, label %sw.epilog41.if.end_crit_edge
    i8 8, label %sw.bb45
  ]

sw.epilog41.if.end_crit_edge:                     ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.epilog41.return_crit_edge:                     ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb45:                                          ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %data_width to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %data_width, align 2
  br label %if.end

if.end:                                           ; preds = %sw.bb45, %sw.epilog41.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %sw.epilog41.return_crit_edge, %sw.epilog34.return_crit_edge, %if.then.return_crit_edge, %land.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.end.return_crit_edge ], [ -22, %if.then.return_crit_edge ], [ -22, %sw.epilog34.return_crit_edge ], [ -22, %sw.epilog41.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cqspi_enable_dtr(ptr nocapture noundef readonly %f_pdata, ptr nocapture noundef readonly %op, i32 noundef %shift, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f_pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_pdata, align 4
  %iobase = getelementptr inbounds %struct.cqspi_st, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !261
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !315
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 2
  br i1 %cmp.not.i, label %cqspi_setup_opcode_ext.exit.thread, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cqspi_setup_opcode_ext.exit.thread:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or3 = or i32 %5, 1090519040
  %8 = ptrtoint ptr %f_pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_pdata, align 4
  %iobase.i = getelementptr inbounds %struct.cqspi_st, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %opcode.i = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 3
  %12 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %opcode.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 224
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !261
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  %shl.i = shl i32 255, %shift
  %neg.i = xor i32 %shl.i, -1
  %and7.i = and i32 %15, %neg.i
  %16 = and i16 %13, 255
  %conv8.i = zext i16 %16 to i32
  %shl9.i = shl i32 %conv8.i, %shift
  %or.i = or i32 %and7.i, %shl9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !317
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #9, !srcloc !267
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and7 = and i32 %5, -1090519041
  br label %do.body

do.body:                                          ; preds = %if.else, %cqspi_setup_opcode_ext.exit.thread
  %reg.0 = phi i32 [ %and7, %if.else ], [ %or3, %cqspi_setup_opcode_ext.exit.thread ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !318
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %18) #9, !srcloc !267
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %19, 50
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %.mask.i20.i = lshr i32 %22, 7
  %.mask.i20.lobit.i = and i32 %.mask.i20.i, 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end11.i.if.end3.i_crit_edge, %do.body
  %count.123.i = phi i32 [ %.mask.i20.lobit.i, %do.body ], [ %count.1.i, %do.end11.i.if.end3.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %do.end.i, label %do.end11.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.88, i32 noundef 500) #12
  br label %cleanup

do.end11.i:                                       ; preds = %if.end3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !264
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %.mask.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.i.not.i = icmp eq i32 %.mask.i.i, 0
  %inc.i = add nuw nsw i32 %count.123.i, 1
  %count.1.i = select i1 %tobool.i.not.i, i32 0, i32 %inc.i
  %cmp.i = icmp ugt i32 %count.1.i, 2
  br i1 %cmp.i, label %do.end11.i.cleanup_crit_edge, label %do.end11.i.if.end3.i_crit_edge

do.end11.i.if.end3.i_crit_edge:                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.cleanup_crit_edge, %do.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -110, %do.end.i ], [ 0, %do.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cqspi_exec_flash_cmd(ptr nocapture noundef readonly %cqspi, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.cqspi_st, ptr %cqspi, i32 0, i32 3
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !319
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %reg)
  %add.ptr = getelementptr i8, ptr %1, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !267
  %or = or i32 %reg, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !320
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #9, !srcloc !267
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 291) #9
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !261
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp949.i = icmp eq i32 %5, 0
  br i1 %cmp949.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then22.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %cqspi_wait_for_bit.exit, label %if.then22.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !261
  %7 = and i32 %6, 33554432
  %cmp9.i = icmp eq i32 %7, 0
  br i1 %cmp9.i, label %if.then22.i.if.end_crit_edge, label %if.then22.i.land.lhs.true.i_crit_edge

if.then22.i.land.lhs.true.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.then22.i.if.end_crit_edge:                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cqspi_wait_for_bit.exit:                          ; preds = %land.lhs.true.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !261
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp32.i = icmp eq i32 %9, 0
  br i1 %cmp32.i, label %cqspi_wait_for_bit.exit.if.end_crit_edge, label %do.end8

cqspi_wait_for_bit.exit.if.end_crit_edge:         ; preds = %cqspi_wait_for_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end8:                                          ; preds = %cqspi_wait_for_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %cqspi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cqspi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end:                                           ; preds = %cqspi_wait_for_bit.exit.if.end_crit_edge, %if.then22.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %12, 50
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %.mask.i20.i = lshr i32 %15, 7
  %.mask.i20.lobit.i = and i32 %.mask.i20.i, 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end11.i.if.end3.i_crit_edge, %if.end
  %count.123.i = phi i32 [ %.mask.i20.lobit.i, %if.end ], [ %count.1.i, %do.end11.i.if.end3.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %do.end.i, label %do.end11.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %cqspi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cqspi, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.88, i32 noundef 500) #12
  br label %cleanup

do.end11.i:                                       ; preds = %if.end3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !264
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %.mask.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.i.not.i = icmp eq i32 %.mask.i.i, 0
  %inc.i = add nuw nsw i32 %count.123.i, 1
  %count.1.i = select i1 %tobool.i.not.i, i32 0, i32 %inc.i
  %cmp.i = icmp ugt i32 %count.1.i, 2
  br i1 %cmp.i, label %do.end11.i.cleanup_crit_edge, label %do.end11.i.if.end3.i_crit_edge

do.end11.i.if.end3.i_crit_edge:                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.cleanup_crit_edge, %do.end.i, %do.end8
  %retval.0 = phi i32 [ -110, %do.end8 ], [ -110, %do.end.i ], [ 0, %do.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cqspi_indirect_read_execute(ptr nocapture noundef readonly %f_pdata, ptr noundef %rxbuf, i64 noundef %from_addr, i32 noundef %n_rx) unnamed_addr #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f_pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_pdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %iobase = getelementptr inbounds %struct.cqspi_st, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %ahb_base3 = getelementptr inbounds %struct.cqspi_st, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ahb_base3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ahb_base3, align 4
  %rem = and i32 %n_rx, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !321
  tail call void @arm_heavy_mb() #9
  %conv = trunc i64 %from_addr to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add.ptr4 = getelementptr i8, ptr %5, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #9, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !322
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %n_rx)
  %add.ptr8 = getelementptr i8, ptr %5, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #9, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !323
  tail call void @arm_heavy_mb() #9
  %add.ptr12 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -65280) #9, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  tail call void @arm_heavy_mb() #9
  %add.ptr16 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 1141899264) #9, !srcloc !267
  %transfer_complete = getelementptr inbounds %struct.cqspi_st, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %transfer_complete, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !325
  tail call void @arm_heavy_mb() #9
  %add.ptr20 = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #9, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_rx)
  %cmp.not156 = icmp eq i32 %n_rx, 0
  br i1 %cmp.not156, label %entry.while.end62_crit_edge, label %while.body.lr.ph

entry.while.end62_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end62

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr = getelementptr i8, ptr %rxbuf, i32 %n_rx
  %fifo_width = getelementptr inbounds %struct.cqspi_st, ptr %1, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool44.not = icmp eq i32 %rem, 0
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %call23168 = tail call i32 @wait_for_completion_timeout(ptr noundef %transfer_complete, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23168)
  %tobool.not169 = icmp eq i32 %call23168, 0
  %spec.select170 = select i1 %tobool.not169, i32 -110, i32 0
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase, align 4
  %add.ptr.i171 = getelementptr i8, ptr %12, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  %14 = and i32 %13, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp26172 = icmp eq i32 %14, 0
  %or.cond173 = select i1 %tobool.not169, i1 %cmp26172, i1 false
  br i1 %or.cond173, label %while.body.lr.ph.do.end31_crit_edge, label %while.body.lr.ph.while.cond33.preheader_crit_edge

while.body.lr.ph.while.cond33.preheader_crit_edge: ; preds = %while.body.lr.ph
  br label %while.cond33.preheader

while.body.lr.ph.do.end31_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

while.cond33.preheader:                           ; preds = %if.then59.while.cond33.preheader_crit_edge, %while.body.lr.ph.while.cond33.preheader_crit_edge
  %cmp26177 = phi i1 [ %cmp26, %if.then59.while.cond33.preheader_crit_edge ], [ %cmp26172, %while.body.lr.ph.while.cond33.preheader_crit_edge ]
  %15 = phi i32 [ %34, %if.then59.while.cond33.preheader_crit_edge ], [ %14, %while.body.lr.ph.while.cond33.preheader_crit_edge ]
  %spec.select176 = phi i32 [ %spec.select, %if.then59.while.cond33.preheader_crit_edge ], [ %spec.select170, %while.body.lr.ph.while.cond33.preheader_crit_edge ]
  %rxbuf.addr.0157175 = phi ptr [ %rxbuf.addr.1.lcssa164, %if.then59.while.cond33.preheader_crit_edge ], [ %rxbuf, %while.body.lr.ph.while.cond33.preheader_crit_edge ]
  %remaining.0158174 = phi i32 [ %remaining.1.lcssa165, %if.then59.while.cond33.preheader_crit_edge ], [ %n_rx, %while.body.lr.ph.while.cond33.preheader_crit_edge ]
  br i1 %cmp26177, label %while.cond33.preheader.if.then59_crit_edge, label %while.body36.preheader

while.cond33.preheader.if.then59_crit_edge:       ; preds = %while.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

while.body36.preheader:                           ; preds = %while.cond33.preheader
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  br label %while.body36

do.end31:                                         ; preds = %if.then59.do.end31_crit_edge, %while.body.lr.ph.do.end31_crit_edge
  %spec.select.lcssa = phi i32 [ %spec.select170, %while.body.lr.ph.do.end31_crit_edge ], [ %spec.select, %if.then59.do.end31_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.59) #12
  br label %do.body79

while.body36:                                     ; preds = %if.end54.while.body36_crit_edge, %while.body36.preheader
  %bytes_to_read.0154 = phi i32 [ %29, %if.end54.while.body36_crit_edge ], [ %16, %while.body36.preheader ]
  %remaining.1152 = phi i32 [ %sub, %if.end54.while.body36_crit_edge ], [ %remaining.0158174, %while.body36.preheader ]
  %rxbuf.addr.1150 = phi ptr [ %add.ptr55, %if.end54.while.body36_crit_edge ], [ %rxbuf.addr.0157175, %while.body36.preheader ]
  %17 = ptrtoint ptr %fifo_width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fifo_width, align 4
  %mul = mul i32 %18, %bytes_to_read.0154
  %19 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %remaining.1152)
  %and39 = and i32 %19, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #11
  %div142 = lshr i32 %19, 2
  tail call void @__raw_readsl(ptr noundef %7, ptr noundef %rxbuf.addr.1150, i32 noundef %div142) #9
  br label %if.end54

if.else:                                          ; preds = %while.body36
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %remaining.1152)
  %tobool42.not = icmp ugt i32 %remaining.1152, 3
  %or.cond143 = or i1 %tobool44.not, %tobool42.not
  br i1 %or.cond143, label %if.else.if.end54_crit_edge, label %if.then45

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp)
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !261
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %temp, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %rxbuf.addr.1150 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %23 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub, i32 %rem)
  %24 = call ptr @memcpy(ptr %rxbuf.addr.1150, ptr %temp, i32 %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp)
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %if.else.if.end54_crit_edge, %if.then41
  %bytes_to_read.1 = phi i32 [ %and39, %if.then41 ], [ 0, %if.else.if.end54_crit_edge ], [ %rem, %if.then45 ]
  %add.ptr55 = getelementptr i8, ptr %rxbuf.addr.1150, i32 %bytes_to_read.1
  %sub = sub i32 %remaining.1152, %bytes_to_read.1
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase, align 4
  %add.ptr.i145 = getelementptr i8, ptr %26, i32 44
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  %28 = and i32 %27, -65536
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %cmp34.not = icmp eq i32 %28, 0
  br i1 %cmp34.not, label %while.end, label %if.end54.while.body36_crit_edge

if.end54.while.body36_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body36

while.end:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cond = icmp eq i32 %sub, 0
  br i1 %cond, label %while.end.while.end62_crit_edge, label %while.end.if.then59_crit_edge

while.end.if.then59_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

while.end.while.end62_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end62

if.then59:                                        ; preds = %while.end.if.then59_crit_edge, %while.cond33.preheader.if.then59_crit_edge
  %remaining.1.lcssa165 = phi i32 [ %sub, %while.end.if.then59_crit_edge ], [ %remaining.0158174, %while.cond33.preheader.if.then59_crit_edge ]
  %rxbuf.addr.1.lcssa164 = phi ptr [ %add.ptr55, %while.end.if.then59_crit_edge ], [ %rxbuf.addr.0157175, %while.cond33.preheader.if.then59_crit_edge ]
  %30 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %transfer_complete, align 4
  %call23 = tail call i32 @wait_for_completion_timeout(ptr noundef %transfer_complete, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  %spec.select = select i1 %tobool.not, i32 -110, i32 %spec.select176
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 44
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  %34 = and i32 %33, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool25.not = icmp ne i32 %spec.select, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp26 = icmp eq i32 %34, 0
  %or.cond = select i1 %tobool25.not, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then59.do.end31_crit_edge, label %if.then59.while.cond33.preheader_crit_edge

if.then59.while.cond33.preheader_crit_edge:       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond33.preheader

if.then59.do.end31_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

while.end62:                                      ; preds = %while.end.while.end62_crit_edge, %entry.while.end62_crit_edge
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 291) #9
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !261
  %36 = and i32 %35, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp949.i.not = icmp eq i32 %36, 0
  br i1 %cmp949.i.not, label %while.end62.land.lhs.true.i_crit_edge, label %while.end62.do.body71_crit_edge

while.end62.do.body71_crit_edge:                  ; preds = %while.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

while.end62.land.lhs.true.i_crit_edge:            ; preds = %while.end62
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then22.i.land.lhs.true.i_crit_edge, %while.end62.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %cqspi_wait_for_bit.exit, label %if.then22.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !261
  %38 = and i32 %37, 536870912
  %cmp9.i.not = icmp eq i32 %38, 0
  br i1 %cmp9.i.not, label %if.then22.i.land.lhs.true.i_crit_edge, label %if.then22.i.do.body71_crit_edge

if.then22.i.do.body71_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

if.then22.i.land.lhs.true.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cqspi_wait_for_bit.exit:                          ; preds = %land.lhs.true.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !261
  %40 = and i32 %39, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp32.i.not = icmp eq i32 %40, 0
  br i1 %cmp32.i.not, label %do.end69, label %cqspi_wait_for_bit.exit.do.body71_crit_edge

cqspi_wait_for_bit.exit.do.body71_crit_edge:      ; preds = %cqspi_wait_for_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

do.end69:                                         ; preds = %cqspi_wait_for_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.62, i32 noundef -110) #12
  br label %do.body79

do.body71:                                        ; preds = %cqspi_wait_for_bit.exit.do.body71_crit_edge, %if.then22.i.do.body71_crit_edge, %while.end62.do.body71_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #9, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !329
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 536870912) #9, !srcloc !267
  br label %cleanup

do.body79:                                        ; preds = %do.end69, %do.end31
  %ret.2 = phi i32 [ %spec.select.lcssa, %do.end31 ], [ -110, %do.end69 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #9, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 33554432) #9, !srcloc !267
  br label %cleanup

cleanup:                                          ; preds = %do.body79, %do.body71
  %retval.0 = phi i32 [ %ret.2, %do.body79 ], [ 0, %do.body71 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cqspi_rx_dma_callback(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma_complete = getelementptr inbounds %struct.cqspi_st, ptr %param, i32 0, i32 8
  tail call void @complete(ptr noundef %rx_dma_complete) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmaengine_terminate_sync(ptr noundef %chan) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dmaengine_terminate_async.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dmaengine_terminate_async.exit:                   ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %chan) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %dmaengine_terminate_async.exit.cleanup_crit_edge

dmaengine_terminate_async.exit.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dmaengine_terminate_async.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.58, i32 noundef 1169) #9
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %device_synchronize.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %device_synchronize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_synchronize.i, align 4
  %tobool.not.i1 = icmp eq ptr %7, null
  br i1 %tobool.not.i1, label %if.end.cleanup_crit_edge, label %if.then.i2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i2:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %chan) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i2, %if.end.cleanup_crit_edge, %dmaengine_terminate_async.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan_by_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqspi_versal_indirect_read_dma(ptr nocapture noundef readonly %f_pdata, ptr noundef %rxbuf, i64 noundef %from_addr, i32 noundef %n_rx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %n_rx to i8
  %conv = and i8 %0, 3
  %conv3 = zext i8 %conv to i32
  %sub = sub i32 %n_rx, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %n_rx)
  %tobool.not = icmp eq i32 %conv3, %n_rx
  br i1 %tobool.not, label %nondmard, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nondmard:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool104.not = icmp eq i8 %conv, 0
  br i1 %tobool104.not, label %nondmard.if.end113_crit_edge, label %if.then105

nondmard.if.end113_crit_edge:                     ; preds = %nondmard
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then105:                                       ; preds = %nondmard
  %conv106 = zext i32 %sub to i64
  %add = add i64 %conv106, %from_addr
  %add.ptr107 = getelementptr i8, ptr %rxbuf, i32 %sub
  %call109 = tail call fastcc i32 @cqspi_indirect_read_execute(ptr noundef %f_pdata, ptr noundef %add.ptr107, i64 noundef %add, i32 noundef %n_rx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then105.if.end113_crit_edge, label %if.then105.cleanup_crit_edge

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then105.if.end113_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.end113:                                        ; preds = %if.then105.if.end113_crit_edge, %nondmard.if.end113_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.then105.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end113 ], [ %call109, %if.then105.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqspi_get_versal_dma_status(ptr nocapture noundef readonly %cqspi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.cqspi_st, ptr %cqspi, i32 0, i32 3
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 6164
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !261
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !333
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 6164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #9, !srcloc !267
  %and = and i32 %3, 2
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqspi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iobase.i = getelementptr inbounds %struct.cqspi_st, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #9, !srcloc !267
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqspi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iobase.i = getelementptr inbounds %struct.cqspi_st, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #9, !srcloc !267
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !145, !147, !149, !150, !151, !152, !154, !156, !157, !158, !160, !162, !163, !164, !166, !168, !170, !172, !173, !175, !176, !177, !178, !180, !182, !183, !184, !185, !187, !188, !189, !191, !193, !194, !195, !196, !198, !200, !201, !202, !204, !206, !207, !208, !210, !212, !213, !214, !216, !218, !219, !220, !222, !224, !225, !226, !228, !230, !232, !234, !236, !238, !240, !242, !243, !244, !246}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !{ptr @__initcall__kmod_spi_cadence_quadspi__243_1923_cqspi_platform_driver_init6, !1, !"__initcall__kmod_spi_cadence_quadspi__243_1923_cqspi_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1923, i32 1}
!2 = !{ptr @__exitcall_cqspi_platform_driver_exit, !1, !"__exitcall_cqspi_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description244, !4, !"__UNIQUE_ID_description244", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1925, i32 1}
!5 = !{ptr @__UNIQUE_ID_file245, !6, !"__UNIQUE_ID_file245", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1926, i32 1}
!7 = !{ptr @__UNIQUE_ID_license246, !6, !"__UNIQUE_ID_license246", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias247, !9, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1927, i32 1}
!10 = !{ptr @__UNIQUE_ID_author248, !11, !"__UNIQUE_ID_author248", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1928, i32 1}
!12 = !{ptr @__UNIQUE_ID_author249, !13, !"__UNIQUE_ID_author249", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1929, i32 1}
!14 = !{ptr @__UNIQUE_ID_author250, !15, !"__UNIQUE_ID_author250", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1930, i32 1}
!16 = !{ptr @__UNIQUE_ID_author251, !17, !"__UNIQUE_ID_author251", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1931, i32 1}
!18 = !{ptr @__UNIQUE_ID_author252, !19, !"__UNIQUE_ID_author252", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1932, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1917, i32 11}
!22 = !{ptr @cqspi_platform_driver, !23, !"cqspi_platform_driver", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1913, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1650, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cqspi_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @cqspi_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1665, i32 3}
!34 = !{ptr @cqspi_probe._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cqspi_probe._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1673, i32 3}
!38 = !{ptr @cqspi_probe._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cqspi_probe._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1682, i32 3}
!42 = !{ptr @cqspi_probe._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cqspi_probe._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1691, i32 3}
!46 = !{ptr @cqspi_probe._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cqspi_probe._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1716, i32 3}
!50 = !{ptr @cqspi_probe._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cqspi_probe._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1721, i32 56}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1724, i32 3}
!56 = !{ptr @cqspi_probe._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cqspi_probe._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1728, i32 60}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1731, i32 3}
!62 = !{ptr @cqspi_probe._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cqspi_probe._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1762, i32 10}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1769, i32 3}
!68 = !{ptr @cqspi_probe._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cqspi_probe._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1782, i32 3}
!72 = !{ptr @cqspi_probe._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cqspi_probe._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1794, i32 3}
!76 = !{ptr @cqspi_probe._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cqspi_probe._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @cqspi_mem_ops, !79, !"cqspi_mem_ops", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1592, i32 44}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1418, i32 3}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @cqspi_exec_mem_op._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @cqspi_exec_mem_op._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 584, i32 3}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cqspi_command_read._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @cqspi_command_read._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 495, i32 3}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cqspi_exec_flash_cmd._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @cqspi_exec_flash_cmd._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1322, i32 3}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cqspi_direct_read_execute._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @cqspi_direct_read_execute._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1328, i32 3}
!102 = !{ptr @cqspi_direct_read_execute._entry.47, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cqspi_direct_read_execute._entry_ptr.49, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1340, i32 3}
!106 = !{ptr @cqspi_direct_read_execute._entry.50, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cqspi_direct_read_execute._entry_ptr.52, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1349, i32 3}
!110 = !{ptr @cqspi_direct_read_execute._entry.53, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @cqspi_direct_read_execute._entry_ptr.55, !109, !"_entry_ptr", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 780, i32 4}
!120 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cqspi_indirect_read_execute._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @cqspi_indirect_read_execute._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 816, i32 3}
!125 = !{ptr @cqspi_indirect_read_execute._entry.61, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @cqspi_indirect_read_execute._entry_ptr.63, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 657, i32 3}
!129 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @cqspi_command_write._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @cqspi_command_write._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1067, i32 4}
!134 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @cqspi_indirect_write_execute._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @cqspi_indirect_write_execute._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1082, i32 3}
!139 = !{ptr @cqspi_indirect_write_execute._entry.68, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @cqspi_indirect_write_execute._entry_ptr.70, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1589, i32 41}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1493, i32 51}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1495, i32 31}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1496, i32 3}
!149 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @cqspi_of_get_pdata._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @cqspi_of_get_pdata._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1500, i32 31}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1501, i32 3}
!156 = !{ptr @cqspi_of_get_pdata._entry.77, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @cqspi_of_get_pdata._entry_ptr.79, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1505, i32 31}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1507, i32 3}
!162 = !{ptr @cqspi_of_get_pdata._entry.81, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @cqspi_of_get_pdata._entry_ptr.83, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1511, i32 31}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1514, i32 45}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1516, i32 38}
!170 = !{ptr @init_completion.__key, !171, !"__key", i1 false, i1 false}
!171 = !{!"../include/linux/completion.h", i32 87, i32 2}
!172 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.88, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 470, i32 4}
!175 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @cqspi_wait_idle._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @cqspi_wait_idle._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1609, i32 34}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1611, i32 4}
!182 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @cqspi_setup_flash._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @cqspi_setup_flash._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.94, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1617, i32 4}
!187 = !{ptr @cqspi_setup_flash._entry.93, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @cqspi_setup_flash._entry_ptr.95, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.96, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1454, i32 31}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1455, i32 3}
!193 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @cqspi_of_get_flash_pdata._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @cqspi_of_get_flash_pdata._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1459, i32 31}
!198 = !{ptr @.str.101, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1460, i32 3}
!200 = !{ptr @cqspi_of_get_flash_pdata._entry.100, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @cqspi_of_get_flash_pdata._entry_ptr.102, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.103, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1464, i32 31}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1465, i32 3}
!206 = !{ptr @cqspi_of_get_flash_pdata._entry.104, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @cqspi_of_get_flash_pdata._entry_ptr.106, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1469, i32 31}
!210 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1470, i32 3}
!212 = !{ptr @cqspi_of_get_flash_pdata._entry.108, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @cqspi_of_get_flash_pdata._entry_ptr.110, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.111, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1474, i32 31}
!216 = !{ptr @.str.113, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1475, i32 3}
!218 = !{ptr @cqspi_of_get_flash_pdata._entry.112, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @cqspi_of_get_flash_pdata._entry_ptr.114, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.115, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1479, i32 31}
!222 = !{ptr @.str.117, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1480, i32 3}
!224 = !{ptr @cqspi_of_get_flash_pdata._entry.116, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @cqspi_of_get_flash_pdata._entry_ptr.118, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.119, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1577, i32 48}
!228 = !{ptr @cqspi_dt_ids, !229, !"cqspi_dt_ids", i1 false, i1 false}
!229 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1883, i32 34}
!230 = !{ptr @cdns_qspi, !231, !"cdns_qspi", i1 false, i1 false}
!231 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1855, i32 43}
!232 = !{ptr @k2g_qspi, !233, !"k2g_qspi", i1 false, i1 false}
!233 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1859, i32 43}
!234 = !{ptr @am654_ospi, !235, !"am654_ospi", i1 false, i1 false}
!235 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1863, i32 43}
!236 = !{ptr @intel_lgm_qspi, !237, !"intel_lgm_qspi", i1 false, i1 false}
!237 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1868, i32 43}
!238 = !{ptr @versal_ospi, !239, !"versal_ospi", i1 false, i1 false}
!239 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1876, i32 43}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 868, i32 3}
!242 = !{ptr @cqspi_versal_indirect_read_dma._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @cqspi_versal_indirect_read_dma._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @socfpga_qspi, !245, !"socfpga_qspi", i1 false, i1 false}
!245 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1872, i32 43}
!246 = !{ptr @cqspi__dev_pm_ops, !247, !"cqspi__dev_pm_ops", i1 false, i1 false}
!247 = !{!"../drivers/spi/spi-cadence-quadspi.c", i32 1845, i32 32}
!248 = !{i32 1, !"wchar_size", i32 2}
!249 = !{i32 1, !"min_enum_size", i32 4}
!250 = !{i32 8, !"branch-target-enforcement", i32 0}
!251 = !{i32 8, !"sign-return-address", i32 0}
!252 = !{i32 8, !"sign-return-address-all", i32 0}
!253 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!254 = !{i32 7, !"uwtable", i32 1}
!255 = !{i32 7, !"frame-pointer", i32 2}
!256 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!257 = !{!"auto-init"}
!258 = !{i64 2148288591}
!259 = !{i64 773414, i64 773439, i64 773461, i64 773477, i64 773489, i64 773509, i64 773533, i64 773549, i64 773561}
!260 = !{i64 2148288779}
!261 = !{i64 6305553}
!262 = !{i64 2154637737}
!263 = !{i64 2154643363}
!264 = !{i64 2154643205}
!265 = !{i64 2154693666}
!266 = !{i64 2154694047}
!267 = !{i64 6305135}
!268 = !{i64 2154724869}
!269 = !{i64 2154725261}
!270 = !{i64 2154725673}
!271 = !{i64 2154726146}
!272 = !{i64 2154726641}
!273 = !{i64 2154727193}
!274 = !{i8 0, i8 2}
!275 = !{i64 2154727988}
!276 = !{i64 2154728292}
!277 = !{i64 2154728973}
!278 = !{i64 2154729279}
!279 = !{i64 2154639784}
!280 = !{i64 2154640013}
!281 = !{i64 2154690176}
!282 = !{i64 2154690571}
!283 = !{i64 2154691890}
!284 = !{i64 2154692121}
!285 = !{i64 2154691147}
!286 = !{i64 2154692777}
!287 = !{i64 2154693010}
!288 = !{i64 2154650168}
!289 = !{i64 2154650853}
!290 = !{i64 2154651336}
!291 = !{i64 2154655052}
!292 = !{i64 2154655708}
!293 = !{i64 2154655929}
!294 = !{!"branch_weights", i32 2000, i32 1}
!295 = !{i64 2154653406}
!296 = !{i64 2154653818}
!297 = !{i64 2154654246}
!298 = !{i64 2154654640}
!299 = !{i64 2154679057}
!300 = !{i64 2154679447}
!301 = !{i64 2154680103}
!302 = !{i64 2154680404}
!303 = !{i64 2154681060}
!304 = !{i64 2154681281}
!305 = !{i64 2154681675}
!306 = !{i64 2154682083}
!307 = !{i64 2154682503}
!308 = !{i64 2154683333}
!309 = !{i64 2154684093}
!310 = !{i64 2153847257}
!311 = !{i64 2154688008}
!312 = !{i64 2154688498}
!313 = !{i64 2154688958}
!314 = !{i64 2154689448}
!315 = !{i64 2154647394}
!316 = !{i64 2154646521}
!317 = !{i64 2154646738}
!318 = !{i64 2154647947}
!319 = !{i64 2154643580}
!320 = !{i64 2154644052}
!321 = !{i64 2154656325}
!322 = !{i64 2154656739}
!323 = !{i64 2154657159}
!324 = !{i64 2154657995}
!325 = !{i64 2154658758}
!326 = !{i64 2154638243}
!327 = !{i64 2153845902}
!328 = !{i64 2154664791}
!329 = !{i64 2154665281}
!330 = !{i64 2154665741}
!331 = !{i64 2154666231}
!332 = !{i64 2154638765}
!333 = !{i64 2154638998}
