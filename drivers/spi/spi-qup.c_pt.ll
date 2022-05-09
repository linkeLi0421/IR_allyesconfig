; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-qup.c_pt.bc'
source_filename = "../drivers/spi/spi-qup.c"
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
%struct.atomic_t = type { i32 }
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
%struct.spi_qup = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.completion, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, %struct.dma_slave_config, %struct.dma_slave_config }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_qup__246_1309_spi_qup_driver_init6 = internal global ptr @spi_qup_driver_init, section ".initcall6.init", align 4
@spi_qup_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spi_qup_probe, ptr @spi_qup_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_qup_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spi_qup_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_qup_driver_exit = internal global ptr @spi_qup_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file247 = internal constant [33 x i8] c"spi_qup.file=drivers/spi/spi-qup\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [23 x i8] c"spi_qup.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias249 = internal constant [31 x i8] c"spi_qup.alias=platform:spi_qup\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_qup\00", [24 x i8] zeroinitializer }, align 32
@spi_qup_dt_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spi-qup-v1.1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spi-qup-v2.1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spi-qup-v2.2.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@spi_qup_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @spi_qup_suspend, ptr @spi_qup_resume, ptr @spi_qup_suspend, ptr @spi_qup_resume, ptr @spi_qup_suspend, ptr @spi_qup_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spi_qup_pm_suspend_runtime, ptr @spi_qup_pm_resume_runtime, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-max-frequency\00", [46 x i8] zeroinitializer }, align 32
@spi_qup_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1029, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid clock frequency %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_qup_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/spi/spi-qup.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_qup_probe._entry_ptr = internal global ptr @spi_qup_probe._entry, section ".printk_index", align 4
@spi_qup_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1035, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable core clock\0A\00", [38 x i8] zeroinitializer }, align 32
@spi_qup_probe._entry_ptr.11 = internal global ptr @spi_qup_probe._entry.9, section ".printk_index", align 4
@spi_qup_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1042, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot enable iface clock\0A\00", [37 x i8] zeroinitializer }, align 32
@spi_qup_probe._entry_ptr.14 = internal global ptr @spi_qup_probe._entry.12, section ".printk_index", align 4
@spi_qup_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 1050, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot allocate master\0A\00", [40 x i8] zeroinitializer }, align 32
@spi_qup_probe._entry_ptr.17 = internal global ptr @spi_qup_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@spi_qup_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&controller->lock\00", [46 x i8] zeroinitializer }, align 32
@spi_qup_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 1117, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"IN:block:%d, fifo:%d, OUT:block:%d, fifo:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@spi_qup_probe._entry_ptr.23 = internal global ptr @spi_qup_probe._entry.20, section ".printk_index", align 4
@spi_qup_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 1123, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot set RESET state\0A\00", [40 x i8] zeroinitializer }, align 32
@spi_qup_probe._entry_ptr.26 = internal global ptr @spi_qup_probe._entry.24, section ".printk_index", align 4
@spi_qup_io_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 668, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"too big size for loopback %d > %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi_qup_io_prep\00", [16 x i8] zeroinitializer }, align 32
@spi_qup_io_prep._entry_ptr = internal global ptr @spi_qup_io_prep._entry, section ".printk_index", align 4
@spi_qup_io_prep._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.6, i32 675, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fail to set frequency %d\00", [39 x i8] zeroinitializer }, align 32
@spi_qup_io_prep._entry_ptr.31 = internal global ptr @spi_qup_io_prep._entry.29, section ".printk_index", align 4
@spi_qup_do_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 481, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot set RUN state\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_qup_do_dma\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@spi_qup_do_dma._entry_ptr = internal global ptr @spi_qup_do_dma._entry, section ".printk_index", align 4
@spi_qup_io_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.35, ptr @.str.6, i32 710, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_qup_io_config\00", [46 x i8] zeroinitializer }, align 32
@spi_qup_io_config._entry_ptr = internal global ptr @spi_qup_io_config._entry, section ".printk_index", align 4
@spi_qup_io_config._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.6, i32 763, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unknown mode = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@spi_qup_io_config._entry_ptr.38 = internal global ptr @spi_qup_io_config._entry.36, section ".printk_index", align 4
@spi_qup_do_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.39, ptr @.str.6, i32 551, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_qup_do_pio\00", [17 x i8] zeroinitializer }, align 32
@spi_qup_do_pio._entry_ptr = internal global ptr @spi_qup_do_pio._entry, section ".printk_index", align 4
@spi_qup_do_pio._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.6, i32 557, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot set PAUSE state\0A\00", [40 x i8] zeroinitializer }, align 32
@spi_qup_do_pio._entry_ptr.42 = internal global ptr @spi_qup_do_pio._entry.40, section ".printk_index", align 4
@spi_qup_do_pio._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.39, ptr @.str.6, i32 566, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@spi_qup_do_pio._entry_ptr.44 = internal global ptr @spi_qup_do_pio._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@spi_qup_init_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 958, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to configure RX channel\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_qup_init_dma\00", [47 x i8] zeroinitializer }, align 32
@spi_qup_init_dma._entry_ptr = internal global ptr @spi_qup_init_dma._entry, section ".printk_index", align 4
@spi_qup_init_dma._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.6, i32 964, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to configure TX channel\0A\00", [32 x i8] zeroinitializer }, align 32
@spi_qup_init_dma._entry_ptr.51 = internal global ptr @spi_qup_init_dma._entry.49, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@spi_qup_set_state.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.6, ptr @.str.54, i8 0, i8 50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_qup_set_state\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid state for %ld,us %d\0A\00", [35 x i8] zeroinitializer }, align 32
@spi_qup_qup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.6, i32 608, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OUTPUT_OVER_RUN\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi_qup_qup_irq\00", [16 x i8] zeroinitializer }, align 32
@spi_qup_qup_irq._entry_ptr = internal global ptr @spi_qup_qup_irq._entry, section ".printk_index", align 4
@spi_qup_qup_irq._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.6, i32 610, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INPUT_UNDER_RUN\0A\00", [47 x i8] zeroinitializer }, align 32
@spi_qup_qup_irq._entry_ptr.59 = internal global ptr @spi_qup_qup_irq._entry.57, section ".printk_index", align 4
@spi_qup_qup_irq._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.6, i32 612, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OUTPUT_UNDER_RUN\0A\00", [46 x i8] zeroinitializer }, align 32
@spi_qup_qup_irq._entry_ptr.62 = internal global ptr @spi_qup_qup_irq._entry.60, section ".printk_index", align 4
@spi_qup_qup_irq._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.6, i32 614, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INPUT_OVER_RUN\0A\00", [16 x i8] zeroinitializer }, align 32
@spi_qup_qup_irq._entry_ptr.65 = internal global ptr @spi_qup_qup_irq._entry.63, section ".printk_index", align 4
@spi_qup_qup_irq._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.6, i32 621, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CLK_OVER_RUN\0A\00", [18 x i8] zeroinitializer }, align 32
@spi_qup_qup_irq._entry_ptr.68 = internal global ptr @spi_qup_qup_irq._entry.66, section ".printk_index", align 4
@spi_qup_qup_irq._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.56, ptr @.str.6, i32 623, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CLK_UNDER_RUN\0A\00", [17 x i8] zeroinitializer }, align 32
@spi_qup_qup_irq._entry_ptr.71 = internal global ptr @spi_qup_qup_irq._entry.69, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"spi_qup_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1300, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1302, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"spi_qup_dt_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1285, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"spi_qup_dev_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1293, i32 32 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1016, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1020, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1025, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1029, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1035, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1042, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1050, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1055, i32 41 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1092, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1115, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1123, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 667, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 674, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 481, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 710, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 762, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 551, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 557, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 566, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 935, i32 41 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 939, i32 41 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 958, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 964, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 87, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 199, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 608, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 610, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 612, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 614, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 621, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [25 x i8] c"../drivers/spi/spi-qup.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 623, i32 4 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_alias249, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_spi_qup_driver_exit, ptr @__initcall__kmod_spi_qup__246_1309_spi_qup_driver_init6, ptr @spi_qup_do_dma._entry, ptr @spi_qup_do_dma._entry_ptr, ptr @spi_qup_do_pio._entry, ptr @spi_qup_do_pio._entry.40, ptr @spi_qup_do_pio._entry.43, ptr @spi_qup_do_pio._entry_ptr, ptr @spi_qup_do_pio._entry_ptr.42, ptr @spi_qup_do_pio._entry_ptr.44, ptr @spi_qup_driver_exit, ptr @spi_qup_init_dma._entry, ptr @spi_qup_init_dma._entry.49, ptr @spi_qup_init_dma._entry_ptr, ptr @spi_qup_init_dma._entry_ptr.51, ptr @spi_qup_io_config._entry, ptr @spi_qup_io_config._entry.36, ptr @spi_qup_io_config._entry_ptr, ptr @spi_qup_io_config._entry_ptr.38, ptr @spi_qup_io_prep._entry, ptr @spi_qup_io_prep._entry.29, ptr @spi_qup_io_prep._entry_ptr, ptr @spi_qup_io_prep._entry_ptr.31, ptr @spi_qup_probe._entry, ptr @spi_qup_probe._entry.12, ptr @spi_qup_probe._entry.15, ptr @spi_qup_probe._entry.20, ptr @spi_qup_probe._entry.24, ptr @spi_qup_probe._entry.9, ptr @spi_qup_probe._entry_ptr, ptr @spi_qup_probe._entry_ptr.11, ptr @spi_qup_probe._entry_ptr.14, ptr @spi_qup_probe._entry_ptr.17, ptr @spi_qup_probe._entry_ptr.23, ptr @spi_qup_probe._entry_ptr.26, ptr @spi_qup_qup_irq._entry, ptr @spi_qup_qup_irq._entry.57, ptr @spi_qup_qup_irq._entry.60, ptr @spi_qup_qup_irq._entry.63, ptr @spi_qup_qup_irq._entry.66, ptr @spi_qup_qup_irq._entry.69, ptr @spi_qup_qup_irq._entry_ptr, ptr @spi_qup_qup_irq._entry_ptr.59, ptr @spi_qup_qup_irq._entry_ptr.62, ptr @spi_qup_qup_irq._entry_ptr.65, ptr @spi_qup_qup_irq._entry_ptr.68, ptr @spi_qup_qup_irq._entry_ptr.71, ptr @spi_qup_driver, ptr @.str, ptr @spi_qup_dt_match, ptr @spi_qup_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @spi_qup_probe.__key, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @init_completion.__key, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_io_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_io_prep._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_do_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_io_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_io_config._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_do_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_do_pio._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_do_pio._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_init_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_init_dma._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_qup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_qup_irq._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_qup_irq._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_qup_irq._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_qup_irq._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_qup_qup_irq._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_qup_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_qup_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_qup_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_qup_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_qup_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %max_freq = alloca i32, align 4
  %num_cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #8
  %0 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max_freq, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #8
  %1 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %num_cs, align 4, !annotation !144
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %cmp.i273 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i273, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %cmp.i274 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i274, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %max_freq, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 50000000, ptr %max_freq, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %8 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_freq, align 4
  %10 = add i32 %9, -50000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -50000000, i32 %10)
  %11 = icmp ult i32 %10, -50000000
  br i1 %11, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %9) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call.i = call i32 @clk_prepare(ptr noundef %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.do.end30_crit_edge

if.end24.do.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.end.i:                                         ; preds = %if.end24
  %call1.i = call i32 @clk_enable(ptr noundef %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end31, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call8) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then3.i, %if.end24.do.end30_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end24.do.end30_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end.i
  %call.i275 = call i32 @clk_prepare(ptr noundef %call13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool.not.i276 = icmp eq i32 %call.i275, 0
  br i1 %tobool.not.i276, label %if.end.i279, label %if.end31.if.then34_crit_edge

if.end31.if.then34_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end.i279:                                      ; preds = %if.end31
  %call1.i277 = call i32 @clk_enable(ptr noundef %call13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i277)
  %tobool2.not.i278 = icmp eq i32 %call1.i277, 0
  br i1 %tobool2.not.i278, label %if.end38, label %if.then3.i280

if.then3.i280:                                    ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call13) #8
  br label %if.then34

if.then34:                                        ; preds = %if.then3.i280, %if.end31.if.then34_crit_edge
  %retval.0.i281.ph = phi i32 [ %call1.i277, %if.then3.i280 ], [ %call.i275, %if.end31.if.then34_crit_edge ]
  call void @clk_disable(ptr noundef %call8) #8
  call void @clk_unprepare(ptr noundef %call8) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end.i279
  %call.i283 = call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 272, i1 noundef zeroext false) #8
  %tobool40.not = icmp eq ptr %call.i283, null
  br i1 %tobool40.not, label %if.then41, label %if.end45

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_disable(ptr noundef %call8) #8
  call void @clk_unprepare(ptr noundef %call8) #8
  call void @clk_disable(ptr noundef %call13) #8
  call void @clk_unprepare(ptr noundef %call13) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i284 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i284)
  %tobool48.not = icmp sgt i32 %call.i.i284, -1
  br i1 %tobool48.not, label %lor.lhs.false49, label %if.end45.if.end53_crit_edge

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

lor.lhs.false49:                                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_cs, align 4
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 4)
  %17 = trunc i32 %16 to i16
  br label %if.end53

if.end53:                                         ; preds = %lor.lhs.false49, %if.end45.if.end53_crit_edge
  %conv.sink = phi i16 [ 4, %if.end45.if.end53_crit_edge ], [ %17, %lor.lhs.false49 ]
  %num_chipselect52 = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 3
  %18 = ptrtoint ptr %num_chipselect52 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.sink, ptr %num_chipselect52, align 2
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %conv54 = trunc i32 %20 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 2
  %21 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv54, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 5
  %22 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 39, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 7
  %23 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -8, ptr %bits_per_word_mask, align 8
  %24 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_freq, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 9
  %26 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %max_speed_hz, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 51
  %27 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @spi_qup_transfer_one, ptr %transfer_one, align 4
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %of_node58 = getelementptr inbounds %struct.device, ptr %call.i283, i32 0, i32 27
  %30 = ptrtoint ptr %of_node58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %of_node58, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 36
  %31 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %auto_runtime_pm, align 4
  %dma_alignment = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 4
  %32 = ptrtoint ptr %dma_alignment to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 128, ptr %dma_alignment, align 4
  %max_dma_len = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 43
  %33 = ptrtoint ptr %max_dma_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65472, ptr %max_dma_len, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i283, ptr %driver_data.i.i, align 4
  %driver_data.i.i285 = getelementptr inbounds %struct.device, ptr %call.i283, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i.i285 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i285, align 4
  %dev62 = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %dev62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev1, ptr %dev62, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call2, ptr %36, align 4
  %iclk64 = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %iclk64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call13, ptr %iclk64, align 4
  %cclk65 = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 2
  %40 = ptrtoint ptr %cclk65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call8, ptr %cclk65, align 4
  %irq66 = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 4
  %41 = ptrtoint ptr %irq66 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call5, ptr %irq66, align 4
  %42 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call, align 4
  %44 = load ptr, ptr %driver_data.i.i285, align 4
  %rx_conf1.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 21
  %tx_conf2.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 22
  %dev3.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev3.i, align 4
  %call4.i = call ptr @dma_request_chan(ptr noundef %46, ptr noundef nonnull @.str.45) #8
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 61
  %47 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call4.i, ptr %dma_rx.i, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i286

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %call4.i to i32
  br label %spi_qup_init_dma.exit

if.end.i286:                                      ; preds = %if.end53
  %call9.i = call ptr @dma_request_chan(ptr noundef %46, ptr noundef nonnull @.str.46) #8
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 60
  %49 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call9.i, ptr %dma_tx.i, align 8
  %cmp.i65.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65.i, label %if.then12.i, label %if.end15.i

if.then12.i:                                      ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %call9.i to i32
  br label %err_tx.i

if.end15.i:                                       ; preds = %if.end.i286
  %51 = ptrtoint ptr %rx_conf1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %rx_conf1.i, align 4
  %device_fc.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 21, i32 9
  %52 = ptrtoint ptr %device_fc.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %device_fc.i, align 4
  %add.i = add i32 %43, 536
  %src_addr.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 21, i32 1
  %53 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i, ptr %src_addr.i, align 4
  %in_blk_sz.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 8
  %54 = ptrtoint ptr %in_blk_sz.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %in_blk_sz.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 21, i32 5
  %56 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %src_maxburst.i, align 4
  %57 = ptrtoint ptr %tx_conf2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %tx_conf2.i, align 4
  %device_fc17.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 22, i32 9
  %58 = ptrtoint ptr %device_fc17.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %device_fc17.i, align 4
  %add18.i = add i32 %43, 272
  %dst_addr.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 22, i32 2
  %59 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add18.i, ptr %dst_addr.i, align 4
  %out_blk_sz.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 9
  %60 = ptrtoint ptr %out_blk_sz.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %out_blk_sz.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.spi_qup, ptr %44, i32 0, i32 22, i32 6
  %62 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %dst_maxburst.i, align 4
  %63 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_rx.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 44
  %67 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %if.end15.i.err.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end15.i.err.i_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end15.i
  %call.i.i287 = call i32 %68(ptr noundef %64, ptr noundef %rx_conf1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i287)
  %tobool.not.i288 = icmp eq i32 %call.i.i287, 0
  br i1 %tobool.not.i288, label %if.end22.i, label %dmaengine_slave_config.exit.i.err.i_crit_edge

dmaengine_slave_config.exit.i.err.i_crit_edge:    ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end22.i:                                       ; preds = %dmaengine_slave_config.exit.i
  %69 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dma_tx.i, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %device_config.i66.i = getelementptr inbounds %struct.dma_device, ptr %72, i32 0, i32 44
  %73 = ptrtoint ptr %device_config.i66.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device_config.i66.i, align 4
  %tobool.not.i67.i = icmp eq ptr %74, null
  br i1 %tobool.not.i67.i, label %if.end22.i.err.i_crit_edge, label %dmaengine_slave_config.exit71.i

if.end22.i.err.i_crit_edge:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

dmaengine_slave_config.exit71.i:                  ; preds = %if.end22.i
  %call.i68.i = call i32 %74(ptr noundef %70, ptr noundef %tx_conf2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool25.not.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool25.not.i, label %dmaengine_slave_config.exit71.i.if.then73_crit_edge, label %dmaengine_slave_config.exit71.i.err.i_crit_edge

dmaengine_slave_config.exit71.i.err.i_crit_edge:  ; preds = %dmaengine_slave_config.exit71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

dmaengine_slave_config.exit71.i.if.then73_crit_edge: ; preds = %dmaengine_slave_config.exit71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

err.i:                                            ; preds = %dmaengine_slave_config.exit71.i.err.i_crit_edge, %if.end22.i.err.i_crit_edge, %dmaengine_slave_config.exit.i.err.i_crit_edge, %if.end15.i.err.i_crit_edge
  %.str.50.sink.i = phi ptr [ @.str.47, %if.end15.i.err.i_crit_edge ], [ @.str.47, %dmaengine_slave_config.exit.i.err.i_crit_edge ], [ @.str.50, %if.end22.i.err.i_crit_edge ], [ @.str.50, %dmaengine_slave_config.exit71.i.err.i_crit_edge ]
  %ret.0.i = phi i32 [ -38, %if.end15.i.err.i_crit_edge ], [ %call.i.i287, %dmaengine_slave_config.exit.i.err.i_crit_edge ], [ -38, %if.end22.i.err.i_crit_edge ], [ %call.i68.i, %dmaengine_slave_config.exit71.i.err.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull %.str.50.sink.i) #11
  %75 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_tx.i, align 8
  call void @dma_release_channel(ptr noundef %76) #8
  br label %err_tx.i

err_tx.i:                                         ; preds = %err.i, %if.then12.i
  %ret.1.i = phi i32 [ %50, %if.then12.i ], [ %ret.0.i, %err.i ]
  %77 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma_rx.i, align 4
  call void @dma_release_channel(ptr noundef %78) #8
  br label %spi_qup_init_dma.exit

spi_qup_init_dma.exit:                            ; preds = %err_tx.i, %if.then.i
  %retval.0.i289 = phi i32 [ %48, %if.then.i ], [ %ret.1.i, %err_tx.i ]
  %79 = zext i32 %retval.0.i289 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i289, label %spi_qup_init_dma.exit.if.end75_crit_edge [
    i32 -517, label %spi_qup_init_dma.exit.spi_controller_put.exit_crit_edge
    i32 0, label %spi_qup_init_dma.exit.if.then73_crit_edge
  ]

spi_qup_init_dma.exit.if.then73_crit_edge:        ; preds = %spi_qup_init_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

spi_qup_init_dma.exit.spi_controller_put.exit_crit_edge: ; preds = %spi_qup_init_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

spi_qup_init_dma.exit.if.end75_crit_edge:         ; preds = %spi_qup_init_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then73:                                        ; preds = %spi_qup_init_dma.exit.if.then73_crit_edge, %dmaengine_slave_config.exit71.i.if.then73_crit_edge
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 24
  %80 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @spi_qup_can_dma, ptr %can_dma, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %spi_qup_init_dma.exit.if.end75_crit_edge
  %call76 = call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %81 = ptrtoint ptr %call76 to i32
  %qup_v1 = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 19
  %82 = ptrtoint ptr %qup_v1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %qup_v1, align 4
  %tobool78.not = icmp eq ptr %call76, null
  br i1 %tobool78.not, label %if.then79, label %if.end75.do.body81_crit_edge

if.end75.do.body81_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i283, i32 0, i32 50
  %83 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @spi_qup_set_cs, ptr %set_cs, align 8
  br label %do.body81

do.body81:                                        ; preds = %if.then79, %if.end75.do.body81_crit_edge
  %lock = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @spi_qup_probe.__key, i16 noundef signext 3) #8
  %done = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 11
  %84 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #8
  %add.ptr = getelementptr i8, ptr %call2, i32 8
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !145
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %and = and i32 %86, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool86.not = icmp eq i32 %and, 0
  %mul = shl nuw nsw i32 %and, 4
  %spec.select = select i1 %tobool86.not, i32 4, i32 %mul
  %87 = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 9
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.select, ptr %87, align 4
  %and91 = lshr i32 %86, 5
  %shr92 = and i32 %and91, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr92)
  %tobool93.not = icmp eq i32 %shr92, 0
  %mul95 = shl nuw nsw i32 %shr92, 4
  %mul95.sink = select i1 %tobool93.not, i32 4, i32 %mul95
  %89 = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %mul95.sink, ptr %89, align 4
  %and99 = lshr i32 %86, 2
  %shr100 = and i32 %and99, 7
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %87, align 4
  %shl = shl nuw nsw i32 2, %shr100
  %mul102 = mul i32 %92, %shl
  %out_fifo_sz = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 7
  %93 = ptrtoint ptr %out_fifo_sz to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %mul102, ptr %out_fifo_sz, align 4
  %and103 = lshr i32 %86, 7
  %shr104 = and i32 %and103, 7
  %shl106 = shl nuw nsw i32 2, %shr104
  %mul107 = mul nuw nsw i32 %mul95.sink, %shl106
  %in_fifo_sz = getelementptr inbounds %struct.spi_qup, ptr %36, i32 0, i32 6
  %94 = ptrtoint ptr %in_fifo_sz to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %mul107, ptr %in_fifo_sz, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %mul95.sink, i32 noundef %mul107, i32 noundef %92, i32 noundef %mul102) #11
  %add.ptr115 = getelementptr i8, ptr %call2, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 16777216) #8, !srcloc !146
  %call116 = call fastcc i32 @spi_qup_set_state(ptr noundef %36, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end122, label %do.end121

do.end121:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  br label %error_dma

if.end122:                                        ; preds = %do.body81
  %add.ptr123 = getelementptr i8, ptr %call2, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 0) #8, !srcloc !146
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !146
  %95 = ptrtoint ptr %qup_v1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %qup_v1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool126.not = icmp eq i32 %96, 0
  br i1 %tobool126.not, label %if.then127, label %if.end122.if.end129_crit_edge

if.end122.if.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then127:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr128 = getelementptr i8, ptr %call2, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 0) #8, !srcloc !146
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.end122.if.end129_crit_edge
  %add.ptr130 = getelementptr i8, ptr %call2, i32 780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 50331648) #8, !srcloc !146
  %97 = ptrtoint ptr %qup_v1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %qup_v1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool132.not = icmp eq i32 %98, 0
  br i1 %tobool132.not, label %if.end129.if.end135_crit_edge, label %if.then133

if.end129.if.end135_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr134 = getelementptr i8, ptr %call2, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 939524096) #8, !srcloc !146
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end129.if.end135_crit_edge
  %add.ptr136 = getelementptr i8, ptr %call2, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 0) #8, !srcloc !146
  %add.ptr137 = getelementptr i8, ptr %call2, i32 772
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 16777216) #8, !srcloc !146
  %99 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev, align 8
  %call.i290 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call5, ptr noundef nonnull @spi_qup_qup_irq, ptr noundef null, i32 noundef 4, ptr noundef %100, ptr noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %tobool139.not = icmp eq i32 %call.i290, 0
  br i1 %tobool139.not, label %if.end141, label %if.end135.error_dma_crit_edge

if.end135.error_dma_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_dma

if.end141:                                        ; preds = %if.end135
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  %call.i291 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call143 = call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i283) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end141.cleanup_crit_edge, label %disable_pm

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

disable_pm:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %error_dma

error_dma:                                        ; preds = %disable_pm, %if.end135.error_dma_crit_edge, %do.end121
  %ret.0 = phi i32 [ %call116, %do.end121 ], [ %call.i290, %if.end135.error_dma_crit_edge ], [ %call143, %disable_pm ]
  call fastcc void @spi_qup_release_dma(ptr noundef nonnull %call.i283)
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %error_dma, %spi_qup_init_dma.exit.spi_controller_put.exit_crit_edge
  %ret.1 = phi i32 [ %retval.0.i289, %spi_qup_init_dma.exit.spi_controller_put.exit_crit_edge ], [ %ret.0, %error_dma ]
  call void @clk_disable(ptr noundef %call8) #8
  call void @clk_unprepare(ptr noundef %call8) #8
  call void @clk_disable(ptr noundef %call13) #8
  call void @clk_unprepare(ptr noundef %call13) #8
  call void @put_device(ptr noundef nonnull %call.i283) #8
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end141.cleanup_crit_edge, %if.then41, %if.then34, %do.end30, %do.end, %if.then15, %if.then10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %3, %if.then10 ], [ %4, %if.then15 ], [ -6, %do.end ], [ %retval.0.i.ph, %do.end30 ], [ %retval.0.i281.ph, %if.then34 ], [ %ret.1, %spi_controller_put.exit ], [ -12, %if.then41 ], [ %call5, %if.end.cleanup_crit_edge ], [ 0, %if.end141.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_qup_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !148
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !149
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @spi_qup_set_state(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %5 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  %cmp.i.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end6.if.end.i_crit_edge, label %if.then.i20

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i20:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %6) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i20, %if.end6.if.end.i_crit_edge
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  %7 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_tx.i, align 8
  %tobool.not.i9.i = icmp eq ptr %8, null
  %cmp.i10.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %spec.select.i11.i = or i1 %tobool.not.i9.i, %cmp.i10.i
  br i1 %spec.select.i11.i, label %if.end.i.spi_qup_release_dma.exit_crit_edge, label %if.then3.i

if.end.i.spi_qup_release_dma.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_qup_release_dma.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %8) #8
  br label %spi_qup_release_dma.exit

spi_qup_release_dma.exit:                         ; preds = %if.then3.i, %if.end.i.spi_qup_release_dma.exit_crit_edge
  %cclk = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cclk, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  %iclk = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iclk, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @clk_unprepare(ptr noundef %12) #8
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !148
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %spi_qup_release_dma.exit.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

spi_qup_release_dma.exit.pm_runtime_put_noidle.exit_crit_edge: ; preds = %spi_qup_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %spi_qup_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !149
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %spi_qup_release_dma.exit.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_put_noidle.exit ], [ %call4, %if.end.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_qup_transfer_one(ptr nocapture noundef readonly %master, ptr noundef %spi, ptr noundef %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode.i, align 8
  %and.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i83_crit_edge, label %land.lhs.true.i

entry.if.end.i83_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i83

land.lhs.true.i:                                  ; preds = %entry
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %in_fifo_sz.i = getelementptr inbounds %struct.spi_qup, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %in_fifo_sz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_fifo_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i82 = icmp ugt i32 %9, %11
  br i1 %cmp.i82, label %do.end.i, label %land.lhs.true.i.if.end.i83_crit_edge

land.lhs.true.i.if.end.i83_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i83

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.spi_qup, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef %9, i32 noundef %11) #11
  br label %cleanup

if.end.i83:                                       ; preds = %land.lhs.true.i.if.end.i83_crit_edge, %entry.if.end.i83_crit_edge
  %cclk.i = getelementptr inbounds %struct.spi_qup, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %cclk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cclk.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %16 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed_hz.i, align 4
  %call3.i = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end11.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #10
  %dev9.i = getelementptr inbounds %struct.spi_qup, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9.i, align 4
  %20 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed_hz.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.30, i32 noundef %21) #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i83
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %22 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bits_per_word.i, align 1
  %conv.i = zext i8 %23 to i32
  %sub.i = add nuw nsw i32 %conv.i, 7
  %div67.i = lshr i32 %sub.i, 3
  %w_size.i = getelementptr inbounds %struct.spi_qup, ptr %5, i32 0, i32 13
  %24 = ptrtoint ptr %w_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div67.i, ptr %w_size.i, align 4
  %len12.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %25 = ptrtoint ptr %len12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len12.i, align 4
  %div14.i = udiv i32 %26, %div67.i
  %n_words.i = getelementptr inbounds %struct.spi_qup, ptr %5, i32 0, i32 14
  %27 = ptrtoint ptr %n_words.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div14.i, ptr %n_words.i, align 4
  %in_fifo_sz16.i = getelementptr inbounds %struct.spi_qup, ptr %5, i32 0, i32 6
  %28 = ptrtoint ptr %in_fifo_sz16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %in_fifo_sz16.i, align 4
  %div1768.i = lshr i32 %29, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i, i32 %div1768.i)
  %cmp18.not.i = icmp ugt i32 %div14.i, %div1768.i
  br i1 %cmp18.not.i, label %if.else.i84, label %if.end11.i.if.end_crit_edge

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i84:                                      ; preds = %if.end11.i
  %30 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master.i, align 4
  %can_dma.i = getelementptr inbounds %struct.spi_controller, ptr %31, i32 0, i32 24
  %32 = ptrtoint ptr %can_dma.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %can_dma.i, align 4
  %tobool23.not.i = icmp eq ptr %33, null
  br i1 %tobool23.not.i, label %if.else.i84.if.else36.i_crit_edge, label %land.lhs.true24.i

if.else.i84.if.else36.i_crit_edge:                ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else36.i

land.lhs.true24.i:                                ; preds = %if.else.i84
  %call28.i = tail call zeroext i1 %33(ptr noundef %31, ptr noundef %spi, ptr noundef %xfer) #8
  br i1 %call28.i, label %land.lhs.true30.i, label %land.lhs.true24.i.if.else36.i_crit_edge

land.lhs.true24.i.if.else36.i_crit_edge:          ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else36.i

land.lhs.true30.i:                                ; preds = %land.lhs.true24.i
  %34 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master.i, align 4
  %cur_msg_mapped.i = getelementptr inbounds %struct.spi_controller, ptr %35, i32 0, i32 38
  %36 = ptrtoint ptr %cur_msg_mapped.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cur_msg_mapped.i, align 2, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool32.not.i = icmp eq i8 %37, 0
  br i1 %tobool32.not.i, label %land.lhs.true30.i.if.else36.i_crit_edge, label %land.lhs.true30.i.if.end_crit_edge

land.lhs.true30.i.if.end_crit_edge:               ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true30.i.if.else36.i_crit_edge:          ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else36.i

if.else36.i:                                      ; preds = %land.lhs.true30.i.if.else36.i_crit_edge, %land.lhs.true24.i.if.else36.i_crit_edge, %if.else.i84.if.else36.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else36.i, %land.lhs.true30.i.if.end_crit_edge, %if.end11.i.if.end_crit_edge
  %.sink = phi i32 [ 1, %if.else36.i ], [ 0, %if.end11.i.if.end_crit_edge ], [ 3, %land.lhs.true30.i.if.end_crit_edge ]
  %mode35.i = getelementptr inbounds %struct.spi_qup, ptr %5, i32 0, i32 20
  %38 = ptrtoint ptr %mode35.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %mode35.i, align 4
  %39 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed_hz.i, align 4
  %sub = add i32 %40, 999
  %div = udiv i32 %sub, 1000
  %add2 = add nsw i32 %div, -1
  %41 = ptrtoint ptr %len12.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65472, i32 %42)
  %cmp = icmp ugt i32 %42, 65472
  %phi.bo = shl i32 %42, 3
  %cond = select i1 %cmp, i32 523776, i32 %phi.bo
  %sub3 = add i32 %add2, %cond
  %div4 = udiv i32 %sub3, %div
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div4) #8
  %mul6 = mul i32 %call2.i, 100
  %done = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 11
  %43 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %done, align 4
  %lock = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 5
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %xfer14 = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 10
  %44 = ptrtoint ptr %xfer14 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %xfer, ptr %xfer14, align 4
  %error = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %error, align 4
  %rx_bytes = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 16
  %46 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rx_bytes, align 4
  %tx_bytes = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 15
  %47 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tx_bytes, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #8
  %mode = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 20
  %48 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode, align 4
  %50 = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %switch.i = icmp eq i32 %50, 2
  %51 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i86 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %driver_data.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i.i.i86, align 4
  br i1 %switch.i, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %55 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i87 = icmp eq ptr %56, null
  br i1 %tobool.not.i87, label %if.else.i88, label %if.then17.if.end4.i_crit_edge

if.then17.if.end4.i_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.else.i88:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %xfer, align 4
  %tobool2.not.i = icmp eq ptr %58, null
  %spec.select.i = select i1 %tobool2.not.i, ptr null, ptr @spi_qup_dma_done
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i88, %if.then17.if.end4.i_crit_edge
  %rx_done.0.i = phi ptr [ @spi_qup_dma_done, %if.then17.if.end4.i_crit_edge ], [ null, %if.else.i88 ]
  %tx_done.0.i = phi ptr [ null, %if.then17.if.end4.i_crit_edge ], [ %spec.select.i, %if.else.i88 ]
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %59 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_sg.i, align 4
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %61 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_sg.i, align 4
  %w_size.i89 = getelementptr inbounds %struct.spi_qup, ptr %54, i32 0, i32 13
  %n_words.i90 = getelementptr inbounds %struct.spi_qup, ptr %54, i32 0, i32 14
  %dma_rx.i.i = getelementptr inbounds %struct.spi_controller, ptr %52, i32 0, i32 61
  %dma_tx.i124.i = getelementptr inbounds %struct.spi_controller, ptr %52, i32 0, i32 60
  %done.i = getelementptr inbounds %struct.spi_qup, ptr %54, i32 0, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond62.i.do.body.i_crit_edge, %if.end4.i
  %tx_sgl.0.i = phi ptr [ %62, %if.end4.i ], [ %tx_sgl.2.i, %do.cond62.i.do.body.i_crit_edge ]
  %rx_sgl.0.i = phi ptr [ %60, %if.end4.i ], [ %rx_sgl.1.lcssa.i, %do.cond62.i.do.body.i_crit_edge ]
  %tobool6.not.i = icmp eq ptr %rx_sgl.0.i, null
  br i1 %tobool6.not.i, label %do.body.i.if.end9.i_crit_edge, label %do.body.i.for.body.i.i_crit_edge

do.body.i.for.body.i.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body.i.i

do.body.i.if.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body.i.for.body.i.i_crit_edge
  %rx_nents.0.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.i.for.body.i.i_crit_edge ]
  %total.07.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.i.for.body.i.i_crit_edge ]
  %sg.06.i.i = phi ptr [ %call.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rx_sgl.0.i, %do.body.i.for.body.i.i_crit_edge ]
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.06.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_length.i.i, align 4
  %add.i.i = add i32 %64, %total.07.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %total.07.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %total.07.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65472, i32 %add.i.i)
  %cmp2.i.i = icmp ugt i32 %add.i.i, 65472
  %or.cond.i.i = or i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.spi_qup_sgl_get_nents_len.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.spi_qup_sgl_get_nents_len.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_qup_sgl_get_nents_len.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %rx_nents.0.i, 1
  %call.i.i = tail call ptr @sg_next(ptr noundef nonnull %sg.06.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.spi_qup_sgl_get_nents_len.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.spi_qup_sgl_get_nents_len.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_qup_sgl_get_nents_len.exit.i

spi_qup_sgl_get_nents_len.exit.i:                 ; preds = %for.inc.i.i.spi_qup_sgl_get_nents_len.exit.i_crit_edge, %for.body.i.i.spi_qup_sgl_get_nents_len.exit.i_crit_edge
  %rx_nents.1.i = phi i32 [ %rx_nents.0.i, %for.body.i.i.spi_qup_sgl_get_nents_len.exit.i_crit_edge ], [ %inc.i.i, %for.inc.i.i.spi_qup_sgl_get_nents_len.exit.i_crit_edge ]
  %total.0.lcssa.i.i = phi i32 [ %total.07.i.i, %for.body.i.i.spi_qup_sgl_get_nents_len.exit.i_crit_edge ], [ %add.i.i, %for.inc.i.i.spi_qup_sgl_get_nents_len.exit.i_crit_edge ]
  %65 = ptrtoint ptr %w_size.i89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %w_size.i89, align 4
  %div.i = udiv i32 %total.0.lcssa.i.i, %66
  %67 = ptrtoint ptr %n_words.i90 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div.i, ptr %n_words.i90, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %spi_qup_sgl_get_nents_len.exit.i, %do.body.i.if.end9.i_crit_edge
  %rx_nents.2.i = phi i32 [ 0, %do.body.i.if.end9.i_crit_edge ], [ %rx_nents.1.i, %spi_qup_sgl_get_nents_len.exit.i ]
  %tobool10.not.i = icmp eq ptr %tx_sgl.0.i, null
  br i1 %tobool10.not.i, label %if.end16thread-pre-split.i, label %if.end9.i.for.body.i116.i_crit_edge

if.end9.i.for.body.i116.i_crit_edge:              ; preds = %if.end9.i
  br label %for.body.i116.i

for.body.i116.i:                                  ; preds = %for.inc.i120.i.for.body.i116.i_crit_edge, %if.end9.i.for.body.i116.i_crit_edge
  %tx_nents.0.i = phi i32 [ %inc.i117.i, %for.inc.i120.i.for.body.i116.i_crit_edge ], [ 0, %if.end9.i.for.body.i116.i_crit_edge ]
  %total.07.i109.i = phi i32 [ %add.i112.i, %for.inc.i120.i.for.body.i116.i_crit_edge ], [ 0, %if.end9.i.for.body.i116.i_crit_edge ]
  %sg.06.i110.i = phi ptr [ %call.i118.i, %for.inc.i120.i.for.body.i116.i_crit_edge ], [ %tx_sgl.0.i, %if.end9.i.for.body.i116.i_crit_edge ]
  %dma_length.i111.i = getelementptr inbounds %struct.scatterlist, ptr %sg.06.i110.i, i32 0, i32 4
  %68 = ptrtoint ptr %dma_length.i111.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_length.i111.i, align 4
  %add.i112.i = add i32 %69, %total.07.i109.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i112.i, i32 %total.07.i109.i)
  %cmp.i113.i = icmp ult i32 %add.i112.i, %total.07.i109.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65472, i32 %add.i112.i)
  %cmp2.i114.i = icmp ugt i32 %add.i112.i, 65472
  %or.cond.i115.i = or i1 %cmp.i113.i, %cmp2.i114.i
  br i1 %or.cond.i115.i, label %for.body.i116.i.spi_qup_sgl_get_nents_len.exit122.i_crit_edge, label %for.inc.i120.i

for.body.i116.i.spi_qup_sgl_get_nents_len.exit122.i_crit_edge: ; preds = %for.body.i116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_qup_sgl_get_nents_len.exit122.i

for.inc.i120.i:                                   ; preds = %for.body.i116.i
  %inc.i117.i = add i32 %tx_nents.0.i, 1
  %call.i118.i = tail call ptr @sg_next(ptr noundef nonnull %sg.06.i110.i) #8
  %tobool.not.i119.i = icmp eq ptr %call.i118.i, null
  br i1 %tobool.not.i119.i, label %for.inc.i120.i.spi_qup_sgl_get_nents_len.exit122.i_crit_edge, label %for.inc.i120.i.for.body.i116.i_crit_edge

for.inc.i120.i.for.body.i116.i_crit_edge:         ; preds = %for.inc.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i116.i

for.inc.i120.i.spi_qup_sgl_get_nents_len.exit122.i_crit_edge: ; preds = %for.inc.i120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_qup_sgl_get_nents_len.exit122.i

spi_qup_sgl_get_nents_len.exit122.i:              ; preds = %for.inc.i120.i.spi_qup_sgl_get_nents_len.exit122.i_crit_edge, %for.body.i116.i.spi_qup_sgl_get_nents_len.exit122.i_crit_edge
  %tx_nents.1.i = phi i32 [ %tx_nents.0.i, %for.body.i116.i.spi_qup_sgl_get_nents_len.exit122.i_crit_edge ], [ %inc.i117.i, %for.inc.i120.i.spi_qup_sgl_get_nents_len.exit122.i_crit_edge ]
  %total.0.lcssa.i121.i = phi i32 [ %total.07.i109.i, %for.body.i116.i.spi_qup_sgl_get_nents_len.exit122.i_crit_edge ], [ %add.i112.i, %for.inc.i120.i.spi_qup_sgl_get_nents_len.exit122.i_crit_edge ]
  %70 = ptrtoint ptr %w_size.i89 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %w_size.i89, align 4
  %div14.i91 = udiv i32 %total.0.lcssa.i121.i, %71
  %72 = ptrtoint ptr %n_words.i90 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div14.i91, ptr %n_words.i90, align 4
  br label %if.end16.i

if.end16thread-pre-split.i:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %n_words.i90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pr.i = load i32, ptr %n_words.i90, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16thread-pre-split.i, %spi_qup_sgl_get_nents_len.exit122.i
  %74 = phi i32 [ %.pr.i, %if.end16thread-pre-split.i ], [ %div14.i91, %spi_qup_sgl_get_nents_len.exit122.i ]
  %tx_nents.2.i = phi i32 [ 0, %if.end16thread-pre-split.i ], [ %tx_nents.1.i, %spi_qup_sgl_get_nents_len.exit122.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool18.not.i = icmp eq i32 %74, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end20_crit_edge, label %if.end20.i

if.end16.i.if.end20_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20.i:                                       ; preds = %if.end16.i
  %call21.i = tail call fastcc i32 @spi_qup_io_config(ptr noundef %spi, ptr noundef %xfer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.if.end20_crit_edge

if.end20.i.if.end20_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end24.i:                                       ; preds = %if.end20.i
  %call25.i = tail call fastcc i32 @spi_qup_set_state(ptr noundef %54, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end29.i, label %if.end24.i.if.end20.sink.split_crit_edge

if.end24.i.if.end20.sink.split_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

if.end29.i:                                       ; preds = %if.end24.i
  br i1 %tobool6.not.i, label %if.end29.i.if.end36.i_crit_edge, label %if.then31.i

if.end29.i.if.end36.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then31.i:                                      ; preds = %if.end29.i
  %75 = ptrtoint ptr %driver_data.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_data.i.i.i86, align 4
  %77 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %chan.0.i.i = load ptr, ptr %dma_rx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %chan.0.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then31.i.if.end20_crit_edge, label %lor.lhs.false.i.i.i

if.then31.i.if.end20_crit_edge:                   ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

lor.lhs.false.i.i.i:                              ; preds = %if.then31.i
  %78 = ptrtoint ptr %chan.0.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chan.0.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %79, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.if.end20_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.if.end20_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %device_prep_slave_sg.i.i.i = getelementptr inbounds %struct.dma_device, ptr %79, i32 0, i32 39
  %80 = ptrtoint ptr %device_prep_slave_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device_prep_slave_sg.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %81, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.if.end20_crit_edge, label %dmaengine_prep_slave_sg.exit.i.i

lor.lhs.false2.i.i.i.if.end20_crit_edge:          ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

dmaengine_prep_slave_sg.exit.i.i:                 ; preds = %lor.lhs.false2.i.i.i
  %call.i.i.i = tail call ptr %81(ptr noundef nonnull %chan.0.i.i, ptr noundef nonnull %rx_sgl.0.i, i32 noundef %rx_nents.2.i, i32 noundef 2, i32 noundef 33, ptr noundef null) #8
  %tobool.not.i21.i.i = icmp eq ptr %call.i.i.i, null
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i21.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.then3.i.i, label %if.end5.i.i

if.then3.i.i:                                     ; preds = %dmaengine_prep_slave_sg.exit.i.i
  %82 = ptrtoint ptr %call.i.i.i to i32
  br i1 %tobool.not.i21.i.i, label %if.then3.i.i.if.end20_crit_edge, label %if.then3.i.i.spi_qup_prep_sg.exit.i_crit_edge

if.then3.i.i.spi_qup_prep_sg.exit.i_crit_edge:    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_qup_prep_sg.exit.i

if.then3.i.i.if.end20_crit_edge:                  ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end5.i.i:                                      ; preds = %dmaengine_prep_slave_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %callback6.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 6
  %83 = ptrtoint ptr %callback6.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %rx_done.0.i, ptr %callback6.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 8
  %84 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %76, ptr %callback_param.i.i, align 4
  %tx_submit.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %tx_submit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tx_submit.i.i.i, align 4
  %call.i22.i.i = tail call i32 %86(ptr noundef nonnull %call.i.i.i) #8
  %87 = tail call i32 @llvm.smin.i32(i32 %call.i22.i.i, i32 0) #8
  br label %spi_qup_prep_sg.exit.i

spi_qup_prep_sg.exit.i:                           ; preds = %if.end5.i.i, %if.then3.i.i.spi_qup_prep_sg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %87, %if.end5.i.i ], [ %82, %if.then3.i.i.spi_qup_prep_sg.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool33.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %spi_qup_prep_sg.exit.i.if.end20_crit_edge

spi_qup_prep_sg.exit.i.if.end20_crit_edge:        ; preds = %spi_qup_prep_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end35.i:                                       ; preds = %spi_qup_prep_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dma_rx.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %91, i32 0, i32 50
  %92 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %93(ptr noundef %89) #8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end35.i, %if.end29.i.if.end36.i_crit_edge
  br i1 %tobool10.not.i, label %if.end36.i.if.end43.i_crit_edge, label %if.then38.i

if.end36.i.if.end43.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end36.i
  %94 = ptrtoint ptr %driver_data.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %driver_data.i.i.i86, align 4
  %96 = ptrtoint ptr %dma_tx.i124.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %chan.0.i126.i = load ptr, ptr %dma_tx.i124.i, align 4
  %tobool.not.i.i127.i = icmp eq ptr %chan.0.i126.i, null
  br i1 %tobool.not.i.i127.i, label %if.then38.i.if.end20_crit_edge, label %lor.lhs.false.i.i129.i

if.then38.i.if.end20_crit_edge:                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

lor.lhs.false.i.i129.i:                           ; preds = %if.then38.i
  %97 = ptrtoint ptr %chan.0.i126.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %chan.0.i126.i, align 4
  %tobool1.not.i.i128.i = icmp eq ptr %98, null
  br i1 %tobool1.not.i.i128.i, label %lor.lhs.false.i.i129.i.if.end20_crit_edge, label %lor.lhs.false2.i.i132.i

lor.lhs.false.i.i129.i.if.end20_crit_edge:        ; preds = %lor.lhs.false.i.i129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

lor.lhs.false2.i.i132.i:                          ; preds = %lor.lhs.false.i.i129.i
  %device_prep_slave_sg.i.i130.i = getelementptr inbounds %struct.dma_device, ptr %98, i32 0, i32 39
  %99 = ptrtoint ptr %device_prep_slave_sg.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device_prep_slave_sg.i.i130.i, align 4
  %tobool4.not.i.i131.i = icmp eq ptr %100, null
  br i1 %tobool4.not.i.i131.i, label %lor.lhs.false2.i.i132.i.if.end20_crit_edge, label %dmaengine_prep_slave_sg.exit.i137.i

lor.lhs.false2.i.i132.i.if.end20_crit_edge:       ; preds = %lor.lhs.false2.i.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

dmaengine_prep_slave_sg.exit.i137.i:              ; preds = %lor.lhs.false2.i.i132.i
  %call.i.i133.i = tail call ptr %100(ptr noundef nonnull %chan.0.i126.i, ptr noundef nonnull %tx_sgl.0.i, i32 noundef %tx_nents.2.i, i32 noundef 1, i32 noundef 33, ptr noundef null) #8
  %tobool.not.i21.i134.i = icmp eq ptr %call.i.i133.i, null
  %cmp.i.i135.i = icmp ugt ptr %call.i.i133.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i136.i = or i1 %tobool.not.i21.i134.i, %cmp.i.i135.i
  br i1 %spec.select.i.i136.i, label %if.then3.i139.i, label %if.end5.i144.i

if.then3.i139.i:                                  ; preds = %dmaengine_prep_slave_sg.exit.i137.i
  %101 = ptrtoint ptr %call.i.i133.i to i32
  br i1 %tobool.not.i21.i134.i, label %if.then3.i139.i.if.end20_crit_edge, label %if.then3.i139.i.spi_qup_prep_sg.exit146.i_crit_edge

if.then3.i139.i.spi_qup_prep_sg.exit146.i_crit_edge: ; preds = %if.then3.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_qup_prep_sg.exit146.i

if.then3.i139.i.if.end20_crit_edge:               ; preds = %if.then3.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end5.i144.i:                                   ; preds = %dmaengine_prep_slave_sg.exit.i137.i
  call void @__sanitizer_cov_trace_pc() #10
  %callback6.i140.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i133.i, i32 0, i32 6
  %102 = ptrtoint ptr %callback6.i140.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %tx_done.0.i, ptr %callback6.i140.i, align 4
  %callback_param.i141.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i133.i, i32 0, i32 8
  %103 = ptrtoint ptr %callback_param.i141.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %95, ptr %callback_param.i141.i, align 4
  %tx_submit.i.i142.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i133.i, i32 0, i32 4
  %104 = ptrtoint ptr %tx_submit.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_submit.i.i142.i, align 4
  %call.i22.i143.i = tail call i32 %105(ptr noundef nonnull %call.i.i133.i) #8
  %106 = tail call i32 @llvm.smin.i32(i32 %call.i22.i143.i, i32 0) #8
  br label %spi_qup_prep_sg.exit146.i

spi_qup_prep_sg.exit146.i:                        ; preds = %if.end5.i144.i, %if.then3.i139.i.spi_qup_prep_sg.exit146.i_crit_edge
  %retval.0.i145.i = phi i32 [ %106, %if.end5.i144.i ], [ %101, %if.then3.i139.i.spi_qup_prep_sg.exit146.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i145.i)
  %tobool40.not.i = icmp eq i32 %retval.0.i145.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %spi_qup_prep_sg.exit146.i.if.end20_crit_edge

spi_qup_prep_sg.exit146.i.if.end20_crit_edge:     ; preds = %spi_qup_prep_sg.exit146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end42.i:                                       ; preds = %spi_qup_prep_sg.exit146.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %dma_tx.i124.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dma_tx.i124.i, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %device_issue_pending.i147.i = getelementptr inbounds %struct.dma_device, ptr %110, i32 0, i32 50
  %111 = ptrtoint ptr %device_issue_pending.i147.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device_issue_pending.i147.i, align 4
  tail call void %112(ptr noundef %108) #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end42.i, %if.end36.i.if.end43.i_crit_edge
  %call44.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef %mul6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end20_crit_edge, label %for.cond.preheader.i

if.end43.i.if.end20_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

for.cond.preheader.i:                             ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_nents.2.i)
  %tobool49.not162.i = icmp eq i32 %rx_nents.2.i, 0
  %or.cond163.i = select i1 %tobool6.not.i, i1 true, i1 %tobool49.not162.i
  br i1 %or.cond163.i, label %for.cond.preheader.i.for.cond51.preheader.i_crit_edge, label %for.cond.preheader.i.for.inc.i_crit_edge

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  br label %for.inc.i

for.cond.preheader.i.for.cond51.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond51.preheader.i

for.cond51.preheader.i:                           ; preds = %for.inc.i.for.cond51.preheader.i_crit_edge, %for.cond.preheader.i.for.cond51.preheader.i_crit_edge
  %rx_sgl.1.lcssa.i = phi ptr [ %rx_sgl.0.i, %for.cond.preheader.i.for.cond51.preheader.i_crit_edge ], [ %call50.i, %for.inc.i.for.cond51.preheader.i_crit_edge ]
  br i1 %tobool10.not.i, label %for.cond51.preheader.i.do.cond62.i_crit_edge, label %for.cond51.preheader.i.land.rhs53.i_crit_edge

for.cond51.preheader.i.land.rhs53.i_crit_edge:    ; preds = %for.cond51.preheader.i
  br label %land.rhs53.i

for.cond51.preheader.i.do.cond62.i_crit_edge:     ; preds = %for.cond51.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond62.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %rx_sgl.1165.i = phi ptr [ %call50.i, %for.inc.i.for.inc.i_crit_edge ], [ %rx_sgl.0.i, %for.cond.preheader.i.for.inc.i_crit_edge ]
  %rx_nents.3164.i = phi i32 [ %dec.i, %for.inc.i.for.inc.i_crit_edge ], [ %rx_nents.2.i, %for.cond.preheader.i.for.inc.i_crit_edge ]
  %dec.i = add i32 %rx_nents.3164.i, -1
  %call50.i = tail call ptr @sg_next(ptr noundef nonnull %rx_sgl.1165.i) #8
  %tobool48.not.i = icmp eq ptr %call50.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool49.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool48.not.i, i1 true, i1 %tobool49.not.i
  br i1 %or.cond.i, label %for.inc.i.for.cond51.preheader.i_crit_edge, label %for.inc.i.for.inc.i_crit_edge

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i.for.cond51.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond51.preheader.i

land.rhs53.i:                                     ; preds = %for.inc58.i.land.rhs53.i_crit_edge, %for.cond51.preheader.i.land.rhs53.i_crit_edge
  %tx_sgl.1168.i = phi ptr [ %call59.i, %for.inc58.i.land.rhs53.i_crit_edge ], [ %tx_sgl.0.i, %for.cond51.preheader.i.land.rhs53.i_crit_edge ]
  %tx_nents.3167.i = phi i32 [ %dec54.i, %for.inc58.i.land.rhs53.i_crit_edge ], [ %tx_nents.2.i, %for.cond51.preheader.i.land.rhs53.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_nents.3167.i)
  %tobool55.not.i = icmp eq i32 %tx_nents.3167.i, 0
  br i1 %tobool55.not.i, label %land.rhs53.i.do.cond62.i_crit_edge, label %for.inc58.i

land.rhs53.i.do.cond62.i_crit_edge:               ; preds = %land.rhs53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond62.i

for.inc58.i:                                      ; preds = %land.rhs53.i
  %dec54.i = add i32 %tx_nents.3167.i, -1
  %call59.i = tail call ptr @sg_next(ptr noundef nonnull %tx_sgl.1168.i) #8
  %tobool52.not.i = icmp eq ptr %call59.i, null
  br i1 %tobool52.not.i, label %for.inc58.i.do.cond62.i_crit_edge, label %for.inc58.i.land.rhs53.i_crit_edge

for.inc58.i.land.rhs53.i_crit_edge:               ; preds = %for.inc58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs53.i

for.inc58.i.do.cond62.i_crit_edge:                ; preds = %for.inc58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond62.i

do.cond62.i:                                      ; preds = %for.inc58.i.do.cond62.i_crit_edge, %land.rhs53.i.do.cond62.i_crit_edge, %for.cond51.preheader.i.do.cond62.i_crit_edge
  %tx_sgl.2.i = phi ptr [ null, %for.cond51.preheader.i.do.cond62.i_crit_edge ], [ %tx_sgl.1168.i, %land.rhs53.i.do.cond62.i_crit_edge ], [ null, %for.inc58.i.do.cond62.i_crit_edge ]
  %tobool63.not.i = icmp eq ptr %rx_sgl.1.lcssa.i, null
  %tobool64.not.i = icmp eq ptr %tx_sgl.2.i, null
  %or.cond171.i = select i1 %tobool63.not.i, i1 %tobool64.not.i, i1 false
  br i1 %or.cond171.i, label %do.cond62.i.if.end20_crit_edge, label %do.cond62.i.do.body.i_crit_edge

do.cond62.i.do.body.i_crit_edge:                  ; preds = %do.cond62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.cond62.i.if.end20_crit_edge:                   ; preds = %do.cond62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %if.end
  %n_words2.i = getelementptr inbounds %struct.spi_qup, ptr %54, i32 0, i32 14
  %113 = ptrtoint ptr %n_words2.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %n_words2.i, align 4
  %.frozen = freeze i32 %114
  %div.i96 = sdiv i32 %.frozen, 65472
  %rx_buf.i97 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %115 = ptrtoint ptr %rx_buf.i97 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rx_buf.i97, align 4
  %rx_buf3.i = getelementptr inbounds %struct.spi_qup, ptr %54, i32 0, i32 18
  %117 = ptrtoint ptr %rx_buf3.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %rx_buf3.i, align 4
  %118 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %xfer, align 4
  %tx_buf4.i = getelementptr inbounds %struct.spi_qup, ptr %54, i32 0, i32 17
  %120 = ptrtoint ptr %tx_buf4.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %tx_buf4.i, align 4
  %121 = mul i32 %div.i96, 65472
  %rem.i.decomposed = sub i32 %.frozen, %121
  %in_fifo_sz.i98 = getelementptr inbounds %struct.spi_qup, ptr %54, i32 0, i32 6
  %mode.i99 = getelementptr inbounds %struct.spi_qup, ptr %54, i32 0, i32 20
  %done.i100 = getelementptr inbounds %struct.spi_qup, ptr %54, i32 0, i32 11
  br label %do.body.i103

do.body.i103:                                     ; preds = %if.end60.i.do.body.i103_crit_edge, %if.else
  %iterations.0.i = phi i32 [ %div.i96, %if.else ], [ %dec.i107, %if.end60.i.do.body.i103_crit_edge ]
  %offset.0.i = phi i32 [ 0, %if.else ], [ %inc.i, %if.end60.i.do.body.i103_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iterations.0.i)
  %tobool.not.i101 = icmp eq i32 %iterations.0.i, 0
  %storemerge.i = select i1 %tobool.not.i101, i32 %rem.i.decomposed, i32 65472
  %122 = ptrtoint ptr %n_words2.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %storemerge.i, ptr %n_words2.i, align 4
  %123 = ptrtoint ptr %tx_buf4.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tx_buf4.i, align 4
  %tobool8.not.i = icmp eq ptr %124, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0.i)
  %tobool9.not.i = icmp eq i32 %offset.0.i, 0
  %or.cond.i102 = select i1 %tobool8.not.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond.i102, label %do.body.i103.if.end13.i_crit_edge, label %if.then10.i

do.body.i103.if.end13.i_crit_edge:                ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then10.i:                                      ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %xfer, align 4
  %mul.i = mul i32 %offset.0.i, 65472
  %add.ptr.i = getelementptr i8, ptr %126, i32 %mul.i
  %127 = ptrtoint ptr %tx_buf4.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr.i, ptr %tx_buf4.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %do.body.i103.if.end13.i_crit_edge
  %128 = ptrtoint ptr %rx_buf3.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rx_buf3.i, align 4
  %tobool15.not.i = icmp eq ptr %129, null
  %or.cond108.i = select i1 %tobool15.not.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond108.i, label %if.end13.i.if.end23.i_crit_edge, label %if.then18.i

if.end13.i.if.end23.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %rx_buf.i97 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rx_buf.i97, align 4
  %mul20.i = mul i32 %offset.0.i, 65472
  %add.ptr21.i = getelementptr i8, ptr %131, i32 %mul20.i
  %132 = ptrtoint ptr %rx_buf3.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %add.ptr21.i, ptr %rx_buf3.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i, %if.end13.i.if.end23.i_crit_edge
  %133 = ptrtoint ptr %in_fifo_sz.i98 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %in_fifo_sz.i98, align 4
  %div25107.i = lshr i32 %134, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i, i32 %div25107.i)
  %cmp.not.i = icmp ugt i32 %storemerge.i, %div25107.i
  br i1 %cmp.not.i, label %if.end23.i.if.end27.i_crit_edge, label %if.then26.i

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %mode.i99 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %mode.i99, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end27.i_crit_edge
  %call28.i104 = tail call fastcc i32 @spi_qup_io_config(ptr noundef %spi, ptr noundef %xfer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i104)
  %tobool29.not.i = icmp eq i32 %call28.i104, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end27.i.if.end20_crit_edge

if.end27.i.if.end20_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end31.i:                                       ; preds = %if.end27.i
  %call32.i = tail call fastcc i32 @spi_qup_set_state(ptr noundef %54, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i105 = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i105, label %if.end36.i106, label %if.end31.i.if.end20.sink.split_crit_edge

if.end31.i.if.end20.sink.split_crit_edge:         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

if.end36.i106:                                    ; preds = %if.end31.i
  %call37.i = tail call fastcc i32 @spi_qup_set_state(ptr noundef %54, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end44.i, label %if.end36.i106.if.end20.sink.split_crit_edge

if.end36.i106.if.end20.sink.split_crit_edge:      ; preds = %if.end36.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

if.end44.i:                                       ; preds = %if.end36.i106
  %136 = ptrtoint ptr %mode.i99 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mode.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp46.i = icmp eq i32 %137, 0
  br i1 %cmp46.i, label %if.then47.i, label %if.end44.i.if.end48.i_crit_edge

if.end44.i.if.end48.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @spi_qup_write(ptr noundef %54) #8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.end44.i.if.end48.i_crit_edge
  %call49.i = tail call fastcc i32 @spi_qup_set_state(ptr noundef %54, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end56.i, label %if.end48.i.if.end20.sink.split_crit_edge

if.end48.i.if.end20.sink.split_crit_edge:         ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

if.end56.i:                                       ; preds = %if.end48.i
  %call57.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i100, i32 noundef %mul6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end56.i.if.end20_crit_edge, label %if.end60.i

if.end56.i.if.end20_crit_edge:                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end60.i:                                       ; preds = %if.end56.i
  %inc.i = add i32 %offset.0.i, 1
  %dec.i107 = add i32 %iterations.0.i, -1
  br i1 %tobool.not.i101, label %if.end60.i.if.end20_crit_edge, label %if.end60.i.do.body.i103_crit_edge

if.end60.i.do.body.i103_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i103

if.end60.i.if.end20_crit_edge:                    ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20.sink.split:                              ; preds = %if.end48.i.if.end20.sink.split_crit_edge, %if.end36.i106.if.end20.sink.split_crit_edge, %if.end31.i.if.end20.sink.split_crit_edge, %if.end24.i.if.end20.sink.split_crit_edge
  %.str.32.sink.i.sink = phi ptr [ @.str.32, %if.end24.i.if.end20.sink.split_crit_edge ], [ @.str.32, %if.end31.i.if.end20.sink.split_crit_edge ], [ @.str.41, %if.end36.i106.if.end20.sink.split_crit_edge ], [ @.str.32, %if.end48.i.if.end20.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call25.i, %if.end24.i.if.end20.sink.split_crit_edge ], [ %call32.i, %if.end31.i.if.end20.sink.split_crit_edge ], [ %call37.i, %if.end36.i106.if.end20.sink.split_crit_edge ], [ %call49.i, %if.end48.i.if.end20.sink.split_crit_edge ]
  %dev55.i = getelementptr inbounds %struct.spi_qup, ptr %54, i32 0, i32 1
  %138 = ptrtoint ptr %dev55.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev55.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %139, ptr noundef nonnull %.str.32.sink.i.sink) #11
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.end60.i.if.end20_crit_edge, %if.end56.i.if.end20_crit_edge, %if.end27.i.if.end20_crit_edge, %do.cond62.i.if.end20_crit_edge, %if.end43.i.if.end20_crit_edge, %spi_qup_prep_sg.exit146.i.if.end20_crit_edge, %if.then3.i139.i.if.end20_crit_edge, %lor.lhs.false2.i.i132.i.if.end20_crit_edge, %lor.lhs.false.i.i129.i.if.end20_crit_edge, %if.then38.i.if.end20_crit_edge, %spi_qup_prep_sg.exit.i.if.end20_crit_edge, %if.then3.i.i.if.end20_crit_edge, %lor.lhs.false2.i.i.i.if.end20_crit_edge, %lor.lhs.false.i.i.i.if.end20_crit_edge, %if.then31.i.if.end20_crit_edge, %if.end20.i.if.end20_crit_edge, %if.end16.i.if.end20_crit_edge
  %ret.0 = phi i32 [ %ret.0.ph, %if.end20.sink.split ], [ 0, %do.cond62.i.if.end20_crit_edge ], [ -110, %if.end43.i.if.end20_crit_edge ], [ %retval.0.i145.i, %spi_qup_prep_sg.exit146.i.if.end20_crit_edge ], [ %retval.0.i.i, %spi_qup_prep_sg.exit.i.if.end20_crit_edge ], [ %call21.i, %if.end20.i.if.end20_crit_edge ], [ -5, %if.end16.i.if.end20_crit_edge ], [ -22, %if.then31.i.if.end20_crit_edge ], [ -22, %lor.lhs.false.i.i.i.if.end20_crit_edge ], [ -22, %lor.lhs.false2.i.i.i.if.end20_crit_edge ], [ -22, %if.then3.i.i.if.end20_crit_edge ], [ -22, %if.then38.i.if.end20_crit_edge ], [ -22, %lor.lhs.false.i.i129.i.if.end20_crit_edge ], [ -22, %lor.lhs.false2.i.i132.i.if.end20_crit_edge ], [ -22, %if.then3.i139.i.if.end20_crit_edge ], [ %call28.i104, %if.end27.i.if.end20_crit_edge ], [ -110, %if.end56.i.if.end20_crit_edge ], [ 0, %if.end60.i.if.end20_crit_edge ]
  %call21 = tail call fastcc i32 @spi_qup_set_state(ptr noundef %1, i32 noundef 0)
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool36.not = icmp eq i32 %ret.0, 0
  br i1 %tobool36.not, label %if.end39, label %if.end39.thread

if.end39.thread:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #8
  br label %land.lhs.true

if.end39:                                         ; preds = %if.end20
  %140 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %error, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool41.not = icmp eq i32 %141, 0
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %if.end39.land.lhs.true_crit_edge

if.end39.land.lhs.true_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end39.land.lhs.true_crit_edge, %if.end39.thread
  %ret.1121 = phi i32 [ %ret.0, %if.end39.thread ], [ %141, %if.end39.land.lhs.true_crit_edge ]
  %142 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mode, align 4
  %144 = and i32 %143, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %switch.i109 = icmp eq i32 %144, 2
  br i1 %switch.i109, label %if.then45, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true
  %145 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %xfer, align 4
  %tobool.not.i110 = icmp eq ptr %146, null
  br i1 %tobool.not.i110, label %if.then45.if.end.i115_crit_edge, label %if.then.i112

if.then45.if.end.i115_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i115

if.then.i112:                                     ; preds = %if.then45
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %147 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dma_tx.i, align 8
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %150, i32 0, i32 47
  %151 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i111 = icmp eq ptr %152, null
  br i1 %tobool.not.i.i111, label %if.then.i112.if.end.i115_crit_edge, label %if.then.i.i

if.then.i112.if.end.i115_crit_edge:               ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i115

if.then.i.i:                                      ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i113 = tail call i32 %152(ptr noundef %148) #8
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then.i.i, %if.then.i112.if.end.i115_crit_edge, %if.then45.if.end.i115_crit_edge
  %rx_buf.i114 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %153 = ptrtoint ptr %rx_buf.i114 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rx_buf.i114, align 4
  %tobool1.not.i = icmp eq ptr %154, null
  br i1 %tobool1.not.i, label %if.end.i115.cleanup_crit_edge, label %if.then2.i

if.end.i115.cleanup_crit_edge:                    ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i115
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %155 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dma_rx.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %device_terminate_all.i7.i = getelementptr inbounds %struct.dma_device, ptr %158, i32 0, i32 47
  %159 = ptrtoint ptr %device_terminate_all.i7.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %device_terminate_all.i7.i, align 4
  %tobool.not.i8.i = icmp eq ptr %160, null
  br i1 %tobool.not.i8.i, label %if.then2.i.cleanup_crit_edge, label %if.then.i10.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i10.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i9.i = tail call i32 %160(ptr noundef %156) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i10.i, %if.then2.i.cleanup_crit_edge, %if.end.i115.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %do.end8.i, %do.end.i
  %retval.0 = phi i32 [ %ret.1121, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.end8.i ], [ %ret.1121, %if.end.i115.cleanup_crit_edge ], [ %ret.1121, %if.then2.i.cleanup_crit_edge ], [ %ret.1121, %if.then.i10.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @spi_qup_can_dma(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %2 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  %and = and i32 %4, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %5 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_rx, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %qup_v1 = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %qup_v1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qup_v1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %in_blk_sz = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %in_blk_sz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %in_blk_sz, align 4
  %rem = urem i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool6.not = icmp eq i32 %rem, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %13 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xfer, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end9.if.end28_crit_edge, label %if.then11

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then11:                                        ; preds = %if.end9
  %15 = ptrtoint ptr %14 to i32
  %and14 = and i32 %15, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %lor.lhs.false16, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false16:                                  ; preds = %if.then11
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %16 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_tx, align 8
  %tobool.not.i56 = icmp eq ptr %17, null
  %cmp.i57 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %spec.select.i58 = or i1 %tobool.not.i56, %cmp.i57
  br i1 %spec.select.i58, label %lor.lhs.false16.cleanup_crit_edge, label %if.end19

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false16
  %qup_v120 = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %qup_v120 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qup_v120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.end19.if.end28_crit_edge, label %land.lhs.true22

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true22:                                  ; preds = %if.end19
  %len23 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %20 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len23, align 4
  %out_blk_sz = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %out_blk_sz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_blk_sz, align 4
  %rem24 = urem i32 %21, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem24)
  %tobool25.not = icmp eq i32 %rem24, 0
  br i1 %tobool25.not, label %land.lhs.true22.if.end28_crit_edge, label %land.lhs.true22.cleanup_crit_edge

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true22.if.end28_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true22.if.end28_crit_edge, %if.end19.if.end28_crit_edge, %if.end9.if.end28_crit_edge
  %len29 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %24 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len29, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %26 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %27 to i32
  %sub30 = add nuw nsw i32 %conv, 7
  %div54 = lshr i32 %sub30, 3
  %div31 = udiv i32 %25, %div54
  %in_fifo_sz = getelementptr inbounds %struct.spi_qup, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %in_fifo_sz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %in_fifo_sz, align 4
  %div3255 = lshr i32 %29, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div31, i32 %div3255)
  %cmp33.not = icmp ugt i32 %div31, %div3255
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true22.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.then.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %lor.lhs.false16.cleanup_crit_edge ], [ false, %if.then11.cleanup_crit_edge ], [ false, %land.lhs.true22.cleanup_crit_edge ], [ %cmp33.not, %if.end28 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_qup_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 772
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !145
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %7, -2049
  %masksel = select i1 %val, i32 0, i32 2048
  %spi_ioc.0 = or i32 %and, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %spi_ioc.0, i32 %7)
  %cmp.not = icmp eq i32 %spi_ioc.0, %7
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then2

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %spi_ioc.0)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #8, !srcloc !146
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_qup_set_state(ptr nocapture noundef readonly %controller, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !145
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %while.body, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

while.body:                                       ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %4 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #8, !srcloc !145
  %7 = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.i.not.1, label %while.body.1, label %while.body.do.body_crit_edge

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.1:                                     ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %8 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #8, !srcloc !145
  %11 = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.2 = icmp eq i32 %11, 0
  br i1 %tobool.i.not.2, label %while.body.2, label %while.body.1.do.body_crit_edge

while.body.1.do.body_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.2:                                     ; preds = %while.body.1
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %12 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #8, !srcloc !145
  %15 = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.3 = icmp eq i32 %15, 0
  br i1 %tobool.i.not.3, label %while.body.3, label %while.body.2.do.body_crit_edge

while.body.2.do.body_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.3:                                     ; preds = %while.body.2
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %16 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #8, !srcloc !145
  %19 = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.4 = icmp eq i32 %19, 0
  br i1 %tobool.i.not.4, label %while.body.4, label %while.body.3.do.body_crit_edge

while.body.3.do.body_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.4:                                     ; preds = %while.body.3
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %20 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %controller, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #8, !srcloc !145
  %23 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.5 = icmp eq i32 %23, 0
  br i1 %tobool.i.not.5, label %while.body.5, label %while.body.4.do.body_crit_edge

while.body.4.do.body_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.5:                                     ; preds = %while.body.4
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %24 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %controller, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #8, !srcloc !145
  %27 = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.6 = icmp eq i32 %27, 0
  br i1 %tobool.i.not.6, label %while.body.6, label %while.body.5.do.body_crit_edge

while.body.5.do.body_crit_edge:                   ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.6:                                     ; preds = %while.body.5
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %28 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %controller, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #8, !srcloc !145
  %31 = and i32 %30, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.7 = icmp eq i32 %31, 0
  br i1 %tobool.i.not.7, label %while.body.7, label %while.body.6.do.body_crit_edge

while.body.6.do.body_crit_edge:                   ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.7:                                     ; preds = %while.body.6
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %32 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %controller, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #8, !srcloc !145
  %35 = and i32 %34, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.8 = icmp eq i32 %35, 0
  br i1 %tobool.i.not.8, label %while.body.8, label %while.body.7.do.body_crit_edge

while.body.7.do.body_crit_edge:                   ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.8:                                     ; preds = %while.body.7
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %36 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #8, !srcloc !145
  %39 = and i32 %38, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.9 = icmp eq i32 %39, 0
  br i1 %tobool.i.not.9, label %while.body.9, label %while.body.8.do.body_crit_edge

while.body.8.do.body_crit_edge:                   ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.9:                                     ; preds = %while.body.8
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %40 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %controller, align 4
  %add.ptr.i.10 = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.10) #8, !srcloc !145
  %43 = and i32 %42, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.10 = icmp eq i32 %43, 0
  br i1 %tobool.i.not.10, label %while.body.9.cleanup.sink.split_crit_edge, label %while.body.9.do.body_crit_edge

while.body.9.do.body_crit_edge:                   ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.9.cleanup.sink.split_crit_edge:        ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body:                                          ; preds = %while.body.9.do.body_crit_edge, %while.body.8.do.body_crit_edge, %while.body.7.do.body_crit_edge, %while.body.6.do.body_crit_edge, %while.body.5.do.body_crit_edge, %while.body.4.do.body_crit_edge, %while.body.3.do.body_crit_edge, %while.body.2.do.body_crit_edge, %while.body.1.do.body_crit_edge, %while.body.do.body_crit_edge
  %loop.0.lcssa.ph = phi i32 [ 10, %while.body.9.do.body_crit_edge ], [ 9, %while.body.8.do.body_crit_edge ], [ 8, %while.body.7.do.body_crit_edge ], [ 7, %while.body.6.do.body_crit_edge ], [ 6, %while.body.5.do.body_crit_edge ], [ 5, %while.body.4.do.body_crit_edge ], [ 4, %while.body.3.do.body_crit_edge ], [ 3, %while.body.2.do.body_crit_edge ], [ 2, %while.body.1.do.body_crit_edge ], [ 1, %while.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_qup_set_state.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_qup_set_state, %if.end10)) #8
          to label %if.then8 [label %if.end10], !srcloc !151

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.spi_qup, ptr %controller, i32 0, i32 1
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_qup_set_state.__UNIQUE_ID_ddebug239, ptr noundef %45, ptr noundef nonnull @.str.54, i32 noundef %loop.0.lcssa.ph, i32 noundef %state) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %entry.if.end10_crit_edge
  %46 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %controller, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !145
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %and = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp13 = icmp eq i32 %and, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp14 = icmp eq i32 %state, 0
  %or.cond = and i1 %cmp14, %cmp13
  br i1 %or.cond, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %controller, align 4
  %add.ptr17 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 33554432) #8, !srcloc !146
  %52 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %controller, align 4
  %add.ptr19 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 33554432) #8, !srcloc !146
  br label %if.end23

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %and20 = and i32 %49, -4
  %or = or i32 %and20, %state
  %54 = tail call i32 @llvm.bswap.i32(i32 %or)
  %55 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %controller, align 4
  %add.ptr22 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %54) #8, !srcloc !146
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then15
  %57 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %controller, align 4
  %add.ptr.i49 = getelementptr i8, ptr %58, i32 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #8, !srcloc !145
  %60 = and i32 %59, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i50.not = icmp eq i32 %60, 0
  br i1 %tobool.i50.not, label %while.body28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28:                                     ; preds = %if.end23
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %61 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %controller, align 4
  %add.ptr.i49.1 = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.1) #8, !srcloc !145
  %64 = and i32 %63, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i50.not.1 = icmp eq i32 %64, 0
  br i1 %tobool.i50.not.1, label %while.body28.1, label %while.body28.cleanup_crit_edge

while.body28.cleanup_crit_edge:                   ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28.1:                                   ; preds = %while.body28
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %65 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %controller, align 4
  %add.ptr.i49.2 = getelementptr i8, ptr %66, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.2) #8, !srcloc !145
  %68 = and i32 %67, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i50.not.2 = icmp eq i32 %68, 0
  br i1 %tobool.i50.not.2, label %while.body28.2, label %while.body28.1.cleanup_crit_edge

while.body28.1.cleanup_crit_edge:                 ; preds = %while.body28.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28.2:                                   ; preds = %while.body28.1
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %69 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %controller, align 4
  %add.ptr.i49.3 = getelementptr i8, ptr %70, i32 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.3) #8, !srcloc !145
  %72 = and i32 %71, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i50.not.3 = icmp eq i32 %72, 0
  br i1 %tobool.i50.not.3, label %while.body28.3, label %while.body28.2.cleanup_crit_edge

while.body28.2.cleanup_crit_edge:                 ; preds = %while.body28.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28.3:                                   ; preds = %while.body28.2
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %73 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %controller, align 4
  %add.ptr.i49.4 = getelementptr i8, ptr %74, i32 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.4) #8, !srcloc !145
  %76 = and i32 %75, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.i50.not.4 = icmp eq i32 %76, 0
  br i1 %tobool.i50.not.4, label %while.body28.4, label %while.body28.3.cleanup_crit_edge

while.body28.3.cleanup_crit_edge:                 ; preds = %while.body28.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28.4:                                   ; preds = %while.body28.3
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %77 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %controller, align 4
  %add.ptr.i49.5 = getelementptr i8, ptr %78, i32 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.5) #8, !srcloc !145
  %80 = and i32 %79, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i50.not.5 = icmp eq i32 %80, 0
  br i1 %tobool.i50.not.5, label %while.body28.5, label %while.body28.4.cleanup_crit_edge

while.body28.4.cleanup_crit_edge:                 ; preds = %while.body28.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28.5:                                   ; preds = %while.body28.4
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %81 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %controller, align 4
  %add.ptr.i49.6 = getelementptr i8, ptr %82, i32 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.6) #8, !srcloc !145
  %84 = and i32 %83, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.i50.not.6 = icmp eq i32 %84, 0
  br i1 %tobool.i50.not.6, label %while.body28.6, label %while.body28.5.cleanup_crit_edge

while.body28.5.cleanup_crit_edge:                 ; preds = %while.body28.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28.6:                                   ; preds = %while.body28.5
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %85 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %controller, align 4
  %add.ptr.i49.7 = getelementptr i8, ptr %86, i32 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.7) #8, !srcloc !145
  %88 = and i32 %87, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.i50.not.7 = icmp eq i32 %88, 0
  br i1 %tobool.i50.not.7, label %while.body28.7, label %while.body28.6.cleanup_crit_edge

while.body28.6.cleanup_crit_edge:                 ; preds = %while.body28.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28.7:                                   ; preds = %while.body28.6
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %89 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %controller, align 4
  %add.ptr.i49.8 = getelementptr i8, ptr %90, i32 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.8) #8, !srcloc !145
  %92 = and i32 %91, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i50.not.8 = icmp eq i32 %92, 0
  br i1 %tobool.i50.not.8, label %while.body28.8, label %while.body28.7.cleanup_crit_edge

while.body28.7.cleanup_crit_edge:                 ; preds = %while.body28.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28.8:                                   ; preds = %while.body28.7
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %93 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %controller, align 4
  %add.ptr.i49.9 = getelementptr i8, ptr %94, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.9) #8, !srcloc !145
  %96 = and i32 %95, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.i50.not.9 = icmp eq i32 %96, 0
  br i1 %tobool.i50.not.9, label %while.body28.9, label %while.body28.8.cleanup_crit_edge

while.body28.8.cleanup_crit_edge:                 ; preds = %while.body28.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28.9:                                   ; preds = %while.body28.8
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %97 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %controller, align 4
  %add.ptr.i49.10 = getelementptr i8, ptr %98, i32 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.10) #8, !srcloc !145
  %100 = and i32 %99, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.i50.not.10 = icmp eq i32 %100, 0
  br i1 %tobool.i50.not.10, label %while.body28.9.cleanup.sink.split_crit_edge, label %while.body28.9.cleanup_crit_edge

while.body28.9.cleanup_crit_edge:                 ; preds = %while.body28.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body28.9.cleanup.sink.split_crit_edge:      ; preds = %while.body28.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.body28.9.cleanup.sink.split_crit_edge, %while.body.9.cleanup.sink.split_crit_edge
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body28.9.cleanup_crit_edge, %while.body28.8.cleanup_crit_edge, %while.body28.7.cleanup_crit_edge, %while.body28.6.cleanup_crit_edge, %while.body28.5.cleanup_crit_edge, %while.body28.4.cleanup_crit_edge, %while.body28.3.cleanup_crit_edge, %while.body28.2.cleanup_crit_edge, %while.body28.1.cleanup_crit_edge, %while.body28.cleanup_crit_edge, %if.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23.cleanup_crit_edge ], [ 0, %while.body28.cleanup_crit_edge ], [ 0, %while.body28.1.cleanup_crit_edge ], [ 0, %while.body28.2.cleanup_crit_edge ], [ 0, %while.body28.3.cleanup_crit_edge ], [ 0, %while.body28.4.cleanup_crit_edge ], [ 0, %while.body28.5.cleanup_crit_edge ], [ 0, %while.body28.6.cleanup_crit_edge ], [ 0, %while.body28.7.cleanup_crit_edge ], [ 0, %while.body28.8.cleanup_crit_edge ], [ 0, %while.body28.9.cleanup_crit_edge ], [ -5, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_qup_qup_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !145
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 776
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !145
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !145
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %2) #8, !srcloc !146
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %add.ptr14 = getelementptr i8, ptr %15, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %6) #8, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then:                                          ; preds = %entry
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.55) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %and17 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end.if.end24_crit_edge, label %do.end22

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 1
  %18 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.58) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.end.if.end24_crit_edge
  %and25 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end32_crit_edge, label %do.end30

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %dev31 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 1
  %20 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.61) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end24.if.end32_crit_edge
  %and33 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end41_crit_edge, label %do.end38

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %dev39 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 1
  %22 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.64) #11
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.end32.if.end41_crit_edge, %entry.if.end41_crit_edge
  %error.0 = phi i32 [ 0, %entry.if.end41_crit_edge ], [ -5, %do.end38 ], [ -5, %if.end32.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool42.not = icmp eq i32 %6, 0
  br i1 %tobool42.not, label %if.end41.do.body62_crit_edge, label %if.then43

if.end41.do.body62_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

if.then43:                                        ; preds = %if.end41
  %and44 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.then43.if.end51_crit_edge, label %do.end49

if.then43.if.end51_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end49:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 1
  %24 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.67) #11
  br label %if.end51

if.end51:                                         ; preds = %do.end49, %if.then43.if.end51_crit_edge
  %and52 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.do.body62_crit_edge, label %do.end57

if.end51.do.body62_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %dev58 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 1
  %26 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.70) #11
  br label %do.body62

do.body62:                                        ; preds = %do.end57, %if.end51.do.body62_crit_edge, %if.end41.do.body62_crit_edge
  %error.1 = phi i32 [ %error.0, %if.end41.do.body62_crit_edge ], [ -5, %do.end57 ], [ -5, %if.end51.do.body62_crit_edge ]
  %lock = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 5
  %call65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %error70 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 12
  %28 = ptrtoint ptr %error70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool71.not = icmp eq i32 %29, 0
  br i1 %tobool71.not, label %if.then72, label %do.body62.if.end74_crit_edge

do.body62.if.end74_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then72:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %error70 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %error.1, ptr %error70, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %do.body62.if.end74_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call65) #8
  %mode = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 20
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode, align 4
  %33 = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %switch.i = icmp eq i32 %33, 2
  br i1 %switch.i, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id, align 4
  %add.ptr79 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %10) #8, !srcloc !146
  br label %if.end91

if.else:                                          ; preds = %if.end74
  %and80 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else.if.end83_crit_edge, label %if.then82

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then82:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i = icmp eq i32 %32, 1
  %n_words.i.i = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 14
  %36 = ptrtoint ptr %n_words.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_words.i.i, align 4
  %w_size.i.i = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 13
  %38 = ptrtoint ptr %w_size.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %w_size.i.i, align 4
  %mul.i.i = mul i32 %39, %37
  %rx_bytes.i = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 16
  %40 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_bytes.i, align 4
  %42 = xor i32 %41, -1
  %add.i = add i32 %39, %42
  %sub1.i = add i32 %add.i, %mul.i.i
  %div.i = udiv i32 %sub1.i, %39
  %in_blk_sz.i = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 8
  %43 = ptrtoint ptr %in_blk_sz.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %in_blk_sz.i, align 4
  %shr.i = ashr i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %tobool.not36.i.i = icmp ugt i32 %44, 3
  %.in.i = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 18
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then82
  %remainder.0.i = phi i32 [ %div.i, %if.then82 ], [ %sub1062.i, %do.cond.i.do.body.i_crit_edge ]
  %45 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 131072) #8, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remainder.0.i)
  %tobool.not.i = icmp eq i32 %remainder.0.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.then17.i_crit_edge, label %if.end.i

do.body.i.if.then17.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

if.end.i:                                         ; preds = %do.body.i
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %remainder.0.i, i32 %shr.i)
  %cmp5.i = icmp ule i32 %remainder.0.i, %shr.i
  %brmerge.i = or i1 %tobool.not36.i.i, %cmp5.i
  %47 = tail call i32 @llvm.umin.i32(i32 %remainder.0.i, i32 %shr.i) #8
  br i1 %brmerge.i, label %if.then4.i.for.body.lr.ph.i.i_crit_edge, label %spi_qup_read_from_fifo.exit.thread.i

if.then4.i.for.body.lr.ph.i.i_crit_edge:          ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i.i

if.else.i:                                        ; preds = %if.end.i
  %48 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 24
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !145
  %51 = and i32 %50, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.not.i = icmp eq i32 %51, 0
  br i1 %cmp.i.not.i, label %if.else.i.if.end83_crit_edge, label %if.else.i.for.body.lr.ph.i.i_crit_edge

if.else.i.for.body.lr.ph.i.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i.i

if.else.i.if.end83_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

spi_qup_read_from_fifo.exit.thread.i:             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub1061.i = sub nuw nsw i32 %remainder.0.i, %shr.i
  br label %land.lhs.true.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i.for.body.lr.ph.i.i_crit_edge, %if.then4.i.for.body.lr.ph.i.i_crit_edge
  %num_words.058.i = phi i32 [ 1, %if.else.i.for.body.lr.ph.i.i_crit_edge ], [ %47, %if.then4.i.for.body.lr.ph.i.i_crit_edge ]
  %52 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %.in.i, align 4
  %tobool4.not.i.i = icmp eq ptr %53, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc15.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %num_words.addr.037.i.i = phi i32 [ %num_words.058.i, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc15.i.i.for.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_id, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %55, i32 536
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #8, !srcloc !145
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  %58 = ptrtoint ptr %n_words.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_words.i.i, align 4
  %60 = ptrtoint ptr %w_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %w_size.i.i, align 4
  %mul.i.i.i = mul i32 %61, %59
  %62 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_bytes.i, align 4
  %sub.i.i = sub i32 %mul.i.i.i, %63
  %64 = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 %61) #8
  br i1 %tobool4.not.i.i, label %if.then.i.i, label %for.cond6.preheader.i.i

for.cond6.preheader.i.i:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp734.i.i = icmp sgt i32 %64, 0
  br i1 %cmp734.i.i, label %for.cond6.preheader.i.i.for.body8.i.i_crit_edge, label %for.cond6.preheader.i.i.for.inc15.i.i_crit_edge

for.cond6.preheader.i.i.for.inc15.i.i_crit_edge:  ; preds = %for.cond6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15.i.i

for.cond6.preheader.i.i.for.body8.i.i_crit_edge:  ; preds = %for.cond6.preheader.i.i
  br label %for.body8.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %64, %63
  %65 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add.i.i, ptr %rx_bytes.i, align 4
  br label %for.inc15.i.i

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %for.cond6.preheader.i.i.for.body8.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ 0, %for.cond6.preheader.i.i.for.body8.i.i_crit_edge ]
  %66 = ptrtoint ptr %w_size.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %w_size.i.i, align 4
  %68 = xor i32 %i.035.i.i, -1
  %sub11.i.i = add i32 %67, %68
  %mul.i51.i = shl i32 %sub11.i.i, 3
  %shr.i.i = lshr i32 %57, %mul.i51.i
  %conv.i.i = trunc i32 %shr.i.i to i8
  %69 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_bytes.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %53, i32 %70
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %72 = load i32, ptr %rx_bytes.i, align 4
  %inc14.i.i = add i32 %72, 1
  store i32 %inc14.i.i, ptr %rx_bytes.i, align 4
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %64
  br i1 %exitcond.not.i.i, label %for.body8.i.i.for.inc15.i.i_crit_edge, label %for.body8.i.i.for.body8.i.i_crit_edge

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i.i

for.body8.i.i.for.inc15.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15.i.i

for.inc15.i.i:                                    ; preds = %for.body8.i.i.for.inc15.i.i_crit_edge, %if.then.i.i, %for.cond6.preheader.i.i.for.inc15.i.i_crit_edge
  %dec.i.i = add i32 %num_words.addr.037.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %spi_qup_read_from_fifo.exit.i, label %for.inc15.i.i.for.body.i.i_crit_edge

for.inc15.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

spi_qup_read_from_fifo.exit.i:                    ; preds = %for.inc15.i.i
  %sub10.i = sub i32 %remainder.0.i, %num_words.058.i
  br i1 %cmp.i, label %spi_qup_read_from_fifo.exit.i.land.lhs.true.i_crit_edge, label %spi_qup_read_from_fifo.exit.i.do.cond.i_crit_edge

spi_qup_read_from_fifo.exit.i.do.cond.i_crit_edge: ; preds = %spi_qup_read_from_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

spi_qup_read_from_fifo.exit.i.land.lhs.true.i_crit_edge: ; preds = %spi_qup_read_from_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %spi_qup_read_from_fifo.exit.i.land.lhs.true.i_crit_edge, %spi_qup_read_from_fifo.exit.thread.i
  %sub1063.i = phi i32 [ %sub1061.i, %spi_qup_read_from_fifo.exit.thread.i ], [ %sub10.i, %spi_qup_read_from_fifo.exit.i.land.lhs.true.i_crit_edge ]
  %73 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_id, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %74, i32 24
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #8, !srcloc !145
  %76 = and i32 %75, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i54.not.i = icmp eq i32 %76, 0
  br i1 %cmp.i54.not.i, label %exit.i, label %land.lhs.true.i.do.cond.i_crit_edge

land.lhs.true.i.do.cond.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

do.cond.i:                                        ; preds = %land.lhs.true.i.do.cond.i_crit_edge, %spi_qup_read_from_fifo.exit.i.do.cond.i_crit_edge
  %sub1062.i = phi i32 [ %sub10.i, %spi_qup_read_from_fifo.exit.i.do.cond.i_crit_edge ], [ %sub1063.i, %land.lhs.true.i.do.cond.i_crit_edge ]
  %tobool15.not.i = icmp eq i32 %sub1062.i, 0
  br i1 %tobool15.not.i, label %do.cond.i.if.then17.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.cond.i.if.then17.i_crit_edge:                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

exit.i:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1063.i)
  %tobool16.not.i = icmp eq i32 %sub1063.i, 0
  br i1 %tobool16.not.i, label %exit.i.if.then17.i_crit_edge, label %exit.i.if.end83_crit_edge

exit.i.if.end83_crit_edge:                        ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

exit.i.if.then17.i_crit_edge:                     ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

if.then17.i:                                      ; preds = %exit.i.if.then17.i_crit_edge, %do.cond.i.if.then17.i_crit_edge, %do.body.i.if.then17.i_crit_edge
  %77 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_id, align 4
  %add.ptr19.i = getelementptr i8, ptr %78, i32 24
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #8, !srcloc !145
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  %cmp.not.i = xor i1 %cmp.i, true
  %and.i = and i32 %80, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool23.not.i
  br i1 %or.cond.i, label %if.then17.i.if.end83_crit_edge, label %if.then24.i

if.then17.i.if.end83_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then24.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_id, align 4
  %add.ptr26.i = getelementptr i8, ptr %82, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 131072) #8, !srcloc !146
  br label %if.end83

if.end83:                                         ; preds = %if.then24.i, %if.then17.i.if.end83_crit_edge, %exit.i.if.end83_crit_edge, %if.else.i.if.end83_crit_edge, %if.else.if.end83_crit_edge
  %opflags.1 = phi i32 [ %11, %if.else.if.end83_crit_edge ], [ %80, %if.then17.i.if.end83_crit_edge ], [ %80, %if.then24.i ], [ %11, %exit.i.if.end83_crit_edge ], [ %11, %if.else.i.if.end83_crit_edge ]
  %and84 = and i32 %opflags.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end87_crit_edge, label %if.then86

if.end83.if.end87_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @spi_qup_write(ptr noundef %dev_id)
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end83.if.end87_crit_edge
  %n_words.i.i147 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 14
  %83 = ptrtoint ptr %n_words.i.i147 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %n_words.i.i147, align 4
  %w_size.i.i148 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 13
  %85 = ptrtoint ptr %w_size.i.i148 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %w_size.i.i148, align 4
  %mul.i.i149 = mul i32 %86, %84
  %tx_bytes.i = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 15
  %87 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_bytes.i, align 4
  %sub.neg.i = sub i32 %88, %mul.i.i149
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %sub.neg.i)
  %tobool.not.i150 = icmp ugt i32 %86, %sub.neg.i
  br i1 %tobool.not.i150, label %spi_qup_data_pending.exit, label %if.end87.if.end91_crit_edge

if.end87.if.end91_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

spi_qup_data_pending.exit:                        ; preds = %if.end87
  %rx_bytes.i151 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 16
  %89 = ptrtoint ptr %rx_bytes.i151 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_bytes.i151, align 4
  %sub4.neg.i = sub i32 %90, %mul.i.i149
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %sub4.neg.i)
  %tobool10.i.not = icmp ugt i32 %86, %sub4.neg.i
  br i1 %tobool10.i.not, label %if.then89, label %spi_qup_data_pending.exit.if.end91_crit_edge

spi_qup_data_pending.exit.if.end91_crit_edge:     ; preds = %spi_qup_data_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then89:                                        ; preds = %spi_qup_data_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  %done = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 11
  tail call void @complete(ptr noundef %done) #8
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %spi_qup_data_pending.exit.if.end91_crit_edge, %if.end87.if.end91_crit_edge, %if.then77
  %opflags.2 = phi i32 [ %11, %if.then77 ], [ %opflags.1, %spi_qup_data_pending.exit.if.end91_crit_edge ], [ %opflags.1, %if.then89 ], [ %opflags.1, %if.end87.if.end91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool92.not = icmp eq i32 %error.1, 0
  br i1 %tobool92.not, label %if.end91.if.end95_crit_edge, label %if.then93

if.end91.if.end95_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %done94 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 11
  tail call void @complete(ptr noundef %done94) #8
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end91.if.end95_crit_edge
  %and96 = and i32 %opflags.2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.cleanup_crit_edge, label %if.then98

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then98:                                        ; preds = %if.end95
  %91 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mode, align 4
  %93 = and i32 %92, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %switch.i152 = icmp eq i32 %93, 2
  br i1 %switch.i152, label %if.then98.if.end105_crit_edge, label %if.then101

if.then98.if.end105_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then101:                                       ; preds = %if.then98
  %n_words.i.i153 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 14
  %94 = ptrtoint ptr %n_words.i.i153 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %n_words.i.i153, align 4
  %w_size.i.i154 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 13
  %96 = ptrtoint ptr %w_size.i.i154 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %w_size.i.i154, align 4
  %mul.i.i155 = mul i32 %97, %95
  %tx_bytes.i156 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 15
  %98 = ptrtoint ptr %tx_bytes.i156 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_bytes.i156, align 4
  %sub.neg.i157 = sub i32 %99, %mul.i.i155
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %sub.neg.i157)
  %tobool.not.i158 = icmp ugt i32 %97, %sub.neg.i157
  br i1 %tobool.not.i158, label %spi_qup_data_pending.exit163, label %if.then101.cleanup_crit_edge

if.then101.cleanup_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

spi_qup_data_pending.exit163:                     ; preds = %if.then101
  %rx_bytes.i159 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 16
  %100 = ptrtoint ptr %rx_bytes.i159 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_bytes.i159, align 4
  %sub4.neg.i160 = sub i32 %101, %mul.i.i155
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %sub4.neg.i160)
  %tobool10.i161.not = icmp ugt i32 %97, %sub4.neg.i160
  br i1 %tobool10.i161.not, label %spi_qup_data_pending.exit163.if.end105_crit_edge, label %spi_qup_data_pending.exit163.cleanup_crit_edge

spi_qup_data_pending.exit163.cleanup_crit_edge:   ; preds = %spi_qup_data_pending.exit163
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

spi_qup_data_pending.exit163.if.end105_crit_edge: ; preds = %spi_qup_data_pending.exit163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end105:                                        ; preds = %spi_qup_data_pending.exit163.if.end105_crit_edge, %if.then98.if.end105_crit_edge
  %done106 = getelementptr inbounds %struct.spi_qup, ptr %dev_id, i32 0, i32 11
  tail call void @complete(ptr noundef %done106) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %spi_qup_data_pending.exit163.cleanup_crit_edge, %if.then101.cleanup_crit_edge, %if.end95.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_qup_release_dma(ptr nocapture noundef readonly %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %0 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_rx, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx, align 8
  %tobool.not.i9 = icmp eq ptr %3, null
  %cmp.i10 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i11 = or i1 %tobool.not.i9, %cmp.i10
  br i1 %spec.select.i11, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %3) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_qup_dma_done(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %done = getelementptr inbounds %struct.spi_qup, ptr %data, i32 0, i32 11
  tail call void @complete(ptr noundef %done) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_qup_io_config(ptr nocapture noundef readonly %spi, ptr noundef %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %xfer6 = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %xfer6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %xfer, ptr %xfer6, align 4
  %error = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %error, align 4
  %rx_bytes = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rx_bytes, align 4
  %tx_bytes = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_bytes, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  %call8 = tail call fastcc i32 @spi_qup_set_state(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.25) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %11, label %do.end54 [
    i32 0, label %sw.bb
    i32 3, label %sw.bb19
    i32 1, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %n_words = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_words, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #8, !srcloc !146
  %18 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_words, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %add.ptr14 = getelementptr i8, ptr %22, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %20) #8, !srcloc !146
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr16 = getelementptr i8, ptr %24, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #8, !srcloc !146
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr18 = getelementptr i8, ptr %26, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #8, !srcloc !146
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %n_words20 = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 14
  %27 = ptrtoint ptr %n_words20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_words20, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %add.ptr22 = getelementptr i8, ptr %31, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %29) #8, !srcloc !146
  %32 = ptrtoint ptr %n_words20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_words20, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %add.ptr25 = getelementptr i8, ptr %36, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %34) #8, !srcloc !146
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %add.ptr27 = getelementptr i8, ptr %38, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #8, !srcloc !146
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %add.ptr29 = getelementptr i8, ptr %40, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #8, !srcloc !146
  %qup_v1 = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 19
  %41 = ptrtoint ptr %qup_v1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qup_v1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool30.not = icmp eq i32 %42, 0
  br i1 %tobool30.not, label %if.then31, label %sw.bb19.sw.epilog_crit_edge

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then31:                                        ; preds = %sw.bb19
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %add.ptr33 = getelementptr i8, ptr %44, i32 512
  %45 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xfer, align 4
  %tobool34.not = icmp eq ptr %46, null
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 0) #8, !srcloc !146
  br label %if.end37

if.else:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %n_words20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_words20, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %49) #8, !srcloc !146
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then35
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %add.ptr39 = getelementptr i8, ptr %51, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 0) #8, !srcloc !146
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %done = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 11
  %52 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %done, align 4
  %n_words42 = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 14
  %53 = ptrtoint ptr %n_words42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_words42, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %add.ptr44 = getelementptr i8, ptr %57, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %55) #8, !srcloc !146
  %58 = ptrtoint ptr %n_words42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_words42, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  %add.ptr47 = getelementptr i8, ptr %62, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %60) #8, !srcloc !146
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %add.ptr49 = getelementptr i8, ptr %64, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #8, !srcloc !146
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %add.ptr51 = getelementptr i8, ptr %66, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 0) #8, !srcloc !146
  br label %sw.epilog

do.end54:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev55 = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 1
  %67 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.37, i32 noundef %11) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb41, %if.end37, %sw.bb19.sw.epilog_crit_edge, %sw.bb
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %3, align 4
  %add.ptr58 = getelementptr i8, ptr %70, i32 8
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #8, !srcloc !145
  %72 = and i32 %71, -3932161
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mode, align 4
  %76 = and i32 %75, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %switch.i = icmp eq i32 %76, 2
  %or = or i32 %73, 49152
  %and64 = and i32 %73, -64513
  %iomode.0 = select i1 %switch.i, i32 %or, i32 %and64
  %shl = shl i32 %75, 10
  %shl70 = shl i32 %75, 12
  %or68 = or i32 %shl70, %shl
  %or71 = or i32 %or68, %iomode.0
  %77 = tail call i32 @llvm.bswap.i32(i32 %or71)
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 4
  %add.ptr73 = getelementptr i8, ptr %79, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %77) #8, !srcloc !146
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %3, align 4
  %add.ptr76 = getelementptr i8, ptr %81, i32 772
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #8, !srcloc !145
  %mode79 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %83 = ptrtoint ptr %mode79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mode79, align 8
  %85 = and i32 %82, -262145
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %and80 = shl i32 %84, 9
  %87 = and i32 %and80, 1024
  %control.0 = or i32 %87, %86
  %88 = tail call i32 @llvm.bswap.i32(i32 %control.0)
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 4
  %add.ptr88 = getelementptr i8, ptr %90, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %88) #8, !srcloc !146
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %3, align 4
  %add.ptr91 = getelementptr i8, ptr %92, i32 768
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #8, !srcloc !145
  %94 = ptrtoint ptr %mode79 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mode79, align 8
  %and95 = and i32 %95, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp ne i32 %and95, 0
  %96 = shl nuw nsw i32 %and95, 3
  %and103 = shl i32 %95, 9
  %97 = and i32 %and103, 512
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %98 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000000, i32 %99)
  %cmp110 = icmp ult i32 %99, 26000000
  %brmerge = select i1 %cmp110, i1 true, i1 %tobool96.not
  %100 = and i32 %93, -458753
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %and106.masked = or i32 %96, %101
  %config.1 = or i32 %and106.masked, %97
  %masksel = select i1 %brmerge, i32 0, i32 1024
  %102 = or i32 %config.1, %masksel
  %config.2 = xor i32 %102, 512
  %103 = tail call i32 @llvm.bswap.i32(i32 %config.2)
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %3, align 4
  %add.ptr121 = getelementptr i8, ptr %105, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %103) #8, !srcloc !146
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %3, align 4
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #8, !srcloc !145
  %109 = and i32 %108, 553648127
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %111 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bits_per_word, align 1
  %conv128 = zext i8 %112 to i32
  %sub = add nsw i32 %conv128, -1
  %or129 = or i32 %sub, %110
  %or130 = or i32 %or129, 256
  %113 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mode, align 4
  %115 = and i32 %114, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %switch.i239 = icmp eq i32 %115, 2
  br i1 %switch.i239, label %if.then133, label %sw.epilog.if.end143_crit_edge

sw.epilog.if.end143_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then133:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %xfer, align 4
  %tobool135.not = icmp eq ptr %117, null
  %or137 = or i32 %or129, 320
  %spec.select = select i1 %tobool135.not, i32 %or137, i32 %or130
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %118 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rx_buf, align 4
  %tobool139.not = icmp eq ptr %119, null
  %or141 = or i32 %spec.select, 128
  %spec.select238 = select i1 %tobool139.not, i32 %or141, i32 %spec.select
  br label %if.end143

if.end143:                                        ; preds = %if.then133, %sw.epilog.if.end143_crit_edge
  %config.4 = phi i32 [ %or130, %sw.epilog.if.end143_crit_edge ], [ %spec.select238, %if.then133 ]
  %120 = tail call i32 @llvm.bswap.i32(i32 %config.4)
  %121 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #8, !srcloc !146
  %qup_v1146 = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 19
  %123 = ptrtoint ptr %qup_v1146 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %qup_v1146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool147.not = icmp eq i32 %124, 0
  br i1 %tobool147.not, label %if.then148, label %if.end143.cleanup_crit_edge

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then148:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mode, align 4
  %127 = and i32 %126, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %switch.i240 = icmp eq i32 %127, 2
  %spec.select237 = select i1 %switch.i240, i32 196608, i32 0
  %128 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %3, align 4
  %add.ptr154 = getelementptr i8, ptr %129, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %spec.select237) #8, !srcloc !146
  br label %cleanup

cleanup:                                          ; preds = %if.then148, %if.end143.cleanup_crit_edge, %do.end54, %do.end11
  %retval.0 = phi i32 [ -5, %do.end11 ], [ -5, %do.end54 ], [ 0, %if.then148 ], [ 0, %if.end143.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_qup_write(ptr nocapture noundef %controller) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.spi_qup, ptr %controller, i32 0, i32 20
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %n_words.i = getelementptr inbounds %struct.spi_qup, ptr %controller, i32 0, i32 14
  %2 = ptrtoint ptr %n_words.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_words.i, align 4
  %w_size.i = getelementptr inbounds %struct.spi_qup, ptr %controller, i32 0, i32 13
  %4 = ptrtoint ptr %w_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %w_size.i, align 4
  %mul.i = mul i32 %5, %3
  %tx_bytes = getelementptr inbounds %struct.spi_qup, ptr %controller, i32 0, i32 15
  %6 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bytes, align 4
  %8 = xor i32 %7, -1
  %add = add i32 %5, %8
  %sub1 = add i32 %add, %mul.i
  %out_blk_sz = getelementptr inbounds %struct.spi_qup, ptr %controller, i32 0, i32 9
  %9 = ptrtoint ptr %out_blk_sz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out_blk_sz, align 4
  %shr = ashr i32 %10, 2
  %11 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller, align 4
  %add.ptr48 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 65536) #8, !srcloc !146
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub1)
  %tobool.not49 = icmp ugt i32 %5, %sub1
  br i1 %tobool.not49, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %div = udiv i32 %sub1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %tobool.not31.i = icmp ugt i32 %10, 3
  %.in = getelementptr inbounds %struct.spi_qup, ptr %controller, i32 0, i32 17
  br label %if.end

if.end:                                           ; preds = %do.body.backedge, %if.end.lr.ph
  %remainder.050 = phi i32 [ %div, %if.end.lr.ph ], [ %remainder.0.be, %do.body.backedge ]
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %remainder.050, i32 %shr)
  %cmp5 = icmp ule i32 %remainder.050, %shr
  %brmerge = or i1 %cmp5, %tobool.not31.i
  %13 = call i32 @llvm.umin.i32(i32 %remainder.050, i32 %shr)
  br i1 %brmerge, label %if.then4.for.body.lr.ph.i_crit_edge, label %spi_qup_write_to_fifo.exit.thread

if.then4.for.body.lr.ph.i_crit_edge:              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i

if.else:                                          ; preds = %if.end
  %14 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !145
  %17 = and i32 %16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.not = icmp eq i32 %17, 0
  br i1 %cmp.i.not, label %if.else.for.body.lr.ph.i_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.for.body.lr.ph.i_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i

spi_qup_write_to_fifo.exit.thread:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %sub1046 = sub nuw nsw i32 %remainder.050, %shr
  br label %land.lhs.true

for.body.lr.ph.i:                                 ; preds = %if.else.for.body.lr.ph.i_crit_edge, %if.then4.for.body.lr.ph.i_crit_edge
  %num_words.043 = phi i32 [ 1, %if.else.for.body.lr.ph.i_crit_edge ], [ %13, %if.then4.for.body.lr.ph.i_crit_edge ]
  %18 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.in, align 4
  %tobool2.not.i = icmp ne ptr %19, null
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %num_words.addr.032.i = phi i32 [ %num_words.043, %for.body.lr.ph.i ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %n_words.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_words.i, align 4
  %22 = ptrtoint ptr %w_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %w_size.i, align 4
  %mul.i.i = mul i32 %23, %21
  %24 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_bytes, align 4
  %sub.i = sub i32 %mul.i.i, %25
  %26 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp428.i = icmp sgt i32 %26, 0
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp428.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body5.i_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %word.030.i = phi i32 [ %or.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %i.029.i = phi i32 [ %inc.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %add.i = add i32 %i.029.i, %25
  %arrayidx.i = getelementptr i8, ptr %19, i32 %add.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %28 to i32
  %.neg.i = mul i32 %i.029.i, -8
  %mul.i35 = add i32 %.neg.i, 24
  %shl.i = shl i32 %conv.i, %mul.i35
  %or.i = or i32 %shl.i, %word.030.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %for.body5.i.if.end.i_crit_edge, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i

for.body5.i.if.end.i_crit_edge:                   ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %for.body5.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %word.1.i = phi i32 [ 0, %for.body.i.if.end.i_crit_edge ], [ %or.i, %for.body5.i.if.end.i_crit_edge ]
  %add9.i = add i32 %26, %25
  %29 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add9.i, ptr %tx_bytes, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %word.1.i) #8
  %31 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %controller, align 4
  %add.ptr.i36 = getelementptr i8, ptr %32, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %30) #8, !srcloc !146
  %dec.i = add i32 %num_words.addr.032.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %spi_qup_write_to_fifo.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

spi_qup_write_to_fifo.exit:                       ; preds = %if.end.i
  %sub10 = sub i32 %remainder.050, %num_words.043
  br i1 %cmp, label %spi_qup_write_to_fifo.exit.land.lhs.true_crit_edge, label %do.cond

spi_qup_write_to_fifo.exit.land.lhs.true_crit_edge: ; preds = %spi_qup_write_to_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %spi_qup_write_to_fifo.exit.land.lhs.true_crit_edge, %spi_qup_write_to_fifo.exit.thread
  %sub1047 = phi i32 [ %sub1046, %spi_qup_write_to_fifo.exit.thread ], [ %sub10, %spi_qup_write_to_fifo.exit.land.lhs.true_crit_edge ]
  %33 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %controller, align 4
  %add.ptr.i37 = getelementptr i8, ptr %34, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #8, !srcloc !145
  %36 = and i32 %35, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i39.not = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1047)
  %tobool15.not = icmp eq i32 %sub1047, 0
  %or.cond = select i1 %cmp.i39.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body.backedge_crit_edge

land.lhs.true.do.body.backedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.backedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %spi_qup_write_to_fifo.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %tobool15.not.old = icmp eq i32 %sub10, 0
  br i1 %tobool15.not.old, label %do.cond.cleanup_crit_edge, label %do.cond.do.body.backedge_crit_edge

do.cond.do.body.backedge_crit_edge:               ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.backedge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.backedge:                                 ; preds = %do.cond.do.body.backedge_crit_edge, %land.lhs.true.do.body.backedge_crit_edge
  %remainder.0.be = phi i32 [ %sub10, %do.cond.do.body.backedge_crit_edge ], [ %sub1047, %land.lhs.true.do.body.backedge_crit_edge ]
  %37 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %controller, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 65536) #8, !srcloc !146
  br label %if.end

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_qup_suspend(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then, label %pm_runtime_suspended.exit.if.end5_crit_edge

pm_runtime_suspended.exit.if.end5_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %pm_runtime_suspended.exit
  %call3 = tail call i32 @spi_qup_pm_resume_runtime(ptr noundef %device)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %pm_runtime_suspended.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @spi_controller_suspend(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc i32 @spi_qup_set_state(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %cclk = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cclk, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  %iclk = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iclk, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call3, %if.then.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_qup_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %iclk = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iclk, align 4
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
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %cclk = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cclk, align 4
  %call.i22 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i26:                                       ; preds = %if.end
  %call1.i24 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end6, label %if.then3.i27

if.then3.i27:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end.i26
  %call7 = tail call fastcc i32 @spi_qup_set_state(ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @spi_controller_resume(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.then3.i27, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ], [ %call1.i24, %if.then3.i27 ], [ %call.i22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_qup_pm_suspend_runtime(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %7 = or i32 %6, 2097152
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !146
  %cclk = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cclk, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  %iclk = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iclk, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_qup_pm_resume_runtime(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %iclk = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iclk, align 4
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
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %cclk = getelementptr inbounds %struct.spi_qup, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cclk, align 4
  %call.i20 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i24:                                       ; preds = %if.end
  %call1.i22 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool2.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool2.not.i23, label %if.end6, label %if.then3.i25

if.then3.i25:                                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !145
  %11 = and i32 %10, -2097153
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !146
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3.i25, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ], [ %call1.i22, %if.then3.i25 ], [ %call.i20, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_spi_qup__246_1309_spi_qup_driver_init6, !1, !"__initcall__kmod_spi_qup__246_1309_spi_qup_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-qup.c", i32 1309, i32 1}
!2 = !{ptr @__exitcall_spi_qup_driver_exit, !1, !"__exitcall_spi_qup_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file247, !4, !"__UNIQUE_ID_file247", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-qup.c", i32 1311, i32 1}
!5 = !{ptr @__UNIQUE_ID_license248, !4, !"__UNIQUE_ID_license248", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias249, !7, !"__UNIQUE_ID_alias249", i1 false, i1 false}
!7 = !{!"../drivers/spi/spi-qup.c", i32 1312, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-qup.c", i32 1302, i32 12}
!10 = !{ptr @spi_qup_driver, !11, !"spi_qup_driver", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-qup.c", i32 1300, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-qup.c", i32 1016, i32 27}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-qup.c", i32 1020, i32 27}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-qup.c", i32 1025, i32 41}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-qup.c", i32 1029, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @spi_qup_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @spi_qup_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-qup.c", i32 1035, i32 3}
!28 = !{ptr @spi_qup_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @spi_qup_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-qup.c", i32 1042, i32 3}
!32 = !{ptr @spi_qup_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @spi_qup_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-qup.c", i32 1050, i32 3}
!36 = !{ptr @spi_qup_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @spi_qup_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-qup.c", i32 1055, i32 41}
!40 = !{ptr @spi_qup_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-qup.c", i32 1092, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-qup.c", i32 1115, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @spi_qup_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @spi_qup_probe._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-qup.c", i32 1123, i32 3}
!50 = !{ptr @spi_qup_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @spi_qup_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-qup.c", i32 667, i32 3}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @spi_qup_io_prep._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @spi_qup_io_prep._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-qup.c", i32 674, i32 3}
!59 = !{ptr @spi_qup_io_prep._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @spi_qup_io_prep._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-qup.c", i32 481, i32 4}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @spi_qup_do_dma._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @spi_qup_do_dma._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/spi/spi-qup.c", i32 710, i32 3}
!69 = !{ptr @spi_qup_io_config._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @spi_qup_io_config._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/spi/spi-qup.c", i32 762, i32 3}
!73 = !{ptr @spi_qup_io_config._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @spi_qup_io_config._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-qup.c", i32 551, i32 4}
!77 = !{ptr @spi_qup_do_pio._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @spi_qup_do_pio._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-qup.c", i32 557, i32 4}
!81 = !{ptr @spi_qup_do_pio._entry.40, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @spi_qup_do_pio._entry_ptr.42, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @spi_qup_do_pio._entry.43, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-qup.c", i32 566, i32 4}
!85 = !{ptr @spi_qup_do_pio._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-qup.c", i32 935, i32 41}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/spi/spi-qup.c", i32 939, i32 41}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/spi/spi-qup.c", i32 958, i32 3}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @spi_qup_init_dma._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @spi_qup_init_dma._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-qup.c", i32 964, i32 3}
!97 = !{ptr @spi_qup_init_dma._entry.49, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @spi_qup_init_dma._entry_ptr.51, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @init_completion.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../include/linux/completion.h", i32 87, i32 2}
!101 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/spi/spi-qup.c", i32 199, i32 3}
!104 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @spi_qup_set_state.__UNIQUE_ID_ddebug239, !103, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/spi/spi-qup.c", i32 608, i32 4}
!108 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @spi_qup_qup_irq._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @spi_qup_qup_irq._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/spi/spi-qup.c", i32 610, i32 4}
!113 = !{ptr @spi_qup_qup_irq._entry.57, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @spi_qup_qup_irq._entry_ptr.59, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/spi/spi-qup.c", i32 612, i32 4}
!117 = !{ptr @spi_qup_qup_irq._entry.60, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @spi_qup_qup_irq._entry_ptr.62, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/spi/spi-qup.c", i32 614, i32 4}
!121 = !{ptr @spi_qup_qup_irq._entry.63, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @spi_qup_qup_irq._entry_ptr.65, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/spi/spi-qup.c", i32 621, i32 4}
!125 = !{ptr @spi_qup_qup_irq._entry.66, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @spi_qup_qup_irq._entry_ptr.68, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.70, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-qup.c", i32 623, i32 4}
!129 = !{ptr @spi_qup_qup_irq._entry.69, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @spi_qup_qup_irq._entry_ptr.71, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @spi_qup_dt_match, !132, !"spi_qup_dt_match", i1 false, i1 false}
!132 = !{!"../drivers/spi/spi-qup.c", i32 1285, i32 34}
!133 = !{ptr @spi_qup_dev_pm_ops, !134, !"spi_qup_dev_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/spi/spi-qup.c", i32 1293, i32 32}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"auto-init"}
!145 = !{i64 4269908}
!146 = !{i64 4269490}
!147 = !{i64 2148271633}
!148 = !{i64 756456, i64 756481, i64 756503, i64 756519, i64 756531, i64 756551, i64 756575, i64 756591, i64 756603}
!149 = !{i64 2148271821}
!150 = !{i8 0, i8 2}
!151 = !{i64 2148754029, i64 2148754034, i64 2148754047, i64 2148754091, i64 2148754125, i64 2148754146}
!152 = !{i64 2154598578}
