; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-rspi.c_pt.bc'
source_filename = "../drivers/spi/spi-rspi.c"
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
%struct.spi_ops = type { ptr, ptr, i16, i16, i16, i16, i16, i8 }
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
%struct.rspi_plat_data = type { i32, i32, i16 }
%struct.rspi_data = type { ptr, i32, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, i16, i8, i8, i32, i32, ptr, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_rspi__251_1450_rspi_driver_init6 = internal global ptr @rspi_driver_init, section ".initcall6.init", align 4
@rspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rspi_probe, ptr @rspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rspi_pm_ops, ptr null, ptr null }, ptr @spi_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rspi_driver_exit = internal global ptr @rspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description252 = internal constant [45 x i8] c"spi_rspi.description=Renesas RSPI bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [35 x i8] c"spi_rspi.file=drivers/spi/spi-rspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [24 x i8] c"spi_rspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [34 x i8] c"spi_rspi.author=Yoshihiro Shimoda\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"renesas_spi\00", [20 x i8] zeroinitializer }, align 32
@rspi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rspi_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rspi-rz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rspi_rz_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qspi_ops }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@rspi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rspi_suspend, ptr @rspi_resume, ptr @rspi_suspend, ptr @rspi_resume, ptr @rspi_suspend, ptr @rspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@spi_driver_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"rspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @rspi_ops to i32) }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rspi_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/spi/spi-rspi.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rspi_probe._entry_ptr = internal global ptr @rspi_probe._entry, section ".printk_index", align 4
@rspi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&rspi->wait\00", [20 x i8] zeroinitializer }, align 32
@rspi_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&rspi->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mux\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@rspi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"request_irq error\0A\00", [45 x i8] zeroinitializer }, align 32
@rspi_probe._entry_ptr.14 = internal global ptr @rspi_probe._entry.12, section ".printk_index", align 4
@rspi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1390, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA not available, using PIO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rspi_probe._entry_ptr.18 = internal global ptr @rspi_probe._entry.15, section ".printk_index", align 4
@rspi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"devm_spi_register_controller error.\0A\00", [59 x i8] zeroinitializer }, align 32
@rspi_probe._entry_ptr.21 = internal global ptr @rspi_probe._entry.19, section ".printk_index", align 4
@rspi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1398, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"probed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rspi_probe._entry_ptr.25 = internal global ptr @rspi_probe._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@rspi_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"of_property_read_u32 num-cs failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rspi_parse_dt\00", [18 x i8] zeroinitializer }, align 32
@rspi_parse_dt._entry_ptr = internal global ptr @rspi_parse_dt._entry, section ".printk_index", align 4
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get reset ctrl\0A\00", [38 x i8] zeroinitializer }, align 32
@rspi_parse_dt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.3, i32 1256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to deassert reset %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rspi_parse_dt._entry_ptr.32 = internal global ptr @rspi_parse_dt._entry.30, section ".printk_index", align 4
@rspi_parse_dt._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.3, i32 1262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to register assert devm action, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rspi_parse_dt._entry_ptr.35 = internal global ptr @rspi_parse_dt._entry.33, section ".printk_index", align 4
@qspi_setup_sequencer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 925, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Too many different transfer modes\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qspi_setup_sequencer\00", [43 x i8] zeroinitializer }, align 32
@qspi_setup_sequencer._entry_ptr = internal global ptr @qspi_setup_sequencer._entry, section ".printk_index", align 4
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@rspi_request_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1162, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA available\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rspi_request_dma\00", [47 x i8] zeroinitializer }, align 32
@rspi_request_dma._entry_ptr = internal global ptr @rspi_request_dma._entry, section ".printk_index", align 4
@rspi_request_dma_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 1106, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dma_request_slave_channel_compat failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rspi_request_dma_chan\00", [42 x i8] zeroinitializer }, align 32
@rspi_request_dma_chan._entry_ptr = internal global ptr @rspi_request_dma_chan._entry, section ".printk_index", align 4
@rspi_request_dma_chan._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 1122, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dmaengine_slave_config failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rspi_request_dma_chan._entry_ptr.45 = internal global ptr @rspi_request_dma_chan._entry.43, section ".printk_index", align 4
@rspi_ops = internal constant { %struct.spi_ops, [44 x i8] } { %struct.spi_ops { ptr @rspi_set_config_register, ptr @rspi_transfer_one, i16 0, i16 2, i16 4096, i16 16, i16 8, i8 2 }, [44 x i8] zeroinitializer }, align 32
@rspi_rz_ops = internal constant { %struct.spi_ops, [44 x i8] } { %struct.spi_ops { ptr @rspi_rz_set_config_register, ptr @rspi_rz_transfer_one, i16 0, i16 2, i16 4096, i16 24, i16 8, i8 1 }, [44 x i8] zeroinitializer }, align 32
@qspi_ops = internal constant { %struct.spi_ops, [44 x i8] } { %struct.spi_ops { ptr @qspi_set_config_register, ptr @qspi_transfer_one, i16 3840, i16 1, i16 4080, i16 24, i16 32, i8 1 }, [44 x i8] zeroinitializer }, align 32
@rspi_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 618, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMA timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rspi_dma_transfer\00", [46 x i8] zeroinitializer }, align 32
@rspi_dma_transfer._entry_ptr = internal global ptr @rspi_dma_transfer._entry, section ".printk_index", align 4
@rspi_dma_transfer.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@rspi_dma_transfer._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 642, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DMA not available, falling back to PIO\0A\00", [56 x i8] zeroinitializer }, align 32
@rspi_dma_transfer._entry_ptr.50 = internal global ptr @rspi_dma_transfer._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@rspi_data_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"transmit timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rspi_data_out\00", [18 x i8] zeroinitializer }, align 32
@rspi_data_out._entry_ptr = internal global ptr @rspi_data_out._entry, section ".printk_index", align 4
@rspi_data_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"receive timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rspi_data_in\00", [19 x i8] zeroinitializer }, align 32
@rspi_data_in._entry_ptr = internal global ptr @rspi_data_in._entry, section ".printk_index", align 4
@qspi_trigger_transfer_out_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.56, ptr @.str.3, i32 763, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qspi_trigger_transfer_out_in\00", [35 x i8] zeroinitializer }, align 32
@qspi_trigger_transfer_out_in._entry_ptr = internal global ptr @qspi_trigger_transfer_out_in._entry, section ".printk_index", align 4
@qspi_trigger_transfer_out_in._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.56, ptr @.str.3, i32 771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qspi_trigger_transfer_out_in._entry_ptr.58 = internal global ptr @qspi_trigger_transfer_out_in._entry.57, section ".printk_index", align 4
@qspi_transfer_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.59, ptr @.str.3, i32 815, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qspi_transfer_out\00", [46 x i8] zeroinitializer }, align 32
@qspi_transfer_out._entry_ptr = internal global ptr @qspi_transfer_out._entry, section ".printk_index", align 4
@qspi_transfer_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.60, ptr @.str.3, i32 847, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qspi_transfer_in\00", [47 x i8] zeroinitializer }, align 32
@qspi_transfer_in._entry_ptr = internal global ptr @qspi_transfer_in._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"rspi_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1440, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1445, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"rspi_of_match\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1217, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"rspi_pm_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1434, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"spi_driver_ids\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1412, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1330, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1338, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1339, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1357, i32 47 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1359, i32 48 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1366, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1384, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1390, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1394, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1398, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1241, i32 45 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1243, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1252, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1256, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1262, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 924, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1280, i32 53 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1162, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1106, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1122, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [9 x i8] c"rspi_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1184, i32 29 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"rspi_rz_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1194, i32 29 }
@___asan_gen_.214 = private unnamed_addr constant [9 x i8] c"qspi_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1204, i32 29 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 618, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 641, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1169, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 490, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 504, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 763, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 771, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 815, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [26 x i8] c"../drivers/spi/spi-rspi.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 847, i32 4 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_rspi_driver_exit, ptr @__initcall__kmod_spi_rspi__251_1450_rspi_driver_init6, ptr @qspi_setup_sequencer._entry, ptr @qspi_setup_sequencer._entry_ptr, ptr @qspi_transfer_in._entry, ptr @qspi_transfer_in._entry_ptr, ptr @qspi_transfer_out._entry, ptr @qspi_transfer_out._entry_ptr, ptr @qspi_trigger_transfer_out_in._entry, ptr @qspi_trigger_transfer_out_in._entry.57, ptr @qspi_trigger_transfer_out_in._entry_ptr, ptr @qspi_trigger_transfer_out_in._entry_ptr.58, ptr @rspi_data_in._entry, ptr @rspi_data_in._entry_ptr, ptr @rspi_data_out._entry, ptr @rspi_data_out._entry_ptr, ptr @rspi_dma_transfer._entry, ptr @rspi_dma_transfer._entry.48, ptr @rspi_dma_transfer._entry_ptr, ptr @rspi_dma_transfer._entry_ptr.50, ptr @rspi_driver_exit, ptr @rspi_parse_dt._entry, ptr @rspi_parse_dt._entry.30, ptr @rspi_parse_dt._entry.33, ptr @rspi_parse_dt._entry_ptr, ptr @rspi_parse_dt._entry_ptr.32, ptr @rspi_parse_dt._entry_ptr.35, ptr @rspi_probe._entry, ptr @rspi_probe._entry.12, ptr @rspi_probe._entry.15, ptr @rspi_probe._entry.19, ptr @rspi_probe._entry.22, ptr @rspi_probe._entry_ptr, ptr @rspi_probe._entry_ptr.14, ptr @rspi_probe._entry_ptr.18, ptr @rspi_probe._entry_ptr.21, ptr @rspi_probe._entry_ptr.25, ptr @rspi_request_dma._entry, ptr @rspi_request_dma._entry_ptr, ptr @rspi_request_dma_chan._entry, ptr @rspi_request_dma_chan._entry.43, ptr @rspi_request_dma_chan._entry_ptr, ptr @rspi_request_dma_chan._entry_ptr.45, ptr @rspi_driver, ptr @.str, ptr @rspi_of_match, ptr @rspi_pm_ops, ptr @spi_driver_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rspi_probe.__key, ptr @.str.6, ptr @rspi_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @rspi_ops, ptr @rspi_rz_ops, ptr @qspi_ops, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_driver_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_parse_dt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_parse_dt._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_setup_sequencer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_request_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_request_dma_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_request_dma_chan._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_rz_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_dma_transfer._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_data_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspi_data_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_trigger_transfer_out_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_trigger_transfer_out_in._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_transfer_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_transfer_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rspi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rspi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 136, i1 noundef zeroext false) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs.i) #7
  %0 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_cs.i, align 4, !annotation !148
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.26, ptr noundef nonnull %num_cs.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call.i.i.i) #10
  br label %rspi_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.then3
  %3 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_cs.i, align 4
  %conv.i = trunc i32 %4 to i16
  %num_chipselect.i = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %num_chipselect.i, align 2
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rspi_parse_dt.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call i32 @reset_control_deassert(ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end13.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call7.i) #10
  br label %rspi_parse_dt.exit.thread

if.end13.i:                                       ; preds = %if.end6.i
  %call.i40.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rspi_reset_control_assert, ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool.not.i.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool.not.i.i, label %rspi_parse_dt.exit.thread254, label %do.end19.i

rspi_parse_dt.exit.thread254:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs.i) #7
  br label %if.end19

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i41.i = call i32 @reset_control_assert(ptr noundef %call.i.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call.i40.i) #10
  br label %rspi_parse_dt.exit.thread

rspi_parse_dt.exit.thread:                        ; preds = %do.end19.i, %do.end12.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i40.i, %do.end19.i ], [ %call7.i, %do.end12.i ], [ %call.i.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs.i) #7
  br label %spi_controller_put.exit

rspi_parse_dt.exit:                               ; preds = %if.end.i
  %6 = ptrtoint ptr %call.i.i to i32
  %call5.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @.str.29) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not, label %rspi_parse_dt.exit.if.end19_crit_edge, label %rspi_parse_dt.exit.spi_controller_put.exit_crit_edge

rspi_parse_dt.exit.spi_controller_put.exit_crit_edge: ; preds = %rspi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

rspi_parse_dt.exit.if.end19_crit_edge:            ; preds = %rspi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else:                                          ; preds = %if.end
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
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.else.if.else16_crit_edge, label %land.lhs.true

if.else.if.else16_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else16

land.lhs.true:                                    ; preds = %if.else
  %num_chipselect = getelementptr inbounds %struct.rspi_plat_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_chipselect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool12.not = icmp eq i16 %15, 0
  br i1 %tobool12.not, label %land.lhs.true.if.else16_crit_edge, label %if.then13

land.lhs.true.if.else16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %num_chipselect15 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %num_chipselect15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %num_chipselect15, align 2
  br label %if.end19

if.else16:                                        ; preds = %land.lhs.true.if.else16_crit_edge, %if.else.if.else16_crit_edge
  %num_chipselect17 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %num_chipselect17 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %num_chipselect17, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then13, %rspi_parse_dt.exit.if.end19_crit_edge, %rspi_parse_dt.exit.thread254
  %ops.0 = phi ptr [ %call2, %rspi_parse_dt.exit.if.end19_crit_edge ], [ %11, %if.then13 ], [ %11, %if.else16 ], [ %call2, %rspi_parse_dt.exit.thread254 ]
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i248 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i248 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %driver_data.i.i248, align 4
  %ops21 = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 12
  %21 = ptrtoint ptr %ops21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ops.0, ptr %ops21, align 4
  %ctlr22 = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %ctlr22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %ctlr22, align 4
  %call23 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call25 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call23) #7
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call25, ptr %19, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call25 to i32
  br label %spi_controller_put.exit

if.end31:                                         ; preds = %if.end19
  %call33 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 6
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call33, ptr %clk, align 4
  %cmp.i249 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %do.end, label %if.end40

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %spi_controller_put.exit

if.end40:                                         ; preds = %if.end31
  %pdev41 = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 3
  %29 = ptrtoint ptr %pdev41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pdev, ptr %pdev41, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %wait = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.6, ptr noundef nonnull @rspi_probe.__key) #7
  %lock = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @rspi_probe.__key.7, i16 noundef signext 3) #7
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %conv50 = trunc i32 %31 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv50, ptr %bus_num, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %33 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @rspi_setup, ptr %setup, align 4
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %34 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %auto_runtime_pm, align 4
  %transfer_one = getelementptr inbounds %struct.spi_ops, ptr %ops.0, i32 0, i32 1
  %35 = ptrtoint ptr %transfer_one to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transfer_one, align 4
  %transfer_one51 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %37 = ptrtoint ptr %transfer_one51 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %transfer_one51, align 4
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %38 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @rspi_prepare_message, ptr %prepare_message, align 4
  %unprepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 48
  %39 = ptrtoint ptr %unprepare_message to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @rspi_unprepare_message, ptr %unprepare_message, align 8
  %extra_mode_bits = getelementptr inbounds %struct.spi_ops, ptr %ops.0, i32 0, i32 2
  %40 = ptrtoint ptr %extra_mode_bits to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %extra_mode_bits, align 4
  %42 = or i16 %41, 47
  %or = zext i16 %42 to i32
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %mode_bits, align 8
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk, align 4
  %call54 = call i32 @clk_get_rate(ptr noundef %45) #7
  %max_div = getelementptr inbounds %struct.spi_ops, ptr %ops.0, i32 0, i32 4
  %46 = ptrtoint ptr %max_div to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %max_div, align 4
  %conv55 = zext i16 %47 to i32
  %add = add i32 %call54, -1
  %sub = add i32 %add, %conv55
  %div = udiv i32 %sub, %conv55
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %48 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div, ptr %min_speed_hz, align 4
  %min_div = getelementptr inbounds %struct.spi_ops, ptr %ops.0, i32 0, i32 3
  %49 = ptrtoint ptr %min_div to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %min_div, align 2
  %conv58 = zext i16 %50 to i32
  %sub60 = add i32 %add, %conv58
  %div63 = udiv i32 %sub60, %conv58
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %51 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div63, ptr %max_speed_hz, align 8
  %flags = getelementptr inbounds %struct.spi_ops, ptr %ops.0, i32 0, i32 5
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags, align 2
  %flags64 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %54 = ptrtoint ptr %flags64 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %flags64, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %55 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node, align 8
  %of_node67 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %57 = ptrtoint ptr %of_node67 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %of_node67, align 8
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %58 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %59 = ptrtoint ptr %ops21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops21, align 4
  %num_hw_ss = getelementptr inbounds %struct.spi_ops, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %num_hw_ss to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_hw_ss, align 2
  %max_native_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 58
  %63 = ptrtoint ptr %max_native_cs to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %max_native_cs, align 2
  %call69 = call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.else83

if.then72:                                        ; preds = %if.end40
  %call73 = call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end78, label %if.then72.if.then81_crit_edge

if.then72.if.then81_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

if.end78:                                         ; preds = %if.then72
  %call77 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call77)
  %cmp79 = icmp sgt i32 %call77, -1
  br i1 %cmp79, label %if.end78.if.then81_crit_edge, label %if.end78.if.end91_crit_edge

if.end78.if.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.end78.if.then81_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

if.then81:                                        ; preds = %if.end78.if.then81_crit_edge, %if.then72.if.then81_crit_edge
  %ret.0259 = phi i32 [ %call77, %if.end78.if.then81_crit_edge ], [ %call73, %if.then72.if.then81_crit_edge ]
  %tx_irq = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 11
  %64 = ptrtoint ptr %tx_irq to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %ret.0259, ptr %tx_irq, align 4
  %rx_irq = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 10
  %65 = ptrtoint ptr %rx_irq to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %ret.0259, ptr %rx_irq, align 4
  br label %if.end91

if.else83:                                        ; preds = %if.end40
  %rx_irq84 = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 10
  %66 = ptrtoint ptr %rx_irq84 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call69, ptr %rx_irq84, align 4
  %call85 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call85)
  %cmp86 = icmp sgt i32 %call85, -1
  br i1 %cmp86, label %if.then88, label %if.else83.if.end91_crit_edge

if.else83.if.end91_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then88:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #9
  %tx_irq89 = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 11
  %67 = ptrtoint ptr %tx_irq89 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call85, ptr %tx_irq89, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.else83.if.end91_crit_edge, %if.then81, %if.end78.if.end91_crit_edge
  %rx_irq92 = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 10
  %68 = ptrtoint ptr %rx_irq92 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_irq92, align 4
  %tx_irq93 = getelementptr inbounds %struct.rspi_data, ptr %19, i32 0, i32 11
  %70 = ptrtoint ptr %tx_irq93 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_irq93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp94 = icmp eq i32 %69, %71
  br i1 %cmp94, label %if.then96, label %if.else100

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %call99 = call fastcc i32 @rspi_request_irq(ptr noundef %dev, i32 noundef %69, ptr noundef nonnull @rspi_irq_mux, ptr noundef nonnull @.str.10, ptr noundef %19)
  br label %if.end110

if.else100:                                       ; preds = %if.end91
  %call103 = call fastcc i32 @rspi_request_irq(ptr noundef %dev, i32 noundef %69, ptr noundef nonnull @rspi_irq_rx, ptr noundef nonnull @.str.9, ptr noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then105, label %if.else100.if.end110_crit_edge

if.else100.if.end110_crit_edge:                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then105:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %tx_irq93 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_irq93, align 4
  %call108 = call fastcc i32 @rspi_request_irq(ptr noundef %dev, i32 noundef %73, ptr noundef nonnull @rspi_irq_tx, ptr noundef nonnull @.str.11, ptr noundef %19)
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %if.else100.if.end110_crit_edge, %if.then96
  %ret.1 = phi i32 [ %call99, %if.then96 ], [ %call103, %if.else100.if.end110_crit_edge ], [ %call108, %if.then105 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp111 = icmp slt i32 %ret.1, 0
  br i1 %cmp111, label %do.end116, label %if.end118

do.end116:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %error2

if.end118:                                        ; preds = %if.end110
  %call120 = call fastcc i32 @rspi_request_dma(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef %call23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %do.end126, label %if.end118.if.end128_crit_edge

if.end118.if.end128_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

do.end126:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %if.end128

if.end128:                                        ; preds = %do.end126, %if.end118.if.end128_crit_edge
  %call130 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %do.end136, label %do.end141

do.end136:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  call fastcc void @rspi_release_dma(ptr noundef nonnull %call.i)
  br label %error2

do.end141:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %cleanup

error2:                                           ; preds = %do.end136, %do.end116
  %ret.2 = phi i32 [ %ret.1, %do.end116 ], [ %call130, %do.end136 ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %error2, %do.end, %if.then28, %rspi_parse_dt.exit.spi_controller_put.exit_crit_edge, %rspi_parse_dt.exit.thread
  %ret.3 = phi i32 [ %call5.i, %rspi_parse_dt.exit.spi_controller_put.exit_crit_edge ], [ %24, %if.then28 ], [ %28, %do.end ], [ %ret.2, %error2 ], [ %retval.0.i.ph, %rspi_parse_dt.exit.thread ]
  call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %do.end141, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %spi_controller_put.exit ], [ 0, %do.end141 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctlr = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlr, align 4
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 60
  %4 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_tx.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %5) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 61
  %6 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_rx.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.end.i.rspi_release_dma.exit_crit_edge, label %if.then3.i

if.end.i.rspi_release_dma.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rspi_release_dma.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %7) #7
  br label %rspi_release_dma.exit

rspi_release_dma.exit:                            ; preds = %if.then3.i, %if.end.i.rspi_release_dma.exit_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %0 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %pdev = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.rspi_data, ptr %5, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 8
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %chip_select7 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %13 = ptrtoint ptr %chip_select7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_select7, align 4
  %conv8 = zext i8 %14 to i32
  %shl9 = shl nuw i32 1, %conv8
  %15 = trunc i32 %shl9 to i8
  %conv6 = or i8 %10, %15
  %16 = xor i8 %15, -1
  %conv12 = and i8 %10, %16
  %sslp.0 = select i1 %tobool3.not, i8 %conv12, i8 %conv6
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %add.ptr.i30 = getelementptr i8, ptr %18, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i30, i8 %sslp.0) #7, !srcloc !152
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %call.i31 = tail call i32 @__pm_runtime_idle(ptr noundef %dev16, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_prepare_message(ptr nocapture noundef readonly %ctlr, ptr noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  %speed_hz = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %speed_hz, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn103 = load ptr, ptr %msg, align 4
  %cmp.not104 = icmp eq ptr %.pn103, %msg
  br i1 %cmp.not104, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn105 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn103, %entry.for.body_crit_edge ]
  %speed_hz3 = getelementptr i8, ptr %.pn105, i32 -24
  %8 = ptrtoint ptr %speed_hz3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed_hz3, align 4
  %10 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5 = icmp ult i32 %9, %11
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %speed_hz, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn105 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn105, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %spcmd = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %spcmd to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 128, ptr %spcmd, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 8
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i16 128, i16 130
  %17 = ptrtoint ptr %spcmd to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %spec.store.select, ptr %spcmd, align 4
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 8
  %and18 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.end.if.end25_crit_edge, label %if.then20

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = or i16 %spec.store.select, 1
  %21 = ptrtoint ptr %spcmd to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %spcmd, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %for.end.if.end25_crit_edge
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 8
  %and27 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end34_crit_edge, label %if.then29

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %spcmd to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %spcmd, align 4
  %26 = or i16 %25, 4096
  store i16 %26, ptr %spcmd, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end25.if.end34_crit_edge
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 14
  %27 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cs_gpiod, align 8
  %tobool35.not = icmp eq ptr %28, null
  br i1 %tobool35.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %ctlr36 = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %ctlr36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctlr36, align 4
  %unused_native_cs = getelementptr inbounds %struct.spi_controller, ptr %30, i32 0, i32 57
  %31 = ptrtoint ptr %unused_native_cs to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %unused_native_cs, align 1
  %conv37 = sext i8 %32 to i16
  br label %cond.end

cond.false:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %chip_select, align 4
  %conv38 = zext i8 %34 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16 [ %conv37, %cond.true ], [ %conv38, %cond.false ]
  %shl = shl nsw i16 %cond, 4
  %35 = ptrtoint ptr %spcmd to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %spcmd, align 4
  %or41 = or i16 %shl, %36
  store i16 %or41, ptr %spcmd, align 4
  %sppcr = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %sppcr to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %sppcr, align 1
  %38 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode, align 8
  %40 = trunc i32 %39 to i8
  %41 = lshr i8 %40, 5
  %42 = and i8 %41, 1
  store i8 %42, ptr %sppcr, align 1
  %ops = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 12
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call52 = tail call i32 %46(ptr noundef %1, i32 noundef 8) #7
  %47 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spi1, align 4
  %mode54 = getelementptr inbounds %struct.spi_device, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %mode54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode54, align 8
  %and55 = and i32 %50, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %cond.end.if.end63_crit_edge, label %if.then57

cond.end.if.end63_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then57:                                        ; preds = %cond.end
  %51 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn70.i = load ptr, ptr %msg, align 4
  %cmp.not71.i = icmp eq ptr %.pn70.i, %msg
  br i1 %cmp.not71.i, label %if.then57.if.end63_crit_edge, label %if.then57.for.body.i_crit_edge

if.then57.for.body.i_crit_edge:                   ; preds = %if.then57
  br label %for.body.i

if.then57.if.end63_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then57.for.body.i_crit_edge
  %.pn75.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn70.i, %if.then57.for.body.i_crit_edge ]
  %i.074.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then57.for.body.i_crit_edge ]
  %len.073.i = phi i32 [ %len.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then57.for.body.i_crit_edge ]
  %current_mode.072.i = phi i16 [ %current_mode.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.then57.for.body.i_crit_edge ]
  %xfer.0.i = getelementptr i8, ptr %.pn75.i, i32 -84
  %52 = ptrtoint ptr %xfer.0.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xfer.0.i, align 4
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_nbits.i.i = getelementptr i8, ptr %.pn75.i, i32 -40
  %54 = ptrtoint ptr %tx_nbits.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i.i = load i8, ptr %tx_nbits.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 3
  %bf.clear.i.i = and i8 %bf.lshr.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear.i.i)
  %switch.selectcmp.i.i = icmp eq i8 %bf.clear.i.i, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i16 32, i16 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear.i.i)
  %switch.selectcmp14.i.i = icmp eq i8 %bf.clear.i.i, 4
  %switch.select15.i.i = select i1 %switch.selectcmp14.i.i, i16 64, i16 %switch.select.i.i
  br label %qspi_transfer_mode.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %rx_buf.i.i = getelementptr i8, ptr %.pn75.i, i32 -80
  %55 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_buf.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %56, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.qspi_transfer_mode.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.qspi_transfer_mode.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qspi_transfer_mode.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_nbits.i.i = getelementptr i8, ptr %.pn75.i, i32 -40
  %57 = ptrtoint ptr %rx_nbits.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load4.i.i = load i8, ptr %rx_nbits.i.i, align 4
  %bf.clear5.i.i = and i8 %bf.load4.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear5.i.i)
  %switch.selectcmp16.i.i = icmp eq i8 %bf.clear5.i.i, 2
  %switch.select17.i.i = select i1 %switch.selectcmp16.i.i, i16 48, i16 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear5.i.i)
  %switch.selectcmp18.i.i = icmp eq i8 %bf.clear5.i.i, 4
  %switch.select19.i.i = select i1 %switch.selectcmp18.i.i, i16 80, i16 %switch.select17.i.i
  br label %qspi_transfer_mode.exit.i

qspi_transfer_mode.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.qspi_transfer_mode.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i16 [ %switch.select15.i.i, %if.then.i.i ], [ %switch.select19.i.i, %if.then3.i.i ], [ 0, %if.end.i.i.qspi_transfer_mode.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i, i16 %current_mode.072.i)
  %cmp3.i = icmp eq i16 %retval.0.i.i, %current_mode.072.i
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %qspi_transfer_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %len5.i = getelementptr i8, ptr %.pn75.i, i32 -76
  %58 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len5.i, align 4
  %add.i = add i32 %59, %len.073.i
  br label %for.inc.i

if.end.i:                                         ; preds = %qspi_transfer_mode.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.074.i)
  %tobool.not.i = icmp eq i32 %i.074.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.end9.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end9.i:                                        ; preds = %if.end.i
  %60 = shl i32 %i.074.i, 2
  %conv8.i = add i32 %60, 24
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %conv.i.i = and i32 %conv8.i, 65532
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %conv.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %len.073.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %63) #7, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.074.i)
  %cmp10.i = icmp ugt i32 %i.074.i, 3
  br i1 %cmp10.i, label %qspi_setup_sequencer.exit, label %if.end9.i.if.end13.i_crit_edge

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end9.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %64 = ptrtoint ptr %spcmd to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %spcmd, align 4
  %or60.i = or i16 %65, %retval.0.i.i
  %66 = shl nuw nsw i32 %i.074.i, 1
  %conv19.i = add nuw nsw i32 %66, 16
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %conv.i62.i = and i32 %conv19.i, 65534
  %add.ptr.i63.i = getelementptr i8, ptr %68, i32 %conv.i62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %69 = tail call i16 @llvm.bswap.i16(i16 %or60.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i63.i, i16 %69) #7, !srcloc !156
  %len20.i = getelementptr i8, ptr %.pn75.i, i32 -76
  %70 = ptrtoint ptr %len20.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len20.i, align 4
  %inc.i = add nuw nsw i32 %i.074.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %if.then.i
  %current_mode.1.i = phi i16 [ %current_mode.072.i, %if.then.i ], [ %retval.0.i.i, %if.end13.i ]
  %len.1.i = phi i32 [ %add.i, %if.then.i ], [ %71, %if.end13.i ]
  %i.1.i = phi i32 [ %i.074.i, %if.then.i ], [ %inc.i, %if.end13.i ]
  %72 = ptrtoint ptr %.pn75.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i = load ptr, ptr %.pn75.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %msg
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i)
  %tobool26.not.i = icmp eq i32 %i.1.i, 0
  br i1 %tobool26.not.i, label %for.end.i.if.end63_crit_edge, label %if.then27.i

for.end.i.if.end63_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then27.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub28.i = add i32 %i.1.i, -1
  %73 = shl i32 %sub28.i, 2
  %conv31.i = add i32 %73, 28
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %conv.i64.i = and i32 %conv31.i, 65532
  %add.ptr.i65.i = getelementptr i8, ptr %75, i32 %conv.i64.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %76 = tail call i32 @llvm.bswap.i32(i32 %len.1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %76) #7, !srcloc !154
  %conv33.i = trunc i32 %sub28.i to i8
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %78, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i66.i, i8 %conv33.i) #7, !srcloc !152
  br label %if.end63

qspi_setup_sequencer.exit:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %spi1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end63:                                         ; preds = %if.then27.i, %for.end.i.if.end63_crit_edge, %if.then57.if.end63_crit_edge, %cond.end.if.end63_crit_edge
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %82) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %84 = or i8 %83, 64
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 %84) #7, !srcloc !152
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %qspi_setup_sequencer.exit
  %retval.0 = phi i32 [ 0, %if.end63 ], [ -22, %qspi_setup_sequencer.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_unprepare_message(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %5 = and i8 %4, -65
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %5) #7, !srcloc !152
  %spcmd = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %spcmd to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %spcmd, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %12 = tail call i16 @llvm.bswap.i16(i16 %9) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %12) #7, !srcloc !156
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i7 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7, i8 0) #7, !srcloc !152
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rspi_request_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef %handler, ptr noundef %suffix, ptr noundef %dev_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i, ptr noundef %suffix) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef %handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call1, ptr noundef %dev_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_irq_mux(i32 noundef %irq, ptr noundef %_sr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_sr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_sr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %spsr1 = getelementptr inbounds %struct.rspi_data, ptr %_sr, i32 0, i32 8
  %3 = ptrtoint ptr %spsr1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %spsr1, align 2
  %4 = and i8 %2, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool12.not, label %entry.if.end14_crit_edge, label %if.then13

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %_sr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_sr, align 4
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %neg.i = xor i8 %4, -1
  %and.i = and i8 %7, %neg.i
  %8 = ptrtoint ptr %_sr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_sr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %and.i) #7, !srcloc !152
  %wait = getelementptr inbounds %struct.rspi_data, ptr %_sr, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %entry.if.end14_crit_edge
  %ret.0 = phi i32 [ 1, %if.then13 ], [ 0, %entry.if.end14_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_irq_rx(i32 noundef %irq, ptr noundef %_sr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_sr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_sr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %spsr1 = getelementptr inbounds %struct.rspi_data, ptr %_sr, i32 0, i32 8
  %3 = ptrtoint ptr %spsr1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %spsr1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not = icmp sgt i8 %2, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %_sr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_sr, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %and.i = and i8 %6, 127
  %7 = ptrtoint ptr %_sr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_sr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %and.i) #7, !srcloc !152
  %wait = getelementptr inbounds %struct.rspi_data, ptr %_sr, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_irq_tx(i32 noundef %irq, ptr noundef %_sr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_sr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_sr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %spsr1 = getelementptr inbounds %struct.rspi_data, ptr %_sr, i32 0, i32 8
  %3 = ptrtoint ptr %spsr1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %spsr1, align 2
  %4 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %_sr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_sr, align 4
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %and.i = and i8 %7, -33
  %8 = ptrtoint ptr %_sr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_sr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %and.i) #7, !srcloc !152
  %wait = getelementptr inbounds %struct.rspi_data, ptr %_sr, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rspi_request_dma(ptr noundef %dev, ptr nocapture noundef %ctlr, ptr nocapture noundef readonly %res) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true4:                                   ; preds = %land.lhs.true
  %dma_rx_id5 = getelementptr inbounds %struct.rspi_plat_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dma_rx_id5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_rx_id5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end11_crit_edge

land.lhs.true4.if.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true4.if.end11_crit_edge, %entry.if.end11_crit_edge
  %dma_tx_id.0 = phi i32 [ 0, %entry.if.end11_crit_edge ], [ %5, %land.lhs.true4.if.end11_crit_edge ]
  %dma_rx_id.0 = phi i32 [ 0, %entry.if.end11_crit_edge ], [ %7, %land.lhs.true4.if.end11_crit_edge ]
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res, align 4
  %add = add i32 %9, 4
  %call12 = tail call fastcc ptr @rspi_request_dma_chan(ptr noundef %dev, i32 noundef 1, i32 noundef %dma_tx_id.0, i32 noundef %add)
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %10 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %dma_tx, align 8
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res, align 4
  %add18 = add i32 %12, 4
  %call19 = tail call fastcc ptr @rspi_request_dma_chan(ptr noundef %dev, i32 noundef 2, i32 noundef %dma_rx_id.0, i32 noundef %add18)
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %13 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %dma_rx, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_tx, align 8
  tail call void @dma_release_channel(ptr noundef %15) #7
  %16 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dma_tx, align 8
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 24
  %17 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rspi_can_dma, ptr %can_dma, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.39) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then22, %if.end11.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -19, %if.then22 ], [ 0, %land.lhs.true4.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ -19, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rspi_release_dma(ptr nocapture noundef readonly %ctlr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 60
  %0 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %ctlr, i32 0, i32 61
  %2 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_rx, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %3) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rspi_reset_control_assert(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @reset_control_assert(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rspi_request_dma_chan(ptr noundef %dev, i32 noundef %dir, i32 noundef %id, i32 noundef %port_addr) unnamed_addr #2 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #7
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #7
  %1 = inttoptr i32 %id to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %cond = select i1 %cmp, ptr @.str.11, ptr @.str.9
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i)
  %3 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.fca.0.load, ptr %mask.i, align 4
  %call.i.i = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull %cond) #7
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool.not1.i = icmp eq ptr %call.i.i, null
  %tobool.not.i = or i1 %cmp.i.i.i, %tobool.not1.i
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %dma_request_slave_channel_compat.exit.thread27

dma_request_slave_channel_compat.exit.thread27:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool2.not.i = icmp eq i32 %id, 0
  br i1 %tobool2.not.i, label %dma_request_slave_channel_compat.exit.thread, label %dma_request_slave_channel_compat.exit

dma_request_slave_channel_compat.exit.thread:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  br label %do.end

dma_request_slave_channel_compat.exit:            ; preds = %lor.lhs.false.i
  %call5.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull @shdma_chan_filter, ptr noundef nonnull %1, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  %tobool.not = icmp eq ptr %call5.i, null
  br i1 %tobool.not, label %dma_request_slave_channel_compat.exit.do.end_crit_edge, label %dma_request_slave_channel_compat.exit.if.end_crit_edge

dma_request_slave_channel_compat.exit.if.end_crit_edge: ; preds = %dma_request_slave_channel_compat.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dma_request_slave_channel_compat.exit.do.end_crit_edge: ; preds = %dma_request_slave_channel_compat.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %dma_request_slave_channel_compat.exit.do.end_crit_edge, %dma_request_slave_channel_compat.exit.thread
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.41) #10
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
  call void @__sanitizer_cov_trace_pc() #9
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %7 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %port_addr, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  store i32 1, ptr %src_addr_width.sink, align 4
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

dmaengine_slave_config.exit:                      ; preds = %if.end3
  %call.i = call i32 %13(ptr noundef nonnull %retval.0.i30, ptr noundef nonnull %cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %dmaengine_slave_config.exit.cleanup_crit_edge, label %dmaengine_slave_config.exit.do.end9_crit_edge

dmaengine_slave_config.exit.do.end9_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end9:                                          ; preds = %dmaengine_slave_config.exit.do.end9_crit_edge, %if.end3.do.end9_crit_edge
  %retval.0.i2433 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.end9_crit_edge ], [ -38, %if.end3.do.end9_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %retval.0.i2433) #10
  call void @dma_release_channel(ptr noundef nonnull %retval.0.i30) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %dmaengine_slave_config.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end9 ], [ null, %do.end ], [ %retval.0.i30, %dmaengine_slave_config.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rspi_can_dma(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %ops.i = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %fifo_size.i = getelementptr inbounds %struct.spi_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fifo_size.i, align 4
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.i = icmp ugt i32 %3, %conv.i
  ret i1 %cmp.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @shdma_chan_filter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_set_config_register(ptr nocapture noundef %rspi, i32 noundef %access_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sppcr = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 9
  %0 = ptrtoint ptr %sppcr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sppcr, align 1
  %2 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rspi, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %1) #7, !srcloc !152
  %clk.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 6
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %5) #7
  %speed_hz.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 1
  %6 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_hz.i, align 4
  %mul.i = shl i32 %7, 1
  %add.i = add i32 %call.i, -1
  %sub.i = add i32 %mul.i, %add.i
  %div.i = udiv i32 %sub.i, %mul.i
  %spbr.047.i = add i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %spbr.047.i)
  %cmp48.i = icmp sgt i32 %spbr.047.i, 255
  br i1 %cmp48.i, label %while.body.i, label %entry.rspi_set_rate.exit_crit_edge

entry.rspi_set_rate.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rspi_set_rate.exit

while.body.i:                                     ; preds = %entry
  %sub7.i = add nuw i32 %div.i, 1
  %div8.i = sdiv i32 %sub7.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %sub7.i)
  %cmp.i = icmp sgt i32 %sub7.i, 513
  br i1 %cmp.i, label %while.body.i.1, label %while.body.i.while.end.loopexit.i_crit_edge

while.body.i.while.end.loopexit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.loopexit.i

while.body.i.1:                                   ; preds = %while.body.i
  %sub7.i.1 = add nuw nsw i32 %div8.i, 1
  %div8.i.1 = sdiv i32 %sub7.i.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %sub7.i)
  %cmp.i.1 = icmp sgt i32 %sub7.i, 1025
  br i1 %cmp.i.1, label %while.body.i.2, label %while.body.i.1.while.end.loopexit.i_crit_edge

while.body.i.1.while.end.loopexit.i_crit_edge:    ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.loopexit.i

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %sub7.i.2 = add nuw nsw i32 %div8.i.1, 1
  %div8.i.2 = sdiv i32 %sub7.i.2, 2
  br label %while.end.loopexit.i

while.end.loopexit.i:                             ; preds = %while.body.i.2, %while.body.i.1.while.end.loopexit.i_crit_edge, %while.body.i.while.end.loopexit.i_crit_edge
  %inc.i.lcssa = phi i32 [ 1, %while.body.i.while.end.loopexit.i_crit_edge ], [ 2, %while.body.i.1.while.end.loopexit.i_crit_edge ], [ 3, %while.body.i.2 ]
  %div8.i.lcssa = phi i32 [ %div8.i, %while.body.i.while.end.loopexit.i_crit_edge ], [ %div8.i.1, %while.body.i.1.while.end.loopexit.i_crit_edge ], [ %div8.i.2, %while.body.i.2 ]
  %spbr.0.i = add nsw i32 %div8.i.lcssa, -1
  br label %rspi_set_rate.exit

rspi_set_rate.exit:                               ; preds = %while.end.loopexit.i, %entry.rspi_set_rate.exit_crit_edge
  %spbr.0.in.lcssa.i = phi i32 [ %div.i, %entry.rspi_set_rate.exit_crit_edge ], [ %div8.i.lcssa, %while.end.loopexit.i ]
  %brdv.0.lcssa.i = phi i32 [ 0, %entry.rspi_set_rate.exit_crit_edge ], [ %inc.i.lcssa, %while.end.loopexit.i ]
  %spbr.0.lcssa.i = phi i32 [ %spbr.047.i, %entry.rspi_set_rate.exit_crit_edge ], [ %spbr.0.i, %while.end.loopexit.i ]
  %8 = tail call i32 @llvm.smax.i32(i32 %spbr.0.lcssa.i, i32 0) #7
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 255) #7
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rspi, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i) #7, !srcloc !152
  %spcmd.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 7
  %12 = ptrtoint ptr %spcmd.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %spcmd.i, align 4
  %brdv.0.tr.i = trunc i32 %brdv.0.lcssa.i to i16
  %14 = shl nuw nsw i16 %brdv.0.tr.i, 2
  %conv18.i = or i16 %13, %14
  store i16 %conv18.i, ptr %spcmd.i, align 4
  %shl19.i = shl nuw nsw i32 2, %brdv.0.lcssa.i
  %mul21.i = mul i32 %shl19.i, %spbr.0.in.lcssa.i
  %sub23.i = add i32 %mul21.i, %add.i
  %div27.i = udiv i32 %sub23.i, %mul21.i
  %15 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div27.i, ptr %speed_hz.i, align 4
  %16 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rspi, align 4
  %add.ptr.i16 = getelementptr i8, ptr %17, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16, i8 0) #7, !srcloc !152
  %byte_access = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 13
  %18 = ptrtoint ptr %byte_access to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %byte_access, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %byte_access, align 4
  %19 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rspi, align 4
  %add.ptr.i17 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 0) #7, !srcloc !152
  %21 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rspi, align 4
  %add.ptr.i18 = getelementptr i8, ptr %22, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18, i8 0) #7, !srcloc !152
  %23 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rspi, align 4
  %add.ptr.i19 = getelementptr i8, ptr %24, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19, i8 0) #7, !srcloc !152
  %25 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rspi, align 4
  %add.ptr.i20 = getelementptr i8, ptr %26, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i20, i8 0) #7, !srcloc !152
  %27 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rspi, align 4
  %add.ptr.i21 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i21, i8 0) #7, !srcloc !152
  %29 = ptrtoint ptr %spcmd.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %spcmd.i, align 4
  %access_size.tr = trunc i32 %access_size to i16
  %31 = shl i16 %access_size.tr, 8
  %32 = add i16 %31, 3840
  %33 = and i16 %32, 3840
  %conv1 = or i16 %30, %33
  store i16 %conv1, ptr %spcmd.i, align 4
  %34 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rspi, align 4
  %add.ptr.i22 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv1) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22, i16 %36) #7, !srcloc !156
  %37 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rspi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 8) #7, !srcloc !152
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_transfer_one(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %spi, ptr noundef %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 3
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %conv.i = zext i8 %9 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  %byte_access.i.i = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %byte_access.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %byte_access.i.i, align 4
  %11 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %13, i32 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i4.i.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i4.i.i) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i.i, %if.then.if.end.i_crit_edge
  %and3.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.rspi_receive_init.exit_crit_edge, label %if.then5.i

if.end.i.rspi_receive_init.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rspi_receive_init.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %17, i32 3
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i15.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %19 = and i8 %18, -2
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %21, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16.i, i8 %19) #7, !srcloc !152
  br label %rspi_receive_init.exit

rspi_receive_init.exit:                           ; preds = %if.then5.i, %if.end.i.rspi_receive_init.exit_crit_edge
  %22 = and i8 %4, -3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = or i8 %4, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %rspi_receive_init.exit
  %spcr.0 = phi i8 [ %22, %rspi_receive_init.exit ], [ %23, %if.else ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %spcr.0) #7, !srcloc !152
  %call5 = tail call fastcc i32 @rspi_common_transfer(ptr noundef %1, ptr noundef %xfer)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rspi_common_transfer(ptr noundef %rspi, ptr noundef %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %speed_hz = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 1
  %0 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed_hz, align 4
  %effective_speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 13
  %2 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %effective_speed_hz, align 4
  %ctlr.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 2
  %3 = ptrtoint ptr %ctlr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctlr.i, align 4
  %can_dma.i = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %can_dma.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %can_dma.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 12
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %fifo_size.i.i = getelementptr inbounds %struct.spi_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %fifo_size.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fifo_size.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i.i)
  %cmp.i.i = icmp ugt i32 %8, %conv.i.i
  br i1 %cmp.i.i, label %rspi_dma_check_then_transfer.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rspi_dma_check_then_transfer.exit:                ; preds = %lor.lhs.false.i
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %13 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_buf.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %rx_sg.i
  %call2.i = tail call fastcc i32 @rspi_dma_transfer(ptr noundef %rspi, ptr noundef %tx_sg.i, ptr noundef %spec.select.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2.i)
  %cmp.not = icmp eq i32 %call2.i, -11
  br i1 %cmp.not, label %rspi_dma_check_then_transfer.exit.if.end_crit_edge, label %rspi_dma_check_then_transfer.exit.cleanup_crit_edge

rspi_dma_check_then_transfer.exit.cleanup_crit_edge: ; preds = %rspi_dma_check_then_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rspi_dma_check_then_transfer.exit.if.end_crit_edge: ; preds = %rspi_dma_check_then_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %rspi_dma_check_then_transfer.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not54.i = icmp eq i32 %16, 0
  br i1 %cmp.not54.i, label %if.end.if.end4_crit_edge, label %while.body.lr.ph.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

while.body.lr.ph.i:                               ; preds = %if.end
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %17 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_buf, align 4
  %19 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xfer, align 4
  %byte_access.i.i.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 13
  br label %while.body.i

while.body.i:                                     ; preds = %if.end15.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec57.in.i = phi i32 [ %16, %while.body.lr.ph.i ], [ %dec57.i, %if.end15.i.while.body.i_crit_edge ]
  %rx.addr.056.i = phi ptr [ %18, %while.body.lr.ph.i ], [ %rx.addr.2.i, %if.end15.i.while.body.i_crit_edge ]
  %tx.addr.055.i = phi ptr [ %20, %while.body.lr.ph.i ], [ %tx.addr.1.i, %if.end15.i.while.body.i_crit_edge ]
  %dec57.i = add i32 %dec57.in.i, -1
  %tobool.not.i16 = icmp eq ptr %tx.addr.055.i, null
  br i1 %tobool.not.i16, label %while.body.i.if.end3.i_crit_edge, label %if.then.i

while.body.i.if.end3.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i8, ptr %tx.addr.055.i, i32 1
  %21 = ptrtoint ptr %tx.addr.055.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx.addr.055.i, align 1
  %call.i.i.i = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %rspi, i8 noundef zeroext 32, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i17 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i17, label %if.then.i.rspi_pio_transfer.exit_crit_edge, label %if.end.i.i

if.then.i.rspi_pio_transfer.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rspi_pio_transfer.exit

if.end.i.i:                                       ; preds = %if.then.i
  %23 = ptrtoint ptr %byte_access.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i.i.i = load i8, ptr %byte_access.i.i.i, align 4
  %24 = and i8 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rspi, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 %22) #7, !srcloc !152
  br label %if.end3.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i18 = zext i8 %22 to i16
  %27 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rspi, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %29 = shl nuw i16 %conv.i.i18, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4.i.i.i, i16 %29) #7, !srcloc !156
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.else.i.i.i, %if.then.i.i.i, %while.body.i.if.end3.i_crit_edge
  %tx.addr.1.i = phi ptr [ null, %while.body.i.if.end3.i_crit_edge ], [ %incdec.ptr.i, %if.then.i.i.i ], [ %incdec.ptr.i, %if.else.i.i.i ]
  %tobool4.not.i = icmp eq ptr %rx.addr.056.i, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end15.i_crit_edge, label %if.then5.i

if.end3.i.if.end15.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then5.i:                                       ; preds = %if.end3.i
  %call.i.i24.i = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %rspi, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp.i25.i = icmp slt i32 %call.i.i24.i, 0
  br i1 %cmp.i25.i, label %if.then5.i.rspi_pio_transfer.exit_crit_edge, label %if.end.i32.i

if.then5.i.rspi_pio_transfer.exit_crit_edge:      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rspi_pio_transfer.exit

if.end.i32.i:                                     ; preds = %if.then5.i
  %30 = ptrtoint ptr %byte_access.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i.i29.i = load i8, ptr %byte_access.i.i.i, align 4
  %31 = and i8 %bf.load.i.i29.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i30.i = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rspi, align 4
  %add.ptr.i4.i.i31.i = getelementptr i8, ptr %33, i32 4
  br i1 %tobool.not.i.i30.i, label %if.else.i.i34.i, label %if.then.i.i33.i

if.then.i.i33.i:                                  ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i4.i.i31.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  br label %rspi_data_in.exit.i

if.else.i.i34.i:                                  ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i4.i.i31.i) #7, !srcloc !157
  %36 = lshr i16 %35, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %extract.t52.i = trunc i16 %36 to i8
  br label %rspi_data_in.exit.i

rspi_data_in.exit.i:                              ; preds = %if.else.i.i34.i, %if.then.i.i33.i
  %retval.0.i.i.off0.i = phi i8 [ %34, %if.then.i.i33.i ], [ %extract.t52.i, %if.else.i.i34.i ]
  %incdec.ptr11.i = getelementptr i8, ptr %rx.addr.056.i, i32 1
  %37 = ptrtoint ptr %rx.addr.056.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %retval.0.i.i.off0.i, ptr %rx.addr.056.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %rspi_data_in.exit.i, %if.end3.i.if.end15.i_crit_edge
  %rx.addr.2.i = phi ptr [ null, %if.end3.i.if.end15.i_crit_edge ], [ %incdec.ptr11.i, %rspi_data_in.exit.i ]
  %cmp.not.i = icmp eq i32 %dec57.i, 0
  br i1 %cmp.not.i, label %if.end15.i.if.end4_crit_edge, label %if.end15.i.while.body.i_crit_edge

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end15.i.if.end4_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

rspi_pio_transfer.exit:                           ; preds = %if.then5.i.rspi_pio_transfer.exit_crit_edge, %if.then.i.rspi_pio_transfer.exit_crit_edge
  %.str.54.sink.i = phi ptr [ @.str.52, %if.then.i.rspi_pio_transfer.exit_crit_edge ], [ @.str.54, %if.then5.i.rspi_pio_transfer.exit_crit_edge ]
  %retval.5.ph.i = phi i32 [ %call.i.i.i, %if.then.i.rspi_pio_transfer.exit_crit_edge ], [ %call.i.i24.i, %if.then5.i.rspi_pio_transfer.exit_crit_edge ]
  %38 = ptrtoint ptr %ctlr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctlr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull %.str.54.sink.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end15.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call.i = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %rspi, i8 noundef zeroext 32, i8 noundef zeroext 32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %rspi_pio_transfer.exit, %rspi_dma_check_then_transfer.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call2.i, %rspi_dma_check_then_transfer.exit.cleanup_crit_edge ], [ %retval.5.ph.i, %rspi_pio_transfer.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rspi_dma_transfer(ptr noundef %rspi, ptr noundef readonly %tx, ptr noundef readonly %rx) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rx, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %ctlr = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 2
  %0 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_rx, align 4
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %rx, i32 0, i32 1
  %6 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nents, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.do.body154_crit_edge, label %lor.lhs.false.i

if.then.do.body154_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body154

lor.lhs.false.i:                                  ; preds = %if.then
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.body154_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.body154_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body154

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 39
  %10 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.body154_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.body154_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body154

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %11(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %7, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %dmaengine_prep_slave_sg.exit.do.body154_crit_edge, label %if.end

dmaengine_prep_slave_sg.exit.do.body154_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body154

if.end:                                           ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rspi_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rspi, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_submit.i, align 4
  %call.i239 = tail call i32 %15(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i239)
  %tobool5.not = icmp sgt i32 %call.i239, -1
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.end.no_dma_rx_crit_edge

if.end.no_dma_rx_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dma_rx

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %irq_mask.0 = phi i8 [ 0, %entry.if.end9_crit_edge ], [ -128, %if.end.if.end9_crit_edge ]
  %tobool10.not = icmp eq ptr %tx, null
  br i1 %tobool10.not, label %if.end9.if.end36_crit_edge, label %if.then11

if.end9.if.end36_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then11:                                        ; preds = %if.end9
  %ctlr12 = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 2
  %16 = ptrtoint ptr %ctlr12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctlr12, align 4
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %17, i32 0, i32 60
  %18 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_tx, align 8
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx, align 4
  %nents14 = getelementptr inbounds %struct.sg_table, ptr %tx, i32 0, i32 1
  %22 = ptrtoint ptr %nents14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nents14, align 4
  %tobool.not.i240 = icmp eq ptr %19, null
  br i1 %tobool.not.i240, label %if.then11.no_dma_tx_crit_edge, label %lor.lhs.false.i242

if.then11.no_dma_tx_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dma_tx

lor.lhs.false.i242:                               ; preds = %if.then11
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %tobool1.not.i241 = icmp eq ptr %25, null
  br i1 %tobool1.not.i241, label %lor.lhs.false.i242.no_dma_tx_crit_edge, label %lor.lhs.false2.i245

lor.lhs.false.i242.no_dma_tx_crit_edge:           ; preds = %lor.lhs.false.i242
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dma_tx

lor.lhs.false2.i245:                              ; preds = %lor.lhs.false.i242
  %device_prep_slave_sg.i243 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %device_prep_slave_sg.i243 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_prep_slave_sg.i243, align 4
  %tobool4.not.i244 = icmp eq ptr %27, null
  br i1 %tobool4.not.i244, label %lor.lhs.false2.i245.no_dma_tx_crit_edge, label %dmaengine_prep_slave_sg.exit249

lor.lhs.false2.i245.no_dma_tx_crit_edge:          ; preds = %lor.lhs.false2.i245
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dma_tx

dmaengine_prep_slave_sg.exit249:                  ; preds = %lor.lhs.false2.i245
  %call.i246 = tail call ptr %27(ptr noundef nonnull %19, ptr noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 3, ptr noundef null) #7
  %tobool16.not = icmp eq ptr %call.i246, null
  br i1 %tobool16.not, label %dmaengine_prep_slave_sg.exit249.no_dma_tx_crit_edge, label %if.end18

dmaengine_prep_slave_sg.exit249.no_dma_tx_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit249
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dma_tx

if.end18:                                         ; preds = %dmaengine_prep_slave_sg.exit249
  br i1 %tobool.not, label %if.else, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %callback_param23 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i246, i32 0, i32 8
  %28 = ptrtoint ptr %callback_param23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rspi, ptr %callback_param23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end18.if.end24_crit_edge
  %.sink = phi ptr [ @rspi_dma_complete, %if.else ], [ null, %if.end18.if.end24_crit_edge ]
  %29 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i246, i32 0, i32 6
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.sink, ptr %29, align 4
  %tx_submit.i250 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i246, i32 0, i32 4
  %31 = ptrtoint ptr %tx_submit.i250 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_submit.i250, align 4
  %call.i251 = tail call i32 %32(ptr noundef nonnull %call.i246) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i251)
  %tobool27.not = icmp sgt i32 %call.i251, -1
  br i1 %tobool27.not, label %if.then35, label %if.end24.no_dma_tx_crit_edge

if.end24.no_dma_tx_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dma_tx

if.then35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %33 = or i8 %irq_mask.0, 32
  %tx_irq = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 11
  %34 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_irq, align 4
  tail call void @disable_irq(i32 noundef %35) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end9.if.end36_crit_edge
  %irq_mask.1281 = phi i8 [ %33, %if.then35 ], [ %irq_mask.0, %if.end9.if.end36_crit_edge ]
  %other_irq.0 = phi i32 [ %35, %if.then35 ], [ 0, %if.end9.if.end36_crit_edge ]
  br i1 %tobool.not, label %if.end36.if.end41_crit_edge, label %land.lhs.true

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end36
  %rx_irq = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 10
  %36 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %other_irq.0)
  %cmp.not = icmp eq i32 %37, %other_irq.0
  br i1 %cmp.not, label %land.lhs.true.if.end41_crit_edge, label %if.then39

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @disable_irq(i32 noundef %37) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true.if.end41_crit_edge, %if.end36.if.end41_crit_edge
  %38 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rspi, align 4
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %39) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %or4.i = or i8 %40, %irq_mask.1281
  %41 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rspi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 %or4.i) #7, !srcloc !152
  %dma_callbacked = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 13
  %43 = ptrtoint ptr %dma_callbacked to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %dma_callbacked, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %dma_callbacked, align 4
  br i1 %tobool.not, label %if.end41.if.end46_crit_edge, label %if.then43

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %ctlr44 = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 2
  %44 = ptrtoint ptr %ctlr44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctlr44, align 4
  %dma_rx45 = getelementptr inbounds %struct.spi_controller, ptr %45, i32 0, i32 61
  %46 = ptrtoint ptr %dma_rx45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_rx45, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 50
  %50 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %51(ptr noundef %47) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end41.if.end46_crit_edge
  br i1 %tobool10.not, label %if.end46.if.end51_crit_edge, label %if.then48

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %ctlr49 = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 2
  %52 = ptrtoint ptr %ctlr49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctlr49, align 4
  %dma_tx50 = getelementptr inbounds %struct.spi_controller, ptr %53, i32 0, i32 60
  %54 = ptrtoint ptr %dma_tx50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_tx50, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %device_issue_pending.i252 = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 50
  %58 = ptrtoint ptr %device_issue_pending.i252 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_issue_pending.i252, align 4
  tail call void %59(ptr noundef %55) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end46.if.end51_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 613) #7
  %60 = ptrtoint ptr %dma_callbacked to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load56 = load i8, ptr %dma_callbacked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load56)
  %tobool57.not = icmp sgt i8 %bf.load56, -1
  br i1 %tobool57.not, label %if.then68, label %if.end51.if.end132_crit_edge

if.end51.if.end132_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then68:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %61 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %wait = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 4
  %call70304 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %62 = ptrtoint ptr %dma_callbacked to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load73305 = load i8, ptr %dma_callbacked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load73305)
  %tobool76.not306 = icmp slt i8 %bf.load73305, 0
  br i1 %tobool76.not306, label %if.then68.for.end_crit_edge, label %if.then68.if.end94_crit_edge

if.then68.if.end94_crit_edge:                     ; preds = %if.then68
  br label %if.end94

if.then68.for.end_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end94:                                         ; preds = %cleanup.if.end94_crit_edge, %if.then68.if.end94_crit_edge
  %__ret69.1309 = phi i32 [ %__ret69.1, %cleanup.if.end94_crit_edge ], [ 100, %if.then68.if.end94_crit_edge ]
  %call70308 = phi i32 [ %call70, %cleanup.if.end94_crit_edge ], [ %call70304, %if.then68.if.end94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70308)
  %tobool95.not = icmp eq i32 %call70308, 0
  br i1 %tobool95.not, label %cleanup, label %if.end94.if.end101_crit_edge

if.end94.if.end101_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

cleanup:                                          ; preds = %if.end94
  %call98 = call i32 @schedule_timeout(i32 noundef %__ret69.1309) #7
  %call70 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %63 = ptrtoint ptr %dma_callbacked to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load73 = load i8, ptr %dma_callbacked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load73)
  %tobool76.not = icmp sgt i8 %bf.load73, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool81.not = icmp eq i32 %call98, 0
  %spec.store.select172 = select i1 %tobool81.not, i32 1, i32 %call98
  %__ret69.1 = select i1 %tobool76.not, i32 %call98, i32 %spec.store.select172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret69.1)
  %tobool88.not = icmp eq i32 %__ret69.1, 0
  %not.tobool76.not = xor i1 %tobool76.not, true
  %64 = select i1 %not.tobool76.not, i1 true, i1 %tobool88.not
  br i1 %64, label %cleanup.for.end_crit_edge, label %cleanup.if.end94_crit_edge

cleanup.if.end94_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then68.for.end_crit_edge
  %__ret69.1.lcssa = phi i32 [ 100, %if.then68.for.end_crit_edge ], [ %__ret69.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  br label %if.end101

if.end101:                                        ; preds = %for.end, %if.end94.if.end101_crit_edge
  %__ret69.2284 = phi i32 [ %__ret69.1.lcssa, %for.end ], [ %call70308, %if.end94.if.end101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret69.2284)
  %cmp103 = icmp sgt i32 %__ret69.2284, 0
  br i1 %cmp103, label %land.lhs.true105, label %if.else112

land.lhs.true105:                                 ; preds = %if.end101
  %65 = ptrtoint ptr %dma_callbacked to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load107.pr = load i8, ptr %dma_callbacked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load107.pr)
  %tobool110.not = icmp sgt i8 %bf.load107.pr, -1
  br i1 %tobool110.not, label %land.lhs.true105.if.end119_crit_edge, label %land.lhs.true105.if.end132_crit_edge

land.lhs.true105.if.end132_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

land.lhs.true105.if.end119_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.else112:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret69.2284)
  %tobool113.not = icmp eq i32 %__ret69.2284, 0
  br i1 %tobool113.not, label %do.end117, label %if.else112.if.end119_crit_edge

if.else112.if.end119_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

do.end117:                                        ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #9
  %ctlr118 = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 2
  %66 = ptrtoint ptr %ctlr118 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctlr118, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.46) #10
  br label %if.end119

if.end119:                                        ; preds = %do.end117, %if.else112.if.end119_crit_edge, %land.lhs.true105.if.end119_crit_edge
  %ret.0 = phi i32 [ %__ret69.2284, %if.else112.if.end119_crit_edge ], [ -110, %do.end117 ], [ %__ret69.2284, %land.lhs.true105.if.end119_crit_edge ]
  br i1 %tobool10.not, label %if.end119.if.end125_crit_edge, label %if.then121

if.end119.if.end125_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then121:                                       ; preds = %if.end119
  %ctlr122 = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 2
  %68 = ptrtoint ptr %ctlr122 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctlr122, align 4
  %dma_tx123 = getelementptr inbounds %struct.spi_controller, ptr %69, i32 0, i32 60
  %70 = ptrtoint ptr %dma_tx123 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_tx123, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 47
  %74 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %if.then121.if.end125_crit_edge, label %dmaengine_terminate_async.exit.i

if.then121.if.end125_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

dmaengine_terminate_async.exit.i:                 ; preds = %if.then121
  %call.i.i = call i32 %75(ptr noundef %71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i253 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i253, label %if.end.i254, label %dmaengine_terminate_async.exit.i.if.end125_crit_edge

dmaengine_terminate_async.exit.i.if.end125_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.end.i254:                                      ; preds = %dmaengine_terminate_async.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.51, i32 noundef 1169) #7
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %71, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %77, i32 0, i32 48
  %78 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %79, null
  br i1 %tobool.not.i1.i, label %if.end.i254.if.end125_crit_edge, label %if.then.i2.i

if.end.i254.if.end125_crit_edge:                  ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then.i2.i:                                     ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #9
  call void %79(ptr noundef %71) #7
  br label %if.end125

if.end125:                                        ; preds = %if.then.i2.i, %if.end.i254.if.end125_crit_edge, %dmaengine_terminate_async.exit.i.if.end125_crit_edge, %if.then121.if.end125_crit_edge, %if.end119.if.end125_crit_edge
  br i1 %tobool.not, label %if.end125.if.end132_crit_edge, label %if.then127

if.end125.if.end132_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then127:                                       ; preds = %if.end125
  %ctlr128 = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 2
  %80 = ptrtoint ptr %ctlr128 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctlr128, align 4
  %dma_rx129 = getelementptr inbounds %struct.spi_controller, ptr %81, i32 0, i32 61
  %82 = ptrtoint ptr %dma_rx129 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dma_rx129, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %device_terminate_all.i.i255 = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 47
  %86 = ptrtoint ptr %device_terminate_all.i.i255 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device_terminate_all.i.i255, align 4
  %tobool.not.i.i256 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i256, label %if.then127.if.end132_crit_edge, label %dmaengine_terminate_async.exit.i259

if.then127.if.end132_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

dmaengine_terminate_async.exit.i259:              ; preds = %if.then127
  %call.i.i257 = call i32 %87(ptr noundef %83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i257)
  %tobool.not.i258 = icmp eq i32 %call.i.i257, 0
  br i1 %tobool.not.i258, label %if.end.i262, label %dmaengine_terminate_async.exit.i259.if.end132_crit_edge

dmaengine_terminate_async.exit.i259.if.end132_crit_edge: ; preds = %dmaengine_terminate_async.exit.i259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.end.i262:                                      ; preds = %dmaengine_terminate_async.exit.i259
  call void @__might_sleep(ptr noundef nonnull @.str.51, i32 noundef 1169) #7
  %88 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %83, align 4
  %device_synchronize.i.i260 = getelementptr inbounds %struct.dma_device, ptr %89, i32 0, i32 48
  %90 = ptrtoint ptr %device_synchronize.i.i260 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device_synchronize.i.i260, align 4
  %tobool.not.i1.i261 = icmp eq ptr %91, null
  br i1 %tobool.not.i1.i261, label %if.end.i262.if.end132_crit_edge, label %if.then.i2.i263

if.end.i262.if.end132_crit_edge:                  ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then.i2.i263:                                  ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #9
  call void %91(ptr noundef %83) #7
  br label %if.end132

if.end132:                                        ; preds = %if.then.i2.i263, %if.end.i262.if.end132_crit_edge, %dmaengine_terminate_async.exit.i259.if.end132_crit_edge, %if.then127.if.end132_crit_edge, %if.end125.if.end132_crit_edge, %land.lhs.true105.if.end132_crit_edge, %if.end51.if.end132_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end125.if.end132_crit_edge ], [ 0, %land.lhs.true105.if.end132_crit_edge ], [ %ret.0, %if.then127.if.end132_crit_edge ], [ %ret.0, %dmaengine_terminate_async.exit.i259.if.end132_crit_edge ], [ %ret.0, %if.end.i262.if.end132_crit_edge ], [ %ret.0, %if.then.i2.i263 ], [ 0, %if.end51.if.end132_crit_edge ]
  %92 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rspi, align 4
  %94 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %93) #7, !srcloc !149
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %neg.i = xor i8 %irq_mask.1281, -1
  %and.i = and i8 %94, %neg.i
  %95 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rspi, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %96, i8 %and.i) #7, !srcloc !152
  br i1 %tobool10.not, label %if.end132.if.end136_crit_edge, label %if.then134

if.end132.if.end136_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then134:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  %tx_irq135 = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 11
  %97 = ptrtoint ptr %tx_irq135 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_irq135, align 4
  call void @enable_irq(i32 noundef %98) #7
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.end132.if.end136_crit_edge
  br i1 %tobool.not, label %if.end136.cleanup166_crit_edge, label %land.lhs.true138

if.end136.cleanup166_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup166

land.lhs.true138:                                 ; preds = %if.end136
  %rx_irq139 = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 10
  %99 = ptrtoint ptr %rx_irq139 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_irq139, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %other_irq.0)
  %cmp140.not = icmp eq i32 %100, %other_irq.0
  br i1 %cmp140.not, label %land.lhs.true138.cleanup166_crit_edge, label %if.then142

land.lhs.true138.cleanup166_crit_edge:            ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup166

if.then142:                                       ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #9
  call void @enable_irq(i32 noundef %100) #7
  br label %cleanup166

no_dma_tx:                                        ; preds = %if.end24.no_dma_tx_crit_edge, %dmaengine_prep_slave_sg.exit249.no_dma_tx_crit_edge, %lor.lhs.false2.i245.no_dma_tx_crit_edge, %lor.lhs.false.i242.no_dma_tx_crit_edge, %if.then11.no_dma_tx_crit_edge
  %ret.2 = phi i32 [ -11, %dmaengine_prep_slave_sg.exit249.no_dma_tx_crit_edge ], [ %call.i251, %if.end24.no_dma_tx_crit_edge ], [ -11, %lor.lhs.false2.i245.no_dma_tx_crit_edge ], [ -11, %lor.lhs.false.i242.no_dma_tx_crit_edge ], [ -11, %if.then11.no_dma_tx_crit_edge ]
  br i1 %tobool.not, label %no_dma_tx.no_dma_rx_crit_edge, label %if.then146

no_dma_tx.no_dma_rx_crit_edge:                    ; preds = %no_dma_tx
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dma_rx

if.then146:                                       ; preds = %no_dma_tx
  %101 = ptrtoint ptr %ctlr12 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ctlr12, align 4
  %dma_rx148 = getelementptr inbounds %struct.spi_controller, ptr %102, i32 0, i32 61
  %103 = ptrtoint ptr %dma_rx148 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma_rx148, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %device_terminate_all.i.i265 = getelementptr inbounds %struct.dma_device, ptr %106, i32 0, i32 47
  %107 = ptrtoint ptr %device_terminate_all.i.i265 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device_terminate_all.i.i265, align 4
  %tobool.not.i.i266 = icmp eq ptr %108, null
  br i1 %tobool.not.i.i266, label %if.then146.no_dma_rx_crit_edge, label %dmaengine_terminate_async.exit.i269

if.then146.no_dma_rx_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dma_rx

dmaengine_terminate_async.exit.i269:              ; preds = %if.then146
  %call.i.i267 = tail call i32 %108(ptr noundef %104) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i267)
  %tobool.not.i268 = icmp eq i32 %call.i.i267, 0
  br i1 %tobool.not.i268, label %if.end.i272, label %dmaengine_terminate_async.exit.i269.no_dma_rx_crit_edge

dmaengine_terminate_async.exit.i269.no_dma_rx_crit_edge: ; preds = %dmaengine_terminate_async.exit.i269
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dma_rx

if.end.i272:                                      ; preds = %dmaengine_terminate_async.exit.i269
  tail call void @__might_sleep(ptr noundef nonnull @.str.51, i32 noundef 1169) #7
  %109 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %104, align 4
  %device_synchronize.i.i270 = getelementptr inbounds %struct.dma_device, ptr %110, i32 0, i32 48
  %111 = ptrtoint ptr %device_synchronize.i.i270 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device_synchronize.i.i270, align 4
  %tobool.not.i1.i271 = icmp eq ptr %112, null
  br i1 %tobool.not.i1.i271, label %if.end.i272.no_dma_rx_crit_edge, label %if.then.i2.i273

if.end.i272.no_dma_rx_crit_edge:                  ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dma_rx

if.then.i2.i273:                                  ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %112(ptr noundef %104) #7
  br label %no_dma_rx

no_dma_rx:                                        ; preds = %if.then.i2.i273, %if.end.i272.no_dma_rx_crit_edge, %dmaengine_terminate_async.exit.i269.no_dma_rx_crit_edge, %if.then146.no_dma_rx_crit_edge, %no_dma_tx.no_dma_rx_crit_edge, %if.end.no_dma_rx_crit_edge
  %ret.3 = phi i32 [ %ret.2, %no_dma_tx.no_dma_rx_crit_edge ], [ %call.i239, %if.end.no_dma_rx_crit_edge ], [ %ret.2, %if.then146.no_dma_rx_crit_edge ], [ %ret.2, %dmaengine_terminate_async.exit.i269.no_dma_rx_crit_edge ], [ %ret.2, %if.end.i272.no_dma_rx_crit_edge ], [ %ret.2, %if.then.i2.i273 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.3)
  %cmp151 = icmp eq i32 %ret.3, -11
  br i1 %cmp151, label %no_dma_rx.do.body154_crit_edge, label %no_dma_rx.cleanup166_crit_edge

no_dma_rx.cleanup166_crit_edge:                   ; preds = %no_dma_rx
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup166

no_dma_rx.do.body154_crit_edge:                   ; preds = %no_dma_rx
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body154

do.body154:                                       ; preds = %no_dma_rx.do.body154_crit_edge, %dmaengine_prep_slave_sg.exit.do.body154_crit_edge, %lor.lhs.false2.i.do.body154_crit_edge, %lor.lhs.false.i.do.body154_crit_edge, %if.then.do.body154_crit_edge
  %.b238 = load i1, ptr @rspi_dma_transfer.__print_once, align 1
  br i1 %.b238, label %do.body154.cleanup166_crit_edge, label %if.then156

do.body154.cleanup166_crit_edge:                  ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup166

if.then156:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rspi_dma_transfer.__print_once, align 1
  %ctlr160 = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 2
  %113 = ptrtoint ptr %ctlr160 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ctlr160, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %114, ptr noundef nonnull @.str.49) #10
  br label %cleanup166

cleanup166:                                       ; preds = %if.then156, %do.body154.cleanup166_crit_edge, %no_dma_rx.cleanup166_crit_edge, %if.then142, %land.lhs.true138.cleanup166_crit_edge, %if.end136.cleanup166_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.then142 ], [ %ret.1, %land.lhs.true138.cleanup166_crit_edge ], [ %ret.1, %if.end136.cleanup166_crit_edge ], [ -11, %do.body154.cleanup166_crit_edge ], [ -11, %if.then156 ], [ %ret.3, %no_dma_rx.cleanup166_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rspi_dma_complete(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_callbacked = getelementptr inbounds %struct.rspi_data, ptr %arg, i32 0, i32 13
  %0 = ptrtoint ptr %dma_callbacked to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dma_callbacked, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %dma_callbacked, align 4
  %wait = getelementptr inbounds %struct.rspi_data, ptr %arg, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rspi_wait_for_interrupt(ptr noundef %rspi, i8 noundef zeroext %wait_mask, i8 noundef zeroext %enable_bit) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rspi, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %spsr = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 8
  %3 = ptrtoint ptr %spsr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %spsr, align 2
  %and81 = and i8 %2, %wait_mask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and81)
  %tobool.not = icmp eq i8 %and81, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup61_crit_edge

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup61

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rspi, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %or4.i = or i8 %6, %enable_bit
  %7 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rspi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %or4.i) #7, !srcloc !152
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 469) #7
  %9 = ptrtoint ptr %spsr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %spsr, align 2
  %and982 = and i8 %10, %wait_mask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and982)
  %tobool10.not = icmp eq i8 %and982, 0
  br i1 %tobool10.not, label %if.then20, label %if.end.if.end60_crit_edge

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then20:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %wait = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 4
  %call2291 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %12 = ptrtoint ptr %spsr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %spsr, align 2
  %and278392 = and i8 %13, %wait_mask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and278392)
  %tobool28.not93.not = icmp eq i8 %and278392, 0
  br i1 %tobool28.not93.not, label %if.then20.cleanup_crit_edge, label %if.end50.thread

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  br label %cleanup

if.end50.thread:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end60

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then20.cleanup_crit_edge
  %__ret21.195 = phi i32 [ %__ret21.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then20.cleanup_crit_edge ]
  %call47 = call i32 @schedule_timeout(i32 noundef %__ret21.195) #7
  %call22 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %14 = ptrtoint ptr %spsr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %spsr, align 2
  %and2783 = and i8 %15, %wait_mask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2783)
  %tobool28.not = icmp eq i8 %and2783, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool33.not = icmp eq i32 %call47, 0
  %spec.store.select62 = select i1 %tobool33.not, i32 1, i32 %call47
  %__ret21.1 = select i1 %tobool28.not, i32 %call47, i32 %spec.store.select62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.1)
  %tobool40.not = icmp eq i32 %__ret21.1, 0
  %not.tobool28.not = xor i1 %tobool28.not, true
  %16 = select i1 %not.tobool28.not, i1 true, i1 %tobool40.not
  br i1 %16, label %if.end50, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.1)
  %phi.cmp = icmp eq i32 %__ret21.1, 0
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %land.lhs.true53, label %if.end50.if.end60_crit_edge

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

land.lhs.true53:                                  ; preds = %if.end50
  %17 = ptrtoint ptr %spsr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %spsr, align 2
  %and5784 = and i8 %18, %wait_mask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and5784)
  %tobool58.not = icmp eq i8 %and5784, 0
  br i1 %tobool58.not, label %land.lhs.true53.cleanup61_crit_edge, label %land.lhs.true53.if.end60_crit_edge

land.lhs.true53.if.end60_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

land.lhs.true53.cleanup61_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup61

if.end60:                                         ; preds = %land.lhs.true53.if.end60_crit_edge, %if.end50.if.end60_crit_edge, %if.end50.thread, %if.end.if.end60_crit_edge
  br label %cleanup61

cleanup61:                                        ; preds = %if.end60, %land.lhs.true53.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ 0, %if.end60 ], [ 0, %entry.cleanup61_crit_edge ], [ -110, %land.lhs.true53.cleanup61_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_rz_set_config_register(ptr nocapture noundef %rspi, i32 noundef %access_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sppcr = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 9
  %0 = ptrtoint ptr %sppcr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sppcr, align 1
  %2 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rspi, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %1) #7, !srcloc !152
  %clk.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 6
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %5) #7
  %speed_hz.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 1
  %6 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_hz.i, align 4
  %mul.i = shl i32 %7, 1
  %add.i = add i32 %call.i, -1
  %sub.i = add i32 %mul.i, %add.i
  %div.i = udiv i32 %sub.i, %mul.i
  %spbr.047.i = add i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %spbr.047.i)
  %cmp48.i = icmp sgt i32 %spbr.047.i, 255
  br i1 %cmp48.i, label %while.body.i, label %entry.rspi_set_rate.exit_crit_edge

entry.rspi_set_rate.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rspi_set_rate.exit

while.body.i:                                     ; preds = %entry
  %sub7.i = add nuw i32 %div.i, 1
  %div8.i = sdiv i32 %sub7.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %sub7.i)
  %cmp.i = icmp sgt i32 %sub7.i, 513
  br i1 %cmp.i, label %while.body.i.1, label %while.body.i.while.end.loopexit.i_crit_edge

while.body.i.while.end.loopexit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.loopexit.i

while.body.i.1:                                   ; preds = %while.body.i
  %sub7.i.1 = add nuw nsw i32 %div8.i, 1
  %div8.i.1 = sdiv i32 %sub7.i.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %sub7.i)
  %cmp.i.1 = icmp sgt i32 %sub7.i, 1025
  br i1 %cmp.i.1, label %while.body.i.2, label %while.body.i.1.while.end.loopexit.i_crit_edge

while.body.i.1.while.end.loopexit.i_crit_edge:    ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.loopexit.i

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %sub7.i.2 = add nuw nsw i32 %div8.i.1, 1
  %div8.i.2 = sdiv i32 %sub7.i.2, 2
  br label %while.end.loopexit.i

while.end.loopexit.i:                             ; preds = %while.body.i.2, %while.body.i.1.while.end.loopexit.i_crit_edge, %while.body.i.while.end.loopexit.i_crit_edge
  %inc.i.lcssa = phi i32 [ 1, %while.body.i.while.end.loopexit.i_crit_edge ], [ 2, %while.body.i.1.while.end.loopexit.i_crit_edge ], [ 3, %while.body.i.2 ]
  %div8.i.lcssa = phi i32 [ %div8.i, %while.body.i.while.end.loopexit.i_crit_edge ], [ %div8.i.1, %while.body.i.1.while.end.loopexit.i_crit_edge ], [ %div8.i.2, %while.body.i.2 ]
  %spbr.0.i = add nsw i32 %div8.i.lcssa, -1
  br label %rspi_set_rate.exit

rspi_set_rate.exit:                               ; preds = %while.end.loopexit.i, %entry.rspi_set_rate.exit_crit_edge
  %spbr.0.in.lcssa.i = phi i32 [ %div.i, %entry.rspi_set_rate.exit_crit_edge ], [ %div8.i.lcssa, %while.end.loopexit.i ]
  %brdv.0.lcssa.i = phi i32 [ 0, %entry.rspi_set_rate.exit_crit_edge ], [ %inc.i.lcssa, %while.end.loopexit.i ]
  %spbr.0.lcssa.i = phi i32 [ %spbr.047.i, %entry.rspi_set_rate.exit_crit_edge ], [ %spbr.0.i, %while.end.loopexit.i ]
  %8 = tail call i32 @llvm.smax.i32(i32 %spbr.0.lcssa.i, i32 0) #7
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 255) #7
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rspi, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i) #7, !srcloc !152
  %spcmd.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 7
  %12 = ptrtoint ptr %spcmd.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %spcmd.i, align 4
  %brdv.0.tr.i = trunc i32 %brdv.0.lcssa.i to i16
  %14 = shl nuw nsw i16 %brdv.0.tr.i, 2
  %conv18.i = or i16 %13, %14
  store i16 %conv18.i, ptr %spcmd.i, align 4
  %shl19.i = shl nuw nsw i32 2, %brdv.0.lcssa.i
  %mul21.i = mul i32 %shl19.i, %spbr.0.in.lcssa.i
  %sub23.i = add i32 %mul21.i, %add.i
  %div27.i = udiv i32 %sub23.i, %mul21.i
  %15 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div27.i, ptr %speed_hz.i, align 4
  %16 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rspi, align 4
  %add.ptr.i15 = getelementptr i8, ptr %17, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15, i8 32) #7, !srcloc !152
  %byte_access = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 13
  %18 = ptrtoint ptr %byte_access to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %byte_access, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %byte_access, align 4
  %19 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rspi, align 4
  %add.ptr.i16 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16, i8 0) #7, !srcloc !152
  %21 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rspi, align 4
  %add.ptr.i17 = getelementptr i8, ptr %22, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 0) #7, !srcloc !152
  %23 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rspi, align 4
  %add.ptr.i18 = getelementptr i8, ptr %24, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18, i8 0) #7, !srcloc !152
  %25 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rspi, align 4
  %add.ptr.i19 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19, i8 0) #7, !srcloc !152
  %27 = ptrtoint ptr %spcmd.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %spcmd.i, align 4
  %access_size.tr = trunc i32 %access_size to i16
  %29 = shl i16 %access_size.tr, 8
  %30 = add i16 %29, 3840
  %31 = and i16 %30, 3840
  %conv1 = or i16 %28, %31
  store i16 %conv1, ptr %spcmd.i, align 4
  %32 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rspi, align 4
  %add.ptr.i20 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv1) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i20, i16 %34) #7, !srcloc !156
  %35 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rspi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 8) #7, !srcloc !152
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_rz_transfer_one(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %spi, ptr noundef %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 3
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %conv.i.i = zext i8 %4 to i32
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  %byte_access.i.i.i = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %byte_access.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i.i = load i8, ptr %byte_access.i.i.i, align 4
  %6 = and i8 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i.i = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %8, i32 4
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i4.i.i.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  br label %if.end.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i4.i.i.i) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i.i, %if.then.i.i.i, %entry.if.end.i.i_crit_edge
  %and3.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.rspi_rz_receive_init.exit_crit_edge, label %if.then5.i.i

if.end.i.i.rspi_rz_receive_init.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rspi_rz_receive_init.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %12, i32 3
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i15.i.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %14 = and i8 %13, -2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %16, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16.i.i, i8 %14) #7, !srcloc !152
  br label %rspi_rz_receive_init.exit

rspi_rz_receive_init.exit:                        ; preds = %if.then5.i.i, %if.end.i.i.rspi_rz_receive_init.exit_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 -64) #7, !srcloc !152
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i, i8 0) #7, !srcloc !152
  %call1 = tail call fastcc i32 @rspi_common_transfer(ptr noundef %1, ptr noundef %xfer)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qspi_set_config_register(ptr nocapture noundef %rspi, i32 noundef %access_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sppcr = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 9
  %0 = ptrtoint ptr %sppcr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sppcr, align 1
  %2 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rspi, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %1) #7, !srcloc !152
  %clk = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %5) #7
  %speed_hz = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 1
  %6 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call)
  %cmp.not = icmp ult i32 %7, %call
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  %mul = shl i32 %7, 1
  %add = add i32 %call, -1
  %sub = add i32 %add, %mul
  %div = udiv i32 %sub, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div)
  %cmp5106 = icmp sgt i32 %div, 255
  br i1 %cmp5106, label %while.body, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.else
  %sub8 = add nuw i32 %div, 1
  %div9 = sdiv i32 %sub8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %sub8)
  %cmp5 = icmp sgt i32 %sub8, 511
  br i1 %cmp5, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %sub8.1 = add nuw nsw i32 %div9, 1
  %div9.1 = sdiv i32 %sub8.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1021, i32 %sub8)
  %cmp5.1 = icmp sgt i32 %sub8, 1021
  br i1 %cmp5.1, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.2 = add nuw nsw i32 %div9.1, 1
  %div9.2 = sdiv i32 %sub8.2, 2
  br label %while.end

while.end:                                        ; preds = %while.body.2, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %if.else.while.end_crit_edge
  %spbr.0.lcssa = phi i32 [ %div, %if.else.while.end_crit_edge ], [ %div9, %while.body.while.end_crit_edge ], [ %div9.1, %while.body.1.while.end_crit_edge ], [ %div9.2, %while.body.2 ]
  %brdv.0.lcssa = phi i32 [ 0, %if.else.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 3, %while.body.2 ]
  %8 = tail call i32 @llvm.smax.i32(i32 %spbr.0.lcssa, i32 0)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 255)
  %shl = shl nuw nsw i32 2, %brdv.0.lcssa
  %mul17 = mul nuw nsw i32 %shl, %9
  %sub19 = add i32 %add, %mul17
  %div22 = udiv i32 %sub19, %mul17
  %phi.cast = trunc i32 %9 to i8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %div22, %while.end ], [ %call, %entry.if.end_crit_edge ]
  %spbr.1 = phi i8 [ %phi.cast, %while.end ], [ 0, %entry.if.end_crit_edge ]
  %brdv.1 = phi i32 [ %brdv.0.lcssa, %while.end ], [ 0, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %speed_hz, align 4
  %11 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rspi, align 4
  %add.ptr.i96 = getelementptr i8, ptr %12, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i96, i8 %spbr.1) #7, !srcloc !152
  %spcmd = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 7
  %13 = ptrtoint ptr %spcmd to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %spcmd, align 4
  %brdv.1.tr = trunc i32 %brdv.1 to i16
  %15 = shl nuw nsw i16 %brdv.1.tr, 2
  %conv26 = or i16 %14, %15
  store i16 %conv26, ptr %spcmd, align 4
  %16 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rspi, align 4
  %add.ptr.i97 = getelementptr i8, ptr %17, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i97, i8 0) #7, !srcloc !152
  %byte_access = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 13
  %18 = ptrtoint ptr %byte_access to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %byte_access, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %byte_access, align 4
  %19 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rspi, align 4
  %add.ptr.i98 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i98, i8 0) #7, !srcloc !152
  %21 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rspi, align 4
  %add.ptr.i99 = getelementptr i8, ptr %22, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i99, i8 0) #7, !srcloc !152
  %23 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rspi, align 4
  %add.ptr.i100 = getelementptr i8, ptr %24, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i100, i8 0) #7, !srcloc !152
  %25 = zext i32 %access_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %access_size, label %if.else42 [
    i32 8, label %if.end.if.end48_crit_edge
    i32 16, label %if.end.if.end48.sink.split_crit_edge
  ]

if.end.if.end48.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.sink.split

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.else42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.else42, %if.end.if.end48.sink.split_crit_edge
  %.sink111 = phi i16 [ 512, %if.else42 ], [ 256, %if.end.if.end48.sink.split_crit_edge ]
  %26 = ptrtoint ptr %spcmd to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %spcmd, align 4
  %28 = or i16 %27, %.sink111
  store i16 %28, ptr %spcmd, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %if.end.if.end48_crit_edge
  %29 = ptrtoint ptr %spcmd to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %spcmd, align 4
  %31 = or i16 %30, -8192
  store i16 %31, ptr %spcmd, align 4
  %32 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rspi, align 4
  %add.ptr.i101 = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 0) #7, !srcloc !154
  %34 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rspi, align 4
  %add.ptr.i102 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i102, i8 -64) #7, !srcloc !152
  %36 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rspi, align 4
  %add.ptr.i103 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i103, i8 0) #7, !srcloc !152
  %38 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rspi, align 4
  %add.ptr.i104 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i104, i8 0) #7, !srcloc !152
  %40 = ptrtoint ptr %spcmd to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %spcmd, align 4
  %42 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rspi, align 4
  %add.ptr.i105 = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %44 = tail call i16 @llvm.bswap.i16(i16 %41) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i105, i16 %44) #7, !srcloc !156
  %45 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rspi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 8) #7, !srcloc !152
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qspi_transfer_one(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readonly %spi, ptr noundef %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %speed_hz = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_hz, align 4
  %effective_speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 13
  %4 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %effective_speed_hz, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @qspi_transfer_out_in(ptr noundef %1, ptr noundef %xfer)
  br label %cleanup

if.else:                                          ; preds = %entry
  %tx_nbits = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %7 = ptrtoint ptr %tx_nbits to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %tx_nbits, align 4
  %8 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %if.else4, label %if.then2

if.then2:                                         ; preds = %if.else
  %9 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %ctlr.i = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %ctlr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctlr.i, align 4
  %can_dma.i = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %can_dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %can_dma.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then2.if.end4.i_crit_edge, label %land.lhs.true.i

if.then2.if.end4.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.then2
  %ops.i.i = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %fifo_size.i.i = getelementptr inbounds %struct.spi_ops, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %fifo_size.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %fifo_size.i.i, align 4
  %conv.i.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.i.i)
  %cmp.i.i = icmp ugt i32 %12, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i, label %land.lhs.true.i.if.end4.i_crit_edge

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %call2.i = tail call fastcc i32 @rspi_dma_transfer(ptr noundef %1, ptr noundef %tx_sg.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, -11
  br i1 %cmp.not.i, label %if.then.i.while.body.lr.ph.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.while.body.lr.ph.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

if.end4.i:                                        ; preds = %land.lhs.true.i.if.end4.i_crit_edge, %if.then2.if.end4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.not41.i = icmp eq i32 %12, 0
  br i1 %cmp5.not41.i, label %if.end4.i.while.end.i_crit_edge, label %if.end4.i.while.body.lr.ph.i_crit_edge

if.end4.i.while.body.lr.ph.i_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end4.i.while.body.lr.ph.i_crit_edge, %if.then.i.while.body.lr.ph.i_crit_edge
  %byte_access.i.i = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 13
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %n.043.i = phi i32 [ %12, %while.body.lr.ph.i ], [ %sub.i, %for.end.i.while.body.i_crit_edge ]
  %tx.042.i = phi ptr [ %10, %while.body.lr.ph.i ], [ %incdec.ptr.i, %for.end.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %n.043.i)
  %cmp1.i.i = icmp ugt i32 %n.043.i, 31
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %22, i32 24
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %or2.i.i.i = or i8 %23, 48
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr.i3.i.i.i = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i.i.i, i8 %or2.i.i.i) #7, !srcloc !152
  br label %qspi_set_send_trigger.exit.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i7.i.i = and i8 %23, -49
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i3.i8.i.i = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i8.i.i, i8 %and.i7.i.i) #7, !srcloc !152
  br label %qspi_set_send_trigger.exit.i

qspi_set_send_trigger.exit.i:                     ; preds = %if.else.i.i, %if.then.i.i
  %28 = tail call i32 @llvm.umin.i32(i32 %n.043.i, i32 32) #7
  %call.i.i = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %1, i8 noundef zeroext 32, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i, label %do.end.i, label %qspi_set_send_trigger.exit.i.for.body.i_crit_edge

qspi_set_send_trigger.exit.i.for.body.i_crit_edge: ; preds = %qspi_set_send_trigger.exit.i
  br label %for.body.i

do.end.i:                                         ; preds = %qspi_set_send_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %ctlr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctlr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.52) #10
  br label %cleanup

for.body.i:                                       ; preds = %rspi_write_data.exit.i.for.body.i_crit_edge, %qspi_set_send_trigger.exit.i.for.body.i_crit_edge
  %i.040.i = phi i32 [ %inc.i, %rspi_write_data.exit.i.for.body.i_crit_edge ], [ 0, %qspi_set_send_trigger.exit.i.for.body.i_crit_edge ]
  %tx.139.i = phi ptr [ %incdec.ptr.i, %rspi_write_data.exit.i.for.body.i_crit_edge ], [ %tx.042.i, %qspi_set_send_trigger.exit.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %tx.139.i, i32 1
  %31 = ptrtoint ptr %tx.139.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tx.139.i, align 1
  %33 = ptrtoint ptr %byte_access.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i = load i8, ptr %byte_access.i.i, align 4
  %34 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %if.else.i36.i, label %if.then.i35.i

if.then.i35.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %32) #7, !srcloc !152
  br label %rspi_write_data.exit.i

if.else.i36.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %32 to i16
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %39 = shl nuw i16 %conv.i, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4.i.i, i16 %39) #7, !srcloc !156
  br label %rspi_write_data.exit.i

rspi_write_data.exit.i:                           ; preds = %if.else.i36.i, %if.then.i35.i
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %for.end.i, label %rspi_write_data.exit.i.for.body.i_crit_edge

rspi_write_data.exit.i.for.body.i_crit_edge:      ; preds = %rspi_write_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %rspi_write_data.exit.i
  %sub.i = sub i32 %n.043.i, %28
  %cmp5.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp5.not.i, label %for.end.i.while.end.i_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

for.end.i.while.end.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %for.end.i.while.end.i_crit_edge, %if.end4.i.while.end.i_crit_edge
  %call.i37.i = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %1, i8 noundef zeroext 32, i8 noundef zeroext 32) #7
  br label %cleanup

if.else4:                                         ; preds = %if.else
  %bf.clear6 = and i8 %bf.load, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear6)
  %cmp8.not = icmp eq i8 %bf.clear6, 0
  br i1 %cmp8.not, label %if.else11, label %if.then9

if.then9:                                         ; preds = %if.else4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %40 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_buf.i, align 4
  %len.i23 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %42 = ptrtoint ptr %len.i23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i23, align 4
  %ctlr.i24 = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %ctlr.i24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctlr.i24, align 4
  %can_dma.i25 = getelementptr inbounds %struct.spi_controller, ptr %45, i32 0, i32 24
  %46 = ptrtoint ptr %can_dma.i25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %can_dma.i25, align 4
  %tobool.not.i26 = icmp eq ptr %47, null
  br i1 %tobool.not.i26, label %if.then9.if.end4.i36_crit_edge, label %land.lhs.true.i31

if.then9.if.end4.i36_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i36

land.lhs.true.i31:                                ; preds = %if.then9
  %ops.i.i27 = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 12
  %48 = ptrtoint ptr %ops.i.i27 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i27, align 4
  %fifo_size.i.i28 = getelementptr inbounds %struct.spi_ops, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %fifo_size.i.i28 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %fifo_size.i.i28, align 4
  %conv.i.i29 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv.i.i29)
  %cmp.i.i30 = icmp ugt i32 %43, %conv.i.i29
  br i1 %cmp.i.i30, label %if.then.i34, label %land.lhs.true.i31.if.end4.i36_crit_edge

land.lhs.true.i31.if.end4.i36_crit_edge:          ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i36

if.then.i34:                                      ; preds = %land.lhs.true.i31
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %call2.i32 = tail call fastcc i32 @rspi_dma_transfer(ptr noundef %1, ptr noundef null, ptr noundef %rx_sg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2.i32)
  %cmp.not.i33 = icmp eq i32 %call2.i32, -11
  br i1 %cmp.not.i33, label %if.then.i34.while.body.lr.ph.i38_crit_edge, label %if.then.i34.cleanup_crit_edge

if.then.i34.cleanup_crit_edge:                    ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i34.while.body.lr.ph.i38_crit_edge:       ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i38

if.end4.i36:                                      ; preds = %land.lhs.true.i31.if.end4.i36_crit_edge, %if.then9.if.end4.i36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp5.not41.i35 = icmp eq i32 %43, 0
  br i1 %cmp5.not41.i35, label %if.end4.i36.cleanup_crit_edge, label %if.end4.i36.while.body.lr.ph.i38_crit_edge

if.end4.i36.while.body.lr.ph.i38_crit_edge:       ; preds = %if.end4.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i38

if.end4.i36.cleanup_crit_edge:                    ; preds = %if.end4.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph.i38:                             ; preds = %if.end4.i36.while.body.lr.ph.i38_crit_edge, %if.then.i34.while.body.lr.ph.i38_crit_edge
  %byte_access.i.i37 = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 13
  br label %while.body.i42

while.body.i42:                                   ; preds = %for.end.i64.while.body.i42_crit_edge, %while.body.lr.ph.i38
  %n.043.i39 = phi i32 [ %43, %while.body.lr.ph.i38 ], [ %sub.i62, %for.end.i64.while.body.i42_crit_edge ]
  %rx.042.i = phi ptr [ %41, %while.body.lr.ph.i38 ], [ %incdec.ptr.i59, %for.end.i64.while.body.i42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %n.043.i39)
  %cmp1.i.i40 = icmp ugt i32 %n.043.i39, 31
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i.i41 = getelementptr i8, ptr %53, i32 24
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i.i41) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp1.i.i40, label %if.then.i.i45, label %if.else.i.i48

if.then.i.i45:                                    ; preds = %while.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  %or2.i.i.i43 = or i8 %54, 7
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %add.ptr.i3.i.i.i44 = getelementptr i8, ptr %56, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i.i.i44, i8 %or2.i.i.i43) #7, !srcloc !152
  br label %qspi_set_receive_trigger.exit.i

if.else.i.i48:                                    ; preds = %while.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  %and.i7.i.i46 = and i8 %54, -8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %add.ptr.i3.i8.i.i47 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i8.i.i47, i8 %and.i7.i.i46) #7, !srcloc !152
  br label %qspi_set_receive_trigger.exit.i

qspi_set_receive_trigger.exit.i:                  ; preds = %if.else.i.i48, %if.then.i.i45
  %59 = tail call i32 @llvm.umin.i32(i32 %n.043.i39, i32 32) #7
  %call.i.i49 = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %1, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp8.i50 = icmp slt i32 %call.i.i49, 0
  br i1 %cmp8.i50, label %do.end.i51, label %qspi_set_receive_trigger.exit.i.for.body.i56_crit_edge

qspi_set_receive_trigger.exit.i.for.body.i56_crit_edge: ; preds = %qspi_set_receive_trigger.exit.i
  br label %for.body.i56

do.end.i51:                                       ; preds = %qspi_set_receive_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %ctlr.i24 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctlr.i24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.54) #10
  br label %cleanup

for.body.i56:                                     ; preds = %rspi_read_data.exit.i.for.body.i56_crit_edge, %qspi_set_receive_trigger.exit.i.for.body.i56_crit_edge
  %i.040.i52 = phi i32 [ %inc.i60, %rspi_read_data.exit.i.for.body.i56_crit_edge ], [ 0, %qspi_set_receive_trigger.exit.i.for.body.i56_crit_edge ]
  %rx.139.i = phi ptr [ %incdec.ptr.i59, %rspi_read_data.exit.i.for.body.i56_crit_edge ], [ %rx.042.i, %qspi_set_receive_trigger.exit.i.for.body.i56_crit_edge ]
  %62 = ptrtoint ptr %byte_access.i.i37 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i.i53 = load i8, ptr %byte_access.i.i37, align 4
  %63 = and i8 %bf.load.i.i53, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i54 = icmp eq i8 %63, 0
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %add.ptr.i4.i.i55 = getelementptr i8, ptr %65, i32 4
  br i1 %tobool.not.i.i54, label %if.else.i36.i58, label %if.then.i35.i57

if.then.i35.i57:                                  ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #9
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i4.i.i55) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  br label %rspi_read_data.exit.i

if.else.i36.i58:                                  ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #9
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i4.i.i55) #7, !srcloc !157
  %68 = lshr i16 %67, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %extract.t37.i = trunc i16 %68 to i8
  br label %rspi_read_data.exit.i

rspi_read_data.exit.i:                            ; preds = %if.else.i36.i58, %if.then.i35.i57
  %retval.0.i.off0.i = phi i8 [ %66, %if.then.i35.i57 ], [ %extract.t37.i, %if.else.i36.i58 ]
  %incdec.ptr.i59 = getelementptr i8, ptr %rx.139.i, i32 1
  %69 = ptrtoint ptr %rx.139.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %retval.0.i.off0.i, ptr %rx.139.i, align 1
  %inc.i60 = add nuw nsw i32 %i.040.i52, 1
  %exitcond.not.i61 = icmp eq i32 %inc.i60, %59
  br i1 %exitcond.not.i61, label %for.end.i64, label %rspi_read_data.exit.i.for.body.i56_crit_edge

rspi_read_data.exit.i.for.body.i56_crit_edge:     ; preds = %rspi_read_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i56

for.end.i64:                                      ; preds = %rspi_read_data.exit.i
  %sub.i62 = sub i32 %n.043.i39, %59
  %cmp5.not.i63 = icmp eq i32 %sub.i62, 0
  br i1 %cmp5.not.i63, label %for.end.i64.cleanup_crit_edge, label %for.end.i64.while.body.i42_crit_edge

for.end.i64.while.body.i42_crit_edge:             ; preds = %for.end.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i42

for.end.i64.cleanup_crit_edge:                    ; preds = %for.end.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else11:                                        ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call fastcc i32 @qspi_transfer_out_in(ptr noundef %1, ptr noundef %xfer)
  br label %cleanup

cleanup:                                          ; preds = %if.else11, %for.end.i64.cleanup_crit_edge, %do.end.i51, %if.end4.i36.cleanup_crit_edge, %if.then.i34.cleanup_crit_edge, %while.end.i, %do.end.i, %if.then.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call12, %if.else11 ], [ %call.i.i, %do.end.i ], [ 0, %while.end.i ], [ %call2.i, %if.then.i.cleanup_crit_edge ], [ %call.i.i49, %do.end.i51 ], [ %call2.i32, %if.then.i34.cleanup_crit_edge ], [ 0, %if.end4.i36.cleanup_crit_edge ], [ 0, %for.end.i64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qspi_transfer_out_in(ptr noundef %rspi, ptr noundef %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rspi, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not.i = icmp sgt i8 %2, -1
  br i1 %tobool.not.i, label %entry.qspi_receive_init.exit_crit_edge, label %if.then.i

entry.qspi_receive_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qspi_receive_init.exit

if.then.i:                                        ; preds = %entry
  %byte_access.i.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 13
  %3 = ptrtoint ptr %byte_access.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i.i = load i8, ptr %byte_access.i.i, align 4
  %4 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rspi, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %6, i32 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i4.i.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  br label %qspi_receive_init.exit

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i4.i.i) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  br label %qspi_receive_init.exit

qspi_receive_init.exit:                           ; preds = %if.else.i.i, %if.then.i.i, %entry.qspi_receive_init.exit_crit_edge
  %9 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rspi, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5.i, i8 -64) #7, !srcloc !152
  %11 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rspi, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6.i, i8 0) #7, !srcloc !152
  %ctlr.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 2
  %13 = ptrtoint ptr %ctlr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctlr.i, align 4
  %can_dma.i = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %can_dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %can_dma.i, align 4
  %tobool.not.i8 = icmp eq ptr %16, null
  br i1 %tobool.not.i8, label %qspi_receive_init.exit.if.end_crit_edge, label %lor.lhs.false.i

qspi_receive_init.exit.if.end_crit_edge:          ; preds = %qspi_receive_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %qspi_receive_init.exit
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 12
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %fifo_size.i.i = getelementptr inbounds %struct.spi_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %fifo_size.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fifo_size.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv.i.i)
  %cmp.i.i = icmp ugt i32 %18, %conv.i.i
  br i1 %cmp.i.i, label %rspi_dma_check_then_transfer.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rspi_dma_check_then_transfer.exit:                ; preds = %lor.lhs.false.i
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %23 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_buf.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %rx_sg.i
  %call2.i = tail call fastcc i32 @rspi_dma_transfer(ptr noundef %rspi, ptr noundef %tx_sg.i, ptr noundef %spec.select.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2.i)
  %cmp.not = icmp eq i32 %call2.i, -11
  br i1 %cmp.not, label %rspi_dma_check_then_transfer.exit.if.end_crit_edge, label %rspi_dma_check_then_transfer.exit.cleanup_crit_edge

rspi_dma_check_then_transfer.exit.cleanup_crit_edge: ; preds = %rspi_dma_check_then_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rspi_dma_check_then_transfer.exit.if.end_crit_edge: ; preds = %rspi_dma_check_then_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %rspi_dma_check_then_transfer.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %qspi_receive_init.exit.if.end_crit_edge
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not71.i = icmp eq i32 %26, 0
  br i1 %cmp.not71.i, label %if.end.cleanup_crit_edge, label %while.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %27 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_buf, align 4
  %29 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xfer, align 4
  %byte_access.i.i9 = getelementptr inbounds %struct.rspi_data, ptr %rspi, i32 0, i32 13
  br label %while.body.i

while.body.i:                                     ; preds = %for.end24.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %len.addr.074.i = phi i32 [ %26, %while.body.lr.ph.i ], [ %sub.i, %for.end24.i.while.body.i_crit_edge ]
  %rx.addr.073.i = phi ptr [ %28, %while.body.lr.ph.i ], [ %incdec.ptr21.i, %for.end24.i.while.body.i_crit_edge ]
  %tx.addr.072.i = phi ptr [ %30, %while.body.lr.ph.i ], [ %incdec.ptr.i, %for.end24.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %len.addr.074.i)
  %cmp1.i.i = icmp ugt i32 %len.addr.074.i, 31
  %31 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rspi, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 24
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp1.i.i, label %if.then.i.i10, label %if.else.i.i11

if.then.i.i10:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %or2.i.i.i = or i8 %33, 48
  %34 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rspi, align 4
  %add.ptr.i3.i.i.i = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i.i.i, i8 %or2.i.i.i) #7, !srcloc !152
  br label %qspi_set_send_trigger.exit.i

if.else.i.i11:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i7.i.i = and i8 %33, -49
  %36 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rspi, align 4
  %add.ptr.i3.i8.i.i = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i8.i.i, i8 %and.i7.i.i) #7, !srcloc !152
  br label %qspi_set_send_trigger.exit.i

qspi_set_send_trigger.exit.i:                     ; preds = %if.else.i.i11, %if.then.i.i10
  %38 = tail call i32 @llvm.umin.i32(i32 %len.addr.074.i, i32 32) #7
  %39 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rspi, align 4
  %add.ptr.i.i.i46.i = getelementptr i8, ptr %40, i32 24
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i46.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp1.i.i, label %if.then.i49.i, label %if.else.i52.i

if.then.i49.i:                                    ; preds = %qspi_set_send_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %or2.i.i47.i = or i8 %41, 7
  %42 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rspi, align 4
  %add.ptr.i3.i.i48.i = getelementptr i8, ptr %43, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i.i48.i, i8 %or2.i.i47.i) #7, !srcloc !152
  br label %qspi_set_receive_trigger.exit.i

if.else.i52.i:                                    ; preds = %qspi_set_send_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i7.i50.i = and i8 %41, -8
  %44 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rspi, align 4
  %add.ptr.i3.i8.i51.i = getelementptr i8, ptr %45, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i8.i51.i, i8 %and.i7.i50.i) #7, !srcloc !152
  br label %qspi_set_receive_trigger.exit.i

qspi_set_receive_trigger.exit.i:                  ; preds = %if.else.i52.i, %if.then.i49.i
  %call.i.i = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %rspi, i8 noundef zeroext 32, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %qspi_set_receive_trigger.exit.i.cleanup.sink.split.i_crit_edge, label %qspi_set_receive_trigger.exit.i.for.body.i_crit_edge

qspi_set_receive_trigger.exit.i.for.body.i_crit_edge: ; preds = %qspi_set_receive_trigger.exit.i
  br label %for.body.i

qspi_set_receive_trigger.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %qspi_set_receive_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

for.body.i:                                       ; preds = %rspi_write_data.exit.i.for.body.i_crit_edge, %qspi_set_receive_trigger.exit.i.for.body.i_crit_edge
  %i.066.i = phi i32 [ %inc.i, %rspi_write_data.exit.i.for.body.i_crit_edge ], [ 0, %qspi_set_receive_trigger.exit.i.for.body.i_crit_edge ]
  %tx.addr.165.i = phi ptr [ %incdec.ptr.i, %rspi_write_data.exit.i.for.body.i_crit_edge ], [ %tx.addr.072.i, %qspi_set_receive_trigger.exit.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %tx.addr.165.i, i32 1
  %46 = ptrtoint ptr %tx.addr.165.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tx.addr.165.i, align 1
  %48 = ptrtoint ptr %byte_access.i.i9 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i.i12 = load i8, ptr %byte_access.i.i9, align 4
  %49 = and i8 %bf.load.i.i12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i13 = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i13, label %if.else.i54.i, label %if.then.i53.i

if.then.i53.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rspi, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %47) #7, !srcloc !152
  br label %rspi_write_data.exit.i

if.else.i54.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %47 to i16
  %52 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rspi, align 4
  %add.ptr.i4.i.i14 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %54 = shl nuw i16 %conv.i, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4.i.i14, i16 %54) #7, !srcloc !156
  br label %rspi_write_data.exit.i

rspi_write_data.exit.i:                           ; preds = %if.else.i54.i, %if.then.i53.i
  %inc.i = add nuw nsw i32 %i.066.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %38
  br i1 %exitcond.not.i, label %for.end.i, label %rspi_write_data.exit.i.for.body.i_crit_edge

rspi_write_data.exit.i.for.body.i_crit_edge:      ; preds = %rspi_write_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %rspi_write_data.exit.i
  %call.i55.i = tail call fastcc i32 @rspi_wait_for_interrupt(ptr noundef %rspi, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %cmp6.i = icmp slt i32 %call.i55.i, 0
  br i1 %cmp6.i, label %for.end.i.cleanup.sink.split.i_crit_edge, label %for.end.i.for.body18.i_crit_edge

for.end.i.for.body18.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body18.i

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

for.body18.i:                                     ; preds = %rspi_read_data.exit.i.for.body18.i_crit_edge, %for.end.i.for.body18.i_crit_edge
  %i.169.i = phi i32 [ %inc23.i, %rspi_read_data.exit.i.for.body18.i_crit_edge ], [ 0, %for.end.i.for.body18.i_crit_edge ]
  %rx.addr.168.i = phi ptr [ %incdec.ptr21.i, %rspi_read_data.exit.i.for.body18.i_crit_edge ], [ %rx.addr.073.i, %for.end.i.for.body18.i_crit_edge ]
  %55 = ptrtoint ptr %byte_access.i.i9 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i57.i = load i8, ptr %byte_access.i.i9, align 4
  %56 = and i8 %bf.load.i57.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i58.i = icmp eq i8 %56, 0
  %57 = ptrtoint ptr %rspi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rspi, align 4
  %add.ptr.i4.i59.i = getelementptr i8, ptr %58, i32 4
  br i1 %tobool.not.i58.i, label %if.else.i61.i, label %if.then.i60.i

if.then.i60.i:                                    ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i4.i59.i) #7, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  br label %rspi_read_data.exit.i

if.else.i61.i:                                    ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i4.i59.i) #7, !srcloc !157
  %61 = lshr i16 %60, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %extract.t62.i = trunc i16 %61 to i8
  br label %rspi_read_data.exit.i

rspi_read_data.exit.i:                            ; preds = %if.else.i61.i, %if.then.i60.i
  %retval.0.i.off0.i = phi i8 [ %59, %if.then.i60.i ], [ %extract.t62.i, %if.else.i61.i ]
  %incdec.ptr21.i = getelementptr i8, ptr %rx.addr.168.i, i32 1
  %62 = ptrtoint ptr %rx.addr.168.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %retval.0.i.off0.i, ptr %rx.addr.168.i, align 1
  %inc23.i = add nuw nsw i32 %i.169.i, 1
  %exitcond78.not.i = icmp eq i32 %inc23.i, %38
  br i1 %exitcond78.not.i, label %for.end24.i, label %rspi_read_data.exit.i.for.body18.i_crit_edge

rspi_read_data.exit.i.for.body18.i_crit_edge:     ; preds = %rspi_read_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i

for.end24.i:                                      ; preds = %rspi_read_data.exit.i
  %sub.i = sub i32 %len.addr.074.i, %38
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %for.end24.i.cleanup_crit_edge, label %for.end24.i.while.body.i_crit_edge

for.end24.i.while.body.i_crit_edge:               ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

for.end24.i.cleanup_crit_edge:                    ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %for.end.i.cleanup.sink.split.i_crit_edge, %qspi_set_receive_trigger.exit.i.cleanup.sink.split.i_crit_edge
  %.str.54.sink.i = phi ptr [ @.str.52, %qspi_set_receive_trigger.exit.i.cleanup.sink.split.i_crit_edge ], [ @.str.54, %for.end.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i, %qspi_set_receive_trigger.exit.i.cleanup.sink.split.i_crit_edge ], [ %call.i55.i, %for.end.i.cleanup.sink.split.i_crit_edge ]
  %63 = ptrtoint ptr %ctlr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctlr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull %.str.54.sink.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %for.end24.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rspi_dma_check_then_transfer.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %rspi_dma_check_then_transfer.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ 0, %for.end24.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ctlr = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlr, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %3) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rspi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ctlr = getelementptr inbounds %struct.rspi_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlr, align 4
  %call1 = tail call i32 @spi_controller_resume(ptr noundef %3) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !123, !124, !126, !127, !129, !130, !131, !133, !134, !135, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__initcall__kmod_spi_rspi__251_1450_rspi_driver_init6, !1, !"__initcall__kmod_spi_rspi__251_1450_rspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-rspi.c", i32 1450, i32 1}
!2 = !{ptr @__exitcall_rspi_driver_exit, !1, !"__exitcall_rspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description252, !4, !"__UNIQUE_ID_description252", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-rspi.c", i32 1452, i32 1}
!5 = !{ptr @__UNIQUE_ID_file253, !6, !"__UNIQUE_ID_file253", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-rspi.c", i32 1453, i32 1}
!7 = !{ptr @__UNIQUE_ID_license254, !6, !"__UNIQUE_ID_license254", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author255, !9, !"__UNIQUE_ID_author255", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-rspi.c", i32 1454, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-rspi.c", i32 1445, i32 11}
!12 = !{ptr @rspi_driver, !13, !"rspi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-rspi.c", i32 1440, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-rspi.c", i32 1330, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rspi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rspi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @rspi_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-rspi.c", i32 1338, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rspi_probe.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/spi/spi-rspi.c", i32 1339, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-rspi.c", i32 1357, i32 47}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-rspi.c", i32 1359, i32 48}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-rspi.c", i32 1366, i32 39}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-rspi.c", i32 1384, i32 3}
!36 = !{ptr @rspi_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rspi_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-rspi.c", i32 1390, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rspi_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rspi_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-rspi.c", i32 1394, i32 3}
!45 = !{ptr @rspi_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rspi_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-rspi.c", i32 1398, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rspi_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rspi_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-rspi.c", i32 1241, i32 45}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-rspi.c", i32 1243, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rspi_parse_dt._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @rspi_parse_dt._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-rspi.c", i32 1252, i32 11}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-rspi.c", i32 1256, i32 3}
!63 = !{ptr @rspi_parse_dt._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rspi_parse_dt._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-rspi.c", i32 1262, i32 3}
!67 = !{ptr @rspi_parse_dt._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rspi_parse_dt._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-rspi.c", i32 924, i32 4}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @qspi_setup_sequencer._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @qspi_setup_sequencer._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-rspi.c", i32 1280, i32 53}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-rspi.c", i32 1162, i32 2}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rspi_request_dma._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @rspi_request_dma._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/spi/spi-rspi.c", i32 1106, i32 3}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rspi_request_dma_chan._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @rspi_request_dma_chan._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-rspi.c", i32 1122, i32 3}
!88 = !{ptr @rspi_request_dma_chan._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @rspi_request_dma_chan._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @rspi_of_match, !91, !"rspi_of_match", i1 false, i1 false}
!91 = !{!"../drivers/spi/spi-rspi.c", i32 1217, i32 34}
!92 = !{ptr @rspi_ops, !93, !"rspi_ops", i1 false, i1 false}
!93 = !{!"../drivers/spi/spi-rspi.c", i32 1184, i32 29}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-rspi.c", i32 618, i32 4}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rspi_dma_transfer._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @rspi_dma_transfer._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"__print_once", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-rspi.c", i32 641, i32 3}
!101 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rspi_dma_transfer._entry.48, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @rspi_dma_transfer._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/spi/spi-rspi.c", i32 490, i32 3}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rspi_data_out._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @rspi_data_out._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/spi/spi-rspi.c", i32 504, i32 3}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rspi_data_in._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @rspi_data_in._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @rspi_rz_ops, !117, !"rspi_rz_ops", i1 false, i1 false}
!117 = !{!"../drivers/spi/spi-rspi.c", i32 1194, i32 29}
!118 = !{ptr @qspi_ops, !119, !"qspi_ops", i1 false, i1 false}
!119 = !{!"../drivers/spi/spi-rspi.c", i32 1204, i32 29}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/spi/spi-rspi.c", i32 763, i32 4}
!122 = !{ptr @qspi_trigger_transfer_out_in._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @qspi_trigger_transfer_out_in._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @qspi_trigger_transfer_out_in._entry.57, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/spi/spi-rspi.c", i32 771, i32 4}
!126 = !{ptr @qspi_trigger_transfer_out_in._entry_ptr.58, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-rspi.c", i32 815, i32 4}
!129 = !{ptr @qspi_transfer_out._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @qspi_transfer_out._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/spi/spi-rspi.c", i32 847, i32 4}
!133 = !{ptr @qspi_transfer_in._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @qspi_transfer_in._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @rspi_pm_ops, !136, !"rspi_pm_ops", i1 false, i1 false}
!136 = !{!"../drivers/spi/spi-rspi.c", i32 1434, i32 8}
!137 = !{ptr @spi_driver_ids, !138, !"spi_driver_ids", i1 false, i1 false}
!138 = !{!"../drivers/spi/spi-rspi.c", i32 1412, i32 40}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"auto-init"}
!149 = !{i64 4652223}
!150 = !{i64 2152191568}
!151 = !{i64 2152193173}
!152 = !{i64 4651828}
!153 = !{i64 2152194147}
!154 = !{i64 4652025}
!155 = !{i64 2152193597}
!156 = !{i64 4651405}
!157 = !{i64 4651605}
!158 = !{i64 2152192180}
