; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-geni-qcom.c_pt.bc'
source_filename = "../drivers/spi/spi-geni-qcom.c"
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
%struct.spi_geni_master = type { %struct.geni_se, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.completion, i32, %struct.spinlock, i32, i8, i8, ptr, ptr, i32 }
%struct.geni_se = type { ptr, ptr, ptr, ptr, i32, ptr, [3 x %struct.geni_icc_path] }
%struct.geni_icc_path = type { ptr, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.gpi_spi_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }

@__initcall__kmod_spi_geni_qcom__246_1102_spi_geni_driver_init6 = internal global ptr @spi_geni_driver_init, section ".initcall6.init", align 4
@spi_geni_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spi_geni_probe, ptr @spi_geni_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_geni_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spi_geni_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_geni_driver_exit = internal global ptr @spi_geni_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description247 = internal constant [62 x i8] c"spi_geni_qcom.description=SPI driver for GENI based QUP cores\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [45 x i8] c"spi_geni_qcom.file=drivers/spi/spi-geni-qcom\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [29 x i8] c"spi_geni_qcom.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"geni_spi\00", [23 x i8] zeroinitializer }, align 32
@spi_geni_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,geni-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@spi_geni_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @spi_geni_suspend, ptr @spi_geni_resume, ptr @spi_geni_suspend, ptr @spi_geni_resume, ptr @spi_geni_suspend, ptr @spi_geni_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spi_geni_runtime_suspend, ptr @spi_geni_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"se\00", [29 x i8] zeroinitializer }, align 32
@spi_geni_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 934, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid OPP table in device tree\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_geni_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/spi/spi-geni-qcom.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_geni_probe._entry_ptr = internal global ptr @spi_geni_probe._entry, section ".printk_index", align 4
@spi_geni_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mas->lock\00", [21 x i8] zeroinitializer }, align 32
@spi_geni_prepare_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 501, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Couldn't select mode %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spi_geni_prepare_message\00", [39 x i8] zeroinitializer }, align 32
@spi_geni_prepare_message._entry_ptr = internal global ptr @spi_geni_prepare_message._entry, section ".printk_index", align 4
@spi_geni_prepare_message._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.5, i32 509, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mode not supported %d\00", [42 x i8] zeroinitializer }, align 32
@spi_geni_prepare_message._entry_ptr.13 = internal global ptr @spi_geni_prepare_message._entry.11, section ".printk_index", align 4
@spi_geni_is_abort_still_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 212, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Interrupts pending after abort: %#010x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"spi_geni_is_abort_still_pending\00", [32 x i8] zeroinitializer }, align 32
@spi_geni_is_abort_still_pending._entry_ptr = internal global ptr @spi_geni_is_abort_still_pending._entry, section ".printk_index", align 4
@geni_spi_set_clock_and_bw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 304, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Err setting clk to %lu: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"geni_spi_set_clock_and_bw\00", [38 x i8] zeroinitializer }, align 32
@geni_spi_set_clock_and_bw._entry_ptr = internal global ptr @geni_spi_set_clock_and_bw._entry, section ".printk_index", align 4
@get_spi_clk_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 114, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed(%d) to find src clk for %dHz\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_spi_clk_cfg\00", [16 x i8] zeroinitializer }, align 32
@get_spi_clk_cfg._entry_ptr = internal global ptr @get_spi_clk_cfg._entry, section ".printk_index", align 4
@get_spi_clk_cfg.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.19, ptr @.str.5, ptr @.str.21, i8 0, i8 30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_geni_qcom\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"req %u=>%u sclk %lu, idx %d, div %d\0A\00", [59 x i8] zeroinitializer }, align 32
@get_spi_clk_cfg._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.5, i32 125, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dev_pm_opp_set_rate failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@get_spi_clk_cfg._entry_ptr.24 = internal global ptr @get_spi_clk_cfg._entry.22, section ".printk_index", align 4
@setup_gsi_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 435, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Err in get_spi_clk_cfg() :%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_gsi_xfer\00", [17 x i8] zeroinitializer }, align 32
@setup_gsi_xfer._entry_ptr = internal global ptr @setup_gsi_xfer._entry, section ".printk_index", align 4
@setup_gsi_xfer._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 449, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Err setting up rx desc\0A\00", [40 x i8] zeroinitializer }, align 32
@setup_gsi_xfer._entry_ptr.29 = internal global ptr @setup_gsi_xfer._entry.27, section ".printk_index", align 4
@setup_gsi_xfer._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.5, i32 462, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Err setting up tx desc\0A\00", [40 x i8] zeroinitializer }, align 32
@setup_gsi_xfer._entry_ptr.32 = internal global ptr @setup_gsi_xfer._entry.30, section ".printk_index", align 4
@spi_gsi_callback_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 375, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA txn failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spi_gsi_callback_result\00", [40 x i8] zeroinitializer }, align 32
@spi_gsi_callback_result._entry_ptr = internal global ptr @spi_gsi_callback_result._entry, section ".printk_index", align 4
@spi_gsi_callback_result.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 95, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA txn completed\0A\00", [45 x i8] zeroinitializer }, align 32
@spi_gsi_callback_result._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.5, i32 384, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DMA xfer has pending: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@spi_gsi_callback_result._entry_ptr.38 = internal global ptr @spi_gsi_callback_result._entry.36, section ".printk_index", align 4
@spi_geni_handle_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 187, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Abort on Mode:%d not supported\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi_geni_handle_err\00", [44 x i8] zeroinitializer }, align 32
@spi_geni_handle_err._entry_ptr = internal global ptr @spi_geni_handle_err._entry, section ".printk_index", align 4
@handle_fifo_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 157, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to cancel/abort m_cmd\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handle_fifo_timeout\00", [44 x i8] zeroinitializer }, align 32
@handle_fifo_timeout._entry_ptr = internal global ptr @handle_fifo_timeout._entry, section ".printk_index", align 4
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@spi_geni_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 565, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid proto %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_geni_init\00", [18 x i8] zeroinitializer }, align 32
@spi_geni_init._entry_ptr = internal global ptr @spi_geni_init._entry, section ".printk_index", align 4
@spi_geni_init.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.46, ptr @.str.5, ptr @.str.47, i8 0, i8 -107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Using GPI DMA mode for SPI\0A\00", [36 x i8] zeroinitializer }, align 32
@spi_geni_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.5, i32 603, ptr @.str.50, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"FIFO mode disabled, but couldn't get DMA, fall back to FIFO mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@spi_geni_init._entry_ptr.51 = internal global ptr @spi_geni_init._entry.48, section ".printk_index", align 4
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get tx DMA ch\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get rx DMA ch\0A\00", [39 x i8] zeroinitializer }, align 32
@spi_geni_set_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 241, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't set chip select\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi_geni_set_cs\00", [16 x i8] zeroinitializer }, align 32
@spi_geni_set_cs._entry_ptr = internal global ptr @spi_geni_set_cs._entry, section ".printk_index", align 4
@spi_geni_set_cs._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.5, i32 247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't set CS when prev xfer running\0A\00", [59 x i8] zeroinitializer }, align 32
@spi_geni_set_cs._entry_ptr.60 = internal global ptr @spi_geni_set_cs._entry.58, section ".printk_index", align 4
@spi_geni_set_cs._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.5, i32 262, ptr @.str.50, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout setting chip select\0A\00", [35 x i8] zeroinitializer }, align 32
@spi_geni_set_cs._entry_ptr.63 = internal global ptr @spi_geni_set_cs._entry.61, section ".printk_index", align 4
@geni_spi_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 822, ptr @.str.50, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unexpected IRQ err status %#010x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"geni_spi_isr\00", [19 x i8] zeroinitializer }, align 32
@geni_spi_isr._entry_ptr = internal global ptr @geni_spi_isr._entry, section ".printk_index", align 4
@geni_spi_isr._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.5, i32 852, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Premature done. tx_rem = %d bpw%d\0A\00", [61 x i8] zeroinitializer }, align 32
@geni_spi_isr._entry_ptr.68 = internal global ptr @geni_spi_isr._entry.66, section ".printk_index", align 4
@geni_spi_isr._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.5, i32 856, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Premature done. rx_rem = %d bpw%d\0A\00", [61 x i8] zeroinitializer }, align 32
@geni_spi_isr._entry_ptr.71 = internal global ptr @geni_spi_isr._entry.69, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"spi_geni_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1093, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1097, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"spi_geni_dt_match\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1087, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"spi_geni_pm_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1081, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 904, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 911, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 934, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 955, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 501, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 509, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 211, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 304, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 113, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 121, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 125, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 435, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 449, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 462, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 375, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 382, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 384, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 187, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 157, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1169, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 87, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 565, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 596, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 603, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 517, i32 39 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 520, i32 9 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 524, i32 39 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 527, i32 9 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 241, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 247, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 262, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 822, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 851, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [31 x i8] c"../drivers/spi/spi-geni-qcom.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 855, i32 5 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_spi_geni_driver_exit, ptr @__initcall__kmod_spi_geni_qcom__246_1102_spi_geni_driver_init6, ptr @geni_spi_isr._entry, ptr @geni_spi_isr._entry.66, ptr @geni_spi_isr._entry.69, ptr @geni_spi_isr._entry_ptr, ptr @geni_spi_isr._entry_ptr.68, ptr @geni_spi_isr._entry_ptr.71, ptr @geni_spi_set_clock_and_bw._entry, ptr @geni_spi_set_clock_and_bw._entry_ptr, ptr @get_spi_clk_cfg._entry, ptr @get_spi_clk_cfg._entry.22, ptr @get_spi_clk_cfg._entry_ptr, ptr @get_spi_clk_cfg._entry_ptr.24, ptr @handle_fifo_timeout._entry, ptr @handle_fifo_timeout._entry_ptr, ptr @setup_gsi_xfer._entry, ptr @setup_gsi_xfer._entry.27, ptr @setup_gsi_xfer._entry.30, ptr @setup_gsi_xfer._entry_ptr, ptr @setup_gsi_xfer._entry_ptr.29, ptr @setup_gsi_xfer._entry_ptr.32, ptr @spi_geni_driver_exit, ptr @spi_geni_handle_err._entry, ptr @spi_geni_handle_err._entry_ptr, ptr @spi_geni_init._entry, ptr @spi_geni_init._entry.48, ptr @spi_geni_init._entry_ptr, ptr @spi_geni_init._entry_ptr.51, ptr @spi_geni_is_abort_still_pending._entry, ptr @spi_geni_is_abort_still_pending._entry_ptr, ptr @spi_geni_prepare_message._entry, ptr @spi_geni_prepare_message._entry.11, ptr @spi_geni_prepare_message._entry_ptr, ptr @spi_geni_prepare_message._entry_ptr.13, ptr @spi_geni_probe._entry, ptr @spi_geni_probe._entry_ptr, ptr @spi_geni_set_cs._entry, ptr @spi_geni_set_cs._entry.58, ptr @spi_geni_set_cs._entry.61, ptr @spi_geni_set_cs._entry_ptr, ptr @spi_geni_set_cs._entry_ptr.60, ptr @spi_geni_set_cs._entry_ptr.63, ptr @spi_gsi_callback_result._entry, ptr @spi_gsi_callback_result._entry.36, ptr @spi_gsi_callback_result._entry_ptr, ptr @spi_gsi_callback_result._entry_ptr.38, ptr @spi_geni_driver, ptr @.str, ptr @spi_geni_dt_match, ptr @spi_geni_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @spi_geni_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @init_completion.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_prepare_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_prepare_message._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_is_abort_still_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_spi_set_clock_and_bw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_spi_clk_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_spi_clk_cfg._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_gsi_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_gsi_xfer._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_gsi_xfer._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_gsi_callback_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_gsi_callback_result._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_handle_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_fifo_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_set_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_set_cs._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_geni_set_cs._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_spi_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_spi_isr._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geni_spi_isr._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_geni_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_geni_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_geni_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_geni_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_geni_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %call.i171 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %cmp.i172 = icmp eq i32 %call.i171, 0
  br i1 %cmp.i172, label %if.then3.if.end9_crit_edge, label %if.then6

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i171, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %.sink = phi i64 [ -1, %if.end.if.end9_crit_edge ], [ 4294967295, %if.then3.if.end9_crit_edge ]
  %call1.i173 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %.sink) #7
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i176 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %cmp.i177 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call.i178 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 328, i1 noundef zeroext false) #7
  %tobool21.not = icmp eq ptr %call.i178, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i178, ptr %driver_data.i.i, align 4
  %driver_data.i.i179 = getelementptr inbounds %struct.device, ptr %call.i178, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i179 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i179, align 4
  %irq25 = getelementptr inbounds %struct.spi_geni_master, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %irq25, align 4
  %dev26 = getelementptr inbounds %struct.spi_geni_master, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev26, align 4
  %dev27 = getelementptr inbounds %struct.geni_se, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %dev27, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %wrapper = getelementptr inbounds %struct.geni_se, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %wrapper to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %wrapper, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %4, align 4
  %clk33 = getelementptr inbounds %struct.geni_se, ptr %4, i32 0, i32 3
  %14 = ptrtoint ptr %clk33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %clk33, align 4
  %call35 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end23
  %call40 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %dev1) #7
  %15 = zext i32 %call40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call40, label %do.end [
    i32 0, label %if.end38.if.end45_crit_edge
    i32 -19, label %if.end38.if.end45_crit_edge183
  ]

if.end38.if.end45_crit_edge183:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end:                                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end45:                                         ; preds = %if.end38.if.end45_crit_edge, %if.end38.if.end45_crit_edge183
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 2
  %16 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %bus_num, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %of_node47 = getelementptr inbounds %struct.device, ptr %call.i178, i32 0, i32 27
  %19 = ptrtoint ptr %of_node47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %of_node47, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 5
  %20 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 39, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 7
  %21 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -8, ptr %bits_per_word_mask, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 3
  %22 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 4, ptr %num_chipselect, align 2
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 9
  %23 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 50000000, ptr %max_speed_hz, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 47
  %24 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @spi_geni_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 51
  %25 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @spi_geni_transfer_one, ptr %transfer_one, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 24
  %26 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @geni_can_dma, ptr %can_dma, align 4
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 8
  %dma_map_dev = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 25
  %29 = ptrtoint ptr %dma_map_dev to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dma_map_dev, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 36
  %30 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %auto_runtime_pm, align 4
  %handle_err = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 52
  %31 = ptrtoint ptr %handle_err to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @spi_geni_handle_err, ptr %handle_err, align 8
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 56
  %32 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %cs_done = getelementptr inbounds %struct.spi_geni_master, ptr %4, i32 0, i32 12
  %33 = ptrtoint ptr %cs_done to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cs_done, align 4
  %wait.i = getelementptr inbounds %struct.spi_geni_master, ptr %4, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #7
  %cancel_done = getelementptr inbounds %struct.spi_geni_master, ptr %4, i32 0, i32 13
  %34 = ptrtoint ptr %cancel_done to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cancel_done, align 4
  %wait.i180 = getelementptr inbounds %struct.spi_geni_master, ptr %4, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i180, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #7
  %abort_done = getelementptr inbounds %struct.spi_geni_master, ptr %4, i32 0, i32 14
  %35 = ptrtoint ptr %abort_done to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %abort_done, align 4
  %wait.i181 = getelementptr inbounds %struct.spi_geni_master, ptr %4, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i181, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #7
  %lock = getelementptr inbounds %struct.spi_geni_master, ptr %4, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @spi_geni_probe.__key, i16 noundef signext 3) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 250) #7
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call56 = tail call i32 @geni_icc_get(ptr noundef %4, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end45.spi_geni_probe_runtime_disable_crit_edge

if.end45.spi_geni_probe_runtime_disable_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_geni_probe_runtime_disable

if.end59:                                         ; preds = %if.end45
  %avg_bw = getelementptr inbounds %struct.geni_se, ptr %4, i32 0, i32 6, i32 0, i32 1
  %36 = ptrtoint ptr %avg_bw to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %avg_bw, align 4
  %avg_bw64 = getelementptr %struct.geni_se, ptr %4, i32 0, i32 6, i32 1, i32 1
  %37 = ptrtoint ptr %avg_bw64 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %avg_bw64, align 4
  %call66 = tail call i32 @geni_icc_set_bw(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end59.spi_geni_probe_runtime_disable_crit_edge

if.end59.spi_geni_probe_runtime_disable_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_geni_probe_runtime_disable

if.end69:                                         ; preds = %if.end59
  %call70 = tail call fastcc i32 @spi_geni_init(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.spi_geni_probe_runtime_disable_crit_edge

if.end69.spi_geni_probe_runtime_disable_crit_edge: ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_geni_probe_runtime_disable

if.end73:                                         ; preds = %if.end69
  %cur_xfer_mode = getelementptr inbounds %struct.spi_geni_master, ptr %4, i32 0, i32 22
  %38 = ptrtoint ptr %cur_xfer_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur_xfer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp74 = icmp eq i32 %39, 1
  br i1 %cmp74, label %if.then75, label %if.end73.if.end76_crit_edge

if.end73.if.end76_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i178, i32 0, i32 50
  %40 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @spi_geni_set_cs, ptr %set_cs, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end73.if.end76_crit_edge
  %41 = ptrtoint ptr %irq25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq25, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end76.dev_name.exit_crit_edge

if.end76.dev_name.exit_crit_edge:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end76.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %46, %if.end.i ], [ %44, %if.end76.dev_name.exit_crit_edge ]
  %call.i182 = tail call i32 @request_threaded_irq(i32 noundef %42, ptr noundef nonnull @geni_spi_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i178) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool80.not = icmp eq i32 %call.i182, 0
  br i1 %tobool80.not, label %if.end82, label %dev_name.exit.spi_geni_release_dma_crit_edge

dev_name.exit.spi_geni_release_dma_crit_edge:     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_geni_release_dma

if.end82:                                         ; preds = %dev_name.exit
  %call83 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i178) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end82.cleanup_crit_edge, label %spi_geni_probe_free_irq

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

spi_geni_probe_free_irq:                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %irq25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq25, align 4
  %call88 = tail call ptr @free_irq(i32 noundef %48, ptr noundef nonnull %call.i178) #7
  br label %spi_geni_release_dma

spi_geni_release_dma:                             ; preds = %spi_geni_probe_free_irq, %dev_name.exit.spi_geni_release_dma_crit_edge
  %ret.0 = phi i32 [ %call.i182, %dev_name.exit.spi_geni_release_dma_crit_edge ], [ %call83, %spi_geni_probe_free_irq ]
  tail call fastcc void @spi_geni_release_dma_chan(ptr noundef %4)
  br label %spi_geni_probe_runtime_disable

spi_geni_probe_runtime_disable:                   ; preds = %spi_geni_release_dma, %if.end69.spi_geni_probe_runtime_disable_crit_edge, %if.end59.spi_geni_probe_runtime_disable_crit_edge, %if.end45.spi_geni_probe_runtime_disable_crit_edge
  %ret.1 = phi i32 [ %call56, %if.end45.spi_geni_probe_runtime_disable_crit_edge ], [ %call66, %if.end59.spi_geni_probe_runtime_disable_crit_edge ], [ %call70, %if.end69.spi_geni_probe_runtime_disable_crit_edge ], [ %ret.0, %spi_geni_release_dma ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_geni_probe_runtime_disable, %if.end82.cleanup_crit_edge, %do.end, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then17, %if.then12, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ %0, %if.then12 ], [ %1, %if.then17 ], [ %call40, %do.end ], [ %ret.1, %spi_geni_probe_runtime_disable ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ], [ %call35, %if.end23.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_geni_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i7, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #7
  %rx.i = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %5) #7
  %6 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %tx.i = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %if.end.i.spi_geni_release_dma_chan.exit_crit_edge, label %if.then4.i

if.end.i.spi_geni_release_dma_chan.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_geni_release_dma_chan.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %8) #7
  %9 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tx.i, align 4
  br label %spi_geni_release_dma_chan.exit

spi_geni_release_dma_chan.exit:                   ; preds = %if.then4.i, %if.end.i.spi_geni_release_dma_chan.exit_crit_edge
  %irq = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %1) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_geni_prepare_message(ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %spi_msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_xfer_mode = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %cur_xfer_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_xfer_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %3, label %do.end9 [
    i32 1, label %sw.bb
    i32 3, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %abort_failed.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %abort_failed.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %abort_failed.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %sw.bb.if.end_crit_edge, label %if.end.i

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %sw.bb
  %lock.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1552
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %11, i32 1556
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  %13 = and i32 %12, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not.i = icmp eq i32 %13, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %spi_geni_is_abort_still_pending.exit

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %abort_failed.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %abort_failed.i, align 1
  br label %if.end

spi_geni_is_abort_still_pending.exit:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %dev.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %15) #10
  br label %cleanup

if.end:                                           ; preds = %if.end14.i, %sw.bb.if.end_crit_edge
  %spi2 = getelementptr inbounds %struct.spi_message, ptr %spi_msg, i32 0, i32 1
  %18 = ptrtoint ptr %spi2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi2, align 4
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %last_mode.i = getelementptr inbounds %struct.spi_geni_master, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %last_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_mode.i, align 4
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %19, i32 0, i32 7
  %24 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not.i = icmp eq i32 %23, %25
  br i1 %cmp.not.i, label %if.end.setup_fifo_params.exit_crit_edge, label %if.then.i

if.end.setup_fifo_params.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_fifo_params.exit

if.then.i:                                        ; preds = %if.end
  %and.i = shl i32 %25, 19
  %26 = and i32 %and.i, 16777216
  %and5.i = shl i32 %25, 25
  %27 = and i32 %and5.i, 67108864
  %and10.i = shl i32 %25, 24
  %28 = and i32 %and10.i, 16777216
  %and15.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then.i.if.end18.i_crit_edge, label %if.then17.i

if.then.i.if.end18.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %19, i32 0, i32 4
  %29 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %30 to i32
  %shl.i = shl nuw i32 1, %conv.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.then.i.if.end18.i_crit_edge
  %demux_output_inv.0.i = phi i32 [ %shl.i, %if.then17.i ], [ 0, %if.then.i.if.end18.i_crit_edge ]
  %chip_select19.i = getelementptr inbounds %struct.spi_device, ptr %19, i32 0, i32 4
  %31 = ptrtoint ptr %chip_select19.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %chip_select19.i, align 4
  %conv20.i = zext i8 %32 to i32
  %bits_per_word.i = getelementptr inbounds %struct.spi_device, ptr %19, i32 0, i32 5
  %33 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bits_per_word.i, align 1
  %conv21.i = zext i8 %34 to i32
  %cur_bits_per_word.i = getelementptr inbounds %struct.spi_geni_master, ptr %21, i32 0, i32 8
  %35 = ptrtoint ptr %cur_bits_per_word.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv21.i, ptr %cur_bits_per_word.i, align 4
  %36 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode.i, align 8
  %38 = load i8, ptr %bits_per_word.i, align 1
  %conv25.i = zext i8 %38 to i32
  %fifo_width_bits.i.i = getelementptr inbounds %struct.spi_geni_master, ptr %21, i32 0, i32 3
  %39 = ptrtoint ptr %fifo_width_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fifo_width_bits.i.i, align 4
  %.frozen = freeze i32 %40
  %conv25.i.frozen = freeze i32 %conv25.i
  %div.i.i = udiv i32 %.frozen, %conv25.i.frozen
  %41 = mul i32 %div.i.i, %conv25.i.frozen
  %rem.i.i.decomposed = sub i32 %.frozen, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.decomposed)
  %tobool3.not.i.i = icmp eq i32 %rem.i.i.decomposed, 0
  %spec.select = select i1 %tobool3.not.i.i, i32 %div.i.i, i32 1
  %42 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool1.i.i = icmp eq i32 %42, 0
  tail call void @geni_se_config_packing(ptr noundef %21, i32 noundef %conv25.i, i32 noundef %spec.select, i1 noundef zeroext %tobool1.i.i, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %sub.i.i = add nuw nsw i32 %conv25.i, 1020
  %and7.i.i = and i32 %sub.i.i, 1023
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %and7.i.i) #7
  %44 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %21, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %43) #7, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %21, align 4
  %add.ptr.i20 = getelementptr i8, ptr %47, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %26) #7, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %48 = shl nuw i32 %conv20.i, 24
  %49 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %21, align 4
  %add.ptr30.i = getelementptr i8, ptr %50, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %48) #7, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %21, align 4
  %add.ptr35.i = getelementptr i8, ptr %52, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %28) #7, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %21, align 4
  %add.ptr40.i = getelementptr i8, ptr %54, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %27) #7, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %demux_output_inv.0.i) #7
  %56 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %21, align 4
  %add.ptr45.i = getelementptr i8, ptr %57, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %55) #7, !srcloc !164
  %58 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mode.i, align 8
  %60 = ptrtoint ptr %last_mode.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %last_mode.i, align 4
  br label %setup_fifo_params.exit

setup_fifo_params.exit:                           ; preds = %if.end18.i, %if.end.setup_fifo_params.exit_crit_edge
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %19, i32 0, i32 3
  %61 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_speed_hz.i, align 8
  %call49.i = tail call fastcc i32 @geni_spi_set_clock_and_bw(ptr noundef %21, i32 noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool.not = icmp eq i32 %call49.i, 0
  br i1 %tobool.not, label %setup_fifo_params.exit.cleanup_crit_edge, label %do.end

setup_fifo_params.exit.cleanup_crit_edge:         ; preds = %setup_fifo_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %setup_fifo_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.9, i32 noundef %call49.i) #10
  br label %cleanup

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.12, i32 noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %do.end, %setup_fifo_params.exit.cleanup_crit_edge, %spi_geni_is_abort_still_pending.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -16, %spi_geni_is_abort_still_pending.exit ], [ %call49.i, %do.end ], [ 0, %setup_fifo_params.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_geni_transfer_one(ptr noundef %spi, ptr nocapture noundef readonly %slv, ptr noundef %xfer) #2 align 64 {
entry:
  %config.i = alloca %struct.dma_slave_config, align 4
  %peripheral.i = alloca %struct.gpi_spi_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %abort_failed.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %abort_failed.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %abort_failed.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1552
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 1556
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  %10 = and i32 %9, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not.i = icmp eq i32 %10, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %spi_geni_is_abort_still_pending.exit

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %abort_failed.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %abort_failed.i, align 1
  br label %if.end

spi_geni_is_abort_still_pending.exit:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %dev.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14, i32 noundef %12) #10
  br label %cleanup

if.end:                                           ; preds = %if.end14.i, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cur_xfer_mode = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %cur_xfer_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur_xfer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  %mode = getelementptr inbounds %struct.spi_device, ptr %slv, i32 0, i32 7
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode, align 8
  %lock.i15 = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i15) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i15) #7
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %21 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bits_per_word.i, align 1
  %conv.i = zext i8 %22 to i32
  %cur_bits_per_word.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %cur_bits_per_word.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur_bits_per_word.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %24, %conv.i
  br i1 %cmp.not.i, label %if.then4.if.end.i17_crit_edge, label %if.then.i

if.then4.if.end.i17_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i17

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %fifo_width_bits.i.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %fifo_width_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fifo_width_bits.i.i, align 4
  %.frozen = freeze i32 %26
  %conv.i.frozen = freeze i32 %conv.i
  %div.i.i = udiv i32 %.frozen, %conv.i.frozen
  %27 = mul i32 %div.i.i, %conv.i.frozen
  %rem.i.i.decomposed = sub i32 %.frozen, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.decomposed)
  %tobool3.not.i.i = icmp eq i32 %rem.i.i.decomposed, 0
  %spec.select = select i1 %tobool3.not.i.i, i32 %div.i.i, i32 1
  %28 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.i.i = icmp eq i32 %28, 0
  tail call void @geni_se_config_packing(ptr noundef %1, i32 noundef %conv.i, i32 noundef %spec.select, i1 noundef zeroext %tobool1.i.i, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %sub.i.i = add nuw nsw i32 %conv.i, 1020
  %and7.i.i = and i32 %sub.i.i, 1023
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %and7.i.i) #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #7, !srcloc !164
  %32 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bits_per_word.i, align 1
  %conv7.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %cur_bits_per_word.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv7.i, ptr %cur_bits_per_word.i, align 4
  br label %if.end.i17

if.end.i17:                                       ; preds = %if.then.i, %if.then4.if.end.i17_crit_edge
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %35 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %speed_hz.i, align 4
  %call.i = tail call fastcc i32 @geni_spi_set_clock_and_bw(ptr noundef %1, i32 noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i16 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i16, label %if.end10.i, label %if.end.i17.cleanup_crit_edge

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i17
  %tx_rem_bytes.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %tx_rem_bytes.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %tx_rem_bytes.i, align 4
  %rx_rem_bytes.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %rx_rem_bytes.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %rx_rem_bytes.i, align 4
  %39 = ptrtoint ptr %cur_bits_per_word.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_bits_per_word.i, align 4
  %rem.i = and i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool12.not.i = icmp eq i32 %rem.i, 0
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  br i1 %tobool12.not.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = shl i32 %42, 3
  %div.i = udiv i32 %mul.i, %40
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %div181.i = lshr i32 %40, 3
  %add.i = add nuw nsw i32 %div181.i, 1
  %div19.i = udiv i32 %42, %add.i
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then13.i
  %len.0.i = phi i32 [ %div19.i, %if.else.i ], [ %div.i, %if.then13.i ]
  %and.i = and i32 %len.0.i, 16777215
  %cur_xfer.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 11
  %43 = ptrtoint ptr %cur_xfer.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %xfer, ptr %cur_xfer.i, align 4
  %44 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xfer, align 4
  %tobool21.not.i = icmp eq ptr %45, null
  br i1 %tobool21.not.i, label %if.end20.i.if.end25.i_crit_edge, label %if.then22.i

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %48 = ptrtoint ptr %tx_rem_bytes.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tx_rem_bytes.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr.i18 = getelementptr i8, ptr %51, i32 620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %49) #7, !srcloc !164
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end20.i.if.end25.i_crit_edge
  %m_cmd.0.i = phi i32 [ 1, %if.then22.i ], [ 0, %if.end20.i.if.end25.i_crit_edge ]
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %52 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_buf.i, align 4
  %tobool26.not.i = icmp eq ptr %53, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end36.i_crit_edge, label %if.then27.i

if.end25.i.if.end36.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %or28.i = or i32 %m_cmd.0.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %add.ptr33.i = getelementptr i8, ptr %56, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %54) #7, !srcloc !164
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %59 = ptrtoint ptr %rx_rem_bytes.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rx_rem_bytes.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then27.i, %if.end25.i.if.end36.i_crit_edge
  %m_cmd.1.i = phi i32 [ %or28.i, %if.then27.i ], [ %m_cmd.0.i, %if.end25.i.if.end36.i_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i15) #7
  %shl.i.i = shl nsw i32 %m_cmd.1.i, 27
  %or.i.i = or i32 %shl.i.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %62, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %60) #7, !srcloc !164
  %and38.i = and i32 %m_cmd.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end36.i.if.end49.i_crit_edge, label %if.then40.i

if.end36.i.if.end49.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then40.i:                                      ; preds = %if.end36.i
  %call41.i = tail call fastcc zeroext i1 @geni_spi_handle_tx(ptr noundef %1) #7
  br i1 %call41.i, label %do.body43.i, label %if.then40.i.if.end49.i_crit_edge

if.then40.i.if.end49.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

do.body43.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %tx_wm.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 4
  %63 = ptrtoint ptr %tx_wm.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_wm.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #7
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %add.ptr47.i = getelementptr i8, ptr %67, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %65) #7, !srcloc !164
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.body43.i, %if.then40.i.if.end49.i_crit_edge, %if.end36.i.if.end49.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i15) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config.i) #7
  %68 = call ptr @memset(ptr %config.i, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %peripheral.i) #7
  %69 = getelementptr inbounds i8, ptr %peripheral.i, i32 4
  %70 = call ptr @memset(ptr %69, i32 0, i32 20)
  %peripheral_config.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 10
  %71 = ptrtoint ptr %peripheral_config.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %peripheral.i, ptr %peripheral_config.i, align 4
  %peripheral_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 11
  %72 = ptrtoint ptr %peripheral_size.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 24, ptr %peripheral_size.i, align 4
  %73 = ptrtoint ptr %peripheral.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %peripheral.i, align 4
  %bits_per_word.i19 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %74 = ptrtoint ptr %bits_per_word.i19 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bits_per_word.i19, align 1
  %conv.i20 = zext i8 %75 to i32
  %cur_bits_per_word.i21 = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 8
  %76 = ptrtoint ptr %cur_bits_per_word.i21 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cur_bits_per_word.i21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %conv.i20)
  %cmp.not.i22 = icmp eq i32 %77, %conv.i20
  br i1 %cmp.not.i22, label %lor.lhs.false.i, label %if.end5.if.then.i24_crit_edge

if.end5.if.then.i24_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i24

lor.lhs.false.i:                                  ; preds = %if.end5
  %speed_hz.i23 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %78 = ptrtoint ptr %speed_hz.i23 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %speed_hz.i23, align 4
  %cur_speed_hz.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 6
  %80 = ptrtoint ptr %cur_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cur_speed_hz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp2.not.i = icmp eq i32 %79, %81
  br i1 %cmp2.not.i, label %lor.lhs.false.i.if.end.i26_crit_edge, label %lor.lhs.false.i.if.then.i24_crit_edge

lor.lhs.false.i.if.then.i24_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i24

lor.lhs.false.i.if.end.i26_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i26

if.then.i24:                                      ; preds = %lor.lhs.false.i.if.then.i24_crit_edge, %if.end5.if.then.i24_crit_edge
  %82 = ptrtoint ptr %cur_bits_per_word.i21 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv.i20, ptr %cur_bits_per_word.i21, align 4
  %speed_hz7.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %83 = ptrtoint ptr %speed_hz7.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %speed_hz7.i, align 4
  %cur_speed_hz8.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 6
  %85 = ptrtoint ptr %cur_speed_hz8.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %cur_speed_hz8.i, align 4
  br label %if.end.i26

if.end.i26:                                       ; preds = %if.then.i24, %lor.lhs.false.i.if.end.i26_crit_edge
  %86 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %xfer, align 4
  %tobool.not.i25 = icmp eq ptr %87, null
  %rx_buf16.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %88 = ptrtoint ptr %rx_buf16.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rx_buf16.i, align 4
  %tobool17.not.i = icmp eq ptr %89, null
  br i1 %tobool.not.i25, label %if.else15.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i26
  %cmd14.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 10
  br i1 %tobool17.not.i, label %if.then13.i27, label %if.then10.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %cmd14.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3, ptr %cmd14.i, align 4
  br label %if.end34.i

if.then13.i27:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %cmd14.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %cmd14.i, align 4
  %rx_len.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 11
  %92 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %rx_len.i, align 4
  br label %if.end34.i

if.else15.i:                                      ; preds = %if.end.i26
  br i1 %tobool17.not.i, label %if.else15.i.if.end34.i_crit_edge, label %if.then18.i

if.else15.i.if.end34.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then18.i:                                      ; preds = %if.else15.i
  %cmd19.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 10
  %93 = ptrtoint ptr %cmd19.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %cmd19.i, align 4
  %94 = ptrtoint ptr %cur_bits_per_word.i21 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cur_bits_per_word.i21, align 4
  %rem.i28 = and i32 %95, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i28)
  %tobool21.not.i29 = icmp eq i32 %rem.i28, 0
  br i1 %tobool21.not.i29, label %if.then22.i31, label %if.else25.i

if.then22.i31:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len, align 4
  %shl.i = shl i32 %97, 3
  %div.i30 = udiv i32 %shl.i, %95
  %rx_len24.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 11
  %98 = ptrtoint ptr %rx_len24.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %div.i30, ptr %rx_len24.i, align 4
  br label %if.end34.i

if.else25.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %div27160.i = lshr i32 %95, 3
  %add.i32 = add nuw nsw i32 %div27160.i, 1
  %99 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len, align 4
  %div29.i = udiv i32 %100, %add.i32
  %rx_len30.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 11
  %101 = ptrtoint ptr %rx_len30.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div29.i, ptr %rx_len30.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else25.i, %if.then22.i31, %if.else15.i.if.end34.i_crit_edge, %if.then13.i27, %if.then10.i
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %slv, i32 0, i32 7
  %102 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mode.i, align 8
  %104 = trunc i32 %103 to i8
  %105 = lshr i8 %104, 5
  %106 = and i8 %105, 1
  %loopback_en.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 1
  %107 = ptrtoint ptr %loopback_en.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %loopback_en.i, align 1
  %108 = lshr i8 %104, 1
  %109 = and i8 %108, 1
  %clock_pol_high.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 2
  %110 = ptrtoint ptr %clock_pol_high.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %clock_pol_high.i, align 2
  %111 = and i8 %104, 1
  %data_pol_high.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 3
  %112 = ptrtoint ptr %data_pol_high.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %data_pol_high.i, align 1
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %slv, i32 0, i32 4
  %113 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %chip_select.i, align 4
  %cs.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 7
  %115 = ptrtoint ptr %cs.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %cs.i, align 1
  %116 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %69, align 4
  %117 = ptrtoint ptr %bits_per_word.i19 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bits_per_word.i19, align 1
  %sub.i = add i8 %118, -4
  %word_len.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 5
  %119 = ptrtoint ptr %word_len.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %sub.i, ptr %word_len.i, align 1
  %cur_speed_hz57.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 6
  %120 = ptrtoint ptr %cur_speed_hz57.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cur_speed_hz57.i, align 4
  %clk_src.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 9
  %clk_div.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 8
  %call.i33 = call fastcc i32 @get_spi_clk_cfg(i32 noundef %121, ptr noundef %1, ptr noundef %clk_src.i, ptr noundef %clk_div.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool58.not.i = icmp eq i32 %call.i33, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %do.end.i35

do.end.i35:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i34 = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %122 = ptrtoint ptr %dev.i34 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.25, i32 noundef %call.i33) #10
  br label %setup_gsi_xfer.exit

if.end60.i:                                       ; preds = %if.end34.i
  %cs_change.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %124 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load.i = load i8, ptr %cs_change.i, align 4
  %125 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool61.not.i = icmp eq i8 %125, 0
  br i1 %tobool61.not.i, label %if.then62.i, label %if.end60.i.if.end67.i_crit_edge

if.end60.i.if.end67.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.then62.i:                                      ; preds = %if.end60.i
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %cur_msg.i = getelementptr inbounds %struct.spi_controller, ptr %spi, i32 0, i32 31
  %126 = ptrtoint ptr %cur_msg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur_msg.i, align 4
  %128 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %transfer_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %129, %127
  br i1 %cmp.i.not.i, label %if.then62.i.if.end67.i_crit_edge, label %if.then65.i

if.then62.i.if.end67.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.then65.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  %fragmentation.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 6
  %130 = ptrtoint ptr %fragmentation.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 4, ptr %fragmentation.i, align 2
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then65.i, %if.then62.i.if.end67.i_crit_edge, %if.end60.i.if.end67.i_crit_edge
  %cmd68.i = getelementptr inbounds %struct.gpi_spi_config, ptr %peripheral.i, i32 0, i32 10
  %131 = ptrtoint ptr %cmd68.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cmd68.i, align 4
  %and69.i = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.end67.i.if.end83.i_crit_edge, label %if.then71.i

if.end67.i.if.end83.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.then71.i:                                      ; preds = %if.end67.i
  %rx.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 21
  %133 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rx.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %136, i32 0, i32 44
  %137 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i, label %if.then71.i.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i36

if.then71.i.dmaengine_slave_config.exit.i_crit_edge: ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_slave_config.exit.i

if.then.i.i36:                                    ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 %138(ptr noundef %134, ptr noundef nonnull %config.i) #7
  %139 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pr.i = load ptr, ptr %rx.i, align 4
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i36, %if.then71.i.dmaengine_slave_config.exit.i_crit_edge
  %140 = phi ptr [ %134, %if.then71.i.dmaengine_slave_config.exit.i_crit_edge ], [ %.pr.i, %if.then.i.i36 ]
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %141 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rx_sg.i, align 4
  %nents.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6, i32 1
  %143 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nents.i, align 4
  %tobool.not.i161.i = icmp eq ptr %140, null
  br i1 %tobool.not.i161.i, label %dmaengine_slave_config.exit.i.do.end80.i_crit_edge, label %lor.lhs.false.i.i

dmaengine_slave_config.exit.i.do.end80.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80.i

lor.lhs.false.i.i:                                ; preds = %dmaengine_slave_config.exit.i
  %145 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %140, align 4
  %tobool1.not.i.i = icmp eq ptr %146, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end80.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.do.end80.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %146, i32 0, i32 39
  %147 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %148, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.do.end80.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.do.end80.i_crit_edge:          ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i162.i = call ptr %148(ptr noundef nonnull %140, ptr noundef %142, i32 noundef %144, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  %tobool76.not.i = icmp eq ptr %call.i162.i, null
  br i1 %tobool76.not.i, label %dmaengine_prep_slave_sg.exit.i.do.end80.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i.if.end83.i_crit_edge

dmaengine_prep_slave_sg.exit.i.if.end83.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

dmaengine_prep_slave_sg.exit.i.do.end80.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80.i

do.end80.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i.do.end80.i_crit_edge, %lor.lhs.false2.i.i.do.end80.i_crit_edge, %lor.lhs.false.i.i.do.end80.i_crit_edge, %dmaengine_slave_config.exit.i.do.end80.i_crit_edge
  %dev81.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %149 = ptrtoint ptr %dev81.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev81.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.28) #10
  br label %setup_gsi_xfer.exit

if.end83.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i.if.end83.i_crit_edge, %if.end67.i.if.end83.i_crit_edge
  %rx_desc.0.i = phi ptr [ %call.i162.i, %dmaengine_prep_slave_sg.exit.i.if.end83.i_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end67.i.if.end83.i_crit_edge ]
  %tx.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 20
  %151 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tx.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %device_config.i163.i = getelementptr inbounds %struct.dma_device, ptr %154, i32 0, i32 44
  %155 = ptrtoint ptr %device_config.i163.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device_config.i163.i, align 4
  %tobool.not.i164.i = icmp eq ptr %156, null
  br i1 %tobool.not.i164.i, label %if.end83.i.dmaengine_slave_config.exit167.i_crit_edge, label %if.then.i166.i

if.end83.i.dmaengine_slave_config.exit167.i_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_slave_config.exit167.i

if.then.i166.i:                                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i165.i = call i32 %156(ptr noundef %152, ptr noundef nonnull %config.i) #7
  %157 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pr184.i = load ptr, ptr %tx.i, align 4
  br label %dmaengine_slave_config.exit167.i

dmaengine_slave_config.exit167.i:                 ; preds = %if.then.i166.i, %if.end83.i.dmaengine_slave_config.exit167.i_crit_edge
  %158 = phi ptr [ %152, %if.end83.i.dmaengine_slave_config.exit167.i_crit_edge ], [ %.pr184.i, %if.then.i166.i ]
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %159 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tx_sg.i, align 4
  %nents88.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5, i32 1
  %161 = ptrtoint ptr %nents88.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %nents88.i, align 4
  %tobool.not.i168.i = icmp eq ptr %158, null
  br i1 %tobool.not.i168.i, label %dmaengine_slave_config.exit167.i.do.end94.i_crit_edge, label %lor.lhs.false.i170.i

dmaengine_slave_config.exit167.i.do.end94.i_crit_edge: ; preds = %dmaengine_slave_config.exit167.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end94.i

lor.lhs.false.i170.i:                             ; preds = %dmaengine_slave_config.exit167.i
  %163 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %158, align 4
  %tobool1.not.i169.i = icmp eq ptr %164, null
  br i1 %tobool1.not.i169.i, label %lor.lhs.false.i170.i.do.end94.i_crit_edge, label %lor.lhs.false2.i173.i

lor.lhs.false.i170.i.do.end94.i_crit_edge:        ; preds = %lor.lhs.false.i170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end94.i

lor.lhs.false2.i173.i:                            ; preds = %lor.lhs.false.i170.i
  %device_prep_slave_sg.i171.i = getelementptr inbounds %struct.dma_device, ptr %164, i32 0, i32 39
  %165 = ptrtoint ptr %device_prep_slave_sg.i171.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %device_prep_slave_sg.i171.i, align 4
  %tobool4.not.i172.i = icmp eq ptr %166, null
  br i1 %tobool4.not.i172.i, label %lor.lhs.false2.i173.i.do.end94.i_crit_edge, label %dmaengine_prep_slave_sg.exit177.i

lor.lhs.false2.i173.i.do.end94.i_crit_edge:       ; preds = %lor.lhs.false2.i173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end94.i

dmaengine_prep_slave_sg.exit177.i:                ; preds = %lor.lhs.false2.i173.i
  %call.i174.i = call ptr %166(ptr noundef nonnull %158, ptr noundef %160, i32 noundef %162, i32 noundef 1, i32 noundef 3, ptr noundef null) #7
  %tobool90.not.i = icmp eq ptr %call.i174.i, null
  br i1 %tobool90.not.i, label %dmaengine_prep_slave_sg.exit177.i.do.end94.i_crit_edge, label %if.end96.i

dmaengine_prep_slave_sg.exit177.i.do.end94.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end94.i

do.end94.i:                                       ; preds = %dmaengine_prep_slave_sg.exit177.i.do.end94.i_crit_edge, %lor.lhs.false2.i173.i.do.end94.i_crit_edge, %lor.lhs.false.i170.i.do.end94.i_crit_edge, %dmaengine_slave_config.exit167.i.do.end94.i_crit_edge
  %dev95.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %167 = ptrtoint ptr %dev95.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev95.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.31) #10
  br label %setup_gsi_xfer.exit

if.end96.i:                                       ; preds = %dmaengine_prep_slave_sg.exit177.i
  %callback_result.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i174.i, i32 0, i32 7
  %169 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @spi_gsi_callback_result, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i174.i, i32 0, i32 8
  %170 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %spi, ptr %callback_param.i, align 4
  %171 = ptrtoint ptr %cmd68.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %cmd68.i, align 4
  %and98.i = and i32 %172, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.end96.i.if.end102.i_crit_edge, label %if.then100.i

if.end96.i.if.end102.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i

if.then100.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %rx_desc.0.i, i32 0, i32 4
  %173 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i178.i = call i32 %174(ptr noundef %rx_desc.0.i) #7
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then100.i, %if.end96.i.if.end102.i_crit_edge
  %tx_submit.i179.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i174.i, i32 0, i32 4
  %175 = ptrtoint ptr %tx_submit.i179.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tx_submit.i179.i, align 4
  %call.i180.i = call i32 %176(ptr noundef nonnull %call.i174.i) #7
  %177 = ptrtoint ptr %cmd68.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %cmd68.i, align 4
  %and105.i = and i32 %178, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %if.end102.i.if.end109.i_crit_edge, label %if.then107.i

if.end102.i.if.end109.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then107.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx108.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 21
  %179 = ptrtoint ptr %rx108.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rx108.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %182, i32 0, i32 50
  %183 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %184(ptr noundef %180) #7
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then107.i, %if.end102.i.if.end109.i_crit_edge
  %185 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tx.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %device_issue_pending.i181.i = getelementptr inbounds %struct.dma_device, ptr %188, i32 0, i32 50
  %189 = ptrtoint ptr %device_issue_pending.i181.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %device_issue_pending.i181.i, align 4
  call void %190(ptr noundef %186) #7
  br label %setup_gsi_xfer.exit

setup_gsi_xfer.exit:                              ; preds = %if.end109.i, %do.end94.i, %do.end80.i, %do.end.i35
  %retval.0.i37 = phi i32 [ %call.i33, %do.end.i35 ], [ 1, %if.end109.i ], [ -5, %do.end94.i ], [ -5, %do.end80.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %peripheral.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i) #7
  br label %cleanup

cleanup:                                          ; preds = %setup_gsi_xfer.exit, %if.end49.i, %if.end.i17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %spi_geni_is_abort_still_pending.exit
  %retval.0 = phi i32 [ %retval.0.i37, %setup_gsi_xfer.exit ], [ -16, %spi_geni_is_abort_still_pending.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end.i17.cleanup_crit_edge ], [ 1, %if.end49.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @geni_can_dma(ptr nocapture noundef readnone %ctlr, ptr nocapture noundef readonly %slv, ptr nocapture noundef readnone %xfer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %slv, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cur_xfer_mode = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %cur_xfer_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_xfer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ne i32 %5, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_geni_handle_err(ptr nocapture noundef readonly %spi, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_xfer_mode = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %cur_xfer_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_xfer_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %3, label %do.end [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @handle_fifo_timeout(ptr noundef %spi)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %tx.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 47
  %9 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %sw.bb1.dmaengine_terminate_sync.exit.i_crit_edge, label %dmaengine_terminate_async.exit.i.i

sw.bb1.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_async.exit.i.i:               ; preds = %sw.bb1
  %call.i.i.i = tail call i32 %10(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge

dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit.i

if.end.i.i:                                       ; preds = %dmaengine_terminate_async.exit.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.43, i32 noundef 1169) #7
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 48
  %13 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge, label %if.then.i2.i.i

if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit.i

if.then.i2.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %14(ptr noundef %6) #7
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_sync.exit.i:                  ; preds = %if.then.i2.i.i, %if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %sw.bb1.dmaengine_terminate_sync.exit.i_crit_edge
  %rx.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_terminate_all.i.i1.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_terminate_all.i.i1.i, align 4
  %tobool.not.i.i2.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i2.i, label %dmaengine_terminate_sync.exit.i.sw.epilog_crit_edge, label %dmaengine_terminate_async.exit.i5.i

dmaengine_terminate_sync.exit.i.sw.epilog_crit_edge: ; preds = %dmaengine_terminate_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

dmaengine_terminate_async.exit.i5.i:              ; preds = %dmaengine_terminate_sync.exit.i
  %call.i.i3.i = tail call i32 %20(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i.i3.i, 0
  br i1 %tobool.not.i4.i, label %if.end.i8.i, label %dmaengine_terminate_async.exit.i5.i.sw.epilog_crit_edge

dmaengine_terminate_async.exit.i5.i.sw.epilog_crit_edge: ; preds = %dmaengine_terminate_async.exit.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i8.i:                                      ; preds = %dmaengine_terminate_async.exit.i5.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.43, i32 noundef 1169) #7
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %device_synchronize.i.i6.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 48
  %23 = ptrtoint ptr %device_synchronize.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_synchronize.i.i6.i, align 4
  %tobool.not.i1.i7.i = icmp eq ptr %24, null
  br i1 %tobool.not.i1.i7.i, label %if.end.i8.i.sw.epilog_crit_edge, label %if.then.i2.i9.i

if.end.i8.i.sw.epilog_crit_edge:                  ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i2.i9.i:                                  ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %24(ptr noundef %16) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.39, i32 noundef %3) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i2.i9.i, %if.end.i8.i.sw.epilog_crit_edge, %dmaengine_terminate_async.exit.i5.i.sw.epilog_crit_edge, %dmaengine_terminate_sync.exit.i.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_set_bw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_geni_init(ptr noundef %mas) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %2 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mas, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !160
  %5 = lshr i32 %4, 16
  %and.i = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.45, i32 noundef %and.i) #10
  br label %out_pm

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mas, align 4
  %add.ptr.i85 = getelementptr i8, ptr %9, i32 3620
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #7, !srcloc !160
  %11 = lshr i32 %10, 8
  %shr.i = and i32 %11, 63
  %tx_fifo_depth = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 2
  %12 = ptrtoint ptr %tx_fifo_depth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr.i, ptr %tx_fifo_depth, align 4
  %13 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mas, align 4
  %add.ptr.i86 = getelementptr i8, ptr %14, i32 3620
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #7, !srcloc !160
  %and.i87 = and i32 %15, 63
  %fifo_width_bits = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 3
  %16 = ptrtoint ptr %fifo_width_bits to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i87, ptr %fifo_width_bits, align 4
  %17 = ptrtoint ptr %tx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_fifo_depth, align 4
  %sub = add i32 %18, -3
  %sub8 = add i32 %18, -2
  tail call void @geni_se_init(ptr noundef %mas, i32 noundef %sub, i32 noundef %sub8) #7
  %tx_wm = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 4
  %19 = ptrtoint ptr %tx_wm to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %tx_wm, align 4
  %call9 = tail call i32 @geni_se_get_qup_hw_version(ptr noundef %mas) #7
  %20 = and i32 %call9, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %20)
  %21 = icmp eq i32 %20, 268435456
  %spec.select = select i1 %21, i32 2, i32 1
  %22 = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 15
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %22, align 4
  %24 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mas, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 100
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %trunc.not.not = icmp eq i32 %27, 0
  br i1 %trunc.not.not, label %if.end.sw.bb39_crit_edge, label %sw.bb

if.end.sw.bb39_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

sw.bb:                                            ; preds = %if.end
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call.i88 = tail call ptr @dma_request_chan(ptr noundef %29, ptr noundef nonnull @.str.52) #7
  %tx.i = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 20
  %30 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i88, ptr %tx.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i88, inttoptr (i32 -4096 to ptr)
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call.i88 to i32
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %32, i32 noundef %33, ptr noundef nonnull @.str.53) #7
  br label %spi_geni_grab_gpi_chan.exit

if.end.i:                                         ; preds = %sw.bb
  %call8.i = tail call ptr @dma_request_chan(ptr noundef %32, ptr noundef nonnull @.str.54) #7
  %rx.i = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 21
  %34 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i, ptr %rx.i, align 4
  %cmp.i32.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32.i, label %if.then11.i, label %if.end.i.if.then21_crit_edge

if.end.i.if.then21_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %call8.i to i32
  %call15.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %36, i32 noundef %37, ptr noundef nonnull @.str.55) #7
  %38 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rx.i, align 4
  %39 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx.i, align 4
  tail call void @dma_release_channel(ptr noundef %40) #7
  br label %spi_geni_grab_gpi_chan.exit

spi_geni_grab_gpi_chan.exit:                      ; preds = %if.then11.i, %if.then.i
  %ret.0.i = phi i32 [ %call6.i, %if.then.i ], [ %call15.i, %if.then11.i ]
  %41 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %spi_geni_grab_gpi_chan.exit.if.then21_crit_edge, label %do.end37

spi_geni_grab_gpi_chan.exit.if.then21_crit_edge:  ; preds = %spi_geni_grab_gpi_chan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %spi_geni_grab_gpi_chan.exit.if.then21_crit_edge, %if.end.i.if.then21_crit_edge
  %cur_xfer_mode = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 22
  %42 = ptrtoint ptr %cur_xfer_mode to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %cur_xfer_mode, align 4
  tail call void @geni_se_select_mode(ptr noundef %mas, i32 noundef 3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_geni_init.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_geni_init, %sw.epilog)) #7
          to label %if.then29 [label %sw.epilog], !srcloc !175

if.then29:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_geni_init.__UNIQUE_ID_ddebug241, ptr noundef %44, ptr noundef nonnull @.str.47) #7
  br label %sw.epilog

do.end37:                                         ; preds = %spi_geni_grab_gpi_chan.exit
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.49) #10
  br label %sw.bb39

sw.bb39:                                          ; preds = %do.end37, %if.end.sw.bb39_crit_edge
  %cur_xfer_mode40 = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 22
  %47 = ptrtoint ptr %cur_xfer_mode40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %cur_xfer_mode40, align 4
  tail call void @geni_se_select_mode(ptr noundef %mas, i32 noundef 1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %if.then29, %if.then21
  %48 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mas, align 4
  %add.ptr44 = getelementptr i8, ptr %49, i32 604
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %51 = and i32 %50, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mas, align 4
  %add.ptr53 = getelementptr i8, ptr %53, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %51) #7, !srcloc !164
  br label %out_pm

out_pm:                                           ; preds = %sw.epilog, %do.end
  %ret.1 = phi i32 [ -6, %do.end ], [ 0, %sw.epilog ]
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %call.i90 = tail call i32 @__pm_runtime_idle(ptr noundef %55, i32 noundef 5) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_geni_set_cs(ptr nocapture noundef readonly %slv, i1 noundef zeroext %set_flag) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %slv, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %slv, i32 0, i32 7
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = xor i1 %tobool.not, %set_flag
  %cs_flag = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %cs_flag to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cs_flag, align 4, !range !159
  %12 = zext i1 %spec.select to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp = icmp eq i8 %11, %12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %abort_failed.i = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 19
  %13 = ptrtoint ptr %abort_failed.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %abort_failed.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end10.if.end16_crit_edge, label %if.end.i

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.i:                                         ; preds = %if.end10
  %lock.i = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 1552
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %add.ptr6.i = getelementptr i8, ptr %19, i32 1556
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  %21 = and i32 %20, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool11.not.i = icmp eq i32 %21, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %do.end

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %abort_failed.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %abort_failed.i, align 1
  br label %if.end16

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.14, i32 noundef %23) #10
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.56) #10
  br label %exit

if.end16:                                         ; preds = %if.end14.i, %if.end10.if.end16_crit_edge
  %lock = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %cur_xfer = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 11
  %28 = ptrtoint ptr %cur_xfer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_xfer, align 4
  %tobool17.not = icmp eq ptr %29, null
  br i1 %tobool17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.59) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %exit

if.end24:                                         ; preds = %if.end16
  %32 = ptrtoint ptr %cs_flag to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %12, ptr %cs_flag, align 4
  %cs_done = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 12
  %33 = ptrtoint ptr %cs_done to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cs_done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %add.ptr.i66 = getelementptr i8, ptr %35, i32 1536
  br i1 %spec.select, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 64) #7, !srcloc !164
  br label %if.end30

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 72) #7, !srcloc !164
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %call33 = tail call i32 @wait_for_completion_timeout(ptr noundef %cs_done, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end38, label %if.end30.exit_crit_edge

if.end30.exit_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.62) #10
  tail call fastcc void @handle_fifo_timeout(ptr noundef %7)
  br label %exit

exit:                                             ; preds = %do.end38, %if.end30.exit_crit_edge, %do.end21, %do.end
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %call.i68 = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geni_spi_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %fifo_word.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1552
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !160
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %5, 855638030
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.64, i32 noundef %5) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %lock = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %8 = and i32 %5, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end6.if.end12_crit_edge, label %if.then11

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.end6
  %fifo_width_bits.i.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %fifo_width_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo_width_bits.i.i, align 4
  %cur_bits_per_word.i.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %cur_bits_per_word.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_bits_per_word.i.i, align 4
  %rem.i.i = urem i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.false38.i.i

cond.false38.i.i:                                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %13, 7
  %div58.i.i = lshr i32 %sub.i.i, 3
  %sub.i59.i.i = add nsw i32 %div58.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i59.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %sub.i59.i.i, 0
  %14 = tail call i32 @llvm.ctlz.i32(i32 %sub.i59.i.i, i1 true) #7, !range !179
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %14
  %sub.i.i.op.i.i.i = shl nuw i32 1, %sub.i.i.i.i.i
  %shl.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i.i
  br label %geni_byte_per_fifo_word.exit.i

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %div4757.i.i = lshr i32 %11, 3
  br label %geni_byte_per_fifo_word.exit.i

geni_byte_per_fifo_word.exit.i:                   ; preds = %if.end.i.i, %cond.false38.i.i
  %retval.0.i.i = phi i32 [ %div4757.i.i, %if.end.i.i ], [ %shl.i.i.i, %cond.false38.i.i ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 2052
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !160
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  %and.i = and i32 %18, 33554431
  %mul.i = mul i32 %and.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not.i = icmp sgt i32 %18, -1
  br i1 %tobool.not.i, label %geni_byte_per_fifo_word.exit.i.if.end9.i_crit_edge, label %if.then.i

geni_byte_per_fifo_word.exit.i.if.end9.i_crit_edge: ; preds = %geni_byte_per_fifo_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then.i:                                        ; preds = %geni_byte_per_fifo_word.exit.i
  %and5.i = lshr i32 %18, 28
  %shr.i = and i32 %and5.i, 7
  %19 = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %if.then7.i, label %if.then.i.if.end9.i_crit_edge

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.neg.i = sub i32 %shr.i, %retval.0.i.i
  %sub8.i = add i32 %sub.neg.i, %mul.i
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.then.i.if.end9.i_crit_edge, %geni_byte_per_fifo_word.exit.i.if.end9.i_crit_edge
  %rx_bytes.0.i = phi i32 [ %sub8.i, %if.then7.i ], [ %mul.i, %if.then.i.if.end9.i_crit_edge ], [ %mul.i, %geni_byte_per_fifo_word.exit.i.if.end9.i_crit_edge ]
  %cur_xfer.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %cur_xfer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur_xfer.i, align 4
  %tobool10.not.i = icmp eq ptr %22, null
  br i1 %tobool10.not.i, label %for.cond.preheader.i, label %if.end21.i

for.cond.preheader.i:                             ; preds = %if.end9.i
  %add.i = add i32 %retval.0.i.i, -1
  %sub12.i = add i32 %add.i, %rx_bytes.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %sub12.i)
  %cmp1391.not.i = icmp ugt i32 %retval.0.i.i, %sub12.i
  br i1 %cmp1391.not.i, label %for.cond.preheader.i.if.end12_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.if.end12_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %div.i = udiv i32 %sub12.i, %retval.0.i.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.092.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr17.i = getelementptr i8, ptr %24, i32 1920
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #7, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %inc.i = add nuw i32 %i.092.i, 1
  %exitcond94.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond94.not.i, label %for.body.i.if.end12_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end12_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end21.i:                                       ; preds = %if.end9.i
  %rx_rem_bytes.i = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %rx_rem_bytes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_rem_bytes.i, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %rx_bytes.0.i) #7
  %rx_buf27.i = getelementptr inbounds %struct.spi_transfer, ptr %22, i32 0, i32 1
  %29 = ptrtoint ptr %rx_buf27.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_buf27.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %22, i32 0, i32 2
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %30, i32 %32
  %idx.neg.i = sub i32 0, %27
  %add.ptr31.i = getelementptr i8, ptr %add.ptr29.i, i32 %idx.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp3289.not.i = icmp eq i32 %28, 0
  br i1 %cmp3289.not.i, label %if.end21.i.while.end.i_crit_edge, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  br label %while.body.i

if.end21.i.while.end.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %for.end45.i.while.body.i_crit_edge, %if.end21.i.while.body.i_crit_edge
  %i.190.i = phi i32 [ %i.2.lcssa.i, %for.end45.i.while.body.i_crit_edge ], [ 0, %if.end21.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_word.i) #7
  %33 = ptrtoint ptr %fifo_word.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %fifo_word.i, align 4
  %sub33.i = sub i32 %28, %i.190.i
  %34 = call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 %sub33.i) #7
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr37.i = getelementptr i8, ptr %36, i32 1920
  call void @__raw_readsl(ptr noundef %add.ptr37.i, ptr noundef nonnull %fifo_word.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp3986.not.i = icmp eq i32 %34, 0
  br i1 %cmp3986.not.i, label %while.body.i.for.end45.i_crit_edge, label %while.body.i.for.body40.i_crit_edge

while.body.i.for.body40.i_crit_edge:              ; preds = %while.body.i
  br label %for.body40.i

while.body.i.for.end45.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end45.i

for.body40.i:                                     ; preds = %for.body40.i.for.body40.i_crit_edge, %while.body.i.for.body40.i_crit_edge
  %j.088.i = phi i32 [ %inc44.i, %for.body40.i.for.body40.i_crit_edge ], [ 0, %while.body.i.for.body40.i_crit_edge ]
  %i.287.i = phi i32 [ %inc41.i, %for.body40.i.for.body40.i_crit_edge ], [ %i.190.i, %while.body.i.for.body40.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %fifo_word.i, i32 %j.088.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  %inc41.i = add i32 %i.287.i, 1
  %arrayidx42.i = getelementptr i8, ptr %add.ptr31.i, i32 %i.287.i
  %39 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx42.i, align 1
  %inc44.i = add nuw i32 %j.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc44.i, %34
  br i1 %exitcond.not.i, label %for.body40.i.for.end45.i_crit_edge, label %for.body40.i.for.body40.i_crit_edge

for.body40.i.for.body40.i_crit_edge:              ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40.i

for.body40.i.for.end45.i_crit_edge:               ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end45.i

for.end45.i:                                      ; preds = %for.body40.i.for.end45.i_crit_edge, %while.body.i.for.end45.i_crit_edge
  %i.2.lcssa.i = phi i32 [ %i.190.i, %while.body.i.for.end45.i_crit_edge ], [ %inc41.i, %for.body40.i.for.end45.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_word.i) #7
  %cmp32.i = icmp ugt i32 %28, %i.2.lcssa.i
  br i1 %cmp32.i, label %for.end45.i.while.body.i_crit_edge, label %for.end45.i.while.end.i_crit_edge

for.end45.i.while.end.i_crit_edge:                ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

for.end45.i.while.body.i_crit_edge:               ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %for.end45.i.while.end.i_crit_edge, %if.end21.i.while.end.i_crit_edge
  %40 = ptrtoint ptr %rx_rem_bytes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_rem_bytes.i, align 4
  %sub47.i = sub i32 %41, %28
  store i32 %sub47.i, ptr %rx_rem_bytes.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %while.end.i, %for.body.i.if.end12_crit_edge, %for.cond.preheader.i.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %and13 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call fastcc zeroext i1 @geni_spi_handle_tx(ptr noundef %1)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %and18 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end47_crit_edge, label %if.then20

if.end17.if.end47_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then20:                                        ; preds = %if.end17
  %cur_xfer = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %cur_xfer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur_xfer, align 4
  %tobool21.not = icmp eq ptr %43, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then20
  call void @spi_finalize_current_transfer(ptr noundef %data) #7
  %44 = ptrtoint ptr %cur_xfer to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %cur_xfer, align 4
  %tx_rem_bytes = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %tx_rem_bytes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_rem_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool24.not = icmp eq i32 %46, 0
  br i1 %tobool24.not, label %if.then22.if.end36_crit_edge, label %do.body26

if.then22.if.end36_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.body26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr30 = getelementptr i8, ptr %48, i32 2060
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #7, !srcloc !164
  %dev34 = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev34, align 4
  %51 = ptrtoint ptr %tx_rem_bytes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_rem_bytes, align 4
  %cur_bits_per_word = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %cur_bits_per_word to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cur_bits_per_word, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.67, i32 noundef %52, i32 noundef %54) #10
  br label %if.end36

if.end36:                                         ; preds = %do.body26, %if.then22.if.end36_crit_edge
  %rx_rem_bytes = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 10
  %55 = ptrtoint ptr %rx_rem_bytes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_rem_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool37.not = icmp eq i32 %56, 0
  br i1 %tobool37.not, label %if.end36.if.end47_crit_edge, label %do.end41

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev42, align 4
  %cur_bits_per_word44 = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %cur_bits_per_word44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cur_bits_per_word44, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.70, i32 noundef %56, i32 noundef %60) #10
  br label %if.end47

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %cs_done = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 12
  call void @complete(ptr noundef %cs_done) #7
  br label %if.end47

if.end47:                                         ; preds = %if.else, %do.end41, %if.end36.if.end47_crit_edge, %if.end17.if.end47_crit_edge
  %and48 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %cancel_done = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 13
  call void @complete(ptr noundef %cancel_done) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  %and52 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.do.body56_crit_edge, label %if.then54

if.end51.do.body56_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %abort_done = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 14
  call void @complete(ptr noundef %abort_done) #7
  br label %do.body56

do.body56:                                        ; preds = %if.then54, %if.end51.do.body56_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %add.ptr60 = getelementptr i8, ptr %62, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %4) #7, !srcloc !164
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body56, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body56 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_geni_release_dma_chan(ptr nocapture noundef %mas) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 21
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 20
  %3 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %4) #7
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tx, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @geni_spi_set_clock_and_bw(ptr noundef %mas, i32 noundef %clk_hz) unnamed_addr #2 align 64 {
entry:
  %idx = alloca i32, align 4
  %div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #7
  %1 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %div, align 4, !annotation !184
  %cur_speed_hz = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 6
  %2 = ptrtoint ptr %cur_speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_speed_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %clk_hz)
  %cmp = icmp eq i32 %3, %clk_hz
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @get_spi_clk_cfg(i32 noundef %clk_hz, ptr noundef %mas, ptr noundef nonnull %idx, ptr noundef nonnull %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %clk_hz, i32 noundef %call) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %cur_speed_hz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %clk_hz, ptr %cur_speed_hz, align 4
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %9 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %div, align 4
  %shl = shl i32 %10, 4
  %or = or i32 %shl, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  call void @arm_heavy_mb() #7
  %and = shl i32 %8, 24
  %11 = and i32 %and, 117440512
  %12 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mas, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #7, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  call void @arm_heavy_mb() #7
  %14 = call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mas, align 4
  %add.ptr12 = getelementptr i8, ptr %16, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %14) #7, !srcloc !164
  %17 = ptrtoint ptr %cur_speed_hz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur_speed_hz, align 4
  %div14 = udiv i32 %18, 1000
  %avg_bw = getelementptr %struct.geni_se, ptr %mas, i32 0, i32 6, i32 1, i32 1
  %19 = ptrtoint ptr %avg_bw to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div14, ptr %avg_bw, align 4
  %call15 = call i32 @geni_icc_set_bw(ptr noundef %mas) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call15, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_config_packing(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_spi_clk_cfg(i32 noundef %speed_hz, ptr noundef %mas, ptr noundef %clk_idx, ptr nocapture noundef %clk_div) unnamed_addr #2 align 64 {
entry:
  %sclk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclk_freq) #7
  %0 = ptrtoint ptr %sclk_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sclk_freq, align 4, !annotation !184
  %oversampling = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 15
  %1 = ptrtoint ptr %oversampling to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %oversampling, align 4
  %mul = mul i32 %2, %speed_hz
  %call = call i32 @geni_se_clk_freq_match(ptr noundef %mas, i32 noundef %mul, ptr noundef %clk_idx, ptr noundef nonnull %sclk_freq, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %call, i32 noundef %speed_hz) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %sclk_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sclk_freq, align 4
  %7 = ptrtoint ptr %oversampling to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oversampling, align 4
  %mul2 = mul i32 %8, %speed_hz
  %add = add i32 %6, -1
  %sub = add i32 %add, %mul2
  %div = udiv i32 %sub, %mul2
  %9 = ptrtoint ptr %clk_div to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %clk_div, align 4
  %10 = load i32, ptr %oversampling, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_spi_clk_cfg.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@get_spi_clk_cfg, %do.end18)) #7
          to label %if.then14 [label %do.end18], !srcloc !175

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul6 = mul i32 %10, %div
  %div7 = udiv i32 %6, %mul6
  %dev15 = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 1
  %11 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev15, align 4
  %13 = ptrtoint ptr %sclk_freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sclk_freq, align 4
  %15 = ptrtoint ptr %clk_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_idx, align 4
  %17 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_div, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_spi_clk_cfg.__UNIQUE_ID_ddebug239, ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef %speed_hz, i32 noundef %div7, i32 noundef %14, i32 noundef %16, i32 noundef %18) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %if.end
  %dev19 = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 1
  %19 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev19, align 4
  %21 = ptrtoint ptr %sclk_freq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sclk_freq, align 4
  %call20 = call i32 @dev_pm_opp_set_rate(ptr noundef %20, i32 noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else, label %do.end25

do.end25:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.23, i32 noundef %call20) #10
  br label %cleanup

if.else:                                          ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %sclk_freq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sclk_freq, align 4
  %cur_sclk_hz = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 7
  %27 = ptrtoint ptr %cur_sclk_hz to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cur_sclk_hz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end25, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.else ], [ %call20, %do.end25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclk_freq) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_se_clk_freq_match(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @geni_spi_handle_tx(ptr nocapture noundef %mas) unnamed_addr #2 align 64 {
entry:
  %fifo_word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo_width_bits.i = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 3
  %0 = ptrtoint ptr %fifo_width_bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo_width_bits.i, align 4
  %cur_bits_per_word.i = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 8
  %2 = ptrtoint ptr %cur_bits_per_word.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_bits_per_word.i, align 4
  %rem.i = urem i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.false38.i

cond.false38.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %3, 7
  %div58.i = lshr i32 %sub.i, 3
  %sub.i59.i = add nsw i32 %div58.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i59.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i59.i, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i59.i, i1 true) #7, !range !179
  %sub.i.i.i.i = sub nuw nsw i32 32, %4
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  br label %geni_byte_per_fifo_word.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div4757.i = lshr i32 %1, 3
  br label %geni_byte_per_fifo_word.exit

geni_byte_per_fifo_word.exit:                     ; preds = %if.end.i, %cond.false38.i
  %retval.0.i = phi i32 [ %div4757.i, %if.end.i ], [ %shl.i.i, %cond.false38.i ]
  %cur_xfer = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 11
  %5 = ptrtoint ptr %cur_xfer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_xfer, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %geni_byte_per_fifo_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mas, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !164
  br label %cleanup

if.end:                                           ; preds = %geni_byte_per_fifo_word.exit
  %tx_fifo_depth = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 2
  %9 = ptrtoint ptr %tx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_fifo_depth, align 4
  %tx_wm = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 4
  %11 = ptrtoint ptr %tx_wm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_wm, align 4
  %sub = sub i32 %10, %12
  %mul = mul i32 %sub, %retval.0.i
  %tx_rem_bytes = getelementptr inbounds %struct.spi_geni_master, ptr %mas, i32 0, i32 9
  %13 = ptrtoint ptr %tx_rem_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_rem_bytes, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %mul)
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %6, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add.ptr8 = getelementptr i8, ptr %17, i32 %19
  %idx.neg = sub i32 0, %14
  %add.ptr10 = getelementptr i8, ptr %add.ptr8, i32 %idx.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1160.not = icmp eq i32 %15, 0
  br i1 %cmp1160.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %for.end.while.body_crit_edge, %if.end.while.body_crit_edge
  %i.061 = phi i32 [ %i.1.lcssa, %for.end.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_word) #7
  %20 = ptrtoint ptr %fifo_word to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %fifo_word, align 4
  %sub12 = sub i32 %15, %i.061
  %21 = call i32 @llvm.umin.i32(i32 %retval.0.i, i32 %sub12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1457.not = icmp eq i32 %21, 0
  br i1 %cmp1457.not, label %while.body.for.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %j.059 = phi i32 [ %inc16, %for.body.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %i.158 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %i.061, %while.body.for.body_crit_edge ]
  %inc = add i32 %i.158, 1
  %arrayidx = getelementptr i8, ptr %add.ptr10, i32 %i.158
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %arrayidx15 = getelementptr i8, ptr %fifo_word, i32 %j.059
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx15, align 1
  %inc16 = add nuw i32 %j.059, 1
  %exitcond.not = icmp eq i32 %inc16, %21
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.body.for.end_crit_edge
  %i.1.lcssa = phi i32 [ %i.061, %while.body.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %25 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mas, align 4
  %add.ptr18 = getelementptr i8, ptr %26, i32 1792
  call void @__raw_writesl(ptr noundef %add.ptr18, ptr noundef nonnull %fifo_word, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_word) #7
  %cmp11 = icmp ugt i32 %15, %i.1.lcssa
  br i1 %cmp11, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.end.while.end_crit_edge
  %27 = ptrtoint ptr %tx_rem_bytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_rem_bytes, align 4
  %sub20 = sub i32 %28, %15
  store i32 %sub20, ptr %tx_rem_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %15)
  %tobool22.not = icmp eq i32 %28, %15
  br i1 %tobool22.not, label %do.body24, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %mas to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mas, align 4
  %add.ptr28 = getelementptr i8, ptr %30, i32 2060
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #7, !srcloc !164
  br label %cleanup

cleanup:                                          ; preds = %do.body24, %while.end.cleanup_crit_edge, %do.body
  %retval.0 = phi i1 [ false, %do.body24 ], [ false, %do.body ], [ true, %while.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_gsi_callback_result(ptr noundef %cb, ptr nocapture noundef readonly %result) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %cb, i32 0, i32 31
  %0 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_msg, align 4
  %status = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -5, ptr %status, align 4
  %3 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cb, ptr noundef nonnull @.str.33, i32 noundef %4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %residue = getelementptr inbounds %struct.dmaengine_result, ptr %result, i32 0, i32 1
  %5 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %residue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then3, label %do.end18

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_msg, align 4
  %status5 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %status5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %status5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_gsi_callback_result.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_gsi_callback_result, %cleanup)) #7
          to label %if.then11 [label %cleanup], !srcloc !175

if.then11:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_gsi_callback_result.__UNIQUE_ID_ddebug240, ptr noundef %cb, ptr noundef nonnull @.str.35) #7
  br label %cleanup

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cb, ptr noundef nonnull @.str.37, i32 noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then11, %if.then3, %do.end
  tail call void @spi_finalize_current_transfer(ptr noundef %cb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_fifo_timeout(ptr nocapture noundef readonly %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %cancel_done = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cancel_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cancel_done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !164
  %cur_xfer = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %cur_xfer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cur_xfer, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #7, !srcloc !164
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %cancel_done, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %abort_done = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %abort_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %abort_done, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i1 = getelementptr i8, ptr %10, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 33554432) #7, !srcloc !164
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %call8 = tail call i32 @wait_for_completion_timeout(ptr noundef %abort_done, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.41) #10
  %abort_failed = getelementptr inbounds %struct.spi_geni_master, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %abort_failed to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %abort_failed, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_se_get_qup_hw_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @geni_se_select_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_geni_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @spi_controller_resume(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_geni_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @spi_controller_resume(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_geni_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef 0) #7
  %call3 = tail call i32 @geni_se_resources_off(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @geni_icc_disable(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_geni_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @geni_icc_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @geni_se_resources_on(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev8, align 4
  %cur_sclk_hz = getelementptr inbounds %struct.spi_geni_master, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %cur_sclk_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_sclk_hz, align 4
  %call9 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %5, i32 noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ %call2, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
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
declare dso_local i32 @geni_se_resources_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_icc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @geni_se_resources_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !98, !99, !101, !102, !103, !104, !106, !107, !109, !110, !111, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__initcall__kmod_spi_geni_qcom__246_1102_spi_geni_driver_init6, !1, !"__initcall__kmod_spi_geni_qcom__246_1102_spi_geni_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-geni-qcom.c", i32 1102, i32 1}
!2 = !{ptr @__exitcall_spi_geni_driver_exit, !1, !"__exitcall_spi_geni_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description247, !4, !"__UNIQUE_ID_description247", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-geni-qcom.c", i32 1104, i32 1}
!5 = !{ptr @__UNIQUE_ID_file248, !6, !"__UNIQUE_ID_file248", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-geni-qcom.c", i32 1105, i32 1}
!7 = !{ptr @__UNIQUE_ID_license249, !6, !"__UNIQUE_ID_license249", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-geni-qcom.c", i32 1097, i32 11}
!10 = !{ptr @spi_geni_driver, !11, !"spi_geni_driver", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-geni-qcom.c", i32 1093, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-geni-qcom.c", i32 904, i32 35}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-geni-qcom.c", i32 911, i32 26}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-geni-qcom.c", i32 934, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @spi_geni_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @spi_geni_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @spi_geni_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-geni-qcom.c", i32 955, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/spi/spi-geni-qcom.c", i32 501, i32 4}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @spi_geni_prepare_message._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @spi_geni_prepare_message._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-geni-qcom.c", i32 509, i32 2}
!34 = !{ptr @spi_geni_prepare_message._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @spi_geni_prepare_message._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-geni-qcom.c", i32 211, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @spi_geni_is_abort_still_pending._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @spi_geni_is_abort_still_pending._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-geni-qcom.c", i32 304, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @geni_spi_set_clock_and_bw._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @geni_spi_set_clock_and_bw._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-geni-qcom.c", i32 113, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @get_spi_clk_cfg._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @get_spi_clk_cfg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-geni-qcom.c", i32 121, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @get_spi_clk_cfg.__UNIQUE_ID_ddebug239, !52, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-geni-qcom.c", i32 125, i32 3}
!57 = !{ptr @get_spi_clk_cfg._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @get_spi_clk_cfg._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-geni-qcom.c", i32 435, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @setup_gsi_xfer._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @setup_gsi_xfer._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-geni-qcom.c", i32 449, i32 4}
!66 = !{ptr @setup_gsi_xfer._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @setup_gsi_xfer._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-geni-qcom.c", i32 462, i32 3}
!70 = !{ptr @setup_gsi_xfer._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @setup_gsi_xfer._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-geni-qcom.c", i32 375, i32 3}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @spi_gsi_callback_result._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @spi_gsi_callback_result._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-geni-qcom.c", i32 382, i32 3}
!79 = !{ptr @spi_gsi_callback_result.__UNIQUE_ID_ddebug240, !78, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-geni-qcom.c", i32 384, i32 3}
!82 = !{ptr @spi_gsi_callback_result._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @spi_gsi_callback_result._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/spi/spi-geni-qcom.c", i32 187, i32 3}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @spi_geni_handle_err._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @spi_geni_handle_err._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-geni-qcom.c", i32 157, i32 3}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @handle_fifo_timeout._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @handle_fifo_timeout._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!96 = !{ptr @init_completion.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../include/linux/completion.h", i32 87, i32 2}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-geni-qcom.c", i32 565, i32 3}
!101 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @spi_geni_init._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @spi_geni_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/spi/spi-geni-qcom.c", i32 596, i32 4}
!106 = !{ptr @spi_geni_init.__UNIQUE_ID_ddebug241, !105, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-geni-qcom.c", i32 603, i32 3}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @spi_geni_init._entry.48, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @spi_geni_init._entry_ptr.51, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/spi/spi-geni-qcom.c", i32 517, i32 39}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/spi/spi-geni-qcom.c", i32 520, i32 9}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/spi/spi-geni-qcom.c", i32 524, i32 39}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/spi/spi-geni-qcom.c", i32 527, i32 9}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/spi/spi-geni-qcom.c", i32 241, i32 3}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @spi_geni_set_cs._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @spi_geni_set_cs._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/spi/spi-geni-qcom.c", i32 247, i32 3}
!127 = !{ptr @spi_geni_set_cs._entry.58, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @spi_geni_set_cs._entry_ptr.60, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/spi/spi-geni-qcom.c", i32 262, i32 3}
!131 = !{ptr @spi_geni_set_cs._entry.61, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @spi_geni_set_cs._entry_ptr.63, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/spi/spi-geni-qcom.c", i32 822, i32 3}
!135 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @geni_spi_isr._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @geni_spi_isr._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/spi/spi-geni-qcom.c", i32 851, i32 5}
!140 = !{ptr @geni_spi_isr._entry.66, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @geni_spi_isr._entry_ptr.68, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/spi/spi-geni-qcom.c", i32 855, i32 5}
!144 = !{ptr @geni_spi_isr._entry.69, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @geni_spi_isr._entry_ptr.71, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @spi_geni_dt_match, !147, !"spi_geni_dt_match", i1 false, i1 false}
!147 = !{!"../drivers/spi/spi-geni-qcom.c", i32 1087, i32 34}
!148 = !{ptr @spi_geni_pm_ops, !149, !"spi_geni_pm_ops", i1 false, i1 false}
!149 = !{!"../drivers/spi/spi-geni-qcom.c", i32 1081, i32 32}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i8 0, i8 2}
!160 = !{i64 6326580}
!161 = !{i64 2154451116}
!162 = !{i64 2154451604}
!163 = !{i64 2154459444}
!164 = !{i64 6326162}
!165 = !{i64 2154463732}
!166 = !{i64 2154464158}
!167 = !{i64 2154464570}
!168 = !{i64 2154464967}
!169 = !{i64 2154465376}
!170 = !{i64 2154496872}
!171 = !{i64 2154497267}
!172 = !{i64 2154302963}
!173 = !{i64 2154497751}
!174 = !{i64 2154483117}
!175 = !{i64 2148749320, i64 2148749325, i64 2148749338, i64 2148749382, i64 2148749416, i64 2148749437}
!176 = !{i64 2154487998}
!177 = !{i64 2154488306}
!178 = !{i64 2154498543}
!179 = !{i32 0, i32 33}
!180 = !{i64 2154492304}
!181 = !{i64 2154494349}
!182 = !{i64 2154501387}
!183 = !{i64 2154505488}
!184 = !{!"auto-init"}
!185 = !{i64 2154462263}
!186 = !{i64 2154462671}
!187 = !{i64 2154489651}
!188 = !{i64 2154491648}
!189 = !{i64 2154446986}
