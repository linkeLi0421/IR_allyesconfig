; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-qcom-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-qcom-qspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.qcom_qspi = type { ptr, ptr, ptr, %struct.qspi_xfer, ptr, i32, %struct.spinlock }
%struct.qspi_xfer = type { %union.anon.76, i32, i32, i32, i8 }
%union.anon.76 = type { ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_qcom_qspi__242_660_qcom_qspi_driver_init6 = internal global ptr @qcom_qspi_driver_init, section ".initcall6.init", align 4
@qcom_qspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_qspi_probe, ptr @qcom_qspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_qspi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_qspi_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_qspi_driver_exit = internal global ptr @qcom_qspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [52 x i8] c"spi_qcom_qspi.description=SPI driver for QSPI cores\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [45 x i8] c"spi_qcom_qspi.file=drivers/spi/spi-qcom-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [29 x i8] c"spi_qcom_qspi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom_qspi\00", [22 x i8] zeroinitializer }, align 32
@qcom_qspi_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qspi-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qcom_qspi_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qcom_qspi_suspend, ptr @qcom_qspi_resume, ptr @qcom_qspi_suspend, ptr @qcom_qspi_resume, ptr @qcom_qspi_suspend, ptr @qcom_qspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_qspi_runtime_suspend, ptr @qcom_qspi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@qcom_qspi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctrl->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qspi-config\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get cpu path\0A\00", [40 x i8] zeroinitializer }, align 32
@qcom_qspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 499, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ICC BW voting failed for cpu: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_qspi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/spi/spi-qcom-qspi.c\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_qspi_probe._entry_ptr = internal global ptr @qcom_qspi_probe._entry, section ".printk_index", align 4
@qcom_qspi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 506, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ICC disable failed for cpu: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_qspi_probe._entry_ptr.13 = internal global ptr @qcom_qspi_probe._entry.11, section ".printk_index", align 4
@qcom_qspi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 515, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@qcom_qspi_probe._entry_ptr.16 = internal global ptr @qcom_qspi_probe._entry.14, section ".printk_index", align 4
@qcom_qspi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 538, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid OPP table in device tree\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_qspi_probe._entry_ptr.19 = internal global ptr @qcom_qspi_probe._entry.17, section ".printk_index", align 4
@qcom_qspi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.8, i32 438, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQ error: FIFO underrun\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom_qspi_irq\00", [18 x i8] zeroinitializer }, align 32
@qcom_qspi_irq._entry_ptr = internal global ptr @qcom_qspi_irq._entry, section ".printk_index", align 4
@qcom_qspi_irq._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.8, i32 440, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IRQ error: FIFO overrun\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_qspi_irq._entry_ptr.24 = internal global ptr @qcom_qspi_irq._entry.22, section ".printk_index", align 4
@qcom_qspi_irq._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.8, i32 442, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IRQ error: NOC response error\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_qspi_irq._entry_ptr.27 = internal global ptr @qcom_qspi_irq._entry.25, section ".printk_index", align 4
@pio_read.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.8, ptr @.str.30, i8 0, i8 86, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_qcom_qspi\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pio_read\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Spurious IRQ %#x\0A\00", [46 x i8] zeroinitializer }, align 32
@qcom_qspi_set_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.8, i32 239, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set core clk %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_qspi_set_speed\00", [44 x i8] zeroinitializer }, align 32
@qcom_qspi_set_speed._entry_ptr = internal global ptr @qcom_qspi_set_speed._entry, section ".printk_index", align 4
@qcom_qspi_set_speed._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.32, ptr @.str.8, i32 251, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@qcom_qspi_set_speed._entry_ptr.34 = internal global ptr @qcom_qspi_set_speed._entry.33, section ".printk_index", align 4
@qspi_buswidth_to_iomode.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@qspi_buswidth_to_iomode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.8, i32 162, ptr @.str.37, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unexpected bus width: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qspi_buswidth_to_iomode\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qspi_buswidth_to_iomode._entry_ptr = internal global ptr @qspi_buswidth_to_iomode._entry, section ".printk_index", align 4
@qcom_qspi_runtime_suspend._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.qcom_qspi_runtime_suspend = private unnamed_addr constant [26 x i8] c"qcom_qspi_runtime_suspend\00", align 1
@qcom_qspi_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.qcom_qspi_runtime_suspend, ptr @.str.8, i32 580, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@qcom_qspi_runtime_suspend._entry_ptr = internal global ptr @qcom_qspi_runtime_suspend._entry, section ".printk_index", align 4
@qcom_qspi_runtime_resume._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.qcom_qspi_runtime_resume = private unnamed_addr constant [25 x i8] c"qcom_qspi_runtime_resume\00", align 1
@qcom_qspi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.qcom_qspi_runtime_resume, ptr @.str.8, i32 596, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: ICC enable failed for cpu: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_qspi_runtime_resume._entry_ptr = internal global ptr @qcom_qspi_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"qcom_qspi_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 651, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 653, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"qcom_qspi_dt_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 645, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"qcom_qspi_dev_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 639, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 472, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 483, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 484, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 489, i32 52 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 492, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 498, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 505, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 515, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 538, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 438, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 440, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 442, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 344, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 239, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 250, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 161, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 579, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [31 x i8] c"../drivers/spi/spi-qcom-qspi.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 595, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_qcom_qspi_driver_exit, ptr @__initcall__kmod_spi_qcom_qspi__242_660_qcom_qspi_driver_init6, ptr @qcom_qspi_driver_exit, ptr @qcom_qspi_irq._entry, ptr @qcom_qspi_irq._entry.22, ptr @qcom_qspi_irq._entry.25, ptr @qcom_qspi_irq._entry_ptr, ptr @qcom_qspi_irq._entry_ptr.24, ptr @qcom_qspi_irq._entry_ptr.27, ptr @qcom_qspi_probe._entry, ptr @qcom_qspi_probe._entry.11, ptr @qcom_qspi_probe._entry.14, ptr @qcom_qspi_probe._entry.17, ptr @qcom_qspi_probe._entry_ptr, ptr @qcom_qspi_probe._entry_ptr.13, ptr @qcom_qspi_probe._entry_ptr.16, ptr @qcom_qspi_probe._entry_ptr.19, ptr @qcom_qspi_runtime_resume._entry, ptr @qcom_qspi_runtime_resume._entry_ptr, ptr @qcom_qspi_runtime_suspend._entry, ptr @qcom_qspi_runtime_suspend._entry_ptr, ptr @qcom_qspi_set_speed._entry, ptr @qcom_qspi_set_speed._entry.33, ptr @qcom_qspi_set_speed._entry_ptr, ptr @qcom_qspi_set_speed._entry_ptr.34, ptr @qspi_buswidth_to_iomode._entry, ptr @qspi_buswidth_to_iomode._entry_ptr, ptr @qcom_qspi_driver, ptr @.str, ptr @qcom_qspi_dt_match, ptr @qcom_qspi_dev_pm_ops, ptr @qcom_qspi_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @qcom_qspi_runtime_suspend._rs, ptr @.str.38, ptr @qcom_qspi_runtime_resume._rs, ptr @.str.39], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_irq._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_irq._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_set_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_set_speed._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_buswidth_to_iomode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_runtime_suspend._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_runtime_resume._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qspi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_qspi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_qspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_qspi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 84, i1 noundef zeroext false) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i157 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i157 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i157, align 4
  %lock = getelementptr inbounds %struct.qcom_qspi, ptr %2, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @qcom_qspi_probe.__key, i16 noundef signext 3) #5
  %dev4 = getelementptr inbounds %struct.qcom_qspi, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev4, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %2, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #5
  %clks = getelementptr inbounds %struct.qcom_qspi, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %clks, align 4
  %tobool14.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.2, ptr %call5.i.i, align 4
  %8 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clks, align 4
  %arrayidx19 = getelementptr %struct.clk_bulk_data, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.3, ptr %arrayidx19, align 4
  %11 = load ptr, ptr %clks, align 4
  %call22 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %call26 = tail call ptr @devm_of_icc_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #5
  %icc_path_cpu_to_qspi = getelementptr inbounds %struct.qcom_qspi, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %icc_path_cpu_to_qspi to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call26, ptr %icc_path_cpu_to_qspi, align 4
  %cmp.i158 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call26 to i32
  %call32 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %13, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %call35 = tail call i32 @icc_set_bw(ptr noundef %call26, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %call35) #8
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %16 = ptrtoint ptr %icc_path_cpu_to_qspi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %icc_path_cpu_to_qspi, align 4
  %call44 = tail call i32 @icc_disable(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i32 noundef %call44) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end42
  %call52 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp = icmp slt i32 %call52, 0
  br i1 %cmp, label %if.end51.cleanup_crit_edge, label %if.end54

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %if.end51
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end54.dev_name.exit_crit_edge

if.end54.dev_name.exit_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end54.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %if.end54.dev_name.exit_crit_edge ]
  %call.i159 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call52, ptr noundef nonnull @qcom_qspi_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool57.not = icmp eq i32 %call.i159, 0
  br i1 %tobool57.not, label %if.end62, label %do.end61

do.end61:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call.i159) #8
  br label %cleanup

if.end62:                                         ; preds = %dev_name.exit
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 300000000, ptr %max_speed_hz, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %num_chipselect, align 2
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %bus_num, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %of_node65 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %29 = ptrtoint ptr %of_node65 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %of_node65, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3840, ptr %mode_bits, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags, align 4
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %32 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @qcom_qspi_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %33 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @qcom_qspi_transfer_one, ptr %transfer_one, align 4
  %handle_err = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 52
  %34 = ptrtoint ptr %handle_err to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @qcom_qspi_handle_err, ptr %handle_err, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %35 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %auto_runtime_pm, align 4
  %call67 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end70:                                         ; preds = %if.end62
  %call72 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %dev1) #5
  %36 = zext i32 %call72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call72, label %do.end78 [
    i32 0, label %if.end70.if.end80_crit_edge
    i32 -19, label %if.end70.if.end80_crit_edge160
  ]

if.end70.if.end80_crit_edge160:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end80:                                         ; preds = %if.end70.if.end80_crit_edge, %if.end70.if.end80_crit_edge160
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #5
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 250) #5
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call81 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end80.cleanup_crit_edge, label %if.end84

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end80.cleanup_crit_edge, %do.end78, %if.end62.cleanup_crit_edge, %do.end61, %if.end51.cleanup_crit_edge, %do.end49, %do.end40, %if.then29, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %call32, %if.then29 ], [ %call35, %do.end40 ], [ %call44, %do.end49 ], [ %call.i159, %do.end61 ], [ %call72, %do.end78 ], [ %call81, %if.end84 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ %call22, %if.end16.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call67, %if.end62.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qspi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qspi_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.qcom_qspi, ptr %dev_id, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !101
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #5, !srcloc !104
  %dir = getelementptr inbounds %struct.qcom_qspi, ptr %dev_id, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end11_crit_edge, label %if.then4

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then4:                                         ; preds = %if.then
  %xfer.i = getelementptr inbounds %struct.qcom_qspi, ptr %dev_id, i32 0, i32 3
  %8 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xfer.i, align 4
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !101
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %rem_bytes.i = getelementptr inbounds %struct.qcom_qspi, ptr %dev_id, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %rem_bytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rem_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.i = icmp ult i32 %15, 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then4
  %shr.i = lshr i32 %13, 16
  %16 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 %15) #5
  %sub.i = sub nsw i32 %15, %16
  %17 = ptrtoint ptr %rem_bytes.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i, ptr %rem_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not3.i = icmp eq i32 %16, 0
  br i1 %tobool.not3.i, label %if.then.i.pio_write.exit_crit_edge, label %if.then.i.do.body.i_crit_edge

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  br label %do.body.i

if.then.i.pio_write.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pio_write.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %byte_buf.05.i = phi ptr [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ], [ %9, %if.then.i.do.body.i_crit_edge ]
  %wr_size.04.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %16, %if.then.i.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %wr_size.04.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %incdec.ptr.i = getelementptr i8, ptr %byte_buf.05.i, i32 1
  %18 = ptrtoint ptr %byte_buf.05.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %byte_buf.05.i, align 1
  %conv.i = zext i8 %19 to i32
  %20 = shl nuw i32 %conv.i, 24
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  %add.ptr10.i = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %20) #5, !srcloc !104
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.pio_write.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body.i.pio_write.exit_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pio_write.exit

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %div1.i = lshr i32 %15, 2
  %div142.i = lshr i32 %13, 18
  %23 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 %div142.i) #5
  %mul.neg.i = mul nsw i32 %23, -4
  %sub24.i = add i32 %mul.neg.i, %15
  %24 = ptrtoint ptr %rem_bytes.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub24.i, ptr %rem_bytes.i, align 4
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 4
  %add.ptr26.i = getelementptr i8, ptr %26, i32 36
  tail call void @__raw_writesl(ptr noundef %add.ptr26.i, ptr noundef %9, i32 noundef %23) #5
  %add.ptr27.i = getelementptr i32, ptr %9, i32 %23
  br label %pio_write.exit

pio_write.exit:                                   ; preds = %if.else.i, %do.body.i.pio_write.exit_crit_edge, %if.then.i.pio_write.exit_crit_edge
  %storemerge.i = phi ptr [ %add.ptr27.i, %if.else.i ], [ %9, %if.then.i.pio_write.exit_crit_edge ], [ %incdec.ptr.i, %do.body.i.pio_write.exit_crit_edge ]
  %27 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %storemerge.i, ptr %xfer.i, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  %and6 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.if.end11_crit_edge, label %if.then8

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call fastcc i32 @pio_read(ptr noundef %dev_id)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else.if.end11_crit_edge, %pio_write.exit, %if.then.if.end11_crit_edge
  %ret.0 = phi i32 [ 1, %pio_write.exit ], [ 0, %if.then.if.end11_crit_edge ], [ %call9, %if.then8 ], [ 0, %if.else.if.end11_crit_edge ]
  %and12 = and i32 %3, 2057
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end38_crit_edge, label %if.then14

if.end11.if.end38_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then14:                                        ; preds = %if.end11
  %and15 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then14.if.end21_crit_edge, label %do.end20

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.qcom_qspi, ptr %dev_id, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.20) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.then14.if.end21_crit_edge
  %and22 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end29_crit_edge, label %do.end27

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %dev28 = getelementptr inbounds %struct.qcom_qspi, ptr %dev_id, i32 0, i32 1
  %30 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.23) #8
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.end21.if.end29_crit_edge
  %and30 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end38_crit_edge, label %do.end35

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %dev36 = getelementptr inbounds %struct.qcom_qspi, ptr %dev_id, i32 0, i32 1
  %32 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.26) #8
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %if.end29.if.end38_crit_edge, %if.end11.if.end38_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end11.if.end38_crit_edge ], [ 1, %do.end35 ], [ 1, %if.end29.if.end38_crit_edge ]
  %rem_bytes = getelementptr inbounds %struct.qcom_qspi, ptr %dev_id, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %rem_bytes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rem_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool40.not = icmp eq i32 %35, 0
  br i1 %tobool40.not, label %do.body42, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.body42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_id, align 4
  %add.ptr46 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 0) #5, !srcloc !104
  %dev47 = getelementptr inbounds %struct.qcom_qspi, ptr %dev_id, i32 0, i32 1
  %38 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev47, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %41) #5
  br label %if.end49

if.end49:                                         ; preds = %do.body42, %if.end38.if.end49_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qspi_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  %5 = and i32 %4, -1048577
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %spi = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 1
  %7 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %or = or i32 %6, 4096
  %spec.select = select i1 %tobool.not, i32 %6, i32 %or
  %or9 = and i32 %spec.select, -51129817
  %mode = getelementptr inbounds %struct.spi_device, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 8
  %shl = shl i32 %12, 10
  %and10 = or i32 %shl, %or9
  %or16 = or i32 %and10, 17047768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qspi_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %slv, ptr nocapture noundef readonly %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %slv, i32 0, i32 3
  %2 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_speed_hz, align 8
  %speed_hz1 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 %3, i32 %5
  %last_speed.i = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %last_speed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %spec.select)
  %cmp.i = icmp eq i32 %7, %spec.select
  br i1 %cmp.i, label %entry.do.body7_crit_edge, label %if.end.i

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body7

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %mul.i = shl i32 %spec.select, 2
  %call.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %9, i32 noundef %mul.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.31, i32 noundef %call.i) #8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %div.i = udiv i32 %spec.select, 1000
  %icc_path_cpu_to_qspi.i = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %icc_path_cpu_to_qspi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %icc_path_cpu_to_qspi.i, align 4
  %call4.i = tail call i32 @icc_set_bw(ptr noundef %13, i32 noundef %div.i, i32 noundef %div.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end11.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32, i32 noundef %call4.i) #8
  br label %cleanup

if.end11.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %last_speed.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %last_speed.i, align 4
  br label %do.body7

do.body7:                                         ; preds = %if.end11.i, %entry.do.body7_crit_edge
  %lock = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 6
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %17 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_buf, align 4
  %tobool12.not = icmp eq ptr %18, null
  %dir19 = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 3, i32 3
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dir19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dir19, align 4
  %rx_nbits = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %20 = ptrtoint ptr %rx_nbits to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %rx_nbits, align 4
  br label %if.end26

if.else:                                          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %dir19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %dir19, align 4
  %tx_nbits = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %22 = ptrtoint ptr %tx_nbits to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load20 = load i8, ptr %tx_nbits, align 4
  %bf.lshr = lshr i8 %bf.load20, 3
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then13
  %bf.lshr.sink = phi i8 [ %bf.lshr, %if.else ], [ %bf.load, %if.then13 ]
  %.sink.in = phi ptr [ %xfer, %if.else ], [ %rx_buf, %if.then13 ]
  %bf.clear21 = and i8 %bf.lshr.sink, 7
  %bf.cast22 = zext i8 %bf.clear21 to i32
  %buswidth24 = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %buswidth24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bf.cast22, ptr %buswidth24, align 4
  %24 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %.sink = load ptr, ptr %.sink.in, align 4
  %25 = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %.sink, ptr %25, align 4
  %transfer_list = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 31
  %27 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur_msg, align 4
  %29 = ptrtoint ptr %transfer_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transfer_list, align 4
  %cmp.i56 = icmp eq ptr %30, %28
  %is_last = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 3, i32 4
  %frombool = zext i1 %cmp.i56 to i8
  %31 = ptrtoint ptr %is_last to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %is_last, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %rem_bytes = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %rem_bytes to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rem_bytes, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 24
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  %dir.i.i = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dir.i.i, align 4
  %40 = ptrtoint ptr %is_last to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_last, align 4, !range !111
  %buswidth.i.i = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %buswidth.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buswidth.i.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %43, label %do.body.i.i.i [
    i32 1, label %if.end26.qcom_qspi_pio_xfer.exit_crit_edge
    i32 2, label %sw.bb1.i.i.i
    i32 4, label %sw.bb2.i.i.i
  ]

if.end26.qcom_qspi_pio_xfer.exit_crit_edge:       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_qspi_pio_xfer.exit

sw.bb1.i.i.i:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_qspi_pio_xfer.exit

sw.bb2.i.i.i:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_qspi_pio_xfer.exit

do.body.i.i.i:                                    ; preds = %if.end26
  %.b6.i.i.i = load i1, ptr @qspi_buswidth_to_iomode.__print_once, align 1
  br i1 %.b6.i.i.i, label %do.body.i.i.i.qcom_qspi_pio_xfer.exit_crit_edge, label %if.then.i.i.i

do.body.i.i.i.qcom_qspi_pio_xfer.exit_crit_edge:  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_qspi_pio_xfer.exit

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @qspi_buswidth_to_iomode.__print_once, align 1
  %dev.i.i.i = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.35, i32 noundef %43) #8
  br label %qcom_qspi_pio_xfer.exit

qcom_qspi_pio_xfer.exit:                          ; preds = %if.then.i.i.i, %do.body.i.i.i.qcom_qspi_pio_xfer.exit_crit_edge, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.end26.qcom_qspi_pio_xfer.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 6, %sw.bb2.i.i.i ], [ 4, %sw.bb1.i.i.i ], [ 2, %if.end26.qcom_qspi_pio_xfer.exit_crit_edge ], [ 2, %do.body.i.i.i.qcom_qspi_pio_xfer.exit_crit_edge ], [ 2, %if.then.i.i.i ]
  %47 = and i32 %37, -16777217
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %or.i.i = or i32 %48, %39
  %and3.i.i = and i32 %or.i.i, -271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  %masksel.i.i = select i1 %tobool.not.i.i, i32 256, i32 0
  %pio_xfer_cfg.0.i.i = or i32 %masksel.i.i, %and3.i.i
  %or7.i.i = or i32 %pio_xfer_cfg.0.i.i, %retval.0.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %49 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i) #5
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %51, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %49) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 219021568) #5, !srcloc !104
  %54 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i57 = icmp eq i32 %55, 1
  %..i = select i1 %cmp.i57, i32 2569, i32 2061
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %56 = tail call i32 @llvm.bswap.i32(i32 %..i) #5
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %add.ptr5.i = getelementptr i8, ptr %58, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %56) #5, !srcloc !104
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %60, i32 20
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  %62 = and i32 %61, 65535
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %64 = ptrtoint ptr %rem_bytes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rem_bytes, align 4
  %or.i11.i = or i32 %63, %65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i11.i) #5
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %68, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %66) #5, !srcloc !104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #5
  br label %cleanup

cleanup:                                          ; preds = %qcom_qspi_pio_xfer.exit, %do.end9.i, %do.end.i
  %retval.0 = phi i32 [ 1, %qcom_qspi_pio_xfer.exit ], [ %call.i, %do.end.i ], [ %call4.i, %do.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_qspi_handle_err(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !104
  %rem_bytes = getelementptr inbounds %struct.qcom_qspi, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %rem_bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rem_bytes, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pio_read(ptr nocapture noundef %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !101
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pio_read.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pio_read, %cleanup)) #5
          to label %if.then8 [label %cleanup], !srcloc !119

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.qcom_qspi, ptr %ctrl, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pio_read.__UNIQUE_ID_ddebug235, ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef %3) #5
  br label %cleanup

if.end9:                                          ; preds = %entry
  %and10 = lshr i32 %3, 4
  %shr = and i32 %and10, 127
  %xfer = getelementptr inbounds %struct.qcom_qspi, ptr %ctrl, i32 0, i32 3
  %rem_bytes = getelementptr inbounds %struct.qcom_qspi, ptr %ctrl, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %rem_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rem_bytes, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %7)
  %rem = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %tobool12.not = icmp ult i32 %8, 4
  br i1 %tobool12.not, label %if.end9.if.end21_crit_edge, label %if.then13

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %div72 = lshr i32 %8, 2
  %9 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer, align 4
  %mul = and i32 %8, 124
  %sub = sub i32 %7, %mul
  %11 = ptrtoint ptr %rem_bytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %rem_bytes, align 4
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl, align 4
  %add.ptr18 = getelementptr i8, ptr %13, i32 80
  tail call void @__raw_readsl(ptr noundef %add.ptr18, ptr noundef %10, i32 noundef %div72) #5
  %add.ptr19 = getelementptr i32, ptr %10, i32 %div72
  %14 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr19, ptr %xfer, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end9.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool22.not = icmp eq i32 %rem, 0
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %for.body.preheader

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end21
  %15 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xfer, align 4
  %17 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl, align 4
  %add.ptr28 = getelementptr i8, ptr %18, i32 80
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #5, !srcloc !101
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %21 = ptrtoint ptr %rem_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rem_bytes, align 4
  %sub34 = sub i32 %22, %rem
  store i32 %sub34, ptr %rem_bytes, align 4
  %conv = trunc i32 %20 to i8
  %incdec.ptr = getelementptr i8, ptr %16, i32 1
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem)
  %exitcond.not = icmp eq i32 %rem, 1
  br i1 %exitcond.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  %shr37.1 = lshr i32 %20, 8
  %conv.1 = trunc i32 %shr37.1 to i8
  %incdec.ptr.1 = getelementptr i8, ptr %16, i32 2
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.1, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem)
  %exitcond.not.1 = icmp eq i32 %rem, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  %shr37.2 = lshr i32 %20, 16
  %conv.2 = trunc i32 %shr37.2 to i8
  %incdec.ptr.2 = getelementptr i8, ptr %16, i32 3
  %25 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.2, ptr %incdec.ptr.1, align 1
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr, %for.body.preheader.for.end_crit_edge ], [ %incdec.ptr.1, %for.body.1.for.end_crit_edge ], [ %incdec.ptr.2, %for.body.2 ]
  %26 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %incdec.ptr.lcssa, ptr %xfer, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end21.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %for.end ], [ 1, %if.end21.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qspi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @spi_controller_resume(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qspi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @spi_controller_resume(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qspi_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef 0) #5
  %clks = getelementptr inbounds %struct.qcom_qspi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %5) #5
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %5) #5
  %icc_path_cpu_to_qspi = getelementptr inbounds %struct.qcom_qspi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %icc_path_cpu_to_qspi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %icc_path_cpu_to_qspi, align 4
  %call3 = tail call i32 @icc_disable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @qcom_qspi_runtime_suspend._rs, ptr noundef nonnull @__func__.qcom_qspi_runtime_suspend) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.qcom_qspi, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.qcom_qspi_runtime_suspend, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qspi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %icc_path_cpu_to_qspi = getelementptr inbounds %struct.qcom_qspi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %icc_path_cpu_to_qspi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %icc_path_cpu_to_qspi, align 4
  %call2 = tail call i32 @icc_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @qcom_qspi_runtime_resume._rs, ptr noundef nonnull @__func__.qcom_qspi_runtime_resume) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev7 = getelementptr inbounds %struct.qcom_qspi, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.qcom_qspi_runtime_resume, i32 noundef %call2) #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %clks = getelementptr inbounds %struct.qcom_qspi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end14, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %9) #5
  br label %cleanup

if.end14:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %last_speed = getelementptr inbounds %struct.qcom_qspi, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %last_speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_speed, align 4
  %mul = shl i32 %11, 2
  %call15 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef %mul) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then3.i, %if.end10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ %call2, %do.end ], [ %call2, %do.body.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !75, !76, !78, !80, !82, !83, !84, !85, !86, !88, !89, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_spi_qcom_qspi__242_660_qcom_qspi_driver_init6, !1, !"__initcall__kmod_spi_qcom_qspi__242_660_qcom_qspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 660, i32 1}
!2 = !{ptr @__exitcall_qcom_qspi_driver_exit, !1, !"__exitcall_qcom_qspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description243, !4, !"__UNIQUE_ID_description243", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 662, i32 1}
!5 = !{ptr @__UNIQUE_ID_file244, !6, !"__UNIQUE_ID_file244", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 663, i32 1}
!7 = !{ptr @__UNIQUE_ID_license245, !6, !"__UNIQUE_ID_license245", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 653, i32 12}
!10 = !{ptr @qcom_qspi_driver, !11, !"qcom_qspi_driver", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 651, i32 31}
!12 = !{ptr @qcom_qspi_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 472, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 483, i32 33}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 484, i32 34}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 489, i32 52}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 492, i32 10}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 498, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qcom_qspi_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @qcom_qspi_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 505, i32 3}
!33 = !{ptr @qcom_qspi_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qcom_qspi_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 515, i32 3}
!37 = !{ptr @qcom_qspi_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qcom_qspi_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 538, i32 3}
!41 = !{ptr @qcom_qspi_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @qcom_qspi_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 438, i32 4}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qcom_qspi_irq._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qcom_qspi_irq._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 440, i32 4}
!50 = !{ptr @qcom_qspi_irq._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qcom_qspi_irq._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 442, i32 4}
!54 = !{ptr @qcom_qspi_irq._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @qcom_qspi_irq._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 344, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pio_read.__UNIQUE_ID_ddebug235, !57, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 239, i32 3}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @qcom_qspi_set_speed._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @qcom_qspi_set_speed._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @qcom_qspi_set_speed._entry.33, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 250, i32 3}
!68 = !{ptr @qcom_qspi_set_speed._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__print_once", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 161, i32 3}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @qspi_buswidth_to_iomode._entry, !70, !"_entry", i1 false, i1 false}
!75 = !{ptr @qspi_buswidth_to_iomode._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @qcom_qspi_dt_match, !77, !"qcom_qspi_dt_match", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 645, i32 34}
!78 = !{ptr @qcom_qspi_dev_pm_ops, !79, !"qcom_qspi_dev_pm_ops", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 639, i32 32}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 579, i32 3}
!82 = !{ptr @qcom_qspi_runtime_suspend._rs, !81, !"_rs", i1 false, i1 false}
!83 = !{ptr @__func__.qcom_qspi_runtime_suspend, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @qcom_qspi_runtime_suspend._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @qcom_qspi_runtime_suspend._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @qcom_qspi_runtime_resume._rs, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-qcom-qspi.c", i32 595, i32 3}
!88 = !{ptr @__func__.qcom_qspi_runtime_resume, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @qcom_qspi_runtime_resume._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @qcom_qspi_runtime_resume._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 4248222}
!102 = !{i64 2154445626}
!103 = !{i64 2154445856}
!104 = !{i64 4247804}
!105 = !{i64 2154441594}
!106 = !{i64 2154443435}
!107 = !{i64 2154451871}
!108 = !{i64 2154435052}
!109 = !{i64 2154435975}
!110 = !{i64 2154424697}
!111 = !{i8 0, i8 2}
!112 = !{i64 2154425179}
!113 = !{i64 2154427512}
!114 = !{i64 2154429352}
!115 = !{i64 2154425884}
!116 = !{i64 2154426124}
!117 = !{i64 2154430163}
!118 = !{i64 2154436668}
!119 = !{i64 2148736559, i64 2148736564, i64 2148736577, i64 2148736621, i64 2148736655, i64 2148736676}
!120 = !{i64 2154441091}
