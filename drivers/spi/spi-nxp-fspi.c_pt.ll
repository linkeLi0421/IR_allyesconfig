; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-nxp-fspi.c_pt.bc'
source_filename = "../drivers/spi/spi-nxp-fspi.c"
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
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nxp_fspi_devtype_data = type { i32, i32, i32, i32, i8 }
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
%struct.nxp_fspi = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.completion, ptr, %struct.mutex, %struct.pm_qos_request, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_op = type { %struct.anon.72, %struct.anon.73, %struct.anon.74, %struct.anon.75 }
%struct.anon.72 = type { i8, i8, i8, i16 }
%struct.anon.73 = type { i8, i8, i8, i64 }
%struct.anon.74 = type { i8, i8, i8 }
%struct.anon.75 = type { i8, i8, i32, i32, %union.anon.76 }
%union.anon.76 = type { ptr }

@__initcall__kmod_spi_nxp_fspi__245_1262_nxp_fspi_driver_init6 = internal global ptr @nxp_fspi_driver_init, section ".initcall6.init", align 4
@nxp_fspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nxp_fspi_probe, ptr @nxp_fspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nxp_fspi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nxp_fspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nxp_fspi_driver_exit = internal global ptr @nxp_fspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description246 = internal constant [52 x i8] c"spi_nxp_fspi.description=NXP FSPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [38 x i8] c"spi_nxp_fspi.author=NXP Semiconductor\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [69 x i8] c"spi_nxp_fspi.author=Yogesh Narayan Gaur <yogeshnarayan.gaur@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [60 x i8] c"spi_nxp_fspi.author=Boris Brezillon <bbrezillon@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [67 x i8] c"spi_nxp_fspi.author=Frieder Schrempf <frieder.schrempf@kontron.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [43 x i8] c"spi_nxp_fspi.file=drivers/spi/spi-nxp-fspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [28 x i8] c"spi_nxp_fspi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nxp-fspi\00", [23 x i8] zeroinitializer }, align 32
@nxp_fspi_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lx2160a-fspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lx2160a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8mm-fspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8mp-fspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8qxp-fspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8qxp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8dxl-fspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8dxl_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@nxp_fspi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @nxp_fspi_suspend, ptr @nxp_fspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fspi_base\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fspi_mmap\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fspi_en\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fspi\00", [27 x i8] zeroinitializer }, align 32
@nxp_fspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1147, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can not enable the clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nxp_fspi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-nxp-fspi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nxp_fspi_probe._entry_ptr = internal global ptr @nxp_fspi_probe._entry, section ".printk_index", align 4
@nxp_fspi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1165, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nxp_fspi_probe._entry_ptr.12 = internal global ptr @nxp_fspi_probe._entry.10, section ".printk_index", align 4
@nxp_fspi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&f->lock\00", [23 x i8] zeroinitializer }, align 32
@nxp_fspi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr @nxp_fspi_adjust_op_size, ptr @nxp_fspi_supports_op, ptr @nxp_fspi_exec_op, ptr @nxp_fspi_get_name, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@nxp_fspi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 1194, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NXP FSPI probe failed\0A\00", [41 x i8] zeroinitializer }, align 32
@nxp_fspi_probe._entry_ptr.16 = internal global ptr @nxp_fspi_probe._entry.14, section ".printk_index", align 4
@nxp_fspi_select_mem.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.7, ptr @.str.19, i8 0, i8 -86, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_nxp_fspi\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nxp_fspi_select_mem\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Slave device [CS:%x] selected\0A\00", [33 x i8] zeroinitializer }, align 32
@nxp_fspi_prepare_lut.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str.7, ptr @.str.21, i8 0, i8 -111, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nxp_fspi_prepare_lut\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CMD[%x] lutval[0:%x \09 1:%x \09 2:%x \09 3:%x], size: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@nxp_fspi_read_ahb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.7, i32 715, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to alloc memory\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nxp_fspi_read_ahb\00", [46 x i8] zeroinitializer }, align 32
@nxp_fspi_read_ahb._entry_ptr = internal global ptr @nxp_fspi_read_ahb._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@nxp_fspi_get_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 1061, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get memory for custom flash name\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nxp_fspi_get_name\00", [46 x i8] zeroinitializer }, align 32
@nxp_fspi_get_name._entry_ptr = internal global ptr @nxp_fspi_get_name._entry, section ".printk_index", align 4
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nxp,lx2160a-fspi\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS1028A\00", [18 x i8] zeroinitializer }, align 32
@__const.erratum_err050568.ls1028a_soc_attr = private unnamed_addr constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.29, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@erratum_err050568.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.30, ptr @.str.7, ptr @.str.31, i8 0, i8 -22, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"erratum_err050568\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Errata applicable only for LS1028A\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,ls1028a-dcfg\00", [47 x i8] zeroinitializer }, align 32
@erratum_err050568._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.7, i32 943, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No syscon regmap\0A\00", [46 x i8] zeroinitializer }, align 32
@erratum_err050568._entry_ptr = internal global ptr @erratum_err050568._entry, section ".printk_index", align 4
@erratum_err050568.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.30, ptr @.str.7, ptr @.str.34, i8 0, i8 -18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"val: 0x%08x, sys_pll_ratio: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@erratum_err050568._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.7, i32 961, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Errata cannot be executed. Read via IP bus may not work\0A\00", [39 x i8] zeroinitializer }, align 32
@erratum_err050568._entry_ptr.37 = internal global ptr @erratum_err050568._entry.35, section ".printk_index", align 4
@lx2160a_data = internal global { %struct.nxp_fspi_devtype_data, [44 x i8] } { %struct.nxp_fspi_devtype_data { i32 512, i32 1024, i32 2048, i32 0, i8 1 }, [44 x i8] zeroinitializer }, align 32
@imx8mm_data = internal global { %struct.nxp_fspi_devtype_data, [44 x i8] } { %struct.nxp_fspi_devtype_data { i32 512, i32 1024, i32 2048, i32 0, i8 1 }, [44 x i8] zeroinitializer }, align 32
@imx8qxp_data = internal global { %struct.nxp_fspi_devtype_data, [44 x i8] } { %struct.nxp_fspi_devtype_data { i32 512, i32 1024, i32 2048, i32 0, i8 1 }, [44 x i8] zeroinitializer }, align 32
@imx8dxl_data = internal global { %struct.nxp_fspi_devtype_data, [44 x i8] } { %struct.nxp_fspi_devtype_data { i32 512, i32 1024, i32 2048, i32 1, i8 1 }, [44 x i8] zeroinitializer }, align 32
@switch.table.nxp_fspi_supports_op = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 -524, i32 0, i32 -524, i32 -524, i32 -524, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.nxp_fspi_supports_op.38 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 -524, i32 0, i32 -524, i32 -524, i32 -524, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.nxp_fspi_supports_op.39 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 -524, i32 0, i32 -524, i32 -524, i32 -524, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.nxp_fspi_supports_op.40 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 -524, i32 0, i32 -524, i32 -524, i32 -524, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"nxp_fspi_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1252, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1254, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"nxp_fspi_dt_ids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1229, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"nxp_fspi_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1247, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1107, i32 21 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1120, i32 21 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1133, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1139, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1147, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1165, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1169, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"nxp_fspi_mem_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1068, i32 44 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1194, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 681, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 579, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 715, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 87, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1057, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1061, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 988, i32 47 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 928, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 937, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 941, i32 43 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 943, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 952, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 961, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [13 x i8] c"lx2160a_data\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 332, i32 37 }
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"imx8mm_data\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 340, i32 37 }
@___asan_gen_.182 = private unnamed_addr constant [13 x i8] c"imx8qxp_data\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 348, i32 37 }
@___asan_gen_.185 = private unnamed_addr constant [13 x i8] c"imx8dxl_data\00", align 1
@___asan_gen_.186 = private constant [30 x i8] c"../drivers/spi/spi-nxp-fspi.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 356, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant [34 x i8] c"switch.table.nxp_fspi_supports_op\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [37 x i8] c"switch.table.nxp_fspi_supports_op.38\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [37 x i8] c"switch.table.nxp_fspi_supports_op.39\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [37 x i8] c"switch.table.nxp_fspi_supports_op.40\00", align 1
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_nxp_fspi_driver_exit, ptr @__initcall__kmod_spi_nxp_fspi__245_1262_nxp_fspi_driver_init6, ptr @erratum_err050568._entry, ptr @erratum_err050568._entry.35, ptr @erratum_err050568._entry_ptr, ptr @erratum_err050568._entry_ptr.37, ptr @nxp_fspi_driver_exit, ptr @nxp_fspi_get_name._entry, ptr @nxp_fspi_get_name._entry_ptr, ptr @nxp_fspi_probe._entry, ptr @nxp_fspi_probe._entry.10, ptr @nxp_fspi_probe._entry.14, ptr @nxp_fspi_probe._entry_ptr, ptr @nxp_fspi_probe._entry_ptr.12, ptr @nxp_fspi_probe._entry_ptr.16, ptr @nxp_fspi_read_ahb._entry, ptr @nxp_fspi_read_ahb._entry_ptr, ptr @nxp_fspi_driver, ptr @.str, ptr @nxp_fspi_dt_ids, ptr @nxp_fspi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @nxp_fspi_probe.__key, ptr @.str.13, ptr @nxp_fspi_mem_ops, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @lx2160a_data, ptr @imx8mm_data, ptr @imx8qxp_data, ptr @imx8dxl_data, ptr @switch.table.nxp_fspi_supports_op, ptr @switch.table.nxp_fspi_supports_op.38, ptr @switch.table.nxp_fspi_supports_op.39, ptr @switch.table.nxp_fspi_supports_op.40], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_fspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_fspi_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_fspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_fspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_fspi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_fspi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_fspi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_fspi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_fspi_read_ahb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_fspi_get_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erratum_err050568._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erratum_err050568._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lx2160a_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8dxl_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nxp_fspi_supports_op to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nxp_fspi_supports_op.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nxp_fspi_supports_op.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nxp_fspi_supports_op.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_fspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nxp_fspi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nxp_fspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @nxp_fspi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_fspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 216, i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 28416, ptr %mode_bits, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %dev4 = getelementptr inbounds %struct.nxp_fspi, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %dev4, align 4
  %call5 = tail call ptr @device_get_match_data(ptr noundef %dev1) #8
  %devtype_data = getelementptr inbounds %struct.nxp_fspi, ptr %4, i32 0, i32 10
  %6 = ptrtoint ptr %devtype_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %devtype_data, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.spi_controller_put.exit_crit_edge, label %if.end9

if.end.spi_controller_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end9:                                          ; preds = %if.end
  %driver_data.i.i160 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i160 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %driver_data.i.i160, align 4
  %call14 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #8
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call14) #8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %4, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call16 to i32
  br label %spi_controller_put.exit

if.end22:                                         ; preds = %if.end9
  %call29 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #8
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.end22.spi_controller_put.exit_crit_edge, label %if.end33

if.end22.spi_controller_put.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end33:                                         ; preds = %if.end22
  %10 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call29, align 4
  %memmap_phy = getelementptr inbounds %struct.nxp_fspi, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %memmap_phy to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %memmap_phy, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call29, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %15 = load i32, ptr %call29, align 4
  %sub.i = add i32 %14, 1
  %add.i = sub i32 %sub.i, %15
  %memmap_phy_size = getelementptr inbounds %struct.nxp_fspi, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %memmap_phy_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %memmap_phy_size, align 4
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %if.end33.if.end57_crit_edge, label %dev_of_node.exit

if.end33.if.end57_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

dev_of_node.exit:                                 ; preds = %if.end33
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %tobool37.not = icmp eq ptr %18, null
  br i1 %tobool37.not, label %dev_of_node.exit.if.end57_crit_edge, label %if.then38

dev_of_node.exit.if.end57_crit_edge:              ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then38:                                        ; preds = %dev_of_node.exit
  %call39 = tail call ptr @devm_clk_get(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.3) #8
  %clk_en = getelementptr inbounds %struct.nxp_fspi, ptr %4, i32 0, i32 7
  %19 = ptrtoint ptr %clk_en to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call39, ptr %clk_en, align 4
  %cmp.i161 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call39 to i32
  br label %spi_controller_put.exit

if.end45:                                         ; preds = %if.then38
  %call46 = tail call ptr @devm_clk_get(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.4) #8
  %clk = getelementptr inbounds %struct.nxp_fspi, ptr %4, i32 0, i32 6
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call46, ptr %clk, align 4
  %cmp.i162 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call46 to i32
  br label %spi_controller_put.exit

if.end52:                                         ; preds = %if.end45
  %call53 = tail call fastcc i32 @nxp_fspi_clk_prep_enable(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end52.if.end57_crit_edge, label %do.end

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

do.end:                                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.5) #11
  br label %spi_controller_put.exit

if.end57:                                         ; preds = %if.end52.if.end57_crit_edge, %dev_of_node.exit.if.end57_crit_edge, %if.end33.if.end57_crit_edge
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 20
  %25 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devtype_data, align 4
  %little_endian.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %little_endian.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i163 = icmp eq i8 %28, 0
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8
  br i1 %tobool.not.i163, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  br label %fspi_readl.exit

if.else.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  br label %fspi_readl.exit

fspi_readl.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i164 = phi i32 [ %30, %if.then.i ], [ %29, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i164)
  %tobool60.not = icmp eq i32 %retval.0.i164, 0
  br i1 %tobool60.not, label %fspi_readl.exit.if.end64_crit_edge, label %if.then61

fspi_readl.exit.if.end64_crit_edge:               ; preds = %fspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then61:                                        ; preds = %fspi_readl.exit
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %4, align 4
  %add.ptr63 = getelementptr i8, ptr %32, i32 20
  %33 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %devtype_data, align 4
  %little_endian.i166 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %little_endian.i166 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %little_endian.i166, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i167 = icmp eq i8 %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i167, label %do.body.i, label %if.then.i168

if.then.i168:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %37 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i164) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %37) #8, !srcloc !118
  br label %if.end64

do.body.i:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %retval.0.i164) #8, !srcloc !118
  br label %if.end64

if.end64:                                         ; preds = %do.body.i, %if.then.i168, %fspi_readl.exit.if.end64_crit_edge
  %call65 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp = icmp slt i32 %call65, 0
  br i1 %cmp, label %if.end64.err_disable_clk_crit_edge, label %if.end67

if.end64.err_disable_clk_crit_edge:               ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clk

if.end67:                                         ; preds = %if.end64
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %call.i170 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call65, ptr noundef nonnull @nxp_fspi_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %39, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool69.not = icmp eq i32 %call.i170, 0
  br i1 %tobool69.not, label %do.body75, label %do.end73

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call.i170) #11
  br label %err_disable_clk

do.body75:                                        ; preds = %if.end67
  %lock = getelementptr inbounds %struct.nxp_fspi, ptr %4, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @nxp_fspi_probe.__key) #8
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %bus_num, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 4, ptr %num_chipselect, align 2
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %42 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @nxp_fspi_mem_ops, ptr %mem_ops, align 4
  tail call fastcc void @nxp_fspi_default_setup(ptr noundef %4)
  %of_node80 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %43 = ptrtoint ptr %of_node80 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %1, ptr %of_node80, align 8
  %call82 = tail call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %do.body75.cleanup_crit_edge, label %err_destroy_mutex

do.body75.cleanup_crit_edge:                      ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_destroy_mutex:                                ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_destroy(ptr noundef %lock) #8
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_destroy_mutex, %do.end73, %if.end64.err_disable_clk_crit_edge
  %ret.0 = phi i32 [ %call65, %if.end64.err_disable_clk_crit_edge ], [ %call.i170, %do.end73 ], [ %call82, %err_destroy_mutex ]
  %clk.i = getelementptr inbounds %struct.nxp_fspi, ptr %4, i32 0, i32 6
  %44 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %45) #8
  tail call void @clk_unprepare(ptr noundef %45) #8
  %clk_en.i = getelementptr inbounds %struct.nxp_fspi, ptr %4, i32 0, i32 7
  %46 = ptrtoint ptr %clk_en.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk_en.i, align 4
  tail call void @clk_disable(ptr noundef %47) #8
  tail call void @clk_unprepare(ptr noundef %47) #8
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %err_disable_clk, %do.end, %if.then49, %if.then42, %if.end22.spi_controller_put.exit_crit_edge, %if.then19, %if.end.spi_controller_put.exit_crit_edge
  %ret.1 = phi i32 [ %9, %if.then19 ], [ %20, %if.then42 ], [ %22, %if.then49 ], [ %call53, %do.end ], [ %ret.0, %err_disable_clk ], [ -19, %if.end.spi_controller_put.exit_crit_edge ], [ -19, %if.end22.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %do.body75.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_fspi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %devtype_data.i = getelementptr inbounds %struct.nxp_fspi, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %little_endian.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 33554432) #8, !srcloc !118
  br label %fspi_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 2) #8, !srcloc !118
  br label %fspi_writel.exit

fspi_writel.exit:                                 ; preds = %do.body.i, %if.then.i
  %clk.i = getelementptr inbounds %struct.nxp_fspi, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %clk_en.i = getelementptr inbounds %struct.nxp_fspi, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %clk_en.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_en.i, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  %lock = getelementptr inbounds %struct.nxp_fspi, ptr %1, i32 0, i32 11
  tail call void @mutex_destroy(ptr noundef %lock) #8
  %ahb_addr = getelementptr inbounds %struct.nxp_fspi, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %ahb_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ahb_addr, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %fspi_writel.exit.if.end_crit_edge, label %if.then

fspi_writel.exit.if.end_crit_edge:                ; preds = %fspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %fspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %13) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %fspi_writel.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nxp_fspi_clk_prep_enable(ptr nocapture noundef readonly %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_en = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 7
  %0 = ptrtoint ptr %clk_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_en, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end3, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end.i
  %clk = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i15 = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %if.end3.if.then6_crit_edge

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end.i19:                                       ; preds = %if.end3
  %call1.i17 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end.i19.cleanup_crit_edge, label %if.then3.i20

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %if.then6

if.then6:                                         ; preds = %if.then3.i20, %if.end3.if.then6_crit_edge
  %retval.0.i21.ph = phi i32 [ %call1.i17, %if.then3.i20 ], [ %call.i15, %if.end3.if.then6_crit_edge ]
  %4 = ptrtoint ptr %clk_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_en, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then6, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %5, %if.then6 ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i21.ph, %if.then6 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i19.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_fspi_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %devtype_data.i = getelementptr inbounds %struct.nxp_fspi, ptr %dev_id, i32 0, i32 10
  %2 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %little_endian.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  br label %fspi_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  br label %fspi_readl.exit

fspi_readl.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %6, %if.else.i ]
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 20
  %10 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i8 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %little_endian.i8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %little_endian.i8, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i9 = icmp eq i8 %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i9, label %do.body.i, label %if.then.i10

if.then.i10:                                      ; preds = %fspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #8, !srcloc !118
  br label %fspi_writel.exit

do.body.i:                                        ; preds = %fspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 1) #8, !srcloc !118
  br label %fspi_writel.exit

fspi_writel.exit:                                 ; preds = %do.body.i, %if.then.i10
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %fspi_writel.exit.if.end_crit_edge, label %if.then

fspi_writel.exit.if.end_crit_edge:                ; preds = %fspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %fspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %c = getelementptr inbounds %struct.nxp_fspi, ptr %dev_id, i32 0, i32 9
  tail call void @complete(ptr noundef %c) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %fspi_writel.exit.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxp_fspi_default_setup(ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  %clk.i = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 6
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %clk_en.i = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 7
  %4 = ptrtoint ptr %clk_en.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_en.i, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  %call1 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef 20000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @nxp_fspi_clk_prep_enable(ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef %11, ptr noundef nonnull @.str.28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @erratum_err050568(ptr noundef %f)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f, align 4
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 5000000
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool62.not10.i = icmp eq i32 %15, 0
  br i1 %tobool62.not10.i, label %if.end9.if.end27_crit_edge, label %if.end9.land.lhs.true66.i_crit_edge

if.end9.land.lhs.true66.i_crit_edge:              ; preds = %if.end9
  br label %land.lhs.true66.i

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true66.i:                                ; preds = %if.end77.i.land.lhs.true66.i_crit_edge, %if.end9.land.lhs.true66.i_crit_edge
  %call67.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call67.i, i64 %add.i.i)
  %cmp3.i3.i = icmp sgt i64 %call67.i, %add.i.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool86.not.i = icmp eq i32 %17, 0
  br i1 %cmp3.i3.i, label %for.end83.i, label %if.end77.i

if.end77.i:                                       ; preds = %land.lhs.true66.i
  br i1 %tobool86.not.i, label %if.end77.i.if.end27_crit_edge, label %if.end77.i.land.lhs.true66.i_crit_edge

if.end77.i.land.lhs.true66.i_crit_edge:           ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true66.i

if.end77.i.if.end27_crit_edge:                    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

for.end83.i:                                      ; preds = %land.lhs.true66.i
  br i1 %tobool86.not.i, label %for.end83.i.if.end27_crit_edge, label %do.end

for.end83.i.if.end27_crit_edge:                   ; preds = %for.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end:                                           ; preds = %for.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 995, i32 noundef 9, ptr noundef null) #8
  br label %if.end27

if.end27:                                         ; preds = %do.end, %for.end83.i.if.end27_crit_edge, %if.end77.i.if.end27_crit_edge, %if.end9.if.end27_crit_edge
  %devtype_data.i = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 10
  %18 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %little_endian.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 33554432) #8, !srcloc !118
  br label %fspi_writel.exit

do.body.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 2) #8, !srcloc !118
  br label %fspi_writel.exit

fspi_writel.exit:                                 ; preds = %do.body.i, %if.then.i
  %add.ptr35 = getelementptr i8, ptr %1, i32 192
  %22 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i3 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %little_endian.i3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %little_endian.i3, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i4 = icmp eq i8 %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i4, label %do.body.i6, label %if.then.i5

if.then.i5:                                       ; preds = %fspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 65536) #8, !srcloc !118
  br label %fspi_writel.exit7

do.body.i6:                                       ; preds = %fspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 256) #8, !srcloc !118
  br label %fspi_writel.exit7

fspi_writel.exit7:                                ; preds = %do.body.i6, %if.then.i5
  %add.ptr36 = getelementptr i8, ptr %1, i32 196
  %26 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i9 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %little_endian.i9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %little_endian.i9, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i10 = icmp eq i8 %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i10, label %do.body.i12, label %if.then.i11

if.then.i11:                                      ; preds = %fspi_writel.exit7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 65536) #8, !srcloc !118
  br label %fspi_writel.exit13

do.body.i12:                                      ; preds = %fspi_writel.exit7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 256) #8, !srcloc !118
  br label %fspi_writel.exit13

fspi_writel.exit13:                               ; preds = %do.body.i12, %if.then.i11
  %30 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i15 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %little_endian.i15 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %little_endian.i15, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i16 = icmp eq i8 %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i16, label %do.body.i18, label %if.then.i17

if.then.i17:                                      ; preds = %fspi_writel.exit13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 2162687) #8, !srcloc !118
  br label %fspi_writel.exit19

do.body.i18:                                      ; preds = %fspi_writel.exit13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -57344) #8, !srcloc !118
  br label %fspi_writel.exit19

fspi_writel.exit19:                               ; preds = %do.body.i18, %if.then.i17
  %34 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f, align 4
  %add.ptr39 = getelementptr i8, ptr %35, i32 8
  %36 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i21 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %little_endian.i21 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %little_endian.i21, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i22 = icmp eq i8 %39, 0
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #8
  br i1 %tobool.not.i22, label %if.else.i, label %if.then.i23

if.then.i23:                                      ; preds = %fspi_writel.exit19
  call void @__sanitizer_cov_trace_pc() #10
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  br label %fspi_readl.exit

if.else.i:                                        ; preds = %fspi_writel.exit19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  br label %fspi_readl.exit

fspi_readl.exit:                                  ; preds = %if.else.i, %if.then.i23
  %retval.0.i24 = phi i32 [ %41, %if.then.i23 ], [ %40, %if.else.i ]
  %and = and i32 %retval.0.i24, -32769
  %add.ptr41 = getelementptr i8, ptr %1, i32 8
  %42 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i26 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %little_endian.i26 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %little_endian.i26, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i27 = icmp eq i8 %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i27, label %do.body.i29, label %if.then.i28

if.then.i28:                                      ; preds = %fspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %46) #8, !srcloc !118
  br label %fspi_writel.exit30

do.body.i29:                                      ; preds = %fspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %and) #8, !srcloc !118
  br label %fspi_writel.exit30

fspi_writel.exit30:                               ; preds = %do.body.i29, %if.then.i28
  %add.ptr42 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 0) #8
  %add.ptr43.1 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.1, i32 0) #8
  %add.ptr43.2 = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.2, i32 0) #8
  %add.ptr43.3 = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.3, i32 0) #8
  %add.ptr43.4 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.4, i32 0) #8
  %add.ptr43.5 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.5, i32 0) #8
  %add.ptr43.6 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.6, i32 0) #8
  %47 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %devtype_data.i, align 4
  %ahb_buf_size = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %ahb_buf_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ahb_buf_size, align 4
  %div1 = lshr i32 %50, 3
  %or = or i32 %div1, -2147483648
  %add.ptr44 = getelementptr i8, ptr %1, i32 60
  %little_endian.i38 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %48, i32 0, i32 4
  %51 = ptrtoint ptr %little_endian.i38 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %little_endian.i38, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i39 = icmp eq i8 %52, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i39, label %do.body.i41, label %if.then.i40

if.then.i40:                                      ; preds = %fspi_writel.exit30
  call void @__sanitizer_cov_trace_pc() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %53) #8, !srcloc !118
  br label %fspi_writel.exit42

do.body.i41:                                      ; preds = %fspi_writel.exit30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %or) #8, !srcloc !118
  br label %fspi_writel.exit42

fspi_writel.exit42:                               ; preds = %do.body.i41, %if.then.i40
  %add.ptr45 = getelementptr i8, ptr %1, i32 12
  %54 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i44 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %little_endian.i44 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %little_endian.i44, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i45 = icmp eq i8 %57, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i45, label %do.body.i47, label %if.then.i46

if.then.i46:                                      ; preds = %fspi_writel.exit42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 1610612736) #8, !srcloc !118
  br label %fspi_writel.exit48

do.body.i47:                                      ; preds = %fspi_writel.exit42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 96) #8, !srcloc !118
  br label %fspi_writel.exit48

fspi_writel.exit48:                               ; preds = %do.body.i47, %if.then.i46
  %add.ptr46 = getelementptr i8, ptr %1, i32 128
  %58 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i50 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %little_endian.i50 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %little_endian.i50, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i51 = icmp eq i8 %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i51, label %do.body.i53, label %if.then.i52

if.then.i52:                                      ; preds = %fspi_writel.exit48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 520093696) #8, !srcloc !118
  br label %fspi_writel.exit54

do.body.i53:                                      ; preds = %fspi_writel.exit48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 31) #8, !srcloc !118
  br label %fspi_writel.exit54

fspi_writel.exit54:                               ; preds = %do.body.i53, %if.then.i52
  %add.ptr47 = getelementptr i8, ptr %1, i32 132
  %62 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i56 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %little_endian.i56 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %little_endian.i56, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i57 = icmp eq i8 %65, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i57, label %do.body.i59, label %if.then.i58

if.then.i58:                                      ; preds = %fspi_writel.exit54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 520093696) #8, !srcloc !118
  br label %fspi_writel.exit60

do.body.i59:                                      ; preds = %fspi_writel.exit54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 31) #8, !srcloc !118
  br label %fspi_writel.exit60

fspi_writel.exit60:                               ; preds = %do.body.i59, %if.then.i58
  %add.ptr48 = getelementptr i8, ptr %1, i32 136
  %66 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i62 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %little_endian.i62 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %little_endian.i62, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i63 = icmp eq i8 %69, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i63, label %do.body.i65, label %if.then.i64

if.then.i64:                                      ; preds = %fspi_writel.exit60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 520093696) #8, !srcloc !118
  br label %fspi_writel.exit66

do.body.i65:                                      ; preds = %fspi_writel.exit60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 31) #8, !srcloc !118
  br label %fspi_writel.exit66

fspi_writel.exit66:                               ; preds = %do.body.i65, %if.then.i64
  %add.ptr49 = getelementptr i8, ptr %1, i32 140
  %70 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i68 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %little_endian.i68 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %little_endian.i68, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i69 = icmp eq i8 %73, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i69, label %do.body.i71, label %if.then.i70

if.then.i70:                                      ; preds = %fspi_writel.exit66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 520093696) #8, !srcloc !118
  br label %fspi_writel.exit72

do.body.i71:                                      ; preds = %fspi_writel.exit66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 31) #8, !srcloc !118
  br label %fspi_writel.exit72

fspi_writel.exit72:                               ; preds = %do.body.i71, %if.then.i70
  %selected = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 13
  %74 = ptrtoint ptr %selected to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %selected, align 4
  %add.ptr50 = getelementptr i8, ptr %1, i32 16
  %75 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i74 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %little_endian.i74 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %little_endian.i74, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i75 = icmp eq i8 %78, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i75, label %do.body.i77, label %if.then.i76

if.then.i76:                                      ; preds = %fspi_writel.exit72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 16777216) #8, !srcloc !118
  br label %cleanup

do.body.i77:                                      ; preds = %fspi_writel.exit72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 1) #8, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %do.body.i77, %if.then.i76, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nxp_fspi_adjust_op_size(ptr nocapture noundef readonly %mem, ptr nocapture noundef %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 4
  %devtype_data = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devtype_data, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %txfifo = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txfifo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp2 = icmp ugt i32 %9, %13
  br i1 %cmp2, label %if.then.if.end46.sink.split_crit_edge, label %if.then.if.end46_crit_edge

if.then.if.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then.if.end46.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.sink.split

if.else:                                          ; preds = %entry
  %ahb_buf_size = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %ahb_buf_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ahb_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp11 = icmp ugt i32 %9, %15
  br i1 %cmp11, label %if.else.if.end30.sink.split_crit_edge, label %if.else17

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split

if.else17:                                        ; preds = %if.else
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  %sub = add i32 %17, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub)
  %cmp21 = icmp ugt i32 %9, %sub
  br i1 %cmp21, label %if.then22, label %if.else17.if.end30_crit_edge

if.else17.if.end30_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then22:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %9, -8
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.then22, %if.else.if.end30.sink.split_crit_edge
  %.sink = phi i32 [ %and, %if.then22 ], [ %15, %if.else.if.end30.sink.split_crit_edge ]
  %18 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %nbytes, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else17.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp33 = icmp eq i32 %7, 1
  br i1 %cmp33, label %land.lhs.true, label %if.end30.if.end46_crit_edge

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end30
  %19 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devtype_data, align 4
  %quirks.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true35

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true35:                                  ; preds = %land.lhs.true
  %23 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbytes, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp40 = icmp ugt i32 %24, %26
  br i1 %cmp40, label %land.lhs.true35.if.end46.sink.split_crit_edge, label %land.lhs.true35.if.end46_crit_edge

land.lhs.true35.if.end46_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true35.if.end46.sink.split_crit_edge:    ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.sink.split

if.end46.sink.split:                              ; preds = %land.lhs.true35.if.end46.sink.split_crit_edge, %if.then.if.end46.sink.split_crit_edge
  %.sink68 = phi i32 [ %13, %if.then.if.end46.sink.split_crit_edge ], [ %26, %land.lhs.true35.if.end46.sink.split_crit_edge ]
  %27 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink68, ptr %nbytes, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %land.lhs.true35.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end30.if.end46_crit_edge, %if.then.if.end46_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nxp_fspi_supports_op(ptr noundef %mem, ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %buswidth = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buswidth, align 1
  %switch.tableidx = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 8
  br i1 %8, label %switch.lookup, label %entry.nxp_fspi_check_buswidth.exit_crit_edge

entry.nxp_fspi_check_buswidth.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxp_fspi_check_buswidth.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.nxp_fspi_supports_op, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %nxp_fspi_check_buswidth.exit

nxp_fspi_check_buswidth.exit:                     ; preds = %switch.lookup, %entry.nxp_fspi_check_buswidth.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -524, %entry.nxp_fspi_check_buswidth.exit_crit_edge ]
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %nxp_fspi_check_buswidth.exit.if.end_crit_edge, label %if.then

nxp_fspi_check_buswidth.exit.if.end_crit_edge:    ; preds = %nxp_fspi_check_buswidth.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %nxp_fspi_check_buswidth.exit
  %buswidth3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %buswidth3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buswidth3, align 1
  %switch.tableidx125 = add i8 %14, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx125)
  %15 = icmp ult i8 %switch.tableidx125, 8
  br i1 %15, label %switch.lookup124, label %if.then.nxp_fspi_check_buswidth.exit114_crit_edge

if.then.nxp_fspi_check_buswidth.exit114_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxp_fspi_check_buswidth.exit114

switch.lookup124:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = sext i8 %switch.tableidx125 to i32
  %switch.gep126 = getelementptr inbounds [8 x i32], ptr @switch.table.nxp_fspi_supports_op.38, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep126 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load127 = load i32, ptr %switch.gep126, align 4
  br label %nxp_fspi_check_buswidth.exit114

nxp_fspi_check_buswidth.exit114:                  ; preds = %switch.lookup124, %if.then.nxp_fspi_check_buswidth.exit114_crit_edge
  %retval.0.i113 = phi i32 [ %switch.load127, %switch.lookup124 ], [ -524, %if.then.nxp_fspi_check_buswidth.exit114_crit_edge ]
  %or = or i32 %retval.0.i113, %retval.0.i
  br label %if.end

if.end:                                           ; preds = %nxp_fspi_check_buswidth.exit114, %nxp_fspi_check_buswidth.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %or, %nxp_fspi_check_buswidth.exit114 ], [ %retval.0.i, %nxp_fspi_check_buswidth.exit.if.end_crit_edge ]
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %18 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not = icmp eq i8 %19, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %if.end
  %buswidth9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %buswidth9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buswidth9, align 1
  %switch.tableidx129 = add i8 %21, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx129)
  %22 = icmp ult i8 %switch.tableidx129, 8
  br i1 %22, label %switch.lookup128, label %if.then7.nxp_fspi_check_buswidth.exit117_crit_edge

if.then7.nxp_fspi_check_buswidth.exit117_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxp_fspi_check_buswidth.exit117

switch.lookup128:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %23 = sext i8 %switch.tableidx129 to i32
  %switch.gep130 = getelementptr inbounds [8 x i32], ptr @switch.table.nxp_fspi_supports_op.39, i32 0, i32 %23
  %24 = ptrtoint ptr %switch.gep130 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load131 = load i32, ptr %switch.gep130, align 4
  br label %nxp_fspi_check_buswidth.exit117

nxp_fspi_check_buswidth.exit117:                  ; preds = %switch.lookup128, %if.then7.nxp_fspi_check_buswidth.exit117_crit_edge
  %retval.0.i116 = phi i32 [ %switch.load131, %switch.lookup128 ], [ -524, %if.then7.nxp_fspi_check_buswidth.exit117_crit_edge ]
  %or11 = or i32 %retval.0.i116, %ret.0
  br label %if.end12

if.end12:                                         ; preds = %nxp_fspi_check_buswidth.exit117, %if.end.if.end12_crit_edge
  %ret.1 = phi i32 [ %or11, %nxp_fspi_check_buswidth.exit117 ], [ %ret.0, %if.end.if.end12_crit_edge ]
  %nbytes13 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %nbytes13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbytes13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool14.not = icmp eq i32 %26, 0
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data, align 4
  %switch.tableidx133 = add i8 %28, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx133)
  %29 = icmp ult i8 %switch.tableidx133, 8
  br i1 %29, label %switch.lookup132, label %if.then15.nxp_fspi_check_buswidth.exit120_crit_edge

if.then15.nxp_fspi_check_buswidth.exit120_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxp_fspi_check_buswidth.exit120

switch.lookup132:                                 ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %30 = sext i8 %switch.tableidx133 to i32
  %switch.gep134 = getelementptr inbounds [8 x i32], ptr @switch.table.nxp_fspi_supports_op.40, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep134 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load135 = load i32, ptr %switch.gep134, align 4
  br label %nxp_fspi_check_buswidth.exit120

nxp_fspi_check_buswidth.exit120:                  ; preds = %switch.lookup132, %if.then15.nxp_fspi_check_buswidth.exit120_crit_edge
  %retval.0.i119 = phi i32 [ %switch.load135, %switch.lookup132 ], [ -524, %if.then15.nxp_fspi_check_buswidth.exit120_crit_edge ]
  %or19 = or i32 %retval.0.i119, %ret.1
  br label %if.end20

if.end20:                                         ; preds = %nxp_fspi_check_buswidth.exit120, %if.end12.if.end20_crit_edge
  %ret.2 = phi i32 [ %or19, %nxp_fspi_check_buswidth.exit120 ], [ %ret.1, %if.end12.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool21.not = icmp ne i32 %ret.2, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp = icmp ugt i8 %12, 4
  %or.cond123 = select i1 %tobool21.not, i1 true, i1 %cmp
  br i1 %or.cond123, label %if.end20.cleanup_crit_edge, label %if.end28

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %val, align 8
  %memmap_phy_size = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %memmap_phy_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %memmap_phy_size, align 4
  %conv30 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %conv30)
  %cmp31.not = icmp ult i64 %33, %conv30
  br i1 %cmp31.not, label %if.end34, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %buswidth36 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %buswidth36 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buswidth36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool38.not = icmp eq i8 %37, 0
  br i1 %tobool38.not, label %if.end34.if.end48_crit_edge, label %land.lhs.true

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end34
  %conv41 = zext i8 %19 to i16
  %mul = shl nuw nsw i16 %conv41, 3
  %div.rhs.trunc = zext i8 %37 to i16
  %div122 = udiv i16 %mul, %div.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %div122)
  %cmp45 = icmp ugt i16 %div122, 64
  br i1 %cmp45, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %if.end34.if.end48_crit_edge
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dir, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %if.end48.if.end80_crit_edge [
    i32 1, label %land.lhs.true52
    i32 2, label %land.lhs.true73
  ]

if.end48.if.end80_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

land.lhs.true52:                                  ; preds = %if.end48
  %devtype_data = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 10
  %41 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %devtype_data, align 4
  %ahb_buf_size = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %ahb_buf_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ahb_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %44)
  %cmp55 = icmp ugt i32 %26, %44
  br i1 %cmp55, label %land.lhs.true52.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true52
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %42, align 4
  %sub = add i32 %46, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub)
  %cmp60 = icmp ule i32 %26, %sub
  %and = and i32 %26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp65 = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp65, %cmp60
  br i1 %or.cond, label %lor.lhs.false.if.end80_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.end80_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

land.lhs.true73:                                  ; preds = %if.end48
  %devtype_data76 = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 10
  %47 = ptrtoint ptr %devtype_data76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %devtype_data76, align 4
  %txfifo = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %txfifo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %50)
  %cmp77 = icmp ugt i32 %26, %50
  br i1 %cmp77, label %land.lhs.true73.cleanup_crit_edge, label %land.lhs.true73.if.end80_crit_edge

land.lhs.true73.if.end80_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end80:                                         ; preds = %land.lhs.true73.if.end80_crit_edge, %lor.lhs.false.if.end80_crit_edge, %if.end48.if.end80_crit_edge
  %call81 = tail call zeroext i1 @spi_mem_default_supports_op(ptr noundef %mem, ptr noundef %op) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %land.lhs.true73.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true52.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  %retval.0 = phi i1 [ %call81, %if.end80 ], [ false, %if.end20.cleanup_crit_edge ], [ false, %if.end28.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %land.lhs.true52.cleanup_crit_edge ], [ false, %land.lhs.true73.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_fspi_exec_op(ptr nocapture noundef readonly %mem, ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  %tmp35.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  %lock = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 224
  %call1 = tail call fastcc i32 @fspi_readl_poll_tout(ptr noundef %5, ptr noundef %add.ptr, i32 noundef 2, i32 noundef 1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !121

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 872, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem, align 4
  tail call fastcc void @nxp_fspi_select_mem(ptr noundef %5, ptr noundef %9)
  tail call fastcc void @nxp_fspi_prepare_lut(ptr noundef %5, ptr noundef %op)
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbytes, align 4
  %devtype_data = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devtype_data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %sub = add i32 %15, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp = icmp ugt i32 %11, %sub
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp23 = icmp eq i32 %17, 1
  br i1 %cmp23, label %land.lhs.true24, label %land.lhs.true.land.lhs.true32_crit_edge

land.lhs.true.land.lhs.true32_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true32

land.lhs.true24:                                  ; preds = %land.lhs.true
  %quirks.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not = icmp eq i32 %and.i, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true24.land.lhs.true32_crit_edge

land.lhs.true24.land.lhs.true32_crit_edge:        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true32

if.then27:                                        ; preds = %land.lhs.true24
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %val.i, align 8
  %conv.i = trunc i64 %21 to i32
  %ahb_addr.i = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %ahb_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ahb_addr.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then27.if.end.i_crit_edge, label %lor.lhs.false.i

if.then27.if.end.i_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %if.then27
  %memmap_start.i = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %memmap_start.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %memmap_start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i)
  %cmp.i = icmp ugt i32 %25, %conv.i
  br i1 %cmp.i, label %lor.lhs.false.i.if.then9.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %add.i = add i32 %11, %conv.i
  %memmap_len.i = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 5
  %26 = ptrtoint ptr %memmap_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %memmap_len.i, align 4
  %add4.i = add i32 %27, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add4.i)
  %cmp5.i = icmp ugt i32 %add.i, %add4.i
  br i1 %cmp5.i, label %lor.lhs.false2.i.if.then9.i_crit_edge, label %lor.lhs.false2.i.if.end23.i_crit_edge

lor.lhs.false2.i.if.end23.i_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

lor.lhs.false2.i.if.then9.i_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false2.i.if.then9.i_crit_edge, %lor.lhs.false.i.if.then9.i_crit_edge
  tail call void @iounmap(ptr noundef nonnull %23) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %if.then27.if.end.i_crit_edge
  %memmap_start11.i = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 4
  %28 = ptrtoint ptr %memmap_start11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i, ptr %memmap_start11.i, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %11, i32 4194304) #8
  %memmap_len14.i = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 5
  %30 = ptrtoint ptr %memmap_len14.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %memmap_len14.i, align 4
  %memmap_phy.i = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %memmap_phy.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %memmap_phy.i, align 4
  %add16.i = add i32 %32, %conv.i
  %call.i = tail call ptr @ioremap_wc(i32 noundef %add16.i, i32 noundef %29) #8
  %33 = ptrtoint ptr %ahb_addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %ahb_addr.i, align 4
  %tobool20.not.i = icmp eq ptr %call.i, null
  br i1 %tobool20.not.i, label %do.end.i, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 8
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.22) #11
  br label %if.end39

if.end23.i:                                       ; preds = %if.end.i.if.end23.i_crit_edge, %lor.lhs.false2.i.if.end23.i_crit_edge
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf.i, align 4
  %38 = ptrtoint ptr %ahb_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ahb_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 %conv.i
  %memmap_start26.i = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 4
  %40 = ptrtoint ptr %memmap_start26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %memmap_start26.i, align 4
  %idx.neg.i = sub i32 0, %41
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  tail call void @mmiocpy(ptr noundef %37, ptr noundef %add.ptr27.i, i32 noundef %11) #8
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool31.not = icmp eq i32 %11, 0
  br i1 %tobool31.not, label %if.else.if.end37_crit_edge, label %if.else.land.lhs.true32_crit_edge

if.else.land.lhs.true32_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true32

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true32:                                  ; preds = %if.else.land.lhs.true32_crit_edge, %land.lhs.true24.land.lhs.true32_crit_edge, %land.lhs.true.land.lhs.true32_crit_edge
  %dir34 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %dir34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dir34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp35 = icmp eq i32 %43, 2
  br i1 %cmp35, label %if.then36, label %land.lhs.true32.if.end37_crit_edge

land.lhs.true32.if.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then36:                                        ; preds = %land.lhs.true32
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  %buf1.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %46 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf1.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %45, i32 188
  %little_endian.i.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %13, i32 0, i32 4
  %48 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %little_endian.i.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i = icmp eq i8 %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 16777216) #8, !srcloc !118
  br label %fspi_writel.exit.i

do.body.i.i:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 1) #8, !srcloc !118
  br label %fspi_writel.exit.i

fspi_writel.exit.i:                               ; preds = %do.body.i.i, %if.then.i.i
  %50 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %51)
  %cmp172.not.i = icmp ult i32 %51, 8
  br i1 %cmp172.not.i, label %fspi_writel.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

fspi_writel.exit.i.for.end.i_crit_edge:           ; preds = %fspi_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %fspi_writel.exit.i
  %add.ptr25.i = getelementptr i8, ptr %45, i32 384
  %add.ptr29.i = getelementptr i8, ptr %45, i32 388
  %add.ptr30.i = getelementptr i8, ptr %45, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %fspi_writel.exit137.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0173.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add31.i, %fspi_writel.exit137.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %5, align 4
  %add.ptr4.i = getelementptr i8, ptr %53, i32 20
  %call.i.i = tail call i64 @ktime_get() #8
  %add.i.i.i = add i64 %call.i.i, 5000000
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %55 = and i32 %54, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool15.not12.i.i = icmp eq i32 %55, 0
  br i1 %tobool15.not12.i.i, label %for.body.i.land.lhs.true.i.i_crit_edge, label %for.body.i.if.end.i65_crit_edge

for.body.i.if.end.i65_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i65

for.body.i.land.lhs.true.i.i_crit_edge:           ; preds = %for.body.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end29.i.i.land.lhs.true.i.i_crit_edge, %for.body.i.land.lhs.true.i.i_crit_edge
  %call19.i.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call19.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call19.i.i, %add.i.i.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %57 = and i32 %56, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool35.not.i.i = icmp eq i32 %57, 0
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.end29.i.i

if.end29.i.i:                                     ; preds = %land.lhs.true.i.i
  br i1 %tobool35.not.i.i, label %if.end29.i.i.land.lhs.true.i.i_crit_edge, label %if.end29.i.i.if.end.i65_crit_edge

if.end29.i.i.if.end.i65_crit_edge:                ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i65

if.end29.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  br i1 %tobool35.not.i.i, label %do.end.i64, label %for.end.i.i.if.end.i65_crit_edge

for.end.i.i.if.end.i65_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i65

do.end.i64:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 747, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i65

if.end.i65:                                       ; preds = %do.end.i64, %for.end.i.i.if.end.i65_crit_edge, %if.end29.i.i.if.end.i65_crit_edge, %for.body.i.if.end.i65_crit_edge
  %add.ptr24.i = getelementptr i8, ptr %47, i32 %i.0173.i
  %58 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr24.i, align 4
  %60 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %devtype_data, align 4
  %little_endian.i121.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %little_endian.i121.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %little_endian.i121.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i122.i = icmp eq i8 %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i122.i, label %do.body.i124.i, label %if.then.i123.i

if.then.i123.i:                                   ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  %64 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %64) #8, !srcloc !118
  br label %fspi_writel.exit125.i

do.body.i124.i:                                   ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %59) #8, !srcloc !118
  br label %fspi_writel.exit125.i

fspi_writel.exit125.i:                            ; preds = %do.body.i124.i, %if.then.i123.i
  %add.ptr27.i66 = getelementptr i8, ptr %add.ptr24.i, i32 4
  %65 = ptrtoint ptr %add.ptr27.i66 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr27.i66, align 4
  %67 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %devtype_data, align 4
  %little_endian.i127.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %little_endian.i127.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %little_endian.i127.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i128.i = icmp eq i8 %70, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i128.i, label %do.body.i130.i, label %if.then.i129.i

if.then.i129.i:                                   ; preds = %fspi_writel.exit125.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = tail call i32 @llvm.bswap.i32(i32 %66) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %71) #8, !srcloc !118
  br label %fspi_writel.exit131.i

do.body.i130.i:                                   ; preds = %fspi_writel.exit125.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %66) #8, !srcloc !118
  br label %fspi_writel.exit131.i

fspi_writel.exit131.i:                            ; preds = %do.body.i130.i, %if.then.i129.i
  %72 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %devtype_data, align 4
  %little_endian.i133.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %little_endian.i133.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %little_endian.i133.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i134.i = icmp eq i8 %75, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i134.i, label %do.body.i136.i, label %if.then.i135.i

if.then.i135.i:                                   ; preds = %fspi_writel.exit131.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 1073741824) #8, !srcloc !118
  br label %fspi_writel.exit137.i

do.body.i136.i:                                   ; preds = %fspi_writel.exit131.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 64) #8, !srcloc !118
  br label %fspi_writel.exit137.i

fspi_writel.exit137.i:                            ; preds = %do.body.i136.i, %if.then.i135.i
  %add31.i = add nuw i32 %i.0173.i, 8
  %76 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nbytes, align 4
  %and.i67 = and i32 %77, -8
  %cmp.i68 = icmp ult i32 %add31.i, %and.i67
  br i1 %cmp.i68, label %fspi_writel.exit137.i.for.body.i_crit_edge, label %fspi_writel.exit137.i.for.end.i_crit_edge

fspi_writel.exit137.i.for.end.i_crit_edge:        ; preds = %fspi_writel.exit137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

fspi_writel.exit137.i.for.body.i_crit_edge:       ; preds = %fspi_writel.exit137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %fspi_writel.exit137.i.for.end.i_crit_edge, %fspi_writel.exit.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %fspi_writel.exit.i.for.end.i_crit_edge ], [ %add31.i, %fspi_writel.exit137.i.for.end.i_crit_edge ]
  %.lcssa.i = phi i32 [ %51, %fspi_writel.exit.i.for.end.i_crit_edge ], [ %77, %fspi_writel.exit137.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %.lcssa.i)
  %cmp34.i = icmp ult i32 %i.0.lcssa.i, %.lcssa.i
  br i1 %cmp34.i, label %if.then35.i, label %for.end.i.if.end37_crit_edge

for.end.i.if.end37_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35.i:                                      ; preds = %for.end.i
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %5, align 4
  %add.ptr38.i = getelementptr i8, ptr %79, i32 20
  %call.i138.i = tail call i64 @ktime_get() #8
  %add.i.i139.i = add i64 %call.i138.i, 5000000
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %81 = and i32 %80, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool15.not12.i141.i = icmp eq i32 %81, 0
  br i1 %tobool15.not12.i141.i, label %if.then35.i.land.lhs.true.i144.i_crit_edge, label %if.then35.i.if.end63.i_crit_edge

if.then35.i.if.end63.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

if.then35.i.land.lhs.true.i144.i_crit_edge:       ; preds = %if.then35.i
  br label %land.lhs.true.i144.i

land.lhs.true.i144.i:                             ; preds = %if.end29.i145.i.land.lhs.true.i144.i_crit_edge, %if.then35.i.land.lhs.true.i144.i_crit_edge
  %call19.i142.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call19.i142.i, i64 %add.i.i139.i)
  %cmp3.i.i143.i = icmp sgt i64 %call19.i142.i, %add.i.i139.i
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %83 = and i32 %82, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool35.not.i149.i = icmp eq i32 %83, 0
  br i1 %cmp3.i.i143.i, label %for.end.i151.i, label %if.end29.i145.i

if.end29.i145.i:                                  ; preds = %land.lhs.true.i144.i
  br i1 %tobool35.not.i149.i, label %if.end29.i145.i.land.lhs.true.i144.i_crit_edge, label %if.end29.i145.i.if.end63.i_crit_edge

if.end29.i145.i.if.end63.i_crit_edge:             ; preds = %if.end29.i145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

if.end29.i145.i.land.lhs.true.i144.i_crit_edge:   ; preds = %if.end29.i145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i144.i

for.end.i151.i:                                   ; preds = %land.lhs.true.i144.i
  br i1 %tobool35.not.i149.i, label %do.end57.i, label %for.end.i151.i.if.end63.i_crit_edge

for.end.i151.i.if.end63.i_crit_edge:              ; preds = %for.end.i151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

do.end57.i:                                       ; preds = %for.end.i151.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 761, i32 noundef 9, ptr noundef null) #8
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.end57.i, %for.end.i151.i.if.end63.i_crit_edge, %if.end29.i145.i.if.end63.i_crit_edge, %if.then35.i.if.end63.i_crit_edge
  %sub74.i = sub i32 3, %i.0.lcssa.i
  %84 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nbytes, align 4
  %add75175.i = add i32 %85, %sub74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add75175.i)
  %cmp77177.not.i = icmp ult i32 %add75175.i, 4
  br i1 %cmp77177.not.i, label %if.end63.i.for.end85.i_crit_edge, label %for.body78.lr.ph.i

if.end63.i.for.end85.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end85.i

for.body78.lr.ph.i:                               ; preds = %if.end63.i
  %add.ptr79.i = getelementptr i8, ptr %47, i32 %i.0.lcssa.i
  %add.ptr81.i = getelementptr i8, ptr %45, i32 384
  br label %for.body78.i

for.body78.i:                                     ; preds = %fspi_writel.exit159.i.for.body78.i_crit_edge, %for.body78.lr.ph.i
  %j.0178.i = phi i32 [ 0, %for.body78.lr.ph.i ], [ %add84.i, %fspi_writel.exit159.i.for.body78.i_crit_edge ]
  %add.ptr80.i = getelementptr i8, ptr %add.ptr79.i, i32 %j.0178.i
  %86 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %data36.0.copyload.i = load i32, ptr %add.ptr80.i, align 1
  %add.ptr82.i = getelementptr i8, ptr %add.ptr81.i, i32 %j.0178.i
  %87 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %devtype_data, align 4
  %little_endian.i155.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %little_endian.i155.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %little_endian.i155.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i156.i = icmp eq i8 %90, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i156.i, label %do.body.i158.i, label %if.then.i157.i

if.then.i157.i:                                   ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = tail call i32 @llvm.bswap.i32(i32 %data36.0.copyload.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 %91) #8, !srcloc !118
  br label %fspi_writel.exit159.i

do.body.i158.i:                                   ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 %data36.0.copyload.i) #8, !srcloc !118
  br label %fspi_writel.exit159.i

fspi_writel.exit159.i:                            ; preds = %do.body.i158.i, %if.then.i157.i
  %add84.i = add nuw i32 %j.0178.i, 4
  %92 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nbytes, align 4
  %add75.i = add i32 %93, %sub74.i
  %and76.i = and i32 %add75.i, -4
  %cmp77.i = icmp ult i32 %add84.i, %and76.i
  br i1 %cmp77.i, label %fspi_writel.exit159.i.for.body78.i_crit_edge, label %fspi_writel.exit159.i.for.end85.i_crit_edge

fspi_writel.exit159.i.for.end85.i_crit_edge:      ; preds = %fspi_writel.exit159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end85.i

fspi_writel.exit159.i.for.body78.i_crit_edge:     ; preds = %fspi_writel.exit159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78.i

for.end85.i:                                      ; preds = %fspi_writel.exit159.i.for.end85.i_crit_edge, %if.end63.i.for.end85.i_crit_edge
  %add.ptr86.i = getelementptr i8, ptr %45, i32 20
  %94 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %devtype_data, align 4
  %little_endian.i161.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %little_endian.i161.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %little_endian.i161.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i162.i = icmp eq i8 %97, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i162.i, label %do.body.i164.i, label %if.then.i163.i

if.then.i163.i:                                   ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86.i, i32 1073741824) #8, !srcloc !118
  br label %if.end37

do.body.i164.i:                                   ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86.i, i32 64) #8, !srcloc !118
  br label %if.end37

if.end37:                                         ; preds = %do.body.i164.i, %if.then.i163.i, %for.end.i.if.end37_crit_edge, %land.lhs.true32.if.end37_crit_edge, %if.else.if.end37_crit_edge
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %5, align 4
  %add.ptr.i69 = getelementptr i8, ptr %99, i32 184
  %100 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %devtype_data, align 4
  %little_endian.i.i71 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %little_endian.i.i71 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %little_endian.i.i71, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i72 = icmp eq i8 %103, 0
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #8
  br i1 %tobool.not.i.i72, label %if.else.i.i, label %if.then.i.i73

if.then.i.i73:                                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  br label %fspi_readl.exit.i

if.else.i.i:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  br label %fspi_readl.exit.i

fspi_readl.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i73
  %retval.0.i.i = phi i32 [ %105, %if.then.i.i73 ], [ %104, %if.else.i.i ]
  %and.i74 = and i32 %retval.0.i.i, -4
  %or.i = or i32 %and.i74, 1
  %106 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %devtype_data, align 4
  %little_endian.i39.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %little_endian.i39.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %little_endian.i39.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i40.i = icmp eq i8 %109, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i40.i, label %do.body.i.i75, label %if.then.i41.i

if.then.i41.i:                                    ; preds = %fspi_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %110 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %110) #8, !srcloc !118
  br label %fspi_writel.exit.i78

do.body.i.i75:                                    ; preds = %fspi_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %or.i) #8, !srcloc !118
  br label %fspi_writel.exit.i78

fspi_writel.exit.i78:                             ; preds = %do.body.i.i75, %if.then.i41.i
  %c.i = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 9
  %111 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %c.i, align 4
  %wait.i.i = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #8
  %val.i76 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %112 = ptrtoint ptr %val.i76 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %val.i76, align 8
  %conv.i77 = trunc i64 %113 to i32
  %add.ptr2.i = getelementptr i8, ptr %99, i32 160
  %114 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %devtype_data, align 4
  %little_endian.i43.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %little_endian.i43.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %little_endian.i43.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i44.i = icmp eq i8 %117, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i44.i, label %do.body.i46.i, label %if.then.i45.i

if.then.i45.i:                                    ; preds = %fspi_writel.exit.i78
  call void @__sanitizer_cov_trace_pc() #10
  %118 = tail call i32 @llvm.bswap.i32(i32 %conv.i77) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %118) #8, !srcloc !118
  br label %fspi_writel.exit47.i

do.body.i46.i:                                    ; preds = %fspi_writel.exit.i78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %conv.i77) #8, !srcloc !118
  br label %fspi_writel.exit47.i

fspi_writel.exit47.i:                             ; preds = %do.body.i46.i, %if.then.i45.i
  %119 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %nbytes, align 4
  %or3.i = or i32 %120, 2031616
  %add.ptr5.i = getelementptr i8, ptr %99, i32 164
  %121 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %devtype_data, align 4
  %little_endian.i49.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %little_endian.i49.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %little_endian.i49.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i50.i = icmp eq i8 %124, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i50.i, label %do.body.i52.i, label %if.then.i51.i

if.then.i51.i:                                    ; preds = %fspi_writel.exit47.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %125) #8, !srcloc !118
  br label %fspi_writel.exit53.i

do.body.i52.i:                                    ; preds = %fspi_writel.exit47.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %or3.i) #8, !srcloc !118
  br label %fspi_writel.exit53.i

fspi_writel.exit53.i:                             ; preds = %do.body.i52.i, %if.then.i51.i
  %add.ptr6.i = getelementptr i8, ptr %99, i32 176
  %126 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %devtype_data, align 4
  %little_endian.i55.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %little_endian.i55.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %little_endian.i55.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i56.i = icmp eq i8 %129, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i56.i, label %do.body.i58.i, label %if.then.i57.i

if.then.i57.i:                                    ; preds = %fspi_writel.exit53.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16777216) #8, !srcloc !118
  br label %fspi_writel.exit59.i

do.body.i58.i:                                    ; preds = %fspi_writel.exit53.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 1) #8, !srcloc !118
  br label %fspi_writel.exit59.i

fspi_writel.exit59.i:                             ; preds = %do.body.i58.i, %if.then.i57.i
  %call9.i = tail call i32 @wait_for_completion_timeout(ptr noundef %c.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i80 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i80, label %fspi_writel.exit59.i.if.end39_crit_edge, label %land.lhs.true.i

fspi_writel.exit59.i.if.end39_crit_edge:          ; preds = %fspi_writel.exit59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.lhs.true.i:                                  ; preds = %fspi_writel.exit59.i
  %130 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool13.not.i = icmp eq i32 %131, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end39_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.if.end39_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %132 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp.i81 = icmp eq i32 %133, 1
  br i1 %cmp.i81, label %if.then17.i, label %land.lhs.true14.i.if.end39_crit_edge

land.lhs.true14.i.if.end39_crit_edge:             ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then17.i:                                      ; preds = %land.lhs.true14.i
  %134 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %5, align 4
  %buf2.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %136 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %buf2.i.i, align 4
  %and.i.i = and i32 %131, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp187.i.i = icmp sgt i32 %and.i.i, 0
  br i1 %cmp187.i.i, label %for.body.lr.ph.i.i, label %if.then17.i.for.end.i.i82_crit_edge

if.then17.i.for.end.i.i82_crit_edge:              ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i82

for.body.lr.ph.i.i:                               ; preds = %if.then17.i
  %add.ptr23.i.i = getelementptr i8, ptr %135, i32 256
  %add.ptr27.i.i = getelementptr i8, ptr %135, i32 260
  %add.ptr31.i.i = getelementptr i8, ptr %135, i32 20
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %fspi_writel.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0188.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add32.i.i, %fspi_writel.exit.i.i.for.body.i.i_crit_edge ]
  %138 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %139, i32 20
  %call.i.i.i = tail call i64 @ktime_get() #8
  %add.i.i.i.i = add i64 %call.i.i.i, 5000000
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %141 = and i32 %140, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool15.not12.i.i.i = icmp eq i32 %141, 0
  br i1 %tobool15.not12.i.i.i, label %for.body.i.i.land.lhs.true.i.i.i_crit_edge, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

for.body.i.i.land.lhs.true.i.i.i_crit_edge:       ; preds = %for.body.i.i
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end29.i.i.i.land.lhs.true.i.i.i_crit_edge, %for.body.i.i.land.lhs.true.i.i.i_crit_edge
  %call19.i.i.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call19.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call19.i.i.i, %add.i.i.i.i
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %143 = and i32 %142, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool35.not.i.i.i = icmp eq i32 %143, 0
  br i1 %cmp3.i.i.i.i, label %for.end.i.i.i, label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  br i1 %tobool35.not.i.i.i, label %if.end29.i.i.i.land.lhs.true.i.i.i_crit_edge, label %if.end29.i.i.i.if.end.i.i_crit_edge

if.end29.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end29.i.i.i.land.lhs.true.i.i.i_crit_edge:     ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i.i

for.end.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  br i1 %tobool35.not.i.i.i, label %do.end.i.i, label %for.end.i.i.i.if.end.i.i_crit_edge

for.end.i.i.i.if.end.i.i_crit_edge:               ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 788, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %for.end.i.i.i.if.end.i.i_crit_edge, %if.end29.i.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %144 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %devtype_data, align 4
  %little_endian.i.i.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %little_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %little_endian.i.i.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i.i.i = icmp eq i8 %147, 0
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #8
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  br label %fspi_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  br label %fspi_readl.exit.i.i

fspi_readl.exit.i.i:                              ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i135.i.i = phi i32 [ %149, %if.then.i.i.i ], [ %148, %if.else.i.i.i ]
  %add.ptr25.i.i = getelementptr i8, ptr %137, i32 %i.0188.i.i
  %150 = ptrtoint ptr %add.ptr25.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %retval.0.i135.i.i, ptr %add.ptr25.i.i, align 4
  %151 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %devtype_data, align 4
  %little_endian.i137.i.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %little_endian.i137.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %little_endian.i137.i.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i138.i.i = icmp eq i8 %154, 0
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i.i) #8
  br i1 %tobool.not.i138.i.i, label %if.else.i140.i.i, label %if.then.i139.i.i

if.then.i139.i.i:                                 ; preds = %fspi_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  br label %fspi_readl.exit142.i.i

if.else.i140.i.i:                                 ; preds = %fspi_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  br label %fspi_readl.exit142.i.i

fspi_readl.exit142.i.i:                           ; preds = %if.else.i140.i.i, %if.then.i139.i.i
  %retval.0.i141.i.i = phi i32 [ %156, %if.then.i139.i.i ], [ %155, %if.else.i140.i.i ]
  %add.ptr30.i.i = getelementptr i8, ptr %add.ptr25.i.i, i32 4
  %157 = ptrtoint ptr %add.ptr30.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %retval.0.i141.i.i, ptr %add.ptr30.i.i, align 4
  %158 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %devtype_data, align 4
  %little_endian.i144.i.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %little_endian.i144.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %little_endian.i144.i.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i145.i.i = icmp eq i8 %161, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i145.i.i, label %do.body.i.i.i, label %if.then.i146.i.i

if.then.i146.i.i:                                 ; preds = %fspi_readl.exit142.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i.i, i32 536870912) #8, !srcloc !118
  br label %fspi_writel.exit.i.i

do.body.i.i.i:                                    ; preds = %fspi_readl.exit142.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i.i, i32 32) #8, !srcloc !118
  br label %fspi_writel.exit.i.i

fspi_writel.exit.i.i:                             ; preds = %do.body.i.i.i, %if.then.i146.i.i
  %add32.i.i = add nuw nsw i32 %i.0188.i.i, 8
  %cmp.i.i = icmp slt i32 %add32.i.i, %and.i.i
  br i1 %cmp.i.i, label %fspi_writel.exit.i.i.for.body.i.i_crit_edge, label %fspi_writel.exit.i.i.for.end.i.i82_crit_edge

fspi_writel.exit.i.i.for.end.i.i82_crit_edge:     ; preds = %fspi_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i82

fspi_writel.exit.i.i.for.body.i.i_crit_edge:      ; preds = %fspi_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i82:                                    ; preds = %fspi_writel.exit.i.i.for.end.i.i82_crit_edge, %if.then17.i.for.end.i.i82_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.then17.i.for.end.i.i82_crit_edge ], [ %add32.i.i, %fspi_writel.exit.i.i.for.end.i.i82_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %131)
  %cmp33.i.i = icmp slt i32 %i.0.lcssa.i.i, %131
  br i1 %cmp33.i.i, label %if.then34.i.i, label %for.end.i.i82.if.end92.i.i_crit_edge

for.end.i.i82.if.end92.i.i_crit_edge:             ; preds = %for.end.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i.i

if.then34.i.i:                                    ; preds = %for.end.i.i82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp35.i.i)
  %162 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %buf2.i.i, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %163, i32 %i.0.lcssa.i.i
  %164 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %5, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %165, i32 20
  %call.i147.i.i = tail call i64 @ktime_get() #8
  %add.i.i148.i.i = add i64 %call.i147.i.i, 5000000
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %167 = and i32 %166, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool15.not12.i150.i.i = icmp eq i32 %167, 0
  br i1 %tobool15.not12.i150.i.i, label %if.then34.i.i.land.lhs.true.i153.i.i_crit_edge, label %if.then34.i.i.if.end65.i.i_crit_edge

if.then34.i.i.if.end65.i.i_crit_edge:             ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i.i

if.then34.i.i.land.lhs.true.i153.i.i_crit_edge:   ; preds = %if.then34.i.i
  br label %land.lhs.true.i153.i.i

land.lhs.true.i153.i.i:                           ; preds = %if.end29.i154.i.i.land.lhs.true.i153.i.i_crit_edge, %if.then34.i.i.land.lhs.true.i153.i.i_crit_edge
  %call19.i151.i.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call19.i151.i.i, i64 %add.i.i148.i.i)
  %cmp3.i.i152.i.i = icmp sgt i64 %call19.i151.i.i, %add.i.i148.i.i
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %169 = and i32 %168, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool35.not.i158.i.i = icmp eq i32 %169, 0
  br i1 %cmp3.i.i152.i.i, label %for.end.i160.i.i, label %if.end29.i154.i.i

if.end29.i154.i.i:                                ; preds = %land.lhs.true.i153.i.i
  br i1 %tobool35.not.i158.i.i, label %if.end29.i154.i.i.land.lhs.true.i153.i.i_crit_edge, label %if.end29.i154.i.i.if.end65.i.i_crit_edge

if.end29.i154.i.i.if.end65.i.i_crit_edge:         ; preds = %if.end29.i154.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i.i

if.end29.i154.i.i.land.lhs.true.i153.i.i_crit_edge: ; preds = %if.end29.i154.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i153.i.i

for.end.i160.i.i:                                 ; preds = %land.lhs.true.i153.i.i
  br i1 %tobool35.not.i158.i.i, label %do.end59.i.i, label %for.end.i160.i.i.if.end65.i.i_crit_edge

for.end.i160.i.i.if.end65.i.i_crit_edge:          ; preds = %for.end.i160.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i.i

do.end59.i.i:                                     ; preds = %for.end.i160.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 805, i32 noundef 9, ptr noundef null) #8
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %do.end59.i.i, %for.end.i160.i.i.if.end65.i.i_crit_edge, %if.end29.i154.i.i.if.end65.i.i_crit_edge, %if.then34.i.i.if.end65.i.i_crit_edge
  %170 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %i.0.lcssa.i.i)
  %cmp80190.not.i.i = icmp eq i32 %171, %i.0.lcssa.i.i
  br i1 %cmp80190.not.i.i, label %if.end65.i.i.for.end91.i.i_crit_edge, label %for.body81.lr.ph.i.i

if.end65.i.i.for.end91.i.i_crit_edge:             ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end91.i.i

for.body81.lr.ph.i.i:                             ; preds = %if.end65.i.i
  %sub75.i.i = sub i32 %171, %i.0.lcssa.i.i
  %add.ptr82.i.i = getelementptr i8, ptr %135, i32 256
  br label %for.body81.i.i

for.body81.i.i:                                   ; preds = %fspi_readl.exit169.i.i.for.body81.i.i_crit_edge, %for.body81.lr.ph.i.i
  %j.0192.i.i = phi i32 [ 0, %for.body81.lr.ph.i.i ], [ %add90.i.i, %fspi_readl.exit169.i.i.for.body81.i.i_crit_edge ]
  %len.0191.i.i = phi i32 [ %sub75.i.i, %for.body81.lr.ph.i.i ], [ %sub88.i.i, %fspi_readl.exit169.i.i.for.body81.i.i_crit_edge ]
  %add.ptr83.i.i = getelementptr i8, ptr %add.ptr82.i.i, i32 %j.0192.i.i
  %172 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %devtype_data, align 4
  %little_endian.i164.i.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %little_endian.i164.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %little_endian.i164.i.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i165.i.i = icmp eq i8 %175, 0
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.i.i) #8
  br i1 %tobool.not.i165.i.i, label %if.else.i167.i.i, label %if.then.i166.i.i

if.then.i166.i.i:                                 ; preds = %for.body81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  br label %fspi_readl.exit169.i.i

if.else.i167.i.i:                                 ; preds = %for.body81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  br label %fspi_readl.exit169.i.i

fspi_readl.exit169.i.i:                           ; preds = %if.else.i167.i.i, %if.then.i166.i.i
  %retval.0.i168.i.i = phi i32 [ %177, %if.then.i166.i.i ], [ %176, %if.else.i167.i.i ]
  %178 = ptrtoint ptr %tmp35.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %retval.0.i168.i.i, ptr %tmp35.i.i, align 4
  %179 = tail call i32 @llvm.smin.i32(i32 %len.0191.i.i, i32 4) #8
  %add.ptr87.i.i = getelementptr i8, ptr %add.ptr38.i.i, i32 %j.0192.i.i
  %180 = call ptr @memcpy(ptr %add.ptr87.i.i, ptr %tmp35.i.i, i32 %179)
  %sub88.i.i = sub i32 %len.0191.i.i, %179
  %add90.i.i = add i32 %j.0192.i.i, 4
  %181 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %nbytes, align 4
  %sub79.i.i = sub i32 %182, %i.0.lcssa.i.i
  %cmp80.i.i = icmp ult i32 %add90.i.i, %sub79.i.i
  br i1 %cmp80.i.i, label %fspi_readl.exit169.i.i.for.body81.i.i_crit_edge, label %fspi_readl.exit169.i.i.for.end91.i.i_crit_edge

fspi_readl.exit169.i.i.for.end91.i.i_crit_edge:   ; preds = %fspi_readl.exit169.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end91.i.i

fspi_readl.exit169.i.i.for.body81.i.i_crit_edge:  ; preds = %fspi_readl.exit169.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body81.i.i

for.end91.i.i:                                    ; preds = %fspi_readl.exit169.i.i.for.end91.i.i_crit_edge, %if.end65.i.i.for.end91.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp35.i.i)
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %for.end91.i.i, %for.end.i.i82.if.end92.i.i_crit_edge
  %add.ptr93.i.i = getelementptr i8, ptr %135, i32 184
  %183 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %devtype_data, align 4
  %little_endian.i171.i.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %little_endian.i171.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %little_endian.i171.i.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i172.i.i = icmp eq i8 %186, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i172.i.i, label %do.body.i174.i.i, label %if.then.i173.i.i

if.then.i173.i.i:                                 ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i.i, i32 16777216) #8, !srcloc !118
  br label %fspi_writel.exit175.i.i

do.body.i174.i.i:                                 ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i.i, i32 1) #8, !srcloc !118
  br label %fspi_writel.exit175.i.i

fspi_writel.exit175.i.i:                          ; preds = %do.body.i174.i.i, %if.then.i173.i.i
  %add.ptr94.i.i = getelementptr i8, ptr %135, i32 20
  %187 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %devtype_data, align 4
  %little_endian.i177.i.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %188, i32 0, i32 4
  %189 = ptrtoint ptr %little_endian.i177.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %little_endian.i177.i.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i178.i.i = icmp eq i8 %190, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i178.i.i, label %do.body.i180.i.i, label %if.then.i179.i.i

if.then.i179.i.i:                                 ; preds = %fspi_writel.exit175.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i.i, i32 536870912) #8, !srcloc !118
  br label %if.end39

do.body.i180.i.i:                                 ; preds = %fspi_writel.exit175.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i.i, i32 32) #8, !srcloc !118
  br label %if.end39

if.end39:                                         ; preds = %do.body.i180.i.i, %if.then.i179.i.i, %land.lhs.true14.i.if.end39_crit_edge, %land.lhs.true.i.if.end39_crit_edge, %fspi_writel.exit59.i.if.end39_crit_edge, %if.end23.i, %do.end.i
  %err.0 = phi i32 [ 0, %if.end23.i ], [ -12, %do.end.i ], [ 0, %do.body.i180.i.i ], [ 0, %if.then.i179.i.i ], [ 0, %land.lhs.true14.i.if.end39_crit_edge ], [ 0, %land.lhs.true.i.if.end39_crit_edge ], [ -110, %fspi_writel.exit59.i.if.end39_crit_edge ]
  %191 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %5, align 4
  %193 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %devtype_data, align 4
  %little_endian.i.i84 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %194, i32 0, i32 4
  %195 = ptrtoint ptr %little_endian.i.i84 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %little_endian.i.i84, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i.i85 = icmp eq i8 %196, 0
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #8
  br i1 %tobool.not.i.i85, label %if.else.i.i87, label %if.then.i.i86

if.then.i.i86:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  br label %fspi_readl.exit.i90

if.else.i.i87:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  br label %fspi_readl.exit.i90

fspi_readl.exit.i90:                              ; preds = %if.else.i.i87, %if.then.i.i86
  %retval.0.i.i88 = phi i32 [ %198, %if.then.i.i86 ], [ %197, %if.else.i.i87 ]
  %or.i89 = or i32 %retval.0.i.i88, 1
  %199 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %5, align 4
  %201 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %devtype_data, align 4
  %little_endian.i32.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %little_endian.i32.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %little_endian.i32.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i33.i = icmp eq i8 %204, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i33.i, label %do.body.i.i91, label %if.then.i34.i

if.then.i34.i:                                    ; preds = %fspi_readl.exit.i90
  call void @__sanitizer_cov_trace_pc() #10
  %205 = tail call i32 @llvm.bswap.i32(i32 %or.i89) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %205) #8, !srcloc !118
  br label %fspi_writel.exit.i94

do.body.i.i91:                                    ; preds = %fspi_readl.exit.i90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %or.i89) #8, !srcloc !118
  br label %fspi_writel.exit.i94

fspi_writel.exit.i94:                             ; preds = %do.body.i.i91, %if.then.i34.i
  %206 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %5, align 4
  %call.i.i92 = tail call i64 @ktime_get() #8
  %add.i.i.i93 = add i64 %call.i.i92, 5000000
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %209 = and i32 %208, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool62.not10.i.i = icmp eq i32 %209, 0
  br i1 %tobool62.not10.i.i, label %fspi_writel.exit.i94.nxp_fspi_invalid.exit_crit_edge, label %fspi_writel.exit.i94.land.lhs.true66.i.i_crit_edge

fspi_writel.exit.i94.land.lhs.true66.i.i_crit_edge: ; preds = %fspi_writel.exit.i94
  br label %land.lhs.true66.i.i

fspi_writel.exit.i94.nxp_fspi_invalid.exit_crit_edge: ; preds = %fspi_writel.exit.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxp_fspi_invalid.exit

land.lhs.true66.i.i:                              ; preds = %if.end77.i.i.land.lhs.true66.i.i_crit_edge, %fspi_writel.exit.i94.land.lhs.true66.i.i_crit_edge
  %call67.i.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call67.i.i, i64 %add.i.i.i93)
  %cmp3.i3.i.i = icmp sgt i64 %call67.i.i, %add.i.i.i93
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %211 = and i32 %210, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool86.not.i.i = icmp eq i32 %211, 0
  br i1 %cmp3.i3.i.i, label %for.end83.i.i, label %if.end77.i.i

if.end77.i.i:                                     ; preds = %land.lhs.true66.i.i
  br i1 %tobool86.not.i.i, label %if.end77.i.i.nxp_fspi_invalid.exit_crit_edge, label %if.end77.i.i.land.lhs.true66.i.i_crit_edge

if.end77.i.i.land.lhs.true66.i.i_crit_edge:       ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true66.i.i

if.end77.i.i.nxp_fspi_invalid.exit_crit_edge:     ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxp_fspi_invalid.exit

for.end83.i.i:                                    ; preds = %land.lhs.true66.i.i
  br i1 %tobool86.not.i.i, label %for.end83.i.i.nxp_fspi_invalid.exit_crit_edge, label %do.end.i95

for.end83.i.i.nxp_fspi_invalid.exit_crit_edge:    ; preds = %for.end83.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxp_fspi_invalid.exit

do.end.i95:                                       ; preds = %for.end83.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 523, i32 noundef 9, ptr noundef null) #8
  br label %nxp_fspi_invalid.exit

nxp_fspi_invalid.exit:                            ; preds = %do.end.i95, %for.end83.i.i.nxp_fspi_invalid.exit_crit_edge, %if.end77.i.i.nxp_fspi_invalid.exit_crit_edge, %fspi_writel.exit.i94.nxp_fspi_invalid.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nxp_fspi_get_name(ptr nocapture noundef readonly %mem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %dev3 = getelementptr inbounds %struct.nxp_fspi, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %9, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %9, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.07.i)
  %cmp = icmp eq i32 %num.07.i, 0
  br i1 %cmp, label %if.then, label %of_get_available_child_count.exit.if.end_crit_edge

of_get_available_child_count.exit.if.end_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %of_get_available_child_count.exit
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %cleanup

if.end:                                           ; preds = %of_get_available_child_count.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev3, align 4
  %init_name.i22 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i22, align 8
  %tobool.not.i23 = icmp eq ptr %19, null
  br i1 %tobool.not.i23, label %if.end.i24, label %if.end.dev_name.exit26_crit_edge

if.end.dev_name.exit26_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit26

if.end.i24:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit26

dev_name.exit26:                                  ; preds = %if.end.i24, %if.end.dev_name.exit26_crit_edge
  %retval.0.i25 = phi ptr [ %21, %if.end.i24 ], [ %19, %if.end.dev_name.exit26_crit_edge ]
  %22 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %25 to i32
  %call10 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i25, i32 noundef %conv) #8
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %do.end, label %dev_name.exit26.cleanup_crit_edge

dev_name.exit26.cleanup_crit_edge:                ; preds = %dev_name.exit26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dev_name.exit26.cleanup_crit_edge, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call10, %dev_name.exit26.cleanup_crit_edge ], [ %15, %if.end.i ], [ %13, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_default_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fspi_readl_poll_tout(ptr nocapture noundef readonly %f, ptr noundef %base, i32 noundef %mask, i32 noundef %delay_us, i1 noundef zeroext %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 5000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay_us)
  %cmp.not = icmp eq i32 %delay_us, 0
  br i1 %c, label %if.then2, label %if.else

if.then2:                                         ; preds = %entry
  br i1 %cmp.not, label %if.then2.do.end12_crit_edge, label %do.body6

if.then2.do.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.body6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 501) #8
  br label %do.end12

do.end12:                                         ; preds = %do.body6, %if.then2.do.end12_crit_edge
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !119
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %and11 = and i32 %1, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool15.not12 = icmp eq i32 %and11, 0
  br i1 %tobool15.not12, label %do.end12.land.lhs.true_crit_edge, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12.land.lhs.true_crit_edge:                 ; preds = %do.end12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end32.land.lhs.true_crit_edge, %do.end12.land.lhs.true_crit_edge
  %call19 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %for.end, label %if.end29

if.end29:                                         ; preds = %land.lhs.true
  br i1 %cmp.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !119
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %and = and i32 %3, %mask
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end32.land.lhs.true_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32.land.lhs.true_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !119
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %.pre = and i32 %5, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool35.not = icmp eq i32 %.pre, 0
  %spec.select = select i1 %tobool35.not, i32 -110, i32 0
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %cmp.not, label %if.else.do.end54_crit_edge, label %do.body46

if.else.do.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

do.body46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 504) #8
  br label %do.end54

do.end54:                                         ; preds = %do.body46, %if.else.do.end54_crit_edge
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !119
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %and619 = and i32 %7, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and619)
  %tobool62.not10 = icmp eq i32 %and619, 0
  br i1 %tobool62.not10, label %do.end54.for.end83.thread_crit_edge, label %do.end54.land.lhs.true66_crit_edge

do.end54.land.lhs.true66_crit_edge:               ; preds = %do.end54
  br label %land.lhs.true66

do.end54.for.end83.thread_crit_edge:              ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end83.thread

land.lhs.true66:                                  ; preds = %if.end82.land.lhs.true66_crit_edge, %do.end54.land.lhs.true66_crit_edge
  %call67 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call67, i64 %add.i)
  %cmp3.i3 = icmp sgt i64 %call67, %add.i
  br i1 %cmp3.i3, label %for.end83, label %if.end77

if.end77:                                         ; preds = %land.lhs.true66
  br i1 %cmp.not, label %if.end77.if.end82_crit_edge, label %if.then79

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end77.if.end82_crit_edge
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !119
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %and61 = and i32 %9, %mask
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end82.for.end83.thread_crit_edge, label %if.end82.land.lhs.true66_crit_edge

if.end82.land.lhs.true66_crit_edge:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true66

if.end82.for.end83.thread_crit_edge:              ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end83.thread

for.end83:                                        ; preds = %land.lhs.true66
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !119
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  %.pre15 = and i32 %11, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre15)
  %tobool86.not = icmp eq i32 %.pre15, 0
  br i1 %tobool86.not, label %for.end83.for.end83.thread_crit_edge, label %for.end83.cleanup_crit_edge

for.end83.cleanup_crit_edge:                      ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end83.for.end83.thread_crit_edge:             ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end83.thread

for.end83.thread:                                 ; preds = %for.end83.for.end83.thread_crit_edge, %if.end82.for.end83.thread_crit_edge, %do.end54.for.end83.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end83.thread, %for.end83.cleanup_crit_edge, %for.end, %if.end32.cleanup_crit_edge, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end83.thread ], [ -110, %for.end83.cleanup_crit_edge ], [ 0, %do.end12.cleanup_crit_edge ], [ %spec.select, %for.end ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxp_fspi_select_mem(ptr nocapture noundef %f, ptr nocapture noundef readonly %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed_hz, align 8
  %selected = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 13
  %2 = ptrtoint ptr %selected to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %selected, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp eq i32 %3, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 96
  %devtype_data.i = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #8
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #8
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #8
  %memmap_phy_size = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 3
  %14 = ptrtoint ptr %memmap_phy_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %memmap_phy_size, align 4
  %shr = lshr i32 %15, 10
  %16 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 96
  %18 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_select, align 4
  %conv13 = zext i8 %19 to i32
  %mul = shl nuw nsw i32 %conv13, 2
  %add.ptr14 = getelementptr i8, ptr %add.ptr11, i32 %mul
  %20 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i76 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %little_endian.i76 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %little_endian.i76, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i77 = icmp eq i8 %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i77, label %do.body.i79, label %if.then.i78

if.then.i78:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %shr) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %24) #8, !srcloc !118
  br label %fspi_writel.exit80

do.body.i79:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %shr) #8, !srcloc !118
  br label %fspi_writel.exit80

fspi_writel.exit80:                               ; preds = %do.body.i79, %if.then.i78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxp_fspi_select_mem.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nxp_fspi_select_mem, %do.end)) #8
          to label %if.then18 [label %do.end], !srcloc !125

if.then18:                                        ; preds = %fspi_writel.exit80
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %chip_select, align 4
  %conv20 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nxp_fspi_select_mem.__UNIQUE_ID_ddebug235, ptr noundef %26, ptr noundef nonnull @.str.19, i32 noundef %conv20) #8
  br label %do.end

do.end:                                           ; preds = %if.then18, %fspi_writel.exit80
  %clk.i = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 6
  %29 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %30) #8
  tail call void @clk_unprepare(ptr noundef %30) #8
  %clk_en.i = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 7
  %31 = ptrtoint ptr %clk_en.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_en.i, align 4
  tail call void @clk_disable(ptr noundef %32) #8
  tail call void @clk_unprepare(ptr noundef %32) #8
  %33 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk.i, align 4
  %call23 = tail call i32 @clk_set_rate(ptr noundef %34, i32 noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %do.end
  %call27 = tail call fastcc i32 @nxp_fspi_clk_prep_enable(ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %chip_select, align 4
  %conv32 = zext i8 %36 to i32
  %37 = ptrtoint ptr %selected to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv32, ptr %selected, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxp_fspi_prepare_lut(ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %op) unnamed_addr #2 align 64 {
entry:
  %lutval = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lutval) #8
  %2 = getelementptr inbounds i8, ptr %lutval, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 12)
  %buswidth = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buswidth, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #8, !range !126
  %.neg = mul nsw i32 %6, -256
  %sub.i.op.op = add nsw i32 %.neg, 7936
  %shl = select i1 %tobool.not.i, i32 -1280, i32 %sub.i.op.op
  %opcode = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 3
  %7 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %opcode, align 4
  %9 = or i16 %8, 1024
  %or = zext i16 %9 to i32
  %or5 = or i32 %shl, %or
  %10 = ptrtoint ptr %lutval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or5, ptr %lutval, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %buswidth7 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %buswidth7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buswidth7, align 1
  %conv8 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i142 = icmp eq i8 %14, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %conv8, i1 true) #8, !range !126
  %.neg182 = mul nsw i32 %15, -16777216
  %conv15 = zext i8 %12 to i32
  %16 = shl nuw nsw i32 %conv15, 19
  %sub.i143.op.op = add nsw i32 %.neg182, 520093696
  %17 = select i1 %tobool.not.i142, i32 -150994944, i32 %sub.i143.op.op
  %or16 = or i32 %16, %or5
  %shl18 = or i32 %or16, %17
  %or20 = or i32 %shl18, 134217728
  %18 = ptrtoint ptr %lutval to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or20, ptr %lutval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lutidx.0 = phi i32 [ 2, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %19 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not = icmp eq i8 %20, 0
  br i1 %tobool22.not, label %if.end.if.end46_crit_edge, label %if.then23

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data, align 4
  %conv25 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i145 = icmp eq i8 %22, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %conv25, i1 true) #8, !range !126
  %.neg183 = mul nsw i32 %23, -256
  %sub.i146.op.op = add nsw i32 %.neg183, 7936
  %shl28 = select i1 %tobool.not.i145, i32 -12544, i32 %sub.i146.op.op
  %conv32 = zext i8 %20 to i16
  %mul33 = shl nuw nsw i16 %conv32, 3
  %buswidth35 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %buswidth35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buswidth35, align 1
  %div37.rhs.trunc = zext i8 %25 to i16
  %div37181 = udiv i16 %mul33, %div37.rhs.trunc
  %26 = or i16 %div37181, 12288
  %or29 = zext i16 %26 to i32
  %or38 = or i32 %shl28, %or29
  %rem39 = shl nuw nsw i32 %lutidx.0, 4
  %mul40 = and i32 %rem39, 16
  %shl41 = shl i32 %or38, %mul40
  %div42141 = lshr i32 %lutidx.0, 1
  %arrayidx43 = getelementptr [4 x i32], ptr %lutval, i32 0, i32 %div42141
  %27 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx43, align 4
  %or44 = or i32 %shl41, %28
  store i32 %or44, ptr %arrayidx43, align 4
  %inc45 = add nuw nsw i32 %lutidx.0, 1
  br label %if.end46

if.end46:                                         ; preds = %if.then23, %if.end.if.end46_crit_edge
  %lutidx.1 = phi i32 [ %inc45, %if.then23 ], [ %lutidx.0, %if.end.if.end46_crit_edge ]
  %nbytes48 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %nbytes48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nbytes48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool49.not = icmp eq i32 %30, 0
  br i1 %tobool49.not, label %if.end46.if.end69_crit_edge, label %if.then50

if.end46.if.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %data47 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp = icmp eq i32 %32, 1
  %cond = select i1 %cmp, i32 9216, i32 8192
  %33 = ptrtoint ptr %data47 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data47, align 4
  %conv56 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i148 = icmp eq i8 %34, 0
  %35 = tail call i32 @llvm.ctlz.i32(i32 %conv56, i1 true) #8, !range !126
  %.neg184 = mul nsw i32 %35, -256
  %sub.i149.op.op = add nsw i32 %.neg184, 7936
  %shl59 = select i1 %tobool.not.i148, i32 -8448, i32 %sub.i149.op.op
  %or60 = or i32 %shl59, %cond
  %rem62177178 = shl nuw nsw i32 %lutidx.1, 4
  %mul63 = and i32 %rem62177178, 16
  %shl64 = shl i32 %or60, %mul63
  %div65179180185 = lshr i32 %lutidx.1, 1
  %arrayidx66 = getelementptr [4 x i32], ptr %lutval, i32 0, i32 %div65179180185
  %36 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx66, align 4
  %or67 = or i32 %shl64, %37
  store i32 %or67, ptr %arrayidx66, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then50, %if.end46.if.end69_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %devtype_data.i = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 10
  %38 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %little_endian.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i151 = icmp eq i8 %41, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i151, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -262475686) #8, !srcloc !118
  br label %fspi_writel.exit

do.body.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1525701360) #8, !srcloc !118
  br label %fspi_writel.exit

fspi_writel.exit:                                 ; preds = %do.body.i, %if.then.i
  %42 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %f, align 4
  %add.ptr78 = getelementptr i8, ptr %43, i32 28
  %44 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i153 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %little_endian.i153 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %little_endian.i153, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i154 = icmp eq i8 %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i154, label %do.body.i156, label %if.then.i155

if.then.i155:                                     ; preds = %fspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 33554432) #8, !srcloc !118
  br label %fspi_writel.exit157

do.body.i156:                                     ; preds = %fspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 2) #8, !srcloc !118
  br label %fspi_writel.exit157

fspi_writel.exit157:                              ; preds = %do.body.i156, %if.then.i155
  %48 = ptrtoint ptr %lutval to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lutval, align 4
  %add.ptr83 = getelementptr i8, ptr %1, i32 1008
  %50 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i159 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %little_endian.i159 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %little_endian.i159, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i160 = icmp eq i8 %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i160, label %do.body.i162, label %if.then.i161

if.then.i161:                                     ; preds = %fspi_writel.exit157
  call void @__sanitizer_cov_trace_pc() #10
  %54 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %54) #8, !srcloc !118
  br label %fspi_writel.exit163

do.body.i162:                                     ; preds = %fspi_writel.exit157
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %49) #8, !srcloc !118
  br label %fspi_writel.exit163

fspi_writel.exit163:                              ; preds = %do.body.i162, %if.then.i161
  %arrayidx81.1 = getelementptr inbounds [4 x i32], ptr %lutval, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx81.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx81.1, align 4
  %add.ptr83.1 = getelementptr i8, ptr %1, i32 1012
  %57 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i159.1 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %little_endian.i159.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %little_endian.i159.1, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i160.1 = icmp eq i8 %60, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i160.1, label %do.body.i162.1, label %if.then.i161.1

if.then.i161.1:                                   ; preds = %fspi_writel.exit163
  call void @__sanitizer_cov_trace_pc() #10
  %61 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.1, i32 %61) #8, !srcloc !118
  br label %fspi_writel.exit163.1

do.body.i162.1:                                   ; preds = %fspi_writel.exit163
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.1, i32 %56) #8, !srcloc !118
  br label %fspi_writel.exit163.1

fspi_writel.exit163.1:                            ; preds = %do.body.i162.1, %if.then.i161.1
  %arrayidx81.2 = getelementptr inbounds [4 x i32], ptr %lutval, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx81.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx81.2, align 4
  %add.ptr83.2 = getelementptr i8, ptr %1, i32 1016
  %64 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i159.2 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %little_endian.i159.2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %little_endian.i159.2, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i160.2 = icmp eq i8 %67, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i160.2, label %do.body.i162.2, label %if.then.i161.2

if.then.i161.2:                                   ; preds = %fspi_writel.exit163.1
  call void @__sanitizer_cov_trace_pc() #10
  %68 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.2, i32 %68) #8, !srcloc !118
  br label %fspi_writel.exit163.2

do.body.i162.2:                                   ; preds = %fspi_writel.exit163.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.2, i32 %63) #8, !srcloc !118
  br label %fspi_writel.exit163.2

fspi_writel.exit163.2:                            ; preds = %do.body.i162.2, %if.then.i161.2
  %arrayidx81.3 = getelementptr inbounds [4 x i32], ptr %lutval, i32 0, i32 3
  %69 = ptrtoint ptr %arrayidx81.3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx81.3, align 4
  %add.ptr83.3 = getelementptr i8, ptr %1, i32 1020
  %71 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i159.3 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %little_endian.i159.3 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %little_endian.i159.3, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i160.3 = icmp eq i8 %74, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i160.3, label %do.body.i162.3, label %if.then.i161.3

if.then.i161.3:                                   ; preds = %fspi_writel.exit163.2
  call void @__sanitizer_cov_trace_pc() #10
  %75 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.3, i32 %75) #8, !srcloc !118
  br label %fspi_writel.exit163.3

do.body.i162.3:                                   ; preds = %fspi_writel.exit163.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.3, i32 %70) #8, !srcloc !118
  br label %fspi_writel.exit163.3

fspi_writel.exit163.3:                            ; preds = %do.body.i162.3, %if.then.i161.3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxp_fspi_prepare_lut.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nxp_fspi_prepare_lut, %do.end)) #8
          to label %if.then90 [label %do.end], !srcloc !125

if.then90:                                        ; preds = %fspi_writel.exit163.3
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 8
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 4
  %78 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %opcode, align 4
  %conv93 = zext i16 %79 to i32
  %80 = ptrtoint ptr %lutval to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lutval, align 4
  %82 = ptrtoint ptr %arrayidx81.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx81.1, align 4
  %84 = ptrtoint ptr %arrayidx81.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx81.2, align 4
  %86 = ptrtoint ptr %arrayidx81.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx81.3, align 4
  %88 = ptrtoint ptr %nbytes48 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nbytes48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nxp_fspi_prepare_lut.__UNIQUE_ID_ddebug234, ptr noundef %77, ptr noundef nonnull @.str.21, i32 noundef %conv93, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89) #8
  br label %do.end

do.end:                                           ; preds = %if.then90, %fspi_writel.exit163.3
  %90 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %f, align 4
  %add.ptr102 = getelementptr i8, ptr %91, i32 24
  %92 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i165 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %little_endian.i165 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %little_endian.i165, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i166 = icmp eq i8 %95, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i166, label %do.body.i168, label %if.then.i167

if.then.i167:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 -262475686) #8, !srcloc !118
  br label %fspi_writel.exit169

do.body.i168:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 1525701360) #8, !srcloc !118
  br label %fspi_writel.exit169

fspi_writel.exit169:                              ; preds = %do.body.i168, %if.then.i167
  %96 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %f, align 4
  %add.ptr104 = getelementptr i8, ptr %97, i32 28
  %98 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i171 = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %little_endian.i171 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %little_endian.i171, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i172 = icmp eq i8 %101, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i172, label %do.body.i174, label %if.then.i173

if.then.i173:                                     ; preds = %fspi_writel.exit169
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 16777216) #8, !srcloc !118
  br label %fspi_writel.exit175

do.body.i174:                                     ; preds = %fspi_writel.exit169
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 1) #8, !srcloc !118
  br label %fspi_writel.exit175

fspi_writel.exit175:                              ; preds = %do.body.i174, %if.then.i173
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lutval) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @erratum_err050568(ptr nocapture noundef readonly %f) unnamed_addr #2 align 64 {
entry:
  %ls1028a_soc_attr = alloca [2 x %struct.soc_device_attribute], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ls1028a_soc_attr) #8
  %0 = call ptr @memcpy(ptr %ls1028a_soc_attr, ptr @__const.erratum_err050568.ls1028a_soc_attr, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !127
  %call = call ptr @soc_device_match(ptr noundef nonnull %ls1028a_soc_attr) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @erratum_err050568.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@erratum_err050568, %cleanup)) #8
          to label %if.then6 [label %cleanup], !srcloc !125

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @erratum_err050568.__UNIQUE_ID_ddebug238, ptr noundef %3, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.32) #8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 8
  %4 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.33) #11
  br label %do.end59

if.end15:                                         ; preds = %if.end7
  %call16 = call i32 @regmap_read(ptr noundef %call8, i32 noundef 256, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end15.do.end59_crit_edge, label %do.end33

if.end15.do.end59_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.end33:                                         ; preds = %if.end15
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = lshr i32 %7, 2
  %shr = and i32 %and, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @erratum_err050568.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@erratum_err050568, %do.end53)) #8
          to label %if.then49 [label %do.end53], !srcloc !125

if.then49:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 8
  %8 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev50, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @erratum_err050568.__UNIQUE_ID_ddebug244, ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef %11, i32 noundef %shr) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp54 = icmp eq i32 %shr, 3
  br i1 %cmp54, label %if.then55, label %do.end53.cleanup_crit_edge

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  %devtype_data = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 10
  %12 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devtype_data, align 4
  %quirks = getelementptr inbounds %struct.nxp_fspi_devtype_data, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 4
  %or = or i32 %15, 1
  store i32 %or, ptr %quirks, align 4
  br label %cleanup

do.end59:                                         ; preds = %if.end15.do.end59_crit_edge, %do.end13
  %dev60 = getelementptr inbounds %struct.nxp_fspi, ptr %f, i32 0, i32 8
  %16 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev60, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.36) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then55, %do.end53.cleanup_crit_edge, %if.then6, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ls1028a_soc_attr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nxp_fspi_suspend(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_fspi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @nxp_fspi_default_setup(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !70, !71, !72, !73, !75, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !98, !100, !102, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_spi_nxp_fspi__245_1262_nxp_fspi_driver_init6, !1, !"__initcall__kmod_spi_nxp_fspi__245_1262_nxp_fspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1262, i32 1}
!2 = !{ptr @__exitcall_nxp_fspi_driver_exit, !1, !"__exitcall_nxp_fspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description246, !4, !"__UNIQUE_ID_description246", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1264, i32 1}
!5 = !{ptr @__UNIQUE_ID_author247, !6, !"__UNIQUE_ID_author247", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1265, i32 1}
!7 = !{ptr @__UNIQUE_ID_author248, !8, !"__UNIQUE_ID_author248", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1266, i32 1}
!9 = !{ptr @__UNIQUE_ID_author249, !10, !"__UNIQUE_ID_author249", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1267, i32 1}
!11 = !{ptr @__UNIQUE_ID_author250, !12, !"__UNIQUE_ID_author250", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1268, i32 1}
!13 = !{ptr @__UNIQUE_ID_file251, !14, !"__UNIQUE_ID_file251", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1269, i32 1}
!15 = !{ptr @__UNIQUE_ID_license252, !14, !"__UNIQUE_ID_license252", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1254, i32 11}
!18 = !{ptr @nxp_fspi_driver, !19, !"nxp_fspi_driver", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1252, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1107, i32 21}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1120, i32 21}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1133, i32 33}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1139, i32 30}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1147, i32 4}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nxp_fspi_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @nxp_fspi_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1165, i32 3}
!38 = !{ptr @nxp_fspi_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nxp_fspi_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @nxp_fspi_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1169, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1194, i32 2}
!45 = !{ptr @nxp_fspi_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @nxp_fspi_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @nxp_fspi_mem_ops, !48, !"nxp_fspi_mem_ops", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1068, i32 44}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 681, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nxp_fspi_select_mem.__UNIQUE_ID_ddebug235, !50, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 579, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @nxp_fspi_prepare_lut.__UNIQUE_ID_ddebug234, !55, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 715, i32 4}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nxp_fspi_read_ahb._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @nxp_fspi_read_ahb._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @init_completion.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../include/linux/completion.h", i32 87, i32 2}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1057, i32 10}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1061, i32 3}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @nxp_fspi_get_name._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @nxp_fspi_get_name._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 988, i32 47}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 928, i32 15}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 937, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @erratum_err050568.__UNIQUE_ID_ddebug238, !78, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 941, i32 43}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 943, i32 3}
!85 = !{ptr @erratum_err050568._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @erratum_err050568._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 952, i32 2}
!89 = !{ptr @erratum_err050568.__UNIQUE_ID_ddebug244, !88, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 961, i32 2}
!92 = !{ptr @erratum_err050568._entry.35, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @erratum_err050568._entry_ptr.37, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @nxp_fspi_dt_ids, !95, !"nxp_fspi_dt_ids", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1229, i32 34}
!96 = !{ptr @lx2160a_data, !97, !"lx2160a_data", i1 false, i1 false}
!97 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 332, i32 37}
!98 = !{ptr @imx8mm_data, !99, !"imx8mm_data", i1 false, i1 false}
!99 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 340, i32 37}
!100 = !{ptr @imx8qxp_data, !101, !"imx8qxp_data", i1 false, i1 false}
!101 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 348, i32 37}
!102 = !{ptr @imx8dxl_data, !103, !"imx8dxl_data", i1 false, i1 false}
!103 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 356, i32 37}
!104 = !{ptr @nxp_fspi_pm_ops, !105, !"nxp_fspi_pm_ops", i1 false, i1 false}
!105 = !{!"../drivers/spi/spi-nxp-fspi.c", i32 1247, i32 32}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i8 0, i8 2}
!116 = !{i64 2153504914}
!117 = !{i64 2155021128}
!118 = !{i64 5971637}
!119 = !{i64 5972055}
!120 = !{i64 2155024842}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2155022912}
!123 = !{i64 2155023346}
!124 = !{i64 2155025276}
!125 = !{i64 2148979965, i64 2148979970, i64 2148979983, i64 2148980027, i64 2148980061, i64 2148980082}
!126 = !{i32 0, i32 33}
!127 = !{!"auto-init"}
