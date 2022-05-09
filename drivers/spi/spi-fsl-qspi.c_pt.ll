; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-fsl-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-fsl-qspi.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fsl_qspi_devtype_data = type { i32, i32, i32, i32, i32, i8 }
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
%struct.fsl_qspi = type { ptr, ptr, i32, ptr, ptr, ptr, %struct.completion, ptr, %struct.mutex, %struct.pm_qos_request, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_op = type { %struct.anon.72, %struct.anon.73, %struct.anon.74, %struct.anon.75 }
%struct.anon.72 = type { i8, i8, i8, i16 }
%struct.anon.73 = type { i8, i8, i8, i64 }
%struct.anon.74 = type { i8, i8, i8 }
%struct.anon.75 = type { i8, i8, i32, i32, %union.anon.76 }
%union.anon.76 = type { ptr }

@__initcall__kmod_spi_fsl_qspi__235_1002_fsl_qspi_driver_init6 = internal global ptr @fsl_qspi_driver_init, section ".initcall6.init", align 4
@fsl_qspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_qspi_probe, ptr @fsl_qspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_qspi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_qspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_qspi_driver_exit = internal global ptr @fsl_qspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description236 = internal constant [61 x i8] c"spi_fsl_qspi.description=Freescale QuadSPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [49 x i8] c"spi_fsl_qspi.author=Freescale Semiconductor Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [60 x i8] c"spi_fsl_qspi.author=Boris Brezillon <bbrezillon@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [67 x i8] c"spi_fsl_qspi.author=Frieder Schrempf <frieder.schrempf@kontron.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [61 x i8] c"spi_fsl_qspi.author=Yogesh Gaur <yogeshnarayan.gaur@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [56 x i8] c"spi_fsl_qspi.author=Suresh Gupta <suresh.gupta@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [43 x i8] c"spi_fsl_qspi.file=drivers/spi/spi-fsl-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [28 x i8] c"spi_fsl_qspi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl-quadspi\00", [20 x i8] zeroinitializer }, align 32
@fsl_qspi_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vybrid_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7d_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2080a-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls2080a_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@fsl_qspi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fsl_qspi_suspend, ptr @fsl_qspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QuadSPI\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"QuadSPI-memory\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qspi_en\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qspi\00", [27 x i8] zeroinitializer }, align 32
@fsl_qspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 903, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can not enable the clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl_qspi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-fsl-qspi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_qspi_probe._entry_ptr = internal global ptr @fsl_qspi_probe._entry, section ".printk_index", align 4
@fsl_qspi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 915, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_qspi_probe._entry_ptr.12 = internal global ptr @fsl_qspi_probe._entry.10, section ".printk_index", align 4
@fsl_qspi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&q->lock\00", [23 x i8] zeroinitializer }, align 32
@fsl_qspi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr @fsl_qspi_adjust_op_size, ptr @fsl_qspi_supports_op, ptr @fsl_qspi_exec_op, ptr @fsl_qspi_get_name, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@fsl_qspi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 944, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Freescale QuadSPI probe failed\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_qspi_probe._entry_ptr.16 = internal global ptr @fsl_qspi_probe._entry.14, section ".printk_index", align 4
@fsl_qspi_irq_handler.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.7, ptr @.str.19, i8 0, i8 88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_fsl_qspi\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl_qspi_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"QUADSPI_FR : 0x%.8x:0x%.8x\0A\00", [36 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@fsl_qspi_get_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.7, i32 829, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get memory for custom flash name\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_qspi_get_name\00", [46 x i8] zeroinitializer }, align 32
@fsl_qspi_get_name._entry_ptr = internal global ptr @fsl_qspi_get_name._entry, section ".printk_index", align 4
@vybrid_data = internal constant { %struct.fsl_qspi_devtype_data, [40 x i8] } { %struct.fsl_qspi_devtype_data { i32 128, i32 64, i32 14, i32 1024, i32 1, i8 1 }, [40 x i8] zeroinitializer }, align 32
@imx6sx_data = internal constant { %struct.fsl_qspi_devtype_data, [40 x i8] } { %struct.fsl_qspi_devtype_data { i32 128, i32 512, i32 14, i32 1024, i32 10, i8 1 }, [40 x i8] zeroinitializer }, align 32
@imx7d_data = internal constant { %struct.fsl_qspi_devtype_data, [40 x i8] } { %struct.fsl_qspi_devtype_data { i32 128, i32 512, i32 14, i32 1024, i32 38, i8 1 }, [40 x i8] zeroinitializer }, align 32
@imx6ul_data = internal constant { %struct.fsl_qspi_devtype_data, [40 x i8] } { %struct.fsl_qspi_devtype_data { i32 128, i32 512, i32 14, i32 1024, i32 38, i8 1 }, [40 x i8] zeroinitializer }, align 32
@ls1021a_data = internal constant { %struct.fsl_qspi_devtype_data, [40 x i8] } { %struct.fsl_qspi_devtype_data { i32 128, i32 64, i32 14, i32 1024, i32 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@ls2080a_data = internal constant { %struct.fsl_qspi_devtype_data, [40 x i8] } { %struct.fsl_qspi_devtype_data { i32 128, i32 64, i32 0, i32 1024, i32 20, i8 1 }, [40 x i8] zeroinitializer }, align 32
@switch.table.fsl_qspi_supports_op = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 -524, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.fsl_qspi_supports_op.24 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 -524, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.fsl_qspi_supports_op.25 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 -524, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.fsl_qspi_supports_op.26 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 -524, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"fsl_qspi_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 993, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 995, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"fsl_qspi_dt_ids\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 977, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"fsl_qspi_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 988, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 870, i32 59 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 878, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 889, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 895, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 903, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 915, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 919, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"fsl_qspi_mem_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 836, i32 44 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 944, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 352, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 87, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 825, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 829, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"vybrid_data\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 209, i32 43 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"imx6sx_data\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 218, i32 43 }
@___asan_gen_.123 = private unnamed_addr constant [11 x i8] c"imx7d_data\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 227, i32 43 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"imx6ul_data\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 237, i32 43 }
@___asan_gen_.129 = private unnamed_addr constant [13 x i8] c"ls1021a_data\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 247, i32 43 }
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"ls2080a_data\00", align 1
@___asan_gen_.133 = private constant [30 x i8] c"../drivers/spi/spi-fsl-qspi.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 256, i32 43 }
@___asan_gen_.135 = private unnamed_addr constant [34 x i8] c"switch.table.fsl_qspi_supports_op\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [37 x i8] c"switch.table.fsl_qspi_supports_op.24\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [37 x i8] c"switch.table.fsl_qspi_supports_op.25\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [37 x i8] c"switch.table.fsl_qspi_supports_op.26\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_fsl_qspi_driver_exit, ptr @__initcall__kmod_spi_fsl_qspi__235_1002_fsl_qspi_driver_init6, ptr @fsl_qspi_driver_exit, ptr @fsl_qspi_get_name._entry, ptr @fsl_qspi_get_name._entry_ptr, ptr @fsl_qspi_probe._entry, ptr @fsl_qspi_probe._entry.10, ptr @fsl_qspi_probe._entry.14, ptr @fsl_qspi_probe._entry_ptr, ptr @fsl_qspi_probe._entry_ptr.12, ptr @fsl_qspi_probe._entry_ptr.16, ptr @fsl_qspi_driver, ptr @.str, ptr @fsl_qspi_dt_ids, ptr @fsl_qspi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @fsl_qspi_probe.__key, ptr @.str.13, ptr @fsl_qspi_mem_ops, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @vybrid_data, ptr @imx6sx_data, ptr @imx7d_data, ptr @imx6ul_data, ptr @ls1021a_data, ptr @ls2080a_data, ptr @switch.table.fsl_qspi_supports_op, ptr @switch.table.fsl_qspi_supports_op.24, ptr @switch.table.fsl_qspi_supports_op.25, ptr @switch.table.fsl_qspi_supports_op.26], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qspi_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qspi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qspi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qspi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qspi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qspi_get_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vybrid_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sx_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7d_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1021a_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls2080a_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsl_qspi_supports_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsl_qspi_supports_op.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsl_qspi_supports_op.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsl_qspi_supports_op.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_qspi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_qspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_qspi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 204, i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3840, ptr %mode_bits, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %dev4 = getelementptr inbounds %struct.fsl_qspi, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %dev4, align 4
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %devtype_data = getelementptr inbounds %struct.fsl_qspi, ptr %4, i32 0, i32 7
  %6 = ptrtoint ptr %devtype_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %devtype_data, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.spi_controller_put.exit_crit_edge, label %if.end9

if.end.spi_controller_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end9:                                          ; preds = %if.end
  %driver_data.i.i128 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i128 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %driver_data.i.i128, align 4
  %call10 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #8
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call10) #8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %4, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call11 to i32
  br label %spi_controller_put.exit

if.end17:                                         ; preds = %if.end9
  %call18 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #8
  %10 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call18, align 4
  %memmap_phy = getelementptr inbounds %struct.fsl_qspi, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %memmap_phy to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %memmap_phy, align 4
  %13 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devtype_data, align 4
  %ahb_buf_size = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ahb_buf_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ahb_buf_size, align 4
  %mul = shl i32 %16, 2
  %call21 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %11, i32 noundef %mul) #8
  %ahb_addr = getelementptr inbounds %struct.fsl_qspi, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %ahb_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call21, ptr %ahb_addr, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end17.spi_controller_put.exit_crit_edge, label %if.end25

if.end17.spi_controller_put.exit_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end25:                                         ; preds = %if.end17
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  %clk_en = getelementptr inbounds %struct.fsl_qspi, ptr %4, i32 0, i32 4
  %18 = ptrtoint ptr %clk_en to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call26, ptr %clk_en, align 4
  %cmp.i129 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call26 to i32
  br label %spi_controller_put.exit

if.end32:                                         ; preds = %if.end25
  %call33 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  %clk = getelementptr inbounds %struct.fsl_qspi, ptr %4, i32 0, i32 3
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call33, ptr %clk, align 4
  %cmp.i130 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call33 to i32
  br label %spi_controller_put.exit

if.end39:                                         ; preds = %if.end32
  %call40 = tail call fastcc i32 @fsl_qspi_clk_prep_enable(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %do.end

do.end:                                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #11
  br label %spi_controller_put.exit

if.end43:                                         ; preds = %if.end39
  %call44 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp = icmp slt i32 %call44, 0
  br i1 %cmp, label %if.end43.err_disable_clk_crit_edge, label %if.end46

if.end43.err_disable_clk_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clk

if.end46:                                         ; preds = %if.end43
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %call.i131 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call44, ptr noundef nonnull @fsl_qspi_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %23, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool48.not = icmp eq i32 %call.i131, 0
  br i1 %tobool48.not, label %do.body54, label %do.end52

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call.i131) #11
  br label %err_disable_clk

do.body54:                                        ; preds = %if.end46
  %lock = getelementptr inbounds %struct.fsl_qspi, ptr %4, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @fsl_qspi_probe.__key) #8
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %bus_num, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 4, ptr %num_chipselect, align 2
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %26 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @fsl_qspi_mem_ops, ptr %mem_ops, align 4
  tail call fastcc void @fsl_qspi_default_setup(ptr noundef %4)
  %of_node59 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %27 = ptrtoint ptr %of_node59 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %of_node59, align 8
  %call60 = tail call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.body54.cleanup_crit_edge, label %err_destroy_mutex

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_destroy_mutex:                                ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_destroy(ptr noundef %lock) #8
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_destroy_mutex, %do.end52, %if.end43.err_disable_clk_crit_edge
  %ret.0 = phi i32 [ %call44, %if.end43.err_disable_clk_crit_edge ], [ %call.i131, %do.end52 ], [ %call60, %err_destroy_mutex ]
  %28 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %devtype_data, align 4
  %quirks.i.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %err_disable_clk.fsl_qspi_clk_disable_unprep.exit_crit_edge, label %if.then.i

err_disable_clk.fsl_qspi_clk_disable_unprep.exit_crit_edge: ; preds = %err_disable_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_clk_disable_unprep.exit

if.then.i:                                        ; preds = %err_disable_clk
  call void @__sanitizer_cov_trace_pc() #10
  %pm_qos_req.i = getelementptr inbounds %struct.fsl_qspi, ptr %4, i32 0, i32 9
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req.i) #8
  br label %fsl_qspi_clk_disable_unprep.exit

fsl_qspi_clk_disable_unprep.exit:                 ; preds = %if.then.i, %err_disable_clk.fsl_qspi_clk_disable_unprep.exit_crit_edge
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %33) #8
  tail call void @clk_unprepare(ptr noundef %33) #8
  %34 = ptrtoint ptr %clk_en to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_en, align 4
  tail call void @clk_disable(ptr noundef %35) #8
  tail call void @clk_unprepare(ptr noundef %35) #8
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %fsl_qspi_clk_disable_unprep.exit, %do.end, %if.then36, %if.then29, %if.end17.spi_controller_put.exit_crit_edge, %if.then14, %if.end.spi_controller_put.exit_crit_edge
  %ret.1 = phi i32 [ %9, %if.then14 ], [ %19, %if.then29 ], [ %21, %if.then36 ], [ %call40, %do.end ], [ %ret.0, %fsl_qspi_clk_disable_unprep.exit ], [ -19, %if.end.spi_controller_put.exit_crit_edge ], [ -12, %if.end17.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %do.body54.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qspi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %devtype_data.i = getelementptr inbounds %struct.fsl_qspi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %little_endian.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 4194304) #8, !srcloc !92
  br label %qspi_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16384) #8, !srcloc !92
  br label %qspi_writel.exit

qspi_writel.exit:                                 ; preds = %do.body.i, %if.then.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #8
  %10 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devtype_data.i, align 4
  %quirks.i.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i14 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i14, label %qspi_writel.exit.fsl_qspi_clk_disable_unprep.exit_crit_edge, label %if.then.i15

qspi_writel.exit.fsl_qspi_clk_disable_unprep.exit_crit_edge: ; preds = %qspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_clk_disable_unprep.exit

if.then.i15:                                      ; preds = %qspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pm_qos_req.i = getelementptr inbounds %struct.fsl_qspi, ptr %1, i32 0, i32 9
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req.i) #8
  br label %fsl_qspi_clk_disable_unprep.exit

fsl_qspi_clk_disable_unprep.exit:                 ; preds = %if.then.i15, %qspi_writel.exit.fsl_qspi_clk_disable_unprep.exit_crit_edge
  %clk.i = getelementptr inbounds %struct.fsl_qspi, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  %clk_en.i = getelementptr inbounds %struct.fsl_qspi, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %clk_en.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_en.i, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  tail call void @clk_unprepare(ptr noundef %17) #8
  %lock = getelementptr inbounds %struct.fsl_qspi, ptr %1, i32 0, i32 8
  tail call void @mutex_destroy(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_qspi_clk_prep_enable(ptr noundef %q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_en = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 4
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
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i17 = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i18 = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i18, label %if.end.i21, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i21:                                       ; preds = %if.end
  %call1.i19 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool2.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool2.not.i20, label %if.end5, label %if.then3.i22

if.then3.i22:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %if.then3

if.then3:                                         ; preds = %if.then3.i22, %if.end.if.then3_crit_edge
  %retval.0.i23.ph = phi i32 [ %call1.i19, %if.then3.i22 ], [ %call.i17, %if.end.if.then3_crit_edge ]
  %4 = ptrtoint ptr %clk_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_en, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end.i21
  %devtype_data.i = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 7
  %6 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devtype_data.i, align 4
  %quirks.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %pm_qos_req = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 9
  tail call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_req, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then3, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i23.ph, %if.then3 ], [ 0, %if.then8 ], [ 0, %if.end5.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qspi_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 352
  %devtype_data.i = getelementptr inbounds %struct.fsl_qspi, ptr %dev_id, i32 0, i32 7
  %2 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %little_endian.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  br label %qspi_readl.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  br label %qspi_readl.exit

qspi_readl.exit:                                  ; preds = %if.end.i, %if.then.i
  %retval.0.i17 = phi i32 [ %7, %if.then.i ], [ %6, %if.end.i ]
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 352
  %10 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i19 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %little_endian.i19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %little_endian.i19, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i20 = icmp eq i8 %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i20, label %do.body.i, label %if.then.i21

if.then.i21:                                      ; preds = %qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i17) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %14) #8, !srcloc !92
  br label %qspi_writel.exit

do.body.i:                                        ; preds = %qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %retval.0.i17) #8, !srcloc !92
  br label %qspi_writel.exit

qspi_writel.exit:                                 ; preds = %do.body.i, %if.then.i21
  %and = and i32 %retval.0.i17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %qspi_writel.exit.do.body_crit_edge, label %if.then

qspi_writel.exit.do.body_crit_edge:               ; preds = %qspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %qspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %c = getelementptr inbounds %struct.fsl_qspi, ptr %dev_id, i32 0, i32 6
  tail call void @complete(ptr noundef %c) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %qspi_writel.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_qspi_irq_handler.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_qspi_irq_handler, %do.end)) #8
          to label %if.then8 [label %do.end], !srcloc !95

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.fsl_qspi, ptr %dev_id, i32 0, i32 5
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_qspi_irq_handler.__UNIQUE_ID_ddebug234, ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef %retval.0.i17) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_qspi_default_setup(ptr noundef %q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %devtype_data.i.i = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 7
  %2 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data.i.i, align 4
  %quirks.i.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %entry.fsl_qspi_clk_disable_unprep.exit_crit_edge, label %if.then.i

entry.fsl_qspi_clk_disable_unprep.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_clk_disable_unprep.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pm_qos_req.i = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 9
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req.i) #8
  br label %fsl_qspi_clk_disable_unprep.exit

fsl_qspi_clk_disable_unprep.exit:                 ; preds = %if.then.i, %entry.fsl_qspi_clk_disable_unprep.exit_crit_edge
  %clk.i = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 3
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %clk_en.i = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 4
  %8 = ptrtoint ptr %clk_en.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_en.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %10 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef 66000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %fsl_qspi_clk_disable_unprep.exit.cleanup_crit_edge

fsl_qspi_clk_disable_unprep.exit.cleanup_crit_edge: ; preds = %fsl_qspi_clk_disable_unprep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %fsl_qspi_clk_disable_unprep.exit
  %call1 = tail call fastcc i32 @fsl_qspi_clk_prep_enable(ptr noundef %q)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devtype_data.i.i, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %little_endian.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i2 = icmp eq i8 %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i2, label %do.body.i, label %if.then.i3

if.then.i3:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 50331648) #8, !srcloc !92
  br label %qspi_writel.exit

do.body.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 3) #8, !srcloc !92
  br label %qspi_writel.exit

qspi_writel.exit:                                 ; preds = %do.body.i, %if.then.i3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #8
  %17 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %devtype_data.i.i, align 4
  %little_endian.i5 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %little_endian.i5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %little_endian.i5, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i6 = icmp eq i8 %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i6, label %do.body.i8, label %if.then.i7

if.then.i7:                                       ; preds = %qspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 4198144) #8, !srcloc !92
  br label %qspi_writel.exit9

do.body.i8:                                       ; preds = %qspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 999424) #8, !srcloc !92
  br label %qspi_writel.exit9

qspi_writel.exit9:                                ; preds = %do.body.i8, %if.then.i7
  %21 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %devtype_data.i.i, align 4
  %quirks.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  br i1 %tobool7.not, label %qspi_writel.exit9.if.end12_crit_edge, label %if.then8

qspi_writel.exit9.if.end12_crit_edge:             ; preds = %qspi_writel.exit9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %qspi_writel.exit9
  %add.ptr9 = getelementptr i8, ptr %1, i32 12
  %little_endian.i12 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %little_endian.i12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %little_endian.i12, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i13 = icmp eq i8 %26, 0
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8
  br i1 %tobool.not.i13, label %if.end.i, label %if.then.i14

if.then.i14:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  br label %qspi_readl.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  br label %qspi_readl.exit

qspi_readl.exit:                                  ; preds = %if.end.i, %if.then.i14
  %retval.0.i = phi i32 [ %28, %if.then.i14 ], [ %27, %if.end.i ]
  %and = and i32 %retval.0.i, -196609
  %29 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %devtype_data.i.i, align 4
  %little_endian.i16 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %little_endian.i16 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %little_endian.i16, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i17 = icmp eq i8 %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i17, label %do.body.i19, label %if.then.i18

if.then.i18:                                      ; preds = %qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %33) #8, !srcloc !92
  br label %if.end12

do.body.i19:                                      ; preds = %qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %and) #8, !srcloc !92
  br label %if.end12

if.end12:                                         ; preds = %do.body.i19, %if.then.i18, %qspi_writel.exit9.if.end12_crit_edge
  %add.ptr13 = getelementptr i8, ptr %1, i32 264
  %34 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %devtype_data.i.i, align 4
  %little_endian.i23 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %little_endian.i23 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %little_endian.i23, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i24 = icmp eq i8 %37, 0
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8
  br i1 %tobool.not.i24, label %if.end.i26, label %if.then.i25

if.then.i25:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  br label %qspi_readl.exit28

if.end.i26:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  br label %qspi_readl.exit28

qspi_readl.exit28:                                ; preds = %if.end.i26, %if.then.i25
  %retval.0.i27 = phi i32 [ %39, %if.then.i25 ], [ %38, %if.end.i26 ]
  %and15 = and i32 %retval.0.i27, -458850
  %40 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %devtype_data.i.i, align 4
  %little_endian.i30 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %little_endian.i30 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %little_endian.i30, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i31 = icmp eq i8 %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i31, label %do.body.i33, label %if.then.i32

if.then.i32:                                      ; preds = %qspi_readl.exit28
  call void @__sanitizer_cov_trace_pc() #10
  %44 = tail call i32 @llvm.bswap.i32(i32 %and15) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %44) #8, !srcloc !92
  br label %qspi_writel.exit35

do.body.i33:                                      ; preds = %qspi_readl.exit28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %and15) #8, !srcloc !92
  br label %qspi_writel.exit35

qspi_writel.exit35:                               ; preds = %do.body.i33, %if.then.i32
  %add.ptr17 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #8
  %add.ptr18 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #8
  %add.ptr19 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #8
  %45 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %q, align 4
  %add.ptr21 = getelementptr i8, ptr %46, i32 32
  %47 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %devtype_data.i.i, align 4
  %little_endian.i58 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %little_endian.i58 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %little_endian.i58, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i59 = icmp eq i8 %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i59, label %do.body.i61, label %if.then.i60

if.then.i60:                                      ; preds = %qspi_writel.exit35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 15728640) #8, !srcloc !92
  br label %qspi_writel.exit63

do.body.i61:                                      ; preds = %qspi_writel.exit35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 61440) #8, !srcloc !92
  br label %qspi_writel.exit63

qspi_writel.exit63:                               ; preds = %do.body.i61, %if.then.i60
  %add.ptr22 = getelementptr i8, ptr %1, i32 272
  %51 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %devtype_data.i.i, align 4
  %little_endian.i65 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %little_endian.i65 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %little_endian.i65, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i66 = icmp eq i8 %54, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i66, label %do.body.i68, label %if.then.i67

if.then.i67:                                      ; preds = %qspi_writel.exit63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 520093696) #8, !srcloc !92
  br label %qspi_writel.exit70

do.body.i68:                                      ; preds = %qspi_writel.exit63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 31) #8, !srcloc !92
  br label %qspi_writel.exit70

qspi_writel.exit70:                               ; preds = %do.body.i68, %if.then.i67
  %55 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %devtype_data.i.i, align 4
  %ahb_buf_size = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %ahb_buf_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ahb_buf_size, align 4
  %59 = shl i32 %58, 5
  %shl = and i32 %59, 2147483392
  %or = or i32 %shl, -2147483648
  %add.ptr23 = getelementptr i8, ptr %1, i32 28
  %little_endian.i72 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %56, i32 0, i32 5
  %60 = ptrtoint ptr %little_endian.i72 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %little_endian.i72, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i73 = icmp eq i8 %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i73, label %do.body.i75, label %if.then.i74

if.then.i74:                                      ; preds = %qspi_writel.exit70
  call void @__sanitizer_cov_trace_pc() #10
  %62 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %62) #8, !srcloc !92
  br label %qspi_writel.exit77

do.body.i75:                                      ; preds = %qspi_writel.exit70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %or) #8, !srcloc !92
  br label %qspi_writel.exit77

qspi_writel.exit77:                               ; preds = %do.body.i75, %if.then.i74
  %63 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %devtype_data.i.i, align 4
  %quirks.i79 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %quirks.i79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %quirks.i79, align 4
  %67 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool25.not.not = icmp eq i32 %67, 0
  br i1 %tobool25.not.not, label %if.then26, label %qspi_writel.exit77.if.end27_crit_edge

qspi_writel.exit77.if.end27_crit_edge:            ; preds = %qspi_writel.exit77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %qspi_writel.exit77
  call void @__sanitizer_cov_trace_pc() #10
  %memmap_phy = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 2
  %68 = ptrtoint ptr %memmap_phy to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %memmap_phy, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %qspi_writel.exit77.if.end27_crit_edge
  %addr_offset.0 = phi i32 [ %69, %if.then26 ], [ 0, %qspi_writel.exit77.if.end27_crit_edge ]
  %ahb_buf_size29 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %64, i32 0, i32 3
  %70 = ptrtoint ptr %ahb_buf_size29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ahb_buf_size29, align 4
  %add = add i32 %71, %addr_offset.0
  %add.ptr30 = getelementptr i8, ptr %1, i32 384
  %little_endian.i82 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %64, i32 0, i32 5
  %72 = ptrtoint ptr %little_endian.i82 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %little_endian.i82, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i83 = icmp eq i8 %73, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i83, label %do.body.i85, label %if.then.i84

if.then.i84:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %74 = tail call i32 @llvm.bswap.i32(i32 %add) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %74) #8, !srcloc !92
  br label %qspi_writel.exit87

do.body.i85:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %add) #8, !srcloc !92
  br label %qspi_writel.exit87

qspi_writel.exit87:                               ; preds = %do.body.i85, %if.then.i84
  %75 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %devtype_data.i.i, align 4
  %ahb_buf_size32 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %ahb_buf_size32 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ahb_buf_size32, align 4
  %mul = shl i32 %78, 1
  %add33 = add i32 %mul, %addr_offset.0
  %add.ptr34 = getelementptr i8, ptr %1, i32 388
  %little_endian.i89 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %76, i32 0, i32 5
  %79 = ptrtoint ptr %little_endian.i89 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %little_endian.i89, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i90 = icmp eq i8 %80, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i90, label %do.body.i92, label %if.then.i91

if.then.i91:                                      ; preds = %qspi_writel.exit87
  call void @__sanitizer_cov_trace_pc() #10
  %81 = tail call i32 @llvm.bswap.i32(i32 %add33) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %81) #8, !srcloc !92
  br label %qspi_writel.exit94

do.body.i92:                                      ; preds = %qspi_writel.exit87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %add33) #8, !srcloc !92
  br label %qspi_writel.exit94

qspi_writel.exit94:                               ; preds = %do.body.i92, %if.then.i91
  %82 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %devtype_data.i.i, align 4
  %ahb_buf_size36 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %ahb_buf_size36 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ahb_buf_size36, align 4
  %mul37 = mul i32 %85, 3
  %add38 = add i32 %mul37, %addr_offset.0
  %add.ptr39 = getelementptr i8, ptr %1, i32 392
  %little_endian.i96 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %83, i32 0, i32 5
  %86 = ptrtoint ptr %little_endian.i96 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %little_endian.i96, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i97 = icmp eq i8 %87, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i97, label %do.body.i99, label %if.then.i98

if.then.i98:                                      ; preds = %qspi_writel.exit94
  call void @__sanitizer_cov_trace_pc() #10
  %88 = tail call i32 @llvm.bswap.i32(i32 %add38) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %88) #8, !srcloc !92
  br label %qspi_writel.exit101

do.body.i99:                                      ; preds = %qspi_writel.exit94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %add38) #8, !srcloc !92
  br label %qspi_writel.exit101

qspi_writel.exit101:                              ; preds = %do.body.i99, %if.then.i98
  %89 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %devtype_data.i.i, align 4
  %ahb_buf_size41 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %ahb_buf_size41 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ahb_buf_size41, align 4
  %mul42 = shl i32 %92, 2
  %add43 = add i32 %mul42, %addr_offset.0
  %add.ptr44 = getelementptr i8, ptr %1, i32 396
  %little_endian.i103 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %90, i32 0, i32 5
  %93 = ptrtoint ptr %little_endian.i103 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %little_endian.i103, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i104 = icmp eq i8 %94, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i104, label %do.body.i106, label %if.then.i105

if.then.i105:                                     ; preds = %qspi_writel.exit101
  call void @__sanitizer_cov_trace_pc() #10
  %95 = tail call i32 @llvm.bswap.i32(i32 %add43) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %95) #8, !srcloc !92
  br label %qspi_writel.exit108

do.body.i106:                                     ; preds = %qspi_writel.exit101
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %add43) #8, !srcloc !92
  br label %qspi_writel.exit108

qspi_writel.exit108:                              ; preds = %do.body.i106, %if.then.i105
  %selected = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 10
  %96 = ptrtoint ptr %selected to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %selected, align 4
  %97 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %devtype_data.i.i, align 4
  %little_endian.i110 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %little_endian.i110 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %little_endian.i110, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i111 = icmp eq i8 %100, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i111, label %do.body.i113, label %if.then.i112

if.then.i112:                                     ; preds = %qspi_writel.exit108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 201330432) #8, !srcloc !92
  br label %qspi_writel.exit115

do.body.i113:                                     ; preds = %qspi_writel.exit108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 983052) #8, !srcloc !92
  br label %qspi_writel.exit115

qspi_writel.exit115:                              ; preds = %do.body.i113, %if.then.i112
  %101 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %q, align 4
  %add.ptr47 = getelementptr i8, ptr %102, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 -1) #8
  %103 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %q, align 4
  %add.ptr49 = getelementptr i8, ptr %104, i32 356
  %105 = ptrtoint ptr %devtype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %devtype_data.i.i, align 4
  %little_endian.i124 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %little_endian.i124 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %little_endian.i124, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i125 = icmp eq i8 %108, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i125, label %do.body.i127, label %if.then.i126

if.then.i126:                                     ; preds = %qspi_writel.exit115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 16777216) #8, !srcloc !92
  br label %cleanup

do.body.i127:                                     ; preds = %qspi_writel.exit115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 1) #8, !srcloc !92
  br label %cleanup

cleanup:                                          ; preds = %do.body.i127, %if.then.i126, %if.end.cleanup_crit_edge, %fsl_qspi_clk_disable_unprep.exit.cleanup_crit_edge
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
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_qspi_adjust_op_size(ptr nocapture noundef readonly %mem, ptr nocapture noundef %op) #6 align 64 {
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
  %devtype_data = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devtype_data, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %txfifo = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txfifo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp2 = icmp ugt i32 %9, %13
  br i1 %cmp2, label %if.then.if.end30.sink.split_crit_edge, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then.if.end30.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split

if.else:                                          ; preds = %entry
  %ahb_buf_size = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %11, i32 0, i32 3
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

if.end30.sink.split:                              ; preds = %if.then22, %if.else.if.end30.sink.split_crit_edge, %if.then.if.end30.sink.split_crit_edge
  %.sink = phi i32 [ %and, %if.then22 ], [ %13, %if.then.if.end30.sink.split_crit_edge ], [ %15, %if.else.if.end30.sink.split_crit_edge ]
  %18 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %nbytes, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else17.if.end30_crit_edge, %if.then.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @fsl_qspi_supports_op(ptr noundef %mem, ptr noundef %op) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 4
  br i1 %8, label %switch.lookup, label %entry.fsl_qspi_check_buswidth.exit_crit_edge

entry.fsl_qspi_check_buswidth.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_check_buswidth.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.fsl_qspi_supports_op, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %fsl_qspi_check_buswidth.exit

fsl_qspi_check_buswidth.exit:                     ; preds = %switch.lookup, %entry.fsl_qspi_check_buswidth.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -524, %entry.fsl_qspi_check_buswidth.exit_crit_edge ]
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %fsl_qspi_check_buswidth.exit.if.end_crit_edge, label %if.then

fsl_qspi_check_buswidth.exit.if.end_crit_edge:    ; preds = %fsl_qspi_check_buswidth.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %fsl_qspi_check_buswidth.exit
  %buswidth3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %buswidth3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buswidth3, align 1
  %switch.tableidx127 = add i8 %14, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx127)
  %15 = icmp ult i8 %switch.tableidx127, 4
  br i1 %15, label %switch.lookup126, label %if.then.fsl_qspi_check_buswidth.exit117_crit_edge

if.then.fsl_qspi_check_buswidth.exit117_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_check_buswidth.exit117

switch.lookup126:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = sext i8 %switch.tableidx127 to i32
  %switch.gep128 = getelementptr inbounds [4 x i32], ptr @switch.table.fsl_qspi_supports_op.24, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep128 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load129 = load i32, ptr %switch.gep128, align 4
  br label %fsl_qspi_check_buswidth.exit117

fsl_qspi_check_buswidth.exit117:                  ; preds = %switch.lookup126, %if.then.fsl_qspi_check_buswidth.exit117_crit_edge
  %retval.0.i116 = phi i32 [ %switch.load129, %switch.lookup126 ], [ -524, %if.then.fsl_qspi_check_buswidth.exit117_crit_edge ]
  %or = or i32 %retval.0.i116, %retval.0.i
  br label %if.end

if.end:                                           ; preds = %fsl_qspi_check_buswidth.exit117, %fsl_qspi_check_buswidth.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %or, %fsl_qspi_check_buswidth.exit117 ], [ %retval.0.i, %fsl_qspi_check_buswidth.exit.if.end_crit_edge ]
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
  %switch.tableidx131 = add i8 %21, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx131)
  %22 = icmp ult i8 %switch.tableidx131, 4
  br i1 %22, label %switch.lookup130, label %if.then7.fsl_qspi_check_buswidth.exit120_crit_edge

if.then7.fsl_qspi_check_buswidth.exit120_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_check_buswidth.exit120

switch.lookup130:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %23 = sext i8 %switch.tableidx131 to i32
  %switch.gep132 = getelementptr inbounds [4 x i32], ptr @switch.table.fsl_qspi_supports_op.25, i32 0, i32 %23
  %24 = ptrtoint ptr %switch.gep132 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load133 = load i32, ptr %switch.gep132, align 4
  br label %fsl_qspi_check_buswidth.exit120

fsl_qspi_check_buswidth.exit120:                  ; preds = %switch.lookup130, %if.then7.fsl_qspi_check_buswidth.exit120_crit_edge
  %retval.0.i119 = phi i32 [ %switch.load133, %switch.lookup130 ], [ -524, %if.then7.fsl_qspi_check_buswidth.exit120_crit_edge ]
  %or11 = or i32 %retval.0.i119, %ret.0
  br label %if.end12

if.end12:                                         ; preds = %fsl_qspi_check_buswidth.exit120, %if.end.if.end12_crit_edge
  %ret.1 = phi i32 [ %or11, %fsl_qspi_check_buswidth.exit120 ], [ %ret.0, %if.end.if.end12_crit_edge ]
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
  %switch.tableidx135 = add i8 %28, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx135)
  %29 = icmp ult i8 %switch.tableidx135, 4
  br i1 %29, label %switch.lookup134, label %if.then15.fsl_qspi_check_buswidth.exit123_crit_edge

if.then15.fsl_qspi_check_buswidth.exit123_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_check_buswidth.exit123

switch.lookup134:                                 ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %30 = sext i8 %switch.tableidx135 to i32
  %switch.gep136 = getelementptr inbounds [4 x i32], ptr @switch.table.fsl_qspi_supports_op.26, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep136 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load137 = load i32, ptr %switch.gep136, align 4
  br label %fsl_qspi_check_buswidth.exit123

fsl_qspi_check_buswidth.exit123:                  ; preds = %switch.lookup134, %if.then15.fsl_qspi_check_buswidth.exit123_crit_edge
  %retval.0.i122 = phi i32 [ %switch.load137, %switch.lookup134 ], [ -524, %if.then15.fsl_qspi_check_buswidth.exit123_crit_edge ]
  %or19 = or i32 %retval.0.i122, %ret.1
  br label %if.end20

if.end20:                                         ; preds = %fsl_qspi_check_buswidth.exit123, %if.end12.if.end20_crit_edge
  %ret.2 = phi i32 [ %or19, %fsl_qspi_check_buswidth.exit123 ], [ %ret.1, %if.end12.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool21.not = icmp eq i32 %ret.2, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %conv = zext i8 %12 to i32
  %conv28 = zext i8 %19 to i16
  %not.tobool29.not = xor i1 %tobool6.not, true
  %cond = zext i1 %not.tobool29.not to i32
  %add = add nuw nsw i32 %cond, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp ne i32 %26, 0
  %cond33 = zext i1 %tobool32.not to i32
  %add34 = add nuw nsw i32 %add, %cond33
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %add34)
  %cmp = icmp ugt i32 %add34, 6
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end37

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end23
  br i1 %tobool6.not, label %if.end37.if.end51_crit_edge, label %land.lhs.true

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end37
  %mul = shl nuw nsw i16 %conv28, 3
  %buswidth46 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %buswidth46 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buswidth46, align 1
  %div.rhs.trunc = zext i8 %33 to i16
  %div125 = udiv i16 %mul, %div.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %div125)
  %cmp48 = icmp ugt i16 %div125, 64
  br i1 %cmp48, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %land.lhs.true.if.end51_crit_edge, %if.end37.if.end51_crit_edge
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dir, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %if.end51.if.end83_crit_edge [
    i32 1, label %land.lhs.true55
    i32 2, label %land.lhs.true76
  ]

if.end51.if.end83_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

land.lhs.true55:                                  ; preds = %if.end51
  %devtype_data = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 7
  %37 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devtype_data, align 4
  %ahb_buf_size = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %ahb_buf_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ahb_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %40)
  %cmp58 = icmp ugt i32 %26, %40
  br i1 %cmp58, label %land.lhs.true55.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true55
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %38, align 4
  %sub = add i32 %42, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub)
  %cmp63 = icmp ule i32 %26, %sub
  %and = and i32 %26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp68 = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp68, %cmp63
  br i1 %or.cond, label %lor.lhs.false.if.end83_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

land.lhs.true76:                                  ; preds = %if.end51
  %devtype_data79 = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 7
  %43 = ptrtoint ptr %devtype_data79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %devtype_data79, align 4
  %txfifo = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %txfifo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %46)
  %cmp80 = icmp ugt i32 %26, %46
  br i1 %cmp80, label %land.lhs.true76.cleanup_crit_edge, label %land.lhs.true76.if.end83_crit_edge

land.lhs.true76.if.end83_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

land.lhs.true76.cleanup_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end83:                                         ; preds = %land.lhs.true76.if.end83_crit_edge, %lor.lhs.false.if.end83_crit_edge, %if.end51.if.end83_crit_edge
  %call84 = tail call zeroext i1 @spi_mem_default_supports_op(ptr noundef %mem, ptr noundef %op) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %land.lhs.true76.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true55.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  %retval.0 = phi i1 [ %call84, %if.end83 ], [ false, %if.end20.cleanup_crit_edge ], [ false, %if.end23.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %land.lhs.true55.cleanup_crit_edge ], [ false, %land.lhs.true76.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qspi_exec_op(ptr nocapture noundef readonly %mem, ptr noundef readonly %op) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %val.i135 = alloca i32, align 4
  %lutval.i = alloca [4 x i32], align 4
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %devtype_data = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devtype_data, align 4
  %invalid_mstrid1 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %invalid_mstrid1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %invalid_mstrid1, align 4
  %lock = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %add.ptr = getelementptr i8, ptr %7, i32 348
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 639) #8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %13 = and i32 %12, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not1.i = icmp eq i32 %13, 0
  br i1 %tobool13.not1.i, label %entry.fsl_qspi_readl_poll_tout.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.fsl_qspi_readl_poll_tout.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_readl_poll_tout.exit

land.lhs.true.i:                                  ; preds = %if.then29.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call17.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call17.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then21.i, label %if.then29.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %fsl_qspi_readl_poll_tout.exit

if.then29.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %16 = and i32 %15, 100663296
  %tobool13.not.i = icmp eq i32 %16, 0
  br i1 %tobool13.not.i, label %if.then29.i.fsl_qspi_readl_poll_tout.exit_crit_edge, label %if.then29.i.land.lhs.true.i_crit_edge

if.then29.i.land.lhs.true.i_crit_edge:            ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then29.i.fsl_qspi_readl_poll_tout.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_readl_poll_tout.exit

fsl_qspi_readl_poll_tout.exit:                    ; preds = %if.then29.i.fsl_qspi_readl_poll_tout.exit_crit_edge, %if.then21.i, %entry.fsl_qspi_readl_poll_tout.exit_crit_edge
  %17 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem, align 4
  %selected.i = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 10
  %19 = ptrtoint ptr %selected.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %selected.i, align 4
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i)
  %cmp.i = icmp eq i32 %20, %conv.i
  br i1 %cmp.i, label %fsl_qspi_readl_poll_tout.exit.fsl_qspi_select_mem.exit_crit_edge, label %if.end.i

fsl_qspi_readl_poll_tout.exit.fsl_qspi_select_mem.exit_crit_edge: ; preds = %fsl_qspi_readl_poll_tout.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_select_mem.exit

if.end.i:                                         ; preds = %fsl_qspi_readl_poll_tout.exit
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_speed_hz.i, align 8
  %25 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devtype_data, align 4
  %quirks.i.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  %mul.i = shl i32 %24, 2
  %spec.select.i = select i1 %tobool.not.i, i32 %24, i32 %mul.i
  %and.i.i.i = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.fsl_qspi_clk_disable_unprep.exit.i_crit_edge, label %if.then.i.i

if.end.i.fsl_qspi_clk_disable_unprep.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_clk_disable_unprep.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pm_qos_req.i.i = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 9
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req.i.i) #8
  br label %fsl_qspi_clk_disable_unprep.exit.i

fsl_qspi_clk_disable_unprep.exit.i:               ; preds = %if.then.i.i, %if.end.i.fsl_qspi_clk_disable_unprep.exit.i_crit_edge
  %clk.i.i = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 3
  %29 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %30) #8
  tail call void @clk_unprepare(ptr noundef %30) #8
  %clk_en.i.i = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 4
  %31 = ptrtoint ptr %clk_en.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_en.i.i, align 4
  tail call void @clk_disable(ptr noundef %32) #8
  tail call void @clk_unprepare(ptr noundef %32) #8
  %33 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk.i.i, align 4
  %call4.i = tail call i32 @clk_set_rate(ptr noundef %34, i32 noundef %spec.select.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %fsl_qspi_clk_disable_unprep.exit.i.fsl_qspi_select_mem.exit_crit_edge

fsl_qspi_clk_disable_unprep.exit.i.fsl_qspi_select_mem.exit_crit_edge: ; preds = %fsl_qspi_clk_disable_unprep.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_select_mem.exit

if.end7.i:                                        ; preds = %fsl_qspi_clk_disable_unprep.exit.i
  %call8.i = tail call fastcc i32 @fsl_qspi_clk_prep_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.fsl_qspi_select_mem.exit_crit_edge

if.end7.i.fsl_qspi_select_mem.exit_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_select_mem.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %chip_select.i, align 4
  %conv13.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %selected.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv13.i, ptr %selected.i, align 4
  tail call fastcc void @fsl_qspi_invalidate(ptr noundef %5) #8
  br label %fsl_qspi_select_mem.exit

fsl_qspi_select_mem.exit:                         ; preds = %if.end11.i, %if.end7.i.fsl_qspi_select_mem.exit_crit_edge, %fsl_qspi_clk_disable_unprep.exit.i.fsl_qspi_select_mem.exit_crit_edge, %fsl_qspi_readl_poll_tout.exit.fsl_qspi_select_mem.exit_crit_edge
  %38 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %devtype_data, align 4
  %quirks.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quirks.i, align 4
  %42 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.not = icmp eq i32 %42, 0
  br i1 %tobool.not.not, label %if.then, label %fsl_qspi_select_mem.exit.if.end_crit_edge

fsl_qspi_select_mem.exit.if.end_crit_edge:        ; preds = %fsl_qspi_select_mem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %fsl_qspi_select_mem.exit
  call void @__sanitizer_cov_trace_pc() #10
  %memmap_phy = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 2
  %43 = ptrtoint ptr %memmap_phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %memmap_phy, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %fsl_qspi_select_mem.exit.if.end_crit_edge
  %addr_offset.0 = phi i32 [ %44, %if.then ], [ 0, %fsl_qspi_select_mem.exit.if.end_crit_edge ]
  %45 = ptrtoint ptr %selected.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %selected.i, align 4
  %ahb_buf_size = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %39, i32 0, i32 3
  %47 = ptrtoint ptr %ahb_buf_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ahb_buf_size, align 4
  %mul = mul i32 %48, %46
  %add = add i32 %mul, %addr_offset.0
  %add.ptr6 = getelementptr i8, ptr %7, i32 256
  %little_endian.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %39, i32 0, i32 5
  %49 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %little_endian.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i74 = icmp eq i8 %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i74, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %51 = tail call i32 @llvm.bswap.i32(i32 %add) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %51) #8, !srcloc !92
  br label %qspi_writel.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %add) #8, !srcloc !92
  br label %qspi_writel.exit

qspi_writel.exit:                                 ; preds = %do.body.i, %if.then.i
  %52 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %devtype_data, align 4
  %little_endian.i77 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %little_endian.i77 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %little_endian.i77, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i78 = icmp eq i8 %55, 0
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8
  br i1 %tobool.not.i78, label %if.end.i80, label %if.then.i79

if.then.i79:                                      ; preds = %qspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  br label %qspi_readl.exit

if.end.i80:                                       ; preds = %qspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  br label %qspi_readl.exit

qspi_readl.exit:                                  ; preds = %if.end.i80, %if.then.i79
  %retval.0.i = phi i32 [ %57, %if.then.i79 ], [ %56, %if.end.i80 ]
  %or9 = or i32 %retval.0.i, 3072
  %58 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %devtype_data, align 4
  %little_endian.i82 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %little_endian.i82 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %little_endian.i82, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i83 = icmp eq i8 %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i83, label %do.body.i85, label %if.then.i84

if.then.i84:                                      ; preds = %qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %62 = tail call i32 @llvm.bswap.i32(i32 %or9) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %62) #8, !srcloc !92
  br label %qspi_writel.exit87

do.body.i85:                                      ; preds = %qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %or9) #8, !srcloc !92
  br label %qspi_writel.exit87

qspi_writel.exit87:                               ; preds = %do.body.i85, %if.then.i84
  %add.ptr11 = getelementptr i8, ptr %7, i32 364
  %63 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %devtype_data, align 4
  %little_endian.i89 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %little_endian.i89 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %little_endian.i89, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i90 = icmp eq i8 %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i90, label %do.body.i92, label %if.then.i91

if.then.i91:                                      ; preds = %qspi_writel.exit87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16842752) #8, !srcloc !92
  br label %qspi_writel.exit94

do.body.i92:                                      ; preds = %qspi_writel.exit87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 257) #8, !srcloc !92
  br label %qspi_writel.exit94

qspi_writel.exit94:                               ; preds = %do.body.i92, %if.then.i91
  %add.ptr12 = getelementptr i8, ptr %7, i32 16
  %67 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %devtype_data, align 4
  %little_endian.i96 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %little_endian.i96 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %little_endian.i96, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i97 = icmp eq i8 %70, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i97, label %do.body.i99, label %if.then.i98

if.then.i98:                                      ; preds = %qspi_writel.exit94
  call void @__sanitizer_cov_trace_pc() #10
  %71 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %71) #8, !srcloc !92
  br label %qspi_writel.exit101

do.body.i99:                                      ; preds = %qspi_writel.exit94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %11) #8, !srcloc !92
  br label %qspi_writel.exit101

qspi_writel.exit101:                              ; preds = %do.body.i99, %if.then.i98
  %add.ptr13 = getelementptr i8, ptr %7, i32 20
  %72 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %devtype_data, align 4
  %little_endian.i103 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %little_endian.i103 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %little_endian.i103, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i104 = icmp eq i8 %75, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i104, label %do.body.i106, label %if.then.i105

if.then.i105:                                     ; preds = %qspi_writel.exit101
  call void @__sanitizer_cov_trace_pc() #10
  %76 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %76) #8, !srcloc !92
  br label %qspi_writel.exit108

do.body.i106:                                     ; preds = %qspi_writel.exit101
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %11) #8, !srcloc !92
  br label %qspi_writel.exit108

qspi_writel.exit108:                              ; preds = %do.body.i106, %if.then.i105
  %add.ptr14 = getelementptr i8, ptr %7, i32 24
  %77 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %devtype_data, align 4
  %little_endian.i110 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %little_endian.i110 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %little_endian.i110, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i111 = icmp eq i8 %80, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i111, label %do.body.i113, label %if.then.i112

if.then.i112:                                     ; preds = %qspi_writel.exit108
  call void @__sanitizer_cov_trace_pc() #10
  %81 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %81) #8, !srcloc !92
  br label %qspi_writel.exit115

do.body.i113:                                     ; preds = %qspi_writel.exit108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %11) #8, !srcloc !92
  br label %qspi_writel.exit115

qspi_writel.exit115:                              ; preds = %do.body.i113, %if.then.i112
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lutval.i) #8
  %84 = getelementptr inbounds i8, ptr %lutval.i, i32 4
  %85 = call ptr @memset(ptr %84, i32 0, i32 12)
  %buswidth.i = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 1
  %86 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %buswidth.i, align 1
  %conv.i116 = zext i8 %87 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i117 = icmp eq i8 %87, 0
  %88 = tail call i32 @llvm.ctlz.i32(i32 %conv.i116, i1 true) #8, !range !99
  %.neg.i = mul nsw i32 %88, -256
  %sub.i.op.op.i = add nsw i32 %.neg.i, 7936
  %shl.i = select i1 %tobool.not.i.i117, i32 -1280, i32 %sub.i.op.op.i
  %opcode.i = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 3
  %89 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %opcode.i, align 4
  %91 = or i16 %90, 1024
  %or.i = zext i16 %91 to i32
  %or5.i = or i32 %shl.i, %or.i
  %92 = ptrtoint ptr %lutval.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or5.i, ptr %lutval.i, align 4
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %93 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %addr.i, align 8
  %conv6.i = zext i8 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp174.not.i = icmp eq i8 %94, 0
  br i1 %cmp174.not.i, label %qspi_writel.exit115.for.end.i_crit_edge, label %for.body.lr.ph.i

qspi_writel.exit115.for.end.i_crit_edge:          ; preds = %qspi_writel.exit115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %qspi_writel.exit115
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %val.i, align 8
  %buswidth16.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %97 = ptrtoint ptr %buswidth16.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %buswidth16.i, align 1
  %conv17.i = zext i8 %98 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i136.i = icmp eq i8 %98, 0
  %99 = tail call i32 @llvm.ctlz.i32(i32 %conv17.i, i1 true) #8, !range !99
  %.neg173.i = mul nsw i32 %99, -256
  %sub.i137.op.op.i = add nsw i32 %.neg173.i, 7936
  %sub.i137.op.op.i.op = or i32 %sub.i137.op.op.i, 4096
  %or21.i = select i1 %tobool.not.i136.i, i32 -256, i32 %sub.i137.op.op.i.op
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0176.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc28.i, %for.body.i.for.body.i_crit_edge ]
  %lutidx.0175.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %100 = xor i32 %i.0176.i, -1
  %sub13.i = add nsw i32 %100, %conv6.i
  %mul.i118 = shl i32 %sub13.i, 3
  %sh_prom.i = zext i32 %mul.i118 to i64
  %shr.i = lshr i64 %96, %sh_prom.i
  %conv14.i = trunc i64 %shr.i to i32
  %conv22.i = and i32 %conv14.i, 255
  %or23.i = or i32 %conv22.i, %or21.i
  %rem.urem.i = shl i32 %lutidx.0175.i, 4
  %mul24.i = and i32 %rem.urem.i, 16
  %shl25.i = shl i32 %or23.i, %mul24.i
  %div.udiv179.i = lshr i32 %lutidx.0175.i, 1
  %arrayidx26.i = getelementptr [4 x i32], ptr %lutval.i, i32 0, i32 %div.udiv179.i
  %101 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx26.i, align 4
  %or27.i = or i32 %shl25.i, %102
  store i32 %or27.i, ptr %arrayidx26.i, align 4
  %inc.i = add nuw nsw i32 %lutidx.0175.i, 1
  %inc28.i = add nuw nsw i32 %i.0176.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %conv6.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %qspi_writel.exit115.for.end.i_crit_edge
  %lutidx.0.lcssa.i = phi i32 [ 1, %qspi_writel.exit115.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %103 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i119 = icmp eq i8 %104, 0
  br i1 %tobool.not.i119, label %for.end.i.if.end.i121_crit_edge, label %if.then.i120

for.end.i.if.end.i121_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i121

if.then.i120:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %buswidth31.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %105 = ptrtoint ptr %buswidth31.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %buswidth31.i, align 1
  %conv32.i = zext i8 %106 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i139.i = icmp eq i8 %106, 0
  %107 = tail call i32 @llvm.ctlz.i32(i32 %conv32.i, i1 true) #8, !range !99
  %.neg171.i = mul nsw i32 %107, -256
  %sub.i140.op.op.i = add nsw i32 %.neg171.i, 7936
  %shl35.i = select i1 %tobool.not.i139.i, i32 -3328, i32 %sub.i140.op.op.i
  %conv39.i = zext i8 %104 to i16
  %mul40.i = shl nuw nsw i16 %conv39.i, 3
  %div44.rhs.trunc.i = zext i8 %106 to i16
  %div44170.i = udiv i16 %mul40.i, %div44.rhs.trunc.i
  %108 = or i16 %div44170.i, 3072
  %or36.i = zext i16 %108 to i32
  %or45.i = or i32 %shl35.i, %or36.i
  %lutidx.0.lcssa.i.frozen = freeze i32 %lutidx.0.lcssa.i
  %div49.i = sdiv i32 %lutidx.0.lcssa.i.frozen, 2
  %109 = mul i32 %div49.i, 2
  %rem46.i.decomposed = sub i32 %lutidx.0.lcssa.i.frozen, %109
  %mul47.i = shl nsw i32 %rem46.i.decomposed, 4
  %shl48.i = shl i32 %or45.i, %mul47.i
  %arrayidx50.i = getelementptr [4 x i32], ptr %lutval.i, i32 0, i32 %div49.i
  %110 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx50.i, align 4
  %or51.i = or i32 %shl48.i, %111
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %inc52.i = add i32 %lutidx.0.lcssa.i, 1
  br label %if.end.i121

if.end.i121:                                      ; preds = %if.then.i120, %for.end.i.if.end.i121_crit_edge
  %lutidx.1.i = phi i32 [ %inc52.i, %if.then.i120 ], [ %lutidx.0.lcssa.i, %for.end.i.if.end.i121_crit_edge ]
  %nbytes53.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %112 = ptrtoint ptr %nbytes53.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nbytes53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool54.not.i = icmp eq i32 %113, 0
  br i1 %tobool54.not.i, label %if.end.i121.if.end75.i_crit_edge, label %if.then55.i

if.end.i121.if.end75.i_crit_edge:                 ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

if.then55.i:                                      ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %114 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp57.i = icmp eq i32 %115, 1
  %cond.i = select i1 %cmp57.i, i32 7168, i32 8192
  %116 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %data.i, align 4
  %conv62.i = zext i8 %117 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i142.i = icmp eq i8 %117, 0
  %118 = tail call i32 @llvm.ctlz.i32(i32 %conv62.i, i1 true) #8, !range !99
  %.neg172.i = mul nsw i32 %118, -256
  %sub.i143.op.op.i = add nsw i32 %.neg172.i, 7936
  %shl65.i = select i1 %tobool.not.i142.i, i32 -256, i32 %sub.i143.op.op.i
  %or66.i = or i32 %shl65.i, %cond.i
  %lutidx.1.i.frozen = freeze i32 %lutidx.1.i
  %div71.i = sdiv i32 %lutidx.1.i.frozen, 2
  %119 = mul i32 %div71.i, 2
  %rem68.i.decomposed = sub i32 %lutidx.1.i.frozen, %119
  %mul69.i = shl nsw i32 %rem68.i.decomposed, 4
  %shl70.i = shl i32 %or66.i, %mul69.i
  %arrayidx72.i = getelementptr [4 x i32], ptr %lutval.i, i32 0, i32 %div71.i
  %120 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx72.i, align 4
  %or73.i = or i32 %shl70.i, %121
  store i32 %or73.i, ptr %arrayidx72.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then55.i, %if.end.i121.if.end75.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %83, i32 768
  %122 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %devtype_data, align 4
  %little_endian.i.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %little_endian.i.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i145.i = icmp eq i8 %125, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i145.i, label %do.body.i.i, label %if.then.i.i123

if.then.i.i123:                                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -262475686) #8, !srcloc !92
  br label %qspi_writel.exit.i

do.body.i.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1525701360) #8, !srcloc !92
  br label %qspi_writel.exit.i

qspi_writel.exit.i:                               ; preds = %do.body.i.i, %if.then.i.i123
  %126 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %5, align 4
  %add.ptr84.i = getelementptr i8, ptr %127, i32 772
  %128 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %devtype_data, align 4
  %little_endian.i147.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %little_endian.i147.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %little_endian.i147.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i148.i = icmp eq i8 %131, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i148.i, label %do.body.i150.i, label %if.then.i149.i

if.then.i149.i:                                   ; preds = %qspi_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 33554432) #8, !srcloc !92
  br label %qspi_writel.exit151.i

do.body.i150.i:                                   ; preds = %qspi_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 2) #8, !srcloc !92
  br label %qspi_writel.exit151.i

qspi_writel.exit151.i:                            ; preds = %do.body.i150.i, %if.then.i149.i
  %132 = ptrtoint ptr %lutval.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %lutval.i, align 4
  %add.ptr91.i = getelementptr i8, ptr %83, i32 1024
  %134 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %devtype_data, align 4
  %little_endian.i153.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %135, i32 0, i32 5
  %136 = ptrtoint ptr %little_endian.i153.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %little_endian.i153.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i154.i = icmp eq i8 %137, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i154.i, label %do.body.i156.i, label %if.then.i155.i

if.then.i155.i:                                   ; preds = %qspi_writel.exit151.i
  call void @__sanitizer_cov_trace_pc() #10
  %138 = tail call i32 @llvm.bswap.i32(i32 %133) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i, i32 %138) #8, !srcloc !92
  br label %qspi_writel.exit157.i

do.body.i156.i:                                   ; preds = %qspi_writel.exit151.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i, i32 %133) #8, !srcloc !92
  br label %qspi_writel.exit157.i

qspi_writel.exit157.i:                            ; preds = %do.body.i156.i, %if.then.i155.i
  %139 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %84, align 4
  %add.ptr91.1.i = getelementptr i8, ptr %83, i32 1028
  %141 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %devtype_data, align 4
  %little_endian.i153.1.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %little_endian.i153.1.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %little_endian.i153.1.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i154.1.i = icmp eq i8 %144, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i154.1.i, label %do.body.i156.1.i, label %if.then.i155.1.i

if.then.i155.1.i:                                 ; preds = %qspi_writel.exit157.i
  call void @__sanitizer_cov_trace_pc() #10
  %145 = tail call i32 @llvm.bswap.i32(i32 %140) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.1.i, i32 %145) #8, !srcloc !92
  br label %qspi_writel.exit157.1.i

do.body.i156.1.i:                                 ; preds = %qspi_writel.exit157.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.1.i, i32 %140) #8, !srcloc !92
  br label %qspi_writel.exit157.1.i

qspi_writel.exit157.1.i:                          ; preds = %do.body.i156.1.i, %if.then.i155.1.i
  %arrayidx89.2.i = getelementptr inbounds [4 x i32], ptr %lutval.i, i32 0, i32 2
  %146 = ptrtoint ptr %arrayidx89.2.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx89.2.i, align 4
  %add.ptr91.2.i = getelementptr i8, ptr %83, i32 1032
  %148 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %devtype_data, align 4
  %little_endian.i153.2.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %little_endian.i153.2.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %little_endian.i153.2.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i154.2.i = icmp eq i8 %151, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i154.2.i, label %do.body.i156.2.i, label %if.then.i155.2.i

if.then.i155.2.i:                                 ; preds = %qspi_writel.exit157.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %152 = tail call i32 @llvm.bswap.i32(i32 %147) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.2.i, i32 %152) #8, !srcloc !92
  br label %qspi_writel.exit157.2.i

do.body.i156.2.i:                                 ; preds = %qspi_writel.exit157.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.2.i, i32 %147) #8, !srcloc !92
  br label %qspi_writel.exit157.2.i

qspi_writel.exit157.2.i:                          ; preds = %do.body.i156.2.i, %if.then.i155.2.i
  %arrayidx89.3.i = getelementptr inbounds [4 x i32], ptr %lutval.i, i32 0, i32 3
  %153 = ptrtoint ptr %arrayidx89.3.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx89.3.i, align 4
  %add.ptr91.3.i = getelementptr i8, ptr %83, i32 1036
  %155 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %devtype_data, align 4
  %little_endian.i153.3.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %little_endian.i153.3.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %little_endian.i153.3.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i154.3.i = icmp eq i8 %158, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i154.3.i, label %do.body.i156.3.i, label %if.then.i155.3.i

if.then.i155.3.i:                                 ; preds = %qspi_writel.exit157.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %159 = tail call i32 @llvm.bswap.i32(i32 %154) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.3.i, i32 %159) #8, !srcloc !92
  br label %qspi_writel.exit157.3.i

do.body.i156.3.i:                                 ; preds = %qspi_writel.exit157.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.3.i, i32 %154) #8, !srcloc !92
  br label %qspi_writel.exit157.3.i

qspi_writel.exit157.3.i:                          ; preds = %do.body.i156.3.i, %if.then.i155.3.i
  %160 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %5, align 4
  %add.ptr96.i = getelementptr i8, ptr %161, i32 768
  %162 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %devtype_data, align 4
  %little_endian.i159.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %163, i32 0, i32 5
  %164 = ptrtoint ptr %little_endian.i159.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %little_endian.i159.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i160.i = icmp eq i8 %165, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i160.i, label %do.body.i162.i, label %if.then.i161.i

if.then.i161.i:                                   ; preds = %qspi_writel.exit157.3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96.i, i32 -262475686) #8, !srcloc !92
  br label %qspi_writel.exit163.i

do.body.i162.i:                                   ; preds = %qspi_writel.exit157.3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96.i, i32 1525701360) #8, !srcloc !92
  br label %qspi_writel.exit163.i

qspi_writel.exit163.i:                            ; preds = %do.body.i162.i, %if.then.i161.i
  %166 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %5, align 4
  %add.ptr98.i = getelementptr i8, ptr %167, i32 772
  %168 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %devtype_data, align 4
  %little_endian.i165.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %169, i32 0, i32 5
  %170 = ptrtoint ptr %little_endian.i165.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %little_endian.i165.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i166.i = icmp eq i8 %171, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i166.i, label %do.body.i168.i, label %if.then.i167.i

if.then.i167.i:                                   ; preds = %qspi_writel.exit163.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 16777216) #8, !srcloc !92
  br label %fsl_qspi_prepare_lut.exit

do.body.i168.i:                                   ; preds = %qspi_writel.exit163.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 1) #8, !srcloc !92
  br label %fsl_qspi_prepare_lut.exit

fsl_qspi_prepare_lut.exit:                        ; preds = %do.body.i168.i, %if.then.i167.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lutval.i) #8
  %172 = ptrtoint ptr %nbytes53.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %nbytes53.i, align 4
  %174 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %devtype_data, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  %sub = add i32 %177, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %sub)
  %cmp = icmp ugt i32 %173, %sub
  br i1 %cmp, label %land.lhs.true, label %fsl_qspi_prepare_lut.exit.if.else_crit_edge

fsl_qspi_prepare_lut.exit.if.else_crit_edge:      ; preds = %fsl_qspi_prepare_lut.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %fsl_qspi_prepare_lut.exit
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %178 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp17 = icmp eq i32 %179, 1
  br i1 %cmp17, label %if.then18, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %180 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %buf.i, align 4
  %ahb_addr.i = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 1
  %182 = ptrtoint ptr %ahb_addr.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ahb_addr.i, align 4
  %184 = ptrtoint ptr %selected.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %selected.i, align 4
  %ahb_buf_size.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %175, i32 0, i32 3
  %186 = ptrtoint ptr %ahb_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ahb_buf_size.i, align 4
  %mul.i126 = mul i32 %187, %185
  %add.ptr.i127 = getelementptr i8, ptr %183, i32 %mul.i126
  tail call void @mmiocpy(ptr noundef %181, ptr noundef %add.ptr.i127, i32 noundef %173) #8
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %fsl_qspi_prepare_lut.exit.if.else_crit_edge
  %add.ptr19 = getelementptr i8, ptr %7, i32 272
  %little_endian.i129 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %175, i32 0, i32 5
  %188 = ptrtoint ptr %little_endian.i129 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %little_endian.i129, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool.not.i130 = icmp eq i8 %189, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i130, label %do.body.i132, label %if.then.i131

if.then.i131:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 520159232) #8, !srcloc !92
  br label %qspi_writel.exit134

do.body.i132:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 287) #8, !srcloc !92
  br label %qspi_writel.exit134

qspi_writel.exit134:                              ; preds = %do.body.i132, %if.then.i131
  %190 = ptrtoint ptr %nbytes53.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %nbytes53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool22.not = icmp eq i32 %191, 0
  br i1 %tobool22.not, label %qspi_writel.exit134.if.end28_crit_edge, label %land.lhs.true23

qspi_writel.exit134.if.end28_crit_edge:           ; preds = %qspi_writel.exit134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true23:                                  ; preds = %qspi_writel.exit134
  %dir25 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %192 = ptrtoint ptr %dir25 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %dir25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %193)
  %cmp26 = icmp eq i32 %193, 2
  br i1 %cmp26, label %if.then27, label %land.lhs.true23.if.end28_crit_edge

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true23
  %194 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i135)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %191)
  %cmp71.not.i = icmp ult i32 %191, 4
  br i1 %cmp71.not.i, label %for.end.i149.thread, label %for.body.lr.ph.i138

for.end.i149.thread:                              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %val.i135 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -1, ptr %val.i135, align 4
  br label %if.then.i150

for.body.lr.ph.i138:                              ; preds = %if.then27
  %buf.i137 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %add.ptr2.i = getelementptr i8, ptr %195, i32 340
  br label %for.body.i143

for.body.i143:                                    ; preds = %qspi_writel.exit.i148.for.body.i143_crit_edge, %for.body.lr.ph.i138
  %i.072.i = phi i32 [ 0, %for.body.lr.ph.i138 ], [ %add3.i, %qspi_writel.exit.i148.for.body.i143_crit_edge ]
  %197 = ptrtoint ptr %buf.i137 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %buf.i137, align 4
  %add.ptr.i139 = getelementptr i8, ptr %198, i32 %i.072.i
  %199 = ptrtoint ptr %add.ptr.i139 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %val.0.copyload.i = load i32, ptr %add.ptr.i139, align 1
  %200 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %devtype_data, align 4
  %quirks.i.i.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %201, i32 0, i32 4
  %202 = ptrtoint ptr %quirks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %quirks.i.i.i, align 4
  %and.i.i.i140 = and i32 %203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i140)
  %tobool.not.i.i141 = icmp eq i32 %and.i.i.i140, 0
  %204 = tail call i32 @llvm.bswap.i32(i32 %val.0.copyload.i) #8
  %cond.i.i = select i1 %tobool.not.i.i141, i32 %val.0.copyload.i, i32 %204
  %little_endian.i.i142 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %201, i32 0, i32 5
  %205 = ptrtoint ptr %little_endian.i.i142 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %little_endian.i.i142, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool.not.i50.i = icmp eq i8 %206, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i50.i, label %do.body.i.i145, label %if.then.i.i144

if.then.i.i144:                                   ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #10
  %207 = tail call i32 @llvm.bswap.i32(i32 %cond.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %207) #8, !srcloc !92
  br label %qspi_writel.exit.i148

do.body.i.i145:                                   ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %cond.i.i) #8, !srcloc !92
  br label %qspi_writel.exit.i148

qspi_writel.exit.i148:                            ; preds = %do.body.i.i145, %if.then.i.i144
  %add3.i = add nuw i32 %i.072.i, 4
  %208 = ptrtoint ptr %nbytes53.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %nbytes53.i, align 4
  %and.i146 = and i32 %209, -4
  %cmp.i147 = icmp ult i32 %add3.i, %and.i146
  br i1 %cmp.i147, label %qspi_writel.exit.i148.for.body.i143_crit_edge, label %for.end.i149

qspi_writel.exit.i148.for.body.i143_crit_edge:    ; preds = %qspi_writel.exit.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i143

for.end.i149:                                     ; preds = %qspi_writel.exit.i148
  %210 = ptrtoint ptr %val.i135 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %cond.i.i, ptr %val.i135, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %add3.i)
  %cmp6.i = icmp ugt i32 %209, %add3.i
  br i1 %cmp6.i, label %for.end.i149.if.then.i150_crit_edge, label %for.end.i149.if.end.i154_crit_edge

for.end.i149.if.end.i154_crit_edge:               ; preds = %for.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i154

for.end.i149.if.then.i150_crit_edge:              ; preds = %for.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i150

if.then.i150:                                     ; preds = %for.end.i149.if.then.i150_crit_edge, %for.end.i149.thread
  %.lcssa.i175 = phi i32 [ %191, %for.end.i149.thread ], [ %209, %for.end.i149.if.then.i150_crit_edge ]
  %i.0.lcssa.i174 = phi i32 [ 0, %for.end.i149.thread ], [ %add3.i, %for.end.i149.if.then.i150_crit_edge ]
  %buf8.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %211 = ptrtoint ptr %buf8.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %buf8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %212, i32 %i.0.lcssa.i174
  %sub12.i = sub i32 %.lcssa.i175, %i.0.lcssa.i174
  %213 = call ptr @memcpy(ptr %val.i135, ptr %add.ptr9.i, i32 %sub12.i)
  %214 = ptrtoint ptr %val.i135 to i32
  call void @__asan_load4_noabort(i32 %214)
  %val.i135.0.val.i135.0.val.0.val.0.val.0.28.i = load i32, ptr %val.i135, align 4
  %215 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %devtype_data, align 4
  %quirks.i.i52.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %216, i32 0, i32 4
  %217 = ptrtoint ptr %quirks.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %quirks.i.i52.i, align 4
  %and.i.i53.i = and i32 %218, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i53.i)
  %tobool.not.i54.i = icmp eq i32 %and.i.i53.i, 0
  %219 = tail call i32 @llvm.bswap.i32(i32 %val.i135.0.val.i135.0.val.0.val.0.val.0.28.i) #8
  %cond.i55.i = select i1 %tobool.not.i54.i, i32 %val.i135.0.val.i135.0.val.0.val.0.val.0.28.i, i32 %219
  %add.ptr14.i = getelementptr i8, ptr %195, i32 340
  %little_endian.i57.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %216, i32 0, i32 5
  %220 = ptrtoint ptr %little_endian.i57.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %little_endian.i57.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool.not.i58.i = icmp eq i8 %221, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i58.i, label %do.body.i60.i, label %if.then.i59.i

if.then.i59.i:                                    ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #10
  %222 = tail call i32 @llvm.bswap.i32(i32 %cond.i55.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %222) #8, !srcloc !92
  br label %if.end.i154

do.body.i60.i:                                    ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %cond.i55.i) #8, !srcloc !92
  br label %if.end.i154

if.end.i154:                                      ; preds = %do.body.i60.i, %if.then.i59.i, %for.end.i149.if.end.i154_crit_edge
  %223 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %devtype_data, align 4
  %quirks.i.i151 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %224, i32 0, i32 4
  %225 = ptrtoint ptr %quirks.i.i151 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %quirks.i.i151, align 4
  %and.i.i152 = and i32 %226, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i152)
  %tobool.not.i153 = icmp eq i32 %and.i.i152, 0
  br i1 %tobool.not.i153, label %if.end.i154.fsl_qspi_fill_txfifo.exit_crit_edge, label %if.then16.i

if.end.i154.fsl_qspi_fill_txfifo.exit_crit_edge:  ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_fill_txfifo.exit

if.then16.i:                                      ; preds = %if.end.i154
  %227 = ptrtoint ptr %nbytes53.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %nbytes53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %228)
  %cmp2075.i = icmp slt i32 %228, 16
  br i1 %cmp2075.i, label %for.body21.lr.ph.i, label %if.then16.i.fsl_qspi_fill_txfifo.exit_crit_edge

if.then16.i.fsl_qspi_fill_txfifo.exit_crit_edge:  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_fill_txfifo.exit

for.body21.lr.ph.i:                               ; preds = %if.then16.i
  %add.ptr22.i = getelementptr i8, ptr %195, i32 340
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.body21.lr.ph.i
  %i.176.i = phi i32 [ %228, %for.body21.lr.ph.i ], [ %add24.i, %for.body21.i.for.body21.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #8
  %add24.i = add nsw i32 %i.176.i, 4
  %cmp20.i = icmp slt i32 %i.176.i, 12
  br i1 %cmp20.i, label %for.body21.i.for.body21.i_crit_edge, label %for.body21.i.fsl_qspi_fill_txfifo.exit_crit_edge

for.body21.i.fsl_qspi_fill_txfifo.exit_crit_edge: ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_fill_txfifo.exit

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i

fsl_qspi_fill_txfifo.exit:                        ; preds = %for.body21.i.fsl_qspi_fill_txfifo.exit_crit_edge, %if.then16.i.fsl_qspi_fill_txfifo.exit_crit_edge, %if.end.i154.fsl_qspi_fill_txfifo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i135)
  br label %if.end28

if.end28:                                         ; preds = %fsl_qspi_fill_txfifo.exit, %land.lhs.true23.if.end28_crit_edge, %qspi_writel.exit134.if.end28_crit_edge
  %229 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %5, align 4
  %c.i = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 6
  %231 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %c.i, align 4
  %wait.i.i = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #8
  %232 = ptrtoint ptr %nbytes53.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %nbytes53.i, align 4
  %or.i156 = or i32 %233, 251658240
  %add.ptr.i157 = getelementptr i8, ptr %230, i32 8
  %234 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %devtype_data, align 4
  %little_endian.i.i159 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %235, i32 0, i32 5
  %236 = ptrtoint ptr %little_endian.i.i159 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %little_endian.i.i159, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool.not.i.i160 = icmp eq i8 %237, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i160, label %do.body.i.i162, label %if.then.i.i161

if.then.i.i161:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %238 = tail call i32 @llvm.bswap.i32(i32 %or.i156) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %238) #8, !srcloc !92
  br label %qspi_writel.exit.i164

do.body.i.i162:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %or.i156) #8, !srcloc !92
  br label %qspi_writel.exit.i164

qspi_writel.exit.i164:                            ; preds = %do.body.i.i162, %if.then.i.i161
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %c.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i163 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i163, label %qspi_writel.exit.i164.if.end30_crit_edge, label %land.lhs.true.i165

qspi_writel.exit.i164.if.end30_crit_edge:         ; preds = %qspi_writel.exit.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true.i165:                               ; preds = %qspi_writel.exit.i164
  %239 = ptrtoint ptr %nbytes53.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %nbytes53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool6.not.i = icmp eq i32 %240, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i165.if.end30_crit_edge, label %land.lhs.true7.i

land.lhs.true.i165.if.end30_crit_edge:            ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i165
  %dir.i166 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %241 = ptrtoint ptr %dir.i166 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %dir.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %242)
  %cmp.i167 = icmp eq i32 %242, 1
  br i1 %cmp.i167, label %if.then9.i, label %land.lhs.true7.i.if.end30_crit_edge

land.lhs.true7.i.if.end30_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then9.i:                                       ; preds = %land.lhs.true7.i
  %243 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %5, align 4
  %buf1.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %245 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %buf1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %240)
  %cmp52.not.i.i = icmp ult i32 %240, 4
  br i1 %cmp52.not.i.i, label %if.then9.i.for.end.i.i_crit_edge, label %if.then9.i.for.body.i.i_crit_edge

if.then9.i.for.body.i.i_crit_edge:                ; preds = %if.then9.i
  br label %for.body.i.i

if.then9.i.for.end.i.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %qspi_readl.exit.i.i.for.body.i.i_crit_edge, %if.then9.i.for.body.i.i_crit_edge
  %i.053.i.i = phi i32 [ %add6.i.i, %qspi_readl.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.i.for.body.i.i_crit_edge ]
  %div.i.i = sdiv i32 %i.053.i.i, 4
  %mul.i.i = shl nsw i32 %div.i.i, 2
  %add3.i.i = add i32 %mul.i.i, 512
  %add.ptr.i.i = getelementptr i8, ptr %244, i32 %add3.i.i
  %247 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %devtype_data, align 4
  %little_endian.i.i.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %248, i32 0, i32 5
  %249 = ptrtoint ptr %little_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %little_endian.i.i.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool.not.i.i.i = icmp eq i8 %250, 0
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %252 = tail call i32 @llvm.bswap.i32(i32 %251) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  br label %qspi_readl.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  br label %qspi_readl.exit.i.i

qspi_readl.exit.i.i:                              ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %252, %if.then.i.i.i ], [ %251, %if.end.i.i.i ]
  %253 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %devtype_data, align 4
  %quirks.i.i.i.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %254, i32 0, i32 4
  %255 = ptrtoint ptr %quirks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %quirks.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %256, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i37.i.i = icmp eq i32 %and.i.i.i.i, 0
  %257 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i) #8
  %cond.i.i.i = select i1 %tobool.not.i37.i.i, i32 %retval.0.i.i.i, i32 %257
  %add.ptr5.i.i = getelementptr i8, ptr %246, i32 %i.053.i.i
  %258 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_storeN_noabort(i32 %258, i32 4)
  store i32 %cond.i.i.i, ptr %add.ptr5.i.i, align 1
  %add6.i.i = add nuw i32 %i.053.i.i, 4
  %259 = ptrtoint ptr %nbytes53.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %nbytes53.i, align 4
  %and.i.i168 = and i32 %260, -4
  %cmp.i.i = icmp ult i32 %add6.i.i, %and.i.i168
  br i1 %cmp.i.i, label %qspi_readl.exit.i.i.for.body.i.i_crit_edge, label %qspi_readl.exit.i.i.for.end.i.i_crit_edge

qspi_readl.exit.i.i.for.end.i.i_crit_edge:        ; preds = %qspi_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

qspi_readl.exit.i.i.for.body.i.i_crit_edge:       ; preds = %qspi_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %qspi_readl.exit.i.i.for.end.i.i_crit_edge, %if.then9.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.then9.i.for.end.i.i_crit_edge ], [ %add6.i.i, %qspi_readl.exit.i.i.for.end.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %240, %if.then9.i.for.end.i.i_crit_edge ], [ %260, %qspi_readl.exit.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %.lcssa.i.i)
  %cmp9.i.i = icmp ult i32 %i.0.lcssa.i.i, %.lcssa.i.i
  br i1 %cmp9.i.i, label %if.then.i19.i, label %for.end.i.i.fsl_qspi_read_rxfifo.exit.i_crit_edge

for.end.i.i.fsl_qspi_read_rxfifo.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_qspi_read_rxfifo.exit.i

if.then.i19.i:                                    ; preds = %for.end.i.i
  %div10.i.i = sdiv i32 %i.0.lcssa.i.i, 4
  %mul11.i.i = shl nsw i32 %div10.i.i, 2
  %add12.i.i = add i32 %mul11.i.i, 512
  %add.ptr13.i.i = getelementptr i8, ptr %244, i32 %add12.i.i
  %261 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %devtype_data, align 4
  %little_endian.i39.i.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %262, i32 0, i32 5
  %263 = ptrtoint ptr %little_endian.i39.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %little_endian.i39.i.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool.not.i40.i.i = icmp eq i8 %264, 0
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #8
  br i1 %tobool.not.i40.i.i, label %if.end.i42.i.i, label %if.then.i41.i.i

if.then.i41.i.i:                                  ; preds = %if.then.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  %266 = tail call i32 @llvm.bswap.i32(i32 %265) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  br label %qspi_readl.exit44.i.i

if.end.i42.i.i:                                   ; preds = %if.then.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  br label %qspi_readl.exit44.i.i

qspi_readl.exit44.i.i:                            ; preds = %if.end.i42.i.i, %if.then.i41.i.i
  %retval.0.i43.i.i = phi i32 [ %266, %if.then.i41.i.i ], [ %265, %if.end.i42.i.i ]
  %267 = ptrtoint ptr %devtype_data to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %devtype_data, align 4
  %quirks.i.i46.i.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %268, i32 0, i32 4
  %269 = ptrtoint ptr %quirks.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %quirks.i.i46.i.i, align 4
  %and.i.i47.i.i = and i32 %270, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47.i.i)
  %tobool.not.i48.i.i = icmp eq i32 %and.i.i47.i.i, 0
  %271 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i43.i.i) #8
  %cond.i49.i.i = select i1 %tobool.not.i48.i.i, i32 %retval.0.i43.i.i, i32 %271
  %272 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %cond.i49.i.i, ptr %val.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %246, i32 %i.0.lcssa.i.i
  %273 = ptrtoint ptr %nbytes53.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %nbytes53.i, align 4
  %sub19.i.i = sub i32 %274, %i.0.lcssa.i.i
  %275 = call ptr @memcpy(ptr %add.ptr16.i.i, ptr %val.i.i, i32 %sub19.i.i)
  br label %fsl_qspi_read_rxfifo.exit.i

fsl_qspi_read_rxfifo.exit.i:                      ; preds = %qspi_readl.exit44.i.i, %for.end.i.i.fsl_qspi_read_rxfifo.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i)
  br label %if.end30

if.end30:                                         ; preds = %fsl_qspi_read_rxfifo.exit.i, %land.lhs.true7.i.if.end30_crit_edge, %land.lhs.true.i165.if.end30_crit_edge, %qspi_writel.exit.i164.if.end30_crit_edge, %if.then18
  %err.0 = phi i32 [ 0, %if.then18 ], [ 0, %fsl_qspi_read_rxfifo.exit.i ], [ 0, %land.lhs.true7.i.if.end30_crit_edge ], [ 0, %land.lhs.true.i165.if.end30_crit_edge ], [ -110, %qspi_writel.exit.i164.if.end30_crit_edge ]
  tail call fastcc void @fsl_qspi_invalidate(ptr noundef %5)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fsl_qspi_get_name(ptr nocapture noundef readonly %mem) #2 align 64 {
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
  %dev3 = getelementptr inbounds %struct.fsl_qspi, ptr %5, i32 0, i32 5
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
  %call10 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i25, i32 noundef %conv) #8
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %do.end, label %dev_name.exit26.cleanup_crit_edge

dev_name.exit26.cleanup_crit_edge:                ; preds = %dev_name.exit26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #11
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
define internal fastcc void @fsl_qspi_invalidate(ptr nocapture noundef readonly %q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %devtype_data.i = getelementptr inbounds %struct.fsl_qspi, ptr %q, i32 0, i32 7
  %2 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %little_endian.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  br label %qspi_readl.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  br label %qspi_readl.exit

qspi_readl.exit:                                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %6, %if.end.i ]
  %or = or i32 %retval.0.i, 3
  %8 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q, align 4
  %10 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i14 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %little_endian.i14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %little_endian.i14, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i15 = icmp eq i8 %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i15, label %do.body.i, label %if.then.i16

if.then.i16:                                      ; preds = %qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %14) #8, !srcloc !92
  br label %qspi_writel.exit

do.body.i:                                        ; preds = %qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %or) #8, !srcloc !92
  br label %qspi_writel.exit

qspi_writel.exit:                                 ; preds = %do.body.i, %if.then.i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  %and = and i32 %retval.0.i, -4
  %16 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %q, align 4
  %18 = ptrtoint ptr %devtype_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devtype_data.i, align 4
  %little_endian.i19 = getelementptr inbounds %struct.fsl_qspi_devtype_data, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %little_endian.i19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %little_endian.i19, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i20 = icmp eq i8 %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i20, label %do.body.i22, label %if.then.i21

if.then.i21:                                      ; preds = %qspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %22) #8, !srcloc !92
  br label %qspi_writel.exit24

do.body.i22:                                      ; preds = %qspi_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %and) #8, !srcloc !92
  br label %qspi_writel.exit24

qspi_writel.exit24:                               ; preds = %do.body.i22, %if.then.i21
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
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

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
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_qspi_suspend(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qspi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @fsl_qspi_default_setup(ptr noundef %1)
  ret i32 0
}

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !58, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_spi_fsl_qspi__235_1002_fsl_qspi_driver_init6, !1, !"__initcall__kmod_spi_fsl_qspi__235_1002_fsl_qspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 1002, i32 1}
!2 = !{ptr @__exitcall_fsl_qspi_driver_exit, !1, !"__exitcall_fsl_qspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description236, !4, !"__UNIQUE_ID_description236", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 1004, i32 1}
!5 = !{ptr @__UNIQUE_ID_author237, !6, !"__UNIQUE_ID_author237", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 1005, i32 1}
!7 = !{ptr @__UNIQUE_ID_author238, !8, !"__UNIQUE_ID_author238", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 1006, i32 1}
!9 = !{ptr @__UNIQUE_ID_author239, !10, !"__UNIQUE_ID_author239", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 1007, i32 1}
!11 = !{ptr @__UNIQUE_ID_author240, !12, !"__UNIQUE_ID_author240", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 1008, i32 1}
!13 = !{ptr @__UNIQUE_ID_author241, !14, !"__UNIQUE_ID_author241", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 1009, i32 1}
!15 = !{ptr @__UNIQUE_ID_file242, !16, !"__UNIQUE_ID_file242", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 1010, i32 1}
!17 = !{ptr @__UNIQUE_ID_license243, !16, !"__UNIQUE_ID_license243", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 995, i32 11}
!20 = !{ptr @fsl_qspi_driver, !21, !"fsl_qspi_driver", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 993, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 870, i32 59}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 878, i32 6}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 889, i32 32}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 895, i32 29}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 903, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @fsl_qspi_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @fsl_qspi_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 915, i32 3}
!40 = !{ptr @fsl_qspi_probe._entry.10, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @fsl_qspi_probe._entry_ptr.12, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @fsl_qspi_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 919, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 944, i32 2}
!47 = !{ptr @fsl_qspi_probe._entry.14, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @fsl_qspi_probe._entry_ptr.16, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 352, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @fsl_qspi_irq_handler.__UNIQUE_ID_ddebug234, !50, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!54 = !{ptr @fsl_qspi_mem_ops, !55, !"fsl_qspi_mem_ops", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 836, i32 44}
!56 = !{ptr @init_completion.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/completion.h", i32 87, i32 2}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 825, i32 10}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 829, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @fsl_qspi_get_name._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @fsl_qspi_get_name._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @fsl_qspi_dt_ids, !67, !"fsl_qspi_dt_ids", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 977, i32 34}
!68 = !{ptr @vybrid_data, !69, !"vybrid_data", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 209, i32 43}
!70 = !{ptr @imx6sx_data, !71, !"imx6sx_data", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 218, i32 43}
!72 = !{ptr @imx7d_data, !73, !"imx7d_data", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 227, i32 43}
!74 = !{ptr @imx6ul_data, !75, !"imx6ul_data", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 237, i32 43}
!76 = !{ptr @ls1021a_data, !77, !"ls1021a_data", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 247, i32 43}
!78 = !{ptr @ls2080a_data, !79, !"ls2080a_data", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 256, i32 43}
!80 = !{ptr @fsl_qspi_pm_ops, !81, !"fsl_qspi_pm_ops", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-fsl-qspi.c", i32 988, i32 32}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i8 0, i8 2}
!92 = !{i64 4261893}
!93 = !{i64 2151802660}
!94 = !{i64 2154414008}
!95 = !{i64 2148746432, i64 2148746437, i64 2148746450, i64 2148746494, i64 2148746528, i64 2148746549}
!96 = !{i64 4262311}
!97 = !{i64 2154421201}
!98 = !{i64 2154421635}
!99 = !{i32 0, i32 33}
