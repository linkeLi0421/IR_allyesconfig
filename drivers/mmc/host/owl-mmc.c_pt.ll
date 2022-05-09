; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/owl-mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/owl-mmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.owl_mmc_host = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.spinlock, i32, i32, i8, i32, ptr, ptr, %struct.dma_slave_config, %struct.completion, ptr, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_owl_mmc__278_699_owl_mmc_driver_init6 = internal global ptr @owl_mmc_driver_init, section ".initcall6.init", align 4
@owl_mmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @owl_mmc_probe, ptr @owl_mmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @owl_mmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_owl_mmc_driver_exit = internal global ptr @owl_mmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description279 = internal constant [56 x i8] c"owl_mmc.description=Actions Semi Owl SoCs SD/MMC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author280 = internal constant [28 x i8] c"owl_mmc.author=Actions Semi\00", section ".modinfo", align 1
@__UNIQUE_ID_author281 = internal constant [72 x i8] c"owl_mmc.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file282 = internal constant [38 x i8] c"owl_mmc.file=drivers/mmc/host/owl-mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [20 x i8] c"owl_mmc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"owl_mmc\00", [24 x i8] zeroinitializer }, align 32
@owl_mmc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,owl-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@owl_mmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 571, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmc alloc host failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"owl_mmc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mmc/host/owl-mmc.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@owl_mmc_probe._entry_ptr = internal global ptr @owl_mmc_probe._entry, section ".printk_index", align 4
@owl_mmc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&owl_host->lock\00", [16 x i8] zeroinitializer }, align 32
@owl_mmc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 590, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No clock defined\0A\00", [46 x i8] zeroinitializer }, align 32
@owl_mmc_probe._entry_ptr.9 = internal global ptr @owl_mmc_probe._entry.7, section ".printk_index", align 4
@owl_mmc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 597, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@owl_mmc_probe._entry_ptr.12 = internal global ptr @owl_mmc_probe._entry.10, section ".printk_index", align 4
@owl_mmc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @owl_mmc_request, ptr null, ptr @owl_mmc_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr null, ptr null, ptr null, ptr @owl_mmc_start_signal_voltage_switch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmc\00", [28 x i8] zeroinitializer }, align 32
@owl_mmc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 625, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get external DMA channel.\0A\00", [59 x i8] zeroinitializer }, align 32
@owl_mmc_probe._entry_ptr.16 = internal global ptr @owl_mmc_probe._entry.14, section ".printk_index", align 4
@owl_mmc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 631, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Using %s for DMA transfers\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@owl_mmc_probe._entry_ptr.20 = internal global ptr @owl_mmc_probe._entry.17, section ".printk_index", align 4
@owl_mmc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@owl_mmc_probe._entry_ptr.23 = internal global ptr @owl_mmc_probe._entry.21, section ".printk_index", align 4
@owl_mmc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 655, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to add host\0A\00", [44 x i8] zeroinitializer }, align 32
@owl_mmc_probe._entry_ptr.26 = internal global ptr @owl_mmc_probe._entry.24, section ".printk_index", align 4
@owl_mmc_probe.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.27, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Owl MMC Controller Initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@owl_mmc_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CMD interrupt timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"owl_mmc_request\00", [16 x i8] zeroinitializer }, align 32
@owl_mmc_request._entry_ptr = internal global ptr @owl_mmc_request._entry, section ".printk_index", align 4
@owl_mmc_request._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 371, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DMA interrupt timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@owl_mmc_request._entry_ptr.32 = internal global ptr @owl_mmc_request._entry.30, section ".printk_index", align 4
@owl_mmc_prepare_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't prepare slave sg\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"owl_mmc_prepare_data\00", [43 x i8] zeroinitializer }, align 32
@owl_mmc_prepare_data._entry_ptr = internal global ptr @owl_mmc_prepare_data._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@owl_mmc_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 216, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown MMC command\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"owl_mmc_send_cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@owl_mmc_send_cmd._entry_ptr = internal global ptr @owl_mmc_send_cmd._entry, section ".printk_index", align 4
@owl_mmc_send_cmd._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.37, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@owl_mmc_send_cmd._entry_ptr.40 = internal global ptr @owl_mmc_send_cmd._entry.39, section ".printk_index", align 4
@owl_mmc_send_cmd._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Error CMD_NO_RSP\0A\00", [46 x i8] zeroinitializer }, align 32
@owl_mmc_send_cmd._entry_ptr.43 = internal global ptr @owl_mmc_send_cmd._entry.41, section ".printk_index", align 4
@owl_mmc_send_cmd._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.3, i32 263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error CMD_RSP_CRC\0A\00", [45 x i8] zeroinitializer }, align 32
@owl_mmc_send_cmd._entry_ptr.46 = internal global ptr @owl_mmc_send_cmd._entry.44, section ".printk_index", align 4
@owl_mmc_set_ios.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"owl_mmc_set_ios\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Powering card up\0A\00", [46 x i8] zeroinitializer }, align 32
@owl_mmc_set_ios.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.49, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Powering card on\0A\00", [46 x i8] zeroinitializer }, align 32
@owl_mmc_set_ios.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.50, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Powering card off\0A\00", [45 x i8] zeroinitializer }, align 32
@owl_mmc_set_ios.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.51, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Ignoring unknown card power state\0A\00", [61 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@owl_mmc_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.52, ptr @.str.3, i32 479, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"owl_mmc_power_on\00", [47 x i8] zeroinitializer }, align 32
@owl_mmc_power_on._entry_ptr = internal global ptr @owl_mmc_power_on._entry, section ".printk_index", align 4
@owl_mmc_set_clk_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SD clock rate not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"owl_mmc_set_clk_rate\00", [43 x i8] zeroinitializer }, align 32
@owl_mmc_set_clk_rate._entry_ptr = internal global ptr @owl_mmc_set_clk_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 21, i64 29]
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"owl_mmc_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 690, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 692, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"owl_mmc_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 684, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 571, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 579, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 590, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 597, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"owl_mmc_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 554, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 623, i32 47 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 625, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 630, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 648, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 655, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 659, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 363, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 371, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 326, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 87, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 216, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 248, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 257, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 263, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 490, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 501, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 507, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 513, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 479, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [30 x i8] c"../drivers/mmc/host/owl-mmc.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 416, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author280, ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file282, ptr @__UNIQUE_ID_license283, ptr @__exitcall_owl_mmc_driver_exit, ptr @__initcall__kmod_owl_mmc__278_699_owl_mmc_driver_init6, ptr @owl_mmc_driver_exit, ptr @owl_mmc_power_on._entry, ptr @owl_mmc_power_on._entry_ptr, ptr @owl_mmc_prepare_data._entry, ptr @owl_mmc_prepare_data._entry_ptr, ptr @owl_mmc_probe._entry, ptr @owl_mmc_probe._entry.10, ptr @owl_mmc_probe._entry.14, ptr @owl_mmc_probe._entry.17, ptr @owl_mmc_probe._entry.21, ptr @owl_mmc_probe._entry.24, ptr @owl_mmc_probe._entry.7, ptr @owl_mmc_probe._entry_ptr, ptr @owl_mmc_probe._entry_ptr.12, ptr @owl_mmc_probe._entry_ptr.16, ptr @owl_mmc_probe._entry_ptr.20, ptr @owl_mmc_probe._entry_ptr.23, ptr @owl_mmc_probe._entry_ptr.26, ptr @owl_mmc_probe._entry_ptr.9, ptr @owl_mmc_request._entry, ptr @owl_mmc_request._entry.30, ptr @owl_mmc_request._entry_ptr, ptr @owl_mmc_request._entry_ptr.32, ptr @owl_mmc_send_cmd._entry, ptr @owl_mmc_send_cmd._entry.39, ptr @owl_mmc_send_cmd._entry.41, ptr @owl_mmc_send_cmd._entry.44, ptr @owl_mmc_send_cmd._entry_ptr, ptr @owl_mmc_send_cmd._entry_ptr.40, ptr @owl_mmc_send_cmd._entry_ptr.43, ptr @owl_mmc_send_cmd._entry_ptr.46, ptr @owl_mmc_set_clk_rate._entry, ptr @owl_mmc_set_clk_rate._entry_ptr, ptr @owl_mmc_driver, ptr @.str, ptr @owl_mmc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @owl_mmc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @owl_mmc_ops, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @init_completion.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_request._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_prepare_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_send_cmd._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_send_cmd._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_send_cmd._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mmc_set_clk_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_mmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @owl_mmc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @owl_mmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @owl_mmc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_mmc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @mmc_alloc_host(i32 noundef 260, ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %private.i, align 4
  %mmc5 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 5, i32 1
  %2 = ptrtoint ptr %mmc5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %mmc5, align 4
  %lock = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @owl_mmc_probe.__key, i16 noundef signext 3) #5
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call10) #5
  %base = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call12 to i32
  br label %err_free_host

if.end18:                                         ; preds = %if.end
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %clk, align 4
  %cmp.i183 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %err_free_host

if.end30:                                         ; preds = %if.end18
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %reset = getelementptr inbounds %struct.owl_mmc_host, ptr %private.i, i32 0, i32 1
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %reset, align 4
  %cmp.i184 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %do.end38, label %if.end42

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %err_free_host

if.end42:                                         ; preds = %if.end30
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @owl_mmc_ops, ptr %ops, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %14 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %max_blk_count, align 128
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %15 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 512, ptr %max_blk_size, align 4
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 21
  %16 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 256, ptr %max_segs, align 4
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %17 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 262144, ptr %max_seg_size, align 16
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %18 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 262144, ptr %max_req_size, align 8
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 5
  %19 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 100000, ptr %f_min, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 6
  %20 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 52000000, ptr %f_max, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 16
  %21 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps, align 32
  %or = or i32 %22, 7
  store i32 %or, ptr %caps, align 32
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 17
  %23 = ptrtoint ptr %caps2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 524289, ptr %caps2, align 4
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 8
  %24 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3145856, ptr %ocr_avail, align 64
  %call43 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.err_free_host_crit_edge

if.end42.err_free_host_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_host

if.end46:                                         ; preds = %if.end42
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %25 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 4294967295, ptr %coherent_dma_mask, align 8
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %26 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  %call52 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.13) #5
  %dma = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call52, ptr %dma, align 4
  %cmp.i185 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %do.end58, label %do.end65

do.end58:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.15) #8
  %30 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %err_free_host

do.end65:                                         ; preds = %if.end46
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %call52, i32 0, i32 5
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end65.dma_chan_name.exit_crit_edge

do.end65.dma_chan_name.exit_crit_edge:            ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end65.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i ], [ %36, %do.end65.dma_chan_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i.i) #8
  %39 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call10, align 4
  %add = add i32 %40, 40
  %src_addr = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 1
  %41 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add, ptr %src_addr, align 4
  %42 = load i32, ptr %call10, align 4
  %add70 = add i32 %42, 40
  %dst_addr = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 2
  %43 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add70, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 3
  %44 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 4
  %45 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %dst_addr_width, align 4
  %device_fc = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9
  %46 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %device_fc, align 4
  %call75 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 2
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call75, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp = icmp slt i32 %call75, 0
  br i1 %cmp, label %dma_chan_name.exit.err_release_channel_crit_edge, label %if.end78

dma_chan_name.exit.err_release_channel_crit_edge: ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_release_channel

if.end78:                                         ; preds = %dma_chan_name.exit
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end78.dev_name.exit_crit_edge

if.end78.dev_name.exit_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end78.dev_name.exit_crit_edge
  %retval.0.i186 = phi ptr [ %51, %if.end.i ], [ %49, %if.end78.dev_name.exit_crit_edge ]
  %call.i187 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call75, ptr noundef nonnull @owl_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i186, ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool84.not = icmp eq i32 %call.i187, 0
  br i1 %tobool84.not, label %if.end91, label %do.end88

do.end88:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %53) #8
  br label %err_release_channel

if.end91:                                         ; preds = %dev_name.exit
  %call92 = tail call i32 @mmc_add_host(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %do.body100, label %do.end97

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %err_release_channel

do.body100:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_mmc_probe.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_mmc_probe, %if.then105)) #5
          to label %cleanup [label %if.then105], !srcloc !126

if.then105:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_mmc_probe.__UNIQUE_ID_ddebug277, ptr noundef %dev, ptr noundef nonnull @.str.27) #5
  br label %cleanup

err_release_channel:                              ; preds = %do.end97, %do.end88, %dma_chan_name.exit.err_release_channel_crit_edge
  %ret.0 = phi i32 [ %call.i187, %do.end88 ], [ %call92, %do.end97 ], [ -22, %dma_chan_name.exit.err_release_channel_crit_edge ]
  %54 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma, align 4
  tail call void @dma_release_channel(ptr noundef %55) #5
  br label %err_free_host

err_free_host:                                    ; preds = %err_release_channel, %do.end58, %if.end42.err_free_host_crit_edge, %do.end38, %do.end26, %if.then15
  %ret.1 = phi i32 [ %4, %if.then15 ], [ %8, %do.end26 ], [ %12, %do.end38 ], [ %call43, %if.end42.err_free_host_crit_edge ], [ %32, %do.end58 ], [ %ret.0, %err_release_channel ]
  tail call void @mmc_free_host(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_host, %if.then105, %do.body100, %do.end
  %retval.0 = phi i32 [ %ret.1, %err_free_host ], [ -12, %do.end ], [ 0, %if.then105 ], [ 0, %do.body100 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_mmc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mmc_remove_host(ptr noundef %1) #5
  %irq = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #5
  %dma = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  tail call void @dma_release_channel(ptr noundef %5) #5
  tail call void @mmc_free_host(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_irq_handler(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.owl_mmc_host, ptr %devid, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %base = getelementptr inbounds %struct.owl_mmc_host, ptr %devid, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  %3 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  %7 = or i32 %6, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %7) #5, !srcloc !131
  %sdc_complete = getelementptr inbounds %struct.owl_mmc_host, ptr %devid, i32 0, i32 4
  tail call void @complete(ptr noundef %sdc_complete) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_mmc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %mrq2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 5, i32 1, i32 1
  %2 = ptrtoint ptr %mrq2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mrq, ptr %mrq2, align 4
  %3 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %7 = or i32 %6, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #5, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blocks.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %10) #5, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blksz.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %15) #5, !srcloc !131
  %18 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blksz.i, align 4
  %20 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blocks.i, align 4
  %mul.i = mul i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.i, label %do.body10.i, label %do.body15.i

do.body10.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #5
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %24, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %22) #5, !srcloc !131
  br label %if.end.i

do.body15.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %26, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 131072) #5, !srcloc !131
  br label %if.end.i

if.end.i:                                         ; preds = %do.body15.i, %do.body10.i
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 2, i32 1
  %29 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select.i, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select.i, ptr %31, align 4
  %dma.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %33 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %39 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sg_len.i, align 4
  %call.i = tail call i32 @dma_map_sg_attrs(ptr noundef %38, ptr noundef %40, i32 noundef %42, i32 noundef %spec.select.i, i32 noundef 0) #5
  %43 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %if.end.i.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i

if.end.i.dmaengine_slave_config.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_slave_config.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %48(ptr noundef %44, ptr noundef %31) #5
  %49 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr.i = load ptr, ptr %dma.i, align 4
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i, %if.end.i.dmaengine_slave_config.exit.i_crit_edge
  %50 = phi ptr [ %44, %if.end.i.dmaengine_slave_config.exit.i_crit_edge ], [ %.pr.i, %if.then.i.i ]
  %51 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sg.i, align 4
  %53 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sg_len.i, align 4
  %55 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %31, align 4
  %tobool.not.i79.i = icmp eq ptr %50, null
  br i1 %tobool.not.i79.i, label %dmaengine_slave_config.exit.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

dmaengine_slave_config.exit.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_prep_slave_sg.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %dmaengine_slave_config.exit.i
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %50, align 4
  %tobool1.not.i.i = icmp eq ptr %58, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_prep_slave_sg.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 39
  %59 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %60, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_prep_slave_sg.exit.thread.i

dmaengine_prep_slave_sg.exit.thread.i:            ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, %dmaengine_slave_config.exit.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge
  %desc82.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %61 = ptrtoint ptr %desc82.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %desc82.i, align 4
  br label %if.then5

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i80.i = tail call ptr %60(ptr noundef nonnull %50, ptr noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef 3, ptr noundef null) #5
  %desc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %62 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i80.i, ptr %desc.i, align 4
  %tobool37.not.i = icmp eq ptr %call.i80.i, null
  br i1 %tobool37.not.i, label %dmaengine_prep_slave_sg.exit.i.if.then5_crit_edge, label %if.end

dmaengine_prep_slave_sg.exit.i.if.then5_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.then5:                                         ; preds = %dmaengine_prep_slave_sg.exit.i.if.then5_crit_edge, %dmaengine_prep_slave_sg.exit.thread.i
  %63 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.33) #8
  %error = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %65 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -16, ptr %error, align 4
  br label %err_out

if.end:                                           ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %data44.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 5, i32 3
  %66 = ptrtoint ptr %data44.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %1, ptr %data44.i, align 4
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i80.i, i32 0, i32 6
  %67 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @owl_mmc_dma_complete, ptr %callback.i, align 4
  %68 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %desc.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %private.i, ptr %callback_param.i, align 4
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %71 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %error.i, align 4
  %dma_complete = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 2
  %72 = ptrtoint ptr %dma_complete to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %dma_complete, align 4
  %wait.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 3
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  %73 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %desc.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_submit.i, align 4
  %call.i64 = tail call i32 %76(ptr noundef %74) #5
  %77 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %80, i32 0, i32 50
  %81 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %82(ptr noundef %78) #5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %83 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cmd, align 4
  tail call fastcc void @owl_mmc_send_cmd(ptr noundef %private.i, ptr noundef %84, ptr noundef %1)
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end7.err_out_crit_edge, label %if.then9

if.end7.err_out_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out

if.then9:                                         ; preds = %if.end7
  %sdc_complete = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %call10 = tail call i32 @wait_for_completion_timeout(ptr noundef %sdc_complete, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.then9
  %85 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.28) #8
  %87 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cmd, align 4
  %error14 = getelementptr inbounds %struct.mmc_command, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %error14 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -110, ptr %error14, align 4
  %dma15 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %90 = ptrtoint ptr %dma15 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dma15, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %93, i32 0, i32 47
  %94 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i65 = icmp eq ptr %95, null
  br i1 %tobool.not.i65, label %do.end.err_out_crit_edge, label %if.then.i

do.end.err_out_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i66 = tail call i32 %95(ptr noundef %91) #5
  br label %err_out

if.end17:                                         ; preds = %if.then9
  %dma_complete18 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 2
  %call19 = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_complete18, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end24, label %if.end30

do.end24:                                         ; preds = %if.end17
  %96 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.31) #8
  %98 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cmd, align 4
  %error27 = getelementptr inbounds %struct.mmc_command, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %error27 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -110, ptr %error27, align 4
  %dma28 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %101 = ptrtoint ptr %dma28 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dma28, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %device_terminate_all.i67 = getelementptr inbounds %struct.dma_device, ptr %104, i32 0, i32 47
  %105 = ptrtoint ptr %device_terminate_all.i67 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device_terminate_all.i67, align 4
  %tobool.not.i68 = icmp eq ptr %106, null
  br i1 %tobool.not.i68, label %do.end24.err_out_crit_edge, label %if.then.i70

do.end24.err_out_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out

if.then.i70:                                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call.i69 = tail call i32 %106(ptr noundef %102) #5
  br label %err_out

if.end30:                                         ; preds = %if.end17
  %stop = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 8
  %107 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %stop, align 4
  %tobool31.not = icmp eq ptr %108, null
  br i1 %tobool31.not, label %if.end30.if.end34_crit_edge, label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @owl_mmc_send_cmd(ptr noundef %private.i, ptr noundef nonnull %108, ptr noundef null)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %109 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %111 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %blksz, align 4
  %mul = mul i32 %112, %110
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %113 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %mul, ptr %bytes_xfered, align 4
  br label %err_out

err_out:                                          ; preds = %if.end34, %if.then.i70, %do.end24.err_out_crit_edge, %if.then.i, %do.end.err_out_crit_edge, %if.end7.err_out_crit_edge, %if.then5
  %114 = ptrtoint ptr %mrq2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mrq2, align 4
  %data2.i = getelementptr inbounds %struct.mmc_request, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data2.i, align 4
  %tobool.not.i72 = icmp eq ptr %115, null
  br i1 %tobool.not.i72, label %do.end.i, label %err_out.if.end.i73_crit_edge, !prof !136

err_out.if.end.i73_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i73

do.end.i:                                         ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 160, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i73

if.end.i73:                                       ; preds = %do.end.i, %err_out.if.end.i73_crit_edge
  %118 = ptrtoint ptr %mrq2 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %mrq2, align 4
  %tobool24.not.i = icmp eq ptr %117, null
  br i1 %tobool24.not.i, label %if.end.i73.owl_mmc_finish_request.exit_crit_edge, label %if.then25.i

if.end.i73.owl_mmc_finish_request.exit_crit_edge: ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %owl_mmc_finish_request.exit

if.then25.i:                                      ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  %dma.i74 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %119 = ptrtoint ptr %dma.i74 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dma.i74, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %dev.i75 = getelementptr inbounds %struct.dma_device, ptr %122, i32 0, i32 15
  %123 = ptrtoint ptr %dev.i75 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i75, align 4
  %sg.i76 = getelementptr inbounds %struct.mmc_data, ptr %117, i32 0, i32 12
  %125 = ptrtoint ptr %sg.i76 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %sg.i76, align 4
  %sg_len.i77 = getelementptr inbounds %struct.mmc_data, ptr %117, i32 0, i32 10
  %127 = ptrtoint ptr %sg_len.i77 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sg_len.i77, align 4
  %dma_dir.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %129 = ptrtoint ptr %dma_dir.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma_dir.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %124, ptr noundef %126, i32 noundef %128, i32 noundef %130, i32 noundef 0) #5
  br label %owl_mmc_finish_request.exit

owl_mmc_finish_request.exit:                      ; preds = %if.then25.i, %if.end.i73.owl_mmc_finish_request.exit_crit_edge
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 5, i32 1
  %131 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_request_done(ptr noundef %132, ptr noundef %115) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_mmc_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %0 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.body45 [
    i8 1, label %do.body
    i8 2, label %do.body9
    i8 0, label %do.body27
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_mmc_set_ios.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_mmc_set_ios, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !126

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_mmc_set_ios.__UNIQUE_ID_ddebug273, ptr noundef %4, ptr noundef nonnull @.str.48) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %reset.i = getelementptr inbounds %struct.owl_mmc_host, ptr %private.i, i32 0, i32 1
  %5 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %6) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 4294960) #5
  %8 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset.i, align 4
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %9) #5
  %clk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call.i101 = tail call i32 @clk_prepare(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.clk_prepare_enable.exit_crit_edge

do.end.clk_prepare_enable.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %do.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %do.end.clk_prepare_enable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -2147221504) #5, !srcloc !131
  br label %sw.epilog

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_mmc_set_ios.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_mmc_set_ios, %if.then21)) #5
          to label %do.end25 [label %if.then21], !srcloc !126

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_mmc_set_ios.__UNIQUE_ID_ddebug274, ptr noundef %15, ptr noundef nonnull @.str.49) #5
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body9
  %sdc_complete.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %sdc_complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sdc_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %20 = or i32 %19, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #5, !srcloc !131
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !127
  %24 = shl i32 %23, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %and.i = and i32 %24, 16711680
  %or.i = or i32 %and.i, 1416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %25) #5, !srcloc !131
  %call7.i = tail call i32 @wait_for_completion_timeout(ptr noundef %sdc_complete.i, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i102 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i102, label %do.end10.i, label %do.end25.sw.epilog_crit_edge

do.end25.sw.epilog_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i:                                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.28) #8
  br label %sw.epilog

do.body27:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_mmc_set_ios.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_mmc_set_ios, %if.then39)) #5
          to label %do.end43 [label %if.then39], !srcloc !126

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_mmc_set_ios.__UNIQUE_ID_ddebug275, ptr noundef %31, ptr noundef nonnull @.str.50) #5
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body27
  %clk44 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %clk44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk44, align 4
  tail call void @clk_disable(ptr noundef %33) #5
  tail call void @clk_unprepare(ptr noundef %33) #5
  br label %cleanup

do.body45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_mmc_set_ios.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_mmc_set_ios, %if.then57)) #5
          to label %sw.epilog [label %if.then57], !srcloc !126

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @owl_mmc_set_ios.__UNIQUE_ID_ddebug276, ptr noundef %35, ptr noundef nonnull @.str.51) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then57, %do.body45, %do.end10.i, %do.end25.sw.epilog_crit_edge, %clk_prepare_enable.exit
  %36 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ios, align 4
  %clock62 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 3
  %38 = ptrtoint ptr %clock62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %clock62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp.not = icmp eq i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i103 = icmp eq i32 %37, 0
  %or.cond = or i1 %tobool.not.i103, %cmp.not
  br i1 %or.cond, label %sw.epilog.if.end65_crit_edge, label %if.end.i104

sw.epilog.if.end65_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.end.i104:                                      ; preds = %sw.epilog
  %40 = ptrtoint ptr %clock62 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %clock62, align 4
  %41 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ios, align 4
  %base.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  %46 = and i32 %45, -65281
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %42)
  %cmp.i.i = icmp ult i32 %42, 1000001
  br i1 %cmp.i.i, label %do.body.i.i, label %land.lhs.true.i.i

do.body.i.i:                                      ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %or2.i.i = or i32 %47, 16711680
  %48 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #5
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %48) #5, !srcloc !131
  br label %if.end49.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000001, i32 %42)
  %cmp6.i.i = icmp ult i32 %42, 26000001
  br i1 %cmp6.i.i, label %do.body8.i.i, label %land.lhs.true17.i.i

do.body8.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %or12.i.i = or i32 %47, 11141120
  %51 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i) #5
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %51) #5, !srcloc !131
  br label %if.end49.i.i

land.lhs.true17.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %42)
  %cmp18.i.i = icmp ult i32 %42, 52000001
  br i1 %cmp18.i.i, label %land.lhs.true19.i.i, label %do.end46.i.i

land.lhs.true19.i.i:                              ; preds = %land.lhs.true17.i.i
  %ddr_50.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  %54 = ptrtoint ptr %ddr_50.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ddr_50.i.i, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i = icmp eq i8 %55, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %tobool.not.i.i, label %do.body21.i.i, label %do.body36.i.i

do.body21.i.i:                                    ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or25.i.i = or i32 %47, 10027008
  %56 = tail call i32 @llvm.bswap.i32(i32 %or25.i.i) #5
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i.i, i32 %56) #5, !srcloc !131
  br label %if.end49.i.i

do.body36.i.i:                                    ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or40.i.i = or i32 %47, 11010048
  %59 = tail call i32 @llvm.bswap.i32(i32 %or40.i.i) #5
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %add.ptr42.i.i = getelementptr i8, ptr %61, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i.i, i32 %59) #5, !srcloc !131
  br label %if.end49.i.i

do.end46.i.i:                                     ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.53) #8
  br label %if.end65

if.end49.i.i:                                     ; preds = %do.body36.i.i, %do.body21.i.i, %do.body8.i.i, %do.body.i.i
  %clk.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %64 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i.i, align 4
  %shl.i.i = shl nuw nsw i32 %42, 1
  %call50.i.i = tail call i32 @clk_round_rate(ptr noundef %65, i32 noundef %shl.i.i) #5
  %66 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk.i.i, align 4
  %call52.i.i = tail call i32 @clk_set_rate(ptr noundef %67, i32 noundef %call50.i.i) #5
  br label %if.end65

if.end65:                                         ; preds = %if.end49.i.i, %do.end46.i.i, %sw.epilog.if.end65_crit_edge
  %base.i105 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %68 = ptrtoint ptr %base.i105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i105, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #5, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %71 = and i32 %70, -50331649
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #5
  %bus_width.i = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %73 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bus_width.i, align 1
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %74, label %if.end65.owl_mmc_set_bus_width.exit_crit_edge [
    i8 3, label %sw.bb2.i
    i8 2, label %sw.bb.i
  ]

if.end65.owl_mmc_set_bus_width.exit_crit_edge:    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %owl_mmc_set_bus_width.exit

sw.bb.i:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %or.i106 = or i32 %72, 1
  br label %owl_mmc_set_bus_width.exit

sw.bb2.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %or3.i = or i32 %72, 2
  br label %owl_mmc_set_bus_width.exit

owl_mmc_set_bus_width.exit:                       ; preds = %sw.bb2.i, %sw.bb.i, %if.end65.owl_mmc_set_bus_width.exit_crit_edge
  %reg.0.i = phi i32 [ %72, %if.end65.owl_mmc_set_bus_width.exit_crit_edge ], [ %or.i106, %sw.bb.i ], [ %or3.i, %sw.bb2.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %76 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #5
  %77 = ptrtoint ptr %base.i105 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i105, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #5, !srcloc !131
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %79 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %80)
  %cmp67 = icmp eq i8 %80, 7
  %ddr_50 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  br i1 %cmp67, label %if.then69, label %if.else

if.then69:                                        ; preds = %owl_mmc_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %ddr_50 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %ddr_50, align 4
  %82 = ptrtoint ptr %base.i105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i105, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #5, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %85 = or i32 %84, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %85) #5, !srcloc !131
  br label %cleanup

if.else:                                          ; preds = %owl_mmc_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %ddr_50 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %ddr_50, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then69, %do.end43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_mmc_start_signal_voltage_switch(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %0 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %signal_voltage, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %6 = and i32 %5, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #5, !srcloc !131
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %7 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base2, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %10 = or i32 %9, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !131
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_mmc_send_cmd(ptr noundef %owl_host, ptr noundef %cmd, ptr noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sdc_complete = getelementptr inbounds %struct.owl_mmc_host, ptr %owl_host, i32 0, i32 4
  %0 = ptrtoint ptr %sdc_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sdc_complete, align 4
  %wait.i = getelementptr inbounds %struct.owl_mmc_host, ptr %owl_host, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 31
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %and, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 21, label %sw.bb1
    i32 29, label %sw.bb8
    i32 7, label %sw.bb9
    i32 1, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %sw.bb1.sw.epilog_crit_edge, label %if.then

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %flags2 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags2, align 4
  %and3 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %. = select i1 %tobool4.not, i32 5, i32 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %owl_host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owl_host, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.36) #8
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -22, ptr %error, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %if.then, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %cmd_rsp_mask.0 = phi i32 [ 16, %sw.bb10 ], [ 17, %sw.bb9 ], [ 17, %sw.bb8 ], [ %and, %entry.sw.epilog_crit_edge ], [ 17, %sw.bb1.sw.epilog_crit_edge ], [ 17, %if.then ]
  %mode.1 = phi i32 [ 1, %sw.bb10 ], [ 2, %sw.bb9 ], [ 3, %sw.bb8 ], [ %and, %entry.sw.epilog_crit_edge ], [ 1, %sw.bb1.sw.epilog_crit_edge ], [ %., %if.then ]
  %base = getelementptr inbounds %struct.owl_mmc_host, ptr %owl_host, i32 0, i32 2
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !127
  %12 = shl i32 %11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  %and12 = and i32 %12, 16711680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arg, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %15) #5, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %20) #5, !srcloc !131
  %tobool23.not = icmp eq ptr %data, null
  %mode.2.v = select i1 %tobool23.not, i32 128, i32 1677721792
  %or = or i32 %mode.1, %mode.2.v
  %mode.2 = or i32 %or, %and12
  %cmd30 = getelementptr inbounds %struct.owl_mmc_host, ptr %owl_host, i32 0, i32 16
  %23 = ptrtoint ptr %cmd30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmd, ptr %cmd30, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %mode.2)
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %24) #5, !srcloc !131
  br i1 %tobool23.not, label %if.else.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.i:                                        ; preds = %sw.epilog
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %27 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %busy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not = icmp eq i32 %28, 0
  %spec.select = select i1 %tobool39.not, i32 30000, i32 %28
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select) #5
  %call43 = tail call i32 @wait_for_completion_timeout(ptr noundef %sdc_complete, i32 noundef %call2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %owl_host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owl_host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.28) #8
  %error50 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %31 = ptrtoint ptr %error50 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -110, ptr %error50, align 4
  br label %cleanup

if.end51:                                         ; preds = %if.else.i
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr55 = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #5, !srcloc !127
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and61 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end51.cleanup_crit_edge, label %if.then63

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then63:                                        ; preds = %if.end51
  %and64 = and i32 %35, %cmd_rsp_mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then63.if.end85_crit_edge, label %if.then66

if.then63.if.end85_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then66:                                        ; preds = %if.then63
  %and67 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end75, label %do.end72

do.end72:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %owl_host to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %owl_host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.42) #8
  %error74 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %40 = ptrtoint ptr %error74 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -84, ptr %error74, align 4
  br label %cleanup

if.end75:                                         ; preds = %if.then66
  %and76 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end85_crit_edge, label %do.end81

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %owl_host to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %owl_host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.45) #8
  %error83 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %43 = ptrtoint ptr %error83 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -84, ptr %error83, align 4
  br label %cleanup

if.end85:                                         ; preds = %if.end75.if.end85_crit_edge, %if.then63.if.end85_crit_edge
  %and88 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr130 = getelementptr i8, ptr %45, i32 20
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %tobool89.not, label %if.else126, label %if.then90

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %resp98 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %arrayidx = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 3
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx, align 4
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr102 = getelementptr i8, ptr %50, i32 24
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #5, !srcloc !127
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %arrayidx107 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 2
  %53 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx107, align 4
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr111 = getelementptr i8, ptr %55, i32 28
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #5, !srcloc !127
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  %arrayidx116 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx116, align 4
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr120 = getelementptr i8, ptr %60, i32 32
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #5, !srcloc !127
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  %63 = ptrtoint ptr %resp98 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %resp98, align 4
  br label %cleanup

if.else126:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr138 = getelementptr i8, ptr %65, i32 24
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #5, !srcloc !127
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  %or145 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %47, i32 24)
  %resp146 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %68 = ptrtoint ptr %resp146 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or145, ptr %resp146, align 4
  %shr149 = lshr i32 %67, 8
  %arrayidx151 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shr149, ptr %arrayidx151, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else126, %if.then90, %do.end81, %do.end72, %if.end51.cleanup_crit_edge, %do.end48, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_mmc_dma_complete(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.owl_mmc_host, ptr %param, i32 0, i32 17
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dma_complete = getelementptr inbounds %struct.owl_mmc_host, ptr %param, i32 0, i32 13
  tail call void @complete(ptr noundef %dma_complete) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !110, !112, !113, !114, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_owl_mmc__278_699_owl_mmc_driver_init6, !1, !"__initcall__kmod_owl_mmc__278_699_owl_mmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/owl-mmc.c", i32 699, i32 1}
!2 = !{ptr @__exitcall_owl_mmc_driver_exit, !1, !"__exitcall_owl_mmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description279, !4, !"__UNIQUE_ID_description279", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/owl-mmc.c", i32 701, i32 1}
!5 = !{ptr @__UNIQUE_ID_author280, !6, !"__UNIQUE_ID_author280", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/owl-mmc.c", i32 702, i32 1}
!7 = !{ptr @__UNIQUE_ID_author281, !8, !"__UNIQUE_ID_author281", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/owl-mmc.c", i32 703, i32 1}
!9 = !{ptr @__UNIQUE_ID_file282, !10, !"__UNIQUE_ID_file282", i1 false, i1 false}
!10 = !{!"../drivers/mmc/host/owl-mmc.c", i32 704, i32 1}
!11 = !{ptr @__UNIQUE_ID_license283, !10, !"__UNIQUE_ID_license283", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/owl-mmc.c", i32 692, i32 11}
!14 = !{ptr @owl_mmc_driver, !15, !"owl_mmc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/owl-mmc.c", i32 690, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/owl-mmc.c", i32 571, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @owl_mmc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @owl_mmc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @owl_mmc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/owl-mmc.c", i32 579, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/owl-mmc.c", i32 590, i32 3}
!29 = !{ptr @owl_mmc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @owl_mmc_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/owl-mmc.c", i32 597, i32 3}
!33 = !{ptr @owl_mmc_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @owl_mmc_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/owl-mmc.c", i32 623, i32 47}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/owl-mmc.c", i32 625, i32 3}
!39 = !{ptr @owl_mmc_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @owl_mmc_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/owl-mmc.c", i32 630, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @owl_mmc_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @owl_mmc_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/owl-mmc.c", i32 648, i32 3}
!48 = !{ptr @owl_mmc_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @owl_mmc_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/owl-mmc.c", i32 655, i32 3}
!52 = !{ptr @owl_mmc_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @owl_mmc_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/owl-mmc.c", i32 659, i32 2}
!56 = !{ptr @owl_mmc_probe.__UNIQUE_ID_ddebug277, !55, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!57 = !{ptr @owl_mmc_ops, !58, !"owl_mmc_ops", i1 false, i1 false}
!58 = !{!"../drivers/mmc/host/owl-mmc.c", i32 554, i32 34}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/owl-mmc.c", i32 363, i32 4}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @owl_mmc_request._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @owl_mmc_request._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/owl-mmc.c", i32 371, i32 4}
!66 = !{ptr @owl_mmc_request._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @owl_mmc_request._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/owl-mmc.c", i32 326, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @owl_mmc_prepare_data._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @owl_mmc_prepare_data._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @init_completion.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/completion.h", i32 87, i32 2}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mmc/host/owl-mmc.c", i32 216, i32 3}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @owl_mmc_send_cmd._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @owl_mmc_send_cmd._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @owl_mmc_send_cmd._entry.39, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/owl-mmc.c", i32 248, i32 3}
!84 = !{ptr @owl_mmc_send_cmd._entry_ptr.40, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/owl-mmc.c", i32 257, i32 5}
!87 = !{ptr @owl_mmc_send_cmd._entry.41, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @owl_mmc_send_cmd._entry_ptr.43, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mmc/host/owl-mmc.c", i32 263, i32 5}
!91 = !{ptr @owl_mmc_send_cmd._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @owl_mmc_send_cmd._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/host/owl-mmc.c", i32 490, i32 3}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @owl_mmc_set_ios.__UNIQUE_ID_ddebug273, !94, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/owl-mmc.c", i32 501, i32 3}
!99 = !{ptr @owl_mmc_set_ios.__UNIQUE_ID_ddebug274, !98, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/owl-mmc.c", i32 507, i32 3}
!102 = !{ptr @owl_mmc_set_ios.__UNIQUE_ID_ddebug275, !101, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/host/owl-mmc.c", i32 513, i32 3}
!105 = !{ptr @owl_mmc_set_ios.__UNIQUE_ID_ddebug276, !104, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mmc/host/owl-mmc.c", i32 479, i32 3}
!108 = !{ptr @owl_mmc_power_on._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @owl_mmc_power_on._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mmc/host/owl-mmc.c", i32 416, i32 3}
!112 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @owl_mmc_set_clk_rate._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @owl_mmc_set_clk_rate._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @owl_mmc_of_match, !116, !"owl_mmc_of_match", i1 false, i1 false}
!116 = !{!"../drivers/mmc/host/owl-mmc.c", i32 684, i32 34}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 2148737997, i64 2148738002, i64 2148738015, i64 2148738059, i64 2148738093, i64 2148738114}
!127 = !{i64 6323005}
!128 = !{i64 2154852173}
!129 = !{i64 2154852772}
!130 = !{i64 2154853083}
!131 = !{i64 6322587}
!132 = !{i64 2154851283}
!133 = !{i64 2154851486}
!134 = !{i64 2154867979}
!135 = !{i64 2154868422}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{i64 2154886981}
!138 = !{i64 2154882179}
!139 = !{i64 2154882531}
!140 = !{i64 2154874982}
!141 = !{i64 2154876015}
!142 = !{i64 2154876699}
!143 = !{i8 0, i8 2}
!144 = !{i64 2154880575}
!145 = !{i64 2154880850}
!146 = !{i64 2154857181}
!147 = !{i64 2154857413}
!148 = !{i64 2154857844}
!149 = !{i64 2154858689}
!150 = !{i64 2154860991}
!151 = !{i64 2154865586}
!152 = !{i64 2154866103}
!153 = !{i64 2154866620}
!154 = !{i64 2154867654}
