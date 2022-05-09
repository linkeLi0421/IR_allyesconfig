; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/atmel-mci.c_pt.bc'
source_filename = "../drivers/mmc/host/atmel-mci.c"
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
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mci_platform_data = type { ptr, ptr, [2 x %struct.mci_slot_pdata] }
%struct.mci_slot_pdata = type { i32, i32, i32, i8, i8 }
%struct.atmel_mci = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.atmel_mci_dma, ptr, %struct.dma_slave_config, i32, i32, i32, %struct.tasklet_struct, i32, i32, i32, %struct.list_head, i8, i8, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, [2 x ptr], %struct.atmel_mci_caps, ptr, ptr, ptr }
%struct.atmel_mci_dma = type { ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.atmel_mci_caps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.atmel_mci_slot = type { ptr, ptr, i32, i32, ptr, %struct.list_head, i32, i32, i32, i32, i8, %struct.timer_list }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_atmel_mci__315_2676_atmci_driver_init6 = internal global ptr @atmci_driver_init, section ".initcall6.init", align 4
@atmci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmci_probe, ptr @atmci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @atmci_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmci_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmci_driver_exit = internal global ptr @atmci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description316 = internal constant [61 x i8] c"atmel_mci.description=Atmel Multimedia Card Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author317 = internal constant [44 x i8] c"atmel_mci.author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [42 x i8] c"atmel_mci.file=drivers/mmc/host/atmel-mci\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [25 x i8] c"atmel_mci.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel_mci\00", [22 x i8] zeroinitializer }, align 32
@atmci_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,hsmci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmci_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmci_runtime_suspend, ptr @atmci_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@atmci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"platform data not available\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atmci_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mmc/host/atmel-mci.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmci_probe._entry_ptr = internal global ptr @atmci_probe._entry, section ".printk_index", align 4
@atmci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mci_clk\00", [24 x i8] zeroinitializer }, align 32
@atmci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 2517, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"using PDC\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmci_probe._entry_ptr.11 = internal global ptr @atmci_probe._entry.8, section ".printk_index", align 4
@atmci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2522, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"using PIO\0A\00", [21 x i8] zeroinitializer }, align 32
@atmci_probe._entry_ptr.14 = internal global ptr @atmci_probe._entry.12, section ".printk_index", align 4
@atmci_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&host->timer)\00", [17 x i8] zeroinitializer }, align 32
@atmci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 2561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"init failed: no slot defined\0A\00", [34 x i8] zeroinitializer }, align 32
@atmci_probe._entry_ptr.19 = internal global ptr @atmci_probe._entry.17, section ".printk_index", align 4
@atmci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 2571, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"buffer allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@atmci_probe._entry_ptr.22 = internal global ptr @atmci_probe._entry.20, section ".printk_index", align 4
@atmci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 2578, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Atmel MCI controller at 0x%08lx irq %d, %u slots\0A\00", [46 x i8] zeroinitializer }, align 32
@atmci_probe._entry_ptr.25 = internal global ptr @atmci_probe._entry.23, section ".printk_index", align 4
@atmci_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device node not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmci_of_init\00", [18 x i8] zeroinitializer }, align 32
@atmci_of_init._entry_ptr = internal global ptr @atmci_of_init._entry, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@atmci_of_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 624, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg property is missing for %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atmci_of_init._entry_ptr.32 = internal global ptr @atmci_of_init._entry.29, section ".printk_index", align 4
@atmci_of_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.3, i32 630, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't have more than %d slots\0A\00", [33 x i8] zeroinitializer }, align 32
@atmci_of_init._entry_ptr.35 = internal global ptr @atmci_of_init._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-width\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cd-gpios\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cd-inverted\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"non-removable\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wp-gpios\00", [23 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 1, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmci_tasklet_func\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FSM: state=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.43, i8 1, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FSM: cmd ready?\0A\00", [47 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.44, i8 1, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set completed cmd ready\0A\00", [39 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.45, i8 1, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"command with data transfer\00", [37 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.46, i8 1, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"command response need waiting notbusy\00", [58 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.47, i8 1, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set completed data error\0A\00", [38 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.48, i8 1, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FSM: xfer complete?\0A\00", [43 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.49, i8 1, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(%s) set completed xfer complete\0A\00", [62 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.50, i8 1, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FSM: not busy?\0A\00", [16 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.51, i8 1, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set completed not busy\0A\00", [40 x i8] zeroinitializer }, align 32
@atmci_tasklet_func.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.43, i8 1, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@atmci_tasklet_func.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.52, i8 1, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FSM: cmd ready\0A\00", [16 x i8] zeroinitializer }, align 32
@atmci_send_stop_cmd.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmci_send_stop_cmd\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"send stop command\0A\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@atmci_start_request.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmci_start_request\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"start request: cmd %u\0A\00", [41 x i8] zeroinitializer }, align 32
@atmci_start_request.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.57, i8 1, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WARNING: IMR=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 2, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmci_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ: data error\0A\00", [47 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.60, i8 2, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set pending data error\0A\00", [40 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.61, i8 2, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IRQ: tx buffer empty\0A\00", [42 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.62, i8 2, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ: end of tx buffer\0A\00", [41 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.63, i8 2, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQ: rx buffer full\0A\00", [43 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.64, i8 2, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ: end of rx buffer\0A\00", [41 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.65, i8 2, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IRQ: blke\0A\00", [21 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.66, i8 2, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set pending notbusy\0A\00", [43 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.67, i8 2, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IRQ: not_busy\0A\00", [17 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.66, i8 2, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@atmci_interrupt.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.68, i8 2, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQ: cmd ready\0A\00", [16 x i8] zeroinitializer }, align 32
@atmci_interrupt.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.69, i8 2, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set pending cmd rdy\0A\00", [43 x i8] zeroinitializer }, align 32
@atmci_pdc_complete.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmci_pdc_complete\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(%s) set pending xfer complete\0A\00", [32 x i8] zeroinitializer }, align 32
@atmci_get_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 2402, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"version: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmci_get_cap\00", [18 x i8] zeroinitializer }, align 32
@atmci_get_cap._entry_ptr = internal global ptr @atmci_get_cap._entry, section ".printk_index", align 4
@atmci_get_cap._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 2444, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unmanaged mci version, set minimum capabilities\0A\00", [47 x i8] zeroinitializer }, align 32
@atmci_get_cap._entry_ptr.76 = internal global ptr @atmci_get_cap._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rxtx\00", [27 x i8] zeroinitializer }, align 32
@atmci_configure_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 2378, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"using %s for DMA transfers\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmci_configure_dma\00", [44 x i8] zeroinitializer }, align 32
@atmci_configure_dma._entry_ptr = internal global ptr @atmci_configure_dma._entry, section ".printk_index", align 4
@atmci_dma_complete.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.3, ptr @.str.71, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmci_dma_complete\00", [45 x i8] zeroinitializer }, align 32
@atmci_stop_transfer_dma.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.3, ptr @.str.71, i8 1, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmci_stop_transfer_dma\00", [40 x i8] zeroinitializer }, align 32
@atmci_stop_transfer.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.3, ptr @.str.71, i8 1, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmci_stop_transfer\00", [44 x i8] zeroinitializer }, align 32
@atmci_timeout_timer.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmci_timeout_timer\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"software timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@atmci_init_slot.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 2, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmci_init_slot\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"slot[%u]: bus_width=%u, detect_pin=%d, detect_is_active_high=%s, wp_pin=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@atmci_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @atmci_request, ptr null, ptr @atmci_set_ios, ptr @atmci_get_ro, ptr @atmci_get_cd, ptr @atmci_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmc_detect\00", [21 x i8] zeroinitializer }, align 32
@atmci_init_slot.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.90, i8 2, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no detect pin available\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mmc_wp\00", [25 x i8] zeroinitializer }, align 32
@atmci_init_slot.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.92, i8 2, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no WP pin available\0A\00", [43 x i8] zeroinitializer }, align 32
@atmci_init_slot.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&slot->detect_timer)\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmc-detect\00", [21 x i8] zeroinitializer }, align 32
@atmci_init_slot.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.95, i8 2, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not request IRQ %d for detect pin\0A\00", [55 x i8] zeroinitializer }, align 32
@atmci_request.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.3, ptr @.str.97, i8 1, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmci_request\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MRQ: cmd %u\0A\00", [19 x i8] zeroinitializer }, align 32
@atmci_queue_request.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.3, ptr @.str.99, i8 1, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmci_queue_request\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"queue request\0A\00", [17 x i8] zeroinitializer }, align 32
@atmci_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 1426, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clock %u too fast; using %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmci_set_ios\00", [18 x i8] zeroinitializer }, align 32
@atmci_set_ios._entry_ptr = internal global ptr @atmci_set_ios._entry, section ".printk_index", align 4
@atmci_set_ios._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.3, i32 1431, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clock %u too slow; using %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@atmci_set_ios._entry_ptr.104 = internal global ptr @atmci_set_ios._entry.102, section ".printk_index", align 4
@atmci_set_ios._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.3, i32 1441, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atmci_set_ios._entry_ptr.106 = internal global ptr @atmci_set_ios._entry.105, section ".printk_index", align 4
@atmci_get_ro.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.3, ptr @.str.108, i8 1, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmci_get_ro\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"card is %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read-write\00", [21 x i8] zeroinitializer }, align 32
@atmci_get_cd.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 1, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmci_get_cd\00", [19 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"card is %spresent\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@atmci_detect_change.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 1, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmci_detect_change\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"card %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inserted\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"removed\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@atmci_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @atmci_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@atmci_req_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @atmci_req_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pending_events\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"completed_events\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MR:\090x%08x%s%s \00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" RDPROOF\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" WRPROOF\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"{CLKDIV,CLKODD}=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLKDIV=%u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DTOR:\090x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SDCR:\090x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ARGR:\090x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BLKR:\090x%08x BCNT=%u BLKLEN=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CSTOR:\090x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SR\00", [29 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMR\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMA:\090x%08x OFFSET=%u CHKSIZE=%u%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" DMAEN\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CFG:\090x%08x%s%s%s%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" FIFOMODE_ONE_DATA\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" FERRCTRL_CLEAR_ON_READ\00", [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" HSMODE\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" LSYNC\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@atmci_show_status_reg.sr_bit = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr null, ptr null, ptr @.str.153, ptr null, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr null, ptr null, ptr @.str.168, ptr @.str.169], [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CMDRDY\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXRDY\00", [26 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TXRDY\00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BLKE\00", [27 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DTIP\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NOTBUSY\00", [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ENDRX\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ENDTX\00", [26 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SDIOIRQA\00", [23 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SDIOIRQB\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SDIOWAIT\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RXBUFF\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TXBUFE\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RINDE\00", [26 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDIRE\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RCRCE\00", [26 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RENDE\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RTOE\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCRCE\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DTOE\00", [27 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CSTOE\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BLKOVRE\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMADONE\00", [24 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FIFOEMPTY\00", [22 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XFRDONE\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OVRE\00", [27 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UNRE\00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s:\090x%08x\00", [21 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" UNKNOWN\00", [23 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CMD%u(0x%x) flg %x rsp %x %x %x %x err %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DATA %u / %u * %u flg %x err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.175 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.176 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.177 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.180 = private unnamed_addr constant [13 x i8] c"atmci_driver\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2666, i32 31 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2670, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant [13 x i8] c"atmci_dt_ids\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 597, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"atmci_dev_pm_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2660, i32 32 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2465, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2479, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2482, i32 39 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2517, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2522, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2530, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2561, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2571, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2576, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 613, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 622, i32 33 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 623, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 629, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 635, i32 33 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 640, i32 27 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 643, i32 31 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 646, i32 31 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 649, i32 27 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1742, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1755, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1760, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1765, i32 5 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1781, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1793, i32 5 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1806, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1811, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1839, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1844, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1881, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 832, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1251, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1268, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2091, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2098, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2105, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2121, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2132, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2148, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2165, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2168, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2174, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2188, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2192, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 935, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2401, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2443, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2356, i32 54 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2377, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 971, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1222, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1199, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 696, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2240, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [10 x i8] c"atmci_ops\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1548, i32 34 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2283, i32 11 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2284, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2301, i32 11 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2302, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2314, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2319, i32 5 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 2321, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1352, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1339, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1424, i32 5 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1429, i32 5 }
@___asan_gen_.501 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1439, i32 5 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1515, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1530, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1653, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 587, i32 22 }
@___asan_gen_.543 = private unnamed_addr constant [16 x i8] c"atmci_regs_fops\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 575, i32 1 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 588, i32 22 }
@___asan_gen_.549 = private unnamed_addr constant [15 x i8] c"atmci_req_fops\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 449, i32 1 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 589, i32 21 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 590, i32 21 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 592, i32 21 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 522, i32 16 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 524, i32 43 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 525, i32 43 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 527, i32 17 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 531, i32 17 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 533, i32 16 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 534, i32 16 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 535, i32 16 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 536, i32 16 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 541, i32 17 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 545, i32 27 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 546, i32 27 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 552, i32 17 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 556, i32 25 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 562, i32 17 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 564, i32 38 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 565, i32 36 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 566, i32 30 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 567, i32 29 }
@___asan_gen_.618 = private unnamed_addr constant [7 x i8] c"sr_bit\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 454, i32 21 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 455, i32 9 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 456, i32 9 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 457, i32 9 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 458, i32 9 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 459, i32 9 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 460, i32 9 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 461, i32 9 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 462, i32 9 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 463, i32 9 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 464, i32 9 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 465, i32 10 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 466, i32 10 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 467, i32 10 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 468, i32 10 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 469, i32 10 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 470, i32 10 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 471, i32 10 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 472, i32 10 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 473, i32 10 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 474, i32 10 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 475, i32 10 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 476, i32 10 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 477, i32 10 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 478, i32 10 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 479, i32 10 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 480, i32 10 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 481, i32 10 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 485, i32 16 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 489, i32 19 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 491, i32 17 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 428, i32 5 }
@___asan_gen_.714 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.715 = private constant [32 x i8] c"../drivers/mmc/host/atmel-mci.c\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 433, i32 18 }
@llvm.compiler.used = appending global [201 x ptr] [ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__exitcall_atmci_driver_exit, ptr @__initcall__kmod_atmel_mci__315_2676_atmci_driver_init6, ptr @atmci_configure_dma._entry, ptr @atmci_configure_dma._entry_ptr, ptr @atmci_driver_exit, ptr @atmci_get_cap._entry, ptr @atmci_get_cap._entry.74, ptr @atmci_get_cap._entry_ptr, ptr @atmci_get_cap._entry_ptr.76, ptr @atmci_of_init._entry, ptr @atmci_of_init._entry.29, ptr @atmci_of_init._entry.33, ptr @atmci_of_init._entry_ptr, ptr @atmci_of_init._entry_ptr.32, ptr @atmci_of_init._entry_ptr.35, ptr @atmci_probe._entry, ptr @atmci_probe._entry.12, ptr @atmci_probe._entry.17, ptr @atmci_probe._entry.20, ptr @atmci_probe._entry.23, ptr @atmci_probe._entry.8, ptr @atmci_probe._entry_ptr, ptr @atmci_probe._entry_ptr.11, ptr @atmci_probe._entry_ptr.14, ptr @atmci_probe._entry_ptr.19, ptr @atmci_probe._entry_ptr.22, ptr @atmci_probe._entry_ptr.25, ptr @atmci_set_ios._entry, ptr @atmci_set_ios._entry.102, ptr @atmci_set_ios._entry.105, ptr @atmci_set_ios._entry_ptr, ptr @atmci_set_ios._entry_ptr.104, ptr @atmci_set_ios._entry_ptr.106, ptr @atmci_driver, ptr @.str, ptr @atmci_dt_ids, ptr @atmci_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @atmci_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @atmci_probe.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @atmci_ops, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @atmci_init_slot.__key, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @atmci_regs_fops, ptr @.str.120, ptr @atmci_req_fops, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @atmci_show_status_reg.sr_bit, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174], section "llvm.metadata"
@0 = internal global [179 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_of_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_of_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_get_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_get_cap._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_configure_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_init_slot.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_set_ios._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_set_ios._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_req_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmci_show_status_reg.sr_bit to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmci_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmci_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %slot_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot_id.i) #11
  %4 = ptrtoint ptr %slot_id.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %slot_id.i, align 4, !annotation !390
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #14
  br label %atmci_of_init.exit.thread

if.end.i:                                         ; preds = %if.then2
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #11
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.atmci_of_init.exit.thread_crit_edge, label %if.end7.i

if.end.i.atmci_of_init.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_of_init.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @of_get_next_child(ptr noundef nonnull %3, ptr noundef null) #11
  %cmp.not78.i = icmp eq ptr %call8.i, null
  br i1 %cmp.not78.i, label %if.end7.i.atmci_of_init.exit_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.atmci_of_init.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_of_init.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %cnp.079.i = phi ptr [ %call44.i, %for.inc.i.for.body.i_crit_edge ], [ %call8.i, %if.end7.i.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %cnp.079.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %slot_id.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool10.not.i, label %if.end16.i, label %do.end14.i

do.end14.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull %cnp.079.i) #14
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i
  %5 = ptrtoint ptr %slot_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slot_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp17.i = icmp ugt i32 %6, 1
  br i1 %cmp17.i, label %do.end21.i, label %if.end23.i

do.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef 2) #14
  call void @of_node_put(ptr noundef nonnull %cnp.079.i) #11
  br label %atmci_of_init.exit

if.end23.i:                                       ; preds = %if.end16.i
  %arrayidx.i = getelementptr %struct.mci_platform_data, ptr %call.i.i, i32 0, i32 2, i32 %6
  %call.i.i71.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %cnp.079.i, ptr noundef nonnull @.str.36, ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i71.i)
  %tobool25.not.i = icmp sgt i32 %call.i.i71.i, -1
  br i1 %tobool25.not.i, label %if.end23.i.if.end30.i_crit_edge, label %if.then26.i

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %slot_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slot_id.i, align 4
  %arrayidx28.i = getelementptr %struct.mci_platform_data, ptr %call.i.i, i32 0, i32 2, i32 %8
  %9 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arrayidx28.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end30.i_crit_edge
  %call.i72.i = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %cnp.079.i, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef null) #11
  %10 = ptrtoint ptr %slot_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slot_id.i, align 4
  %detect_pin.i = getelementptr %struct.mci_platform_data, ptr %call.i.i, i32 0, i32 2, i32 %11, i32 1
  %12 = ptrtoint ptr %detect_pin.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i72.i, ptr %detect_pin.i, align 4
  %call.i73.i = call ptr @of_find_property(ptr noundef nonnull %cnp.079.i, ptr noundef nonnull @.str.38, ptr noundef null) #11
  %tobool.i.i = icmp ne ptr %call.i73.i, null
  %13 = ptrtoint ptr %slot_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slot_id.i, align 4
  %detect_is_active_high.i = getelementptr %struct.mci_platform_data, ptr %call.i.i, i32 0, i32 2, i32 %14, i32 3
  %frombool.i = zext i1 %tobool.i.i to i8
  %15 = ptrtoint ptr %detect_is_active_high.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %detect_is_active_high.i, align 4
  %call.i74.i = call ptr @of_find_property(ptr noundef nonnull %cnp.079.i, ptr noundef nonnull @.str.39, ptr noundef null) #11
  %tobool.i75.i = icmp ne ptr %call.i74.i, null
  %16 = ptrtoint ptr %slot_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slot_id.i, align 4
  %non_removable.i = getelementptr %struct.mci_platform_data, ptr %call.i.i, i32 0, i32 2, i32 %17, i32 4
  %frombool40.i = zext i1 %tobool.i75.i to i8
  %18 = ptrtoint ptr %non_removable.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool40.i, ptr %non_removable.i, align 1
  %call.i76.i = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %cnp.079.i, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef null) #11
  %19 = ptrtoint ptr %slot_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slot_id.i, align 4
  %wp_pin.i = getelementptr %struct.mci_platform_data, ptr %call.i.i, i32 0, i32 2, i32 %20, i32 2
  %21 = ptrtoint ptr %wp_pin.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i76.i, ptr %wp_pin.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end30.i, %do.end14.i
  %call44.i = call ptr @of_get_next_child(ptr noundef nonnull %3, ptr noundef nonnull %cnp.079.i) #11
  %cmp.not.i = icmp eq ptr %call44.i, null
  br i1 %cmp.not.i, label %for.inc.i.atmci_of_init.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.atmci_of_init.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_of_init.exit

atmci_of_init.exit.thread:                        ; preds = %if.end.i.atmci_of_init.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.atmci_of_init.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot_id.i) #11
  br label %do.end

atmci_of_init.exit:                               ; preds = %for.inc.i.atmci_of_init.exit_crit_edge, %do.end21.i, %if.end7.i.atmci_of_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot_id.i) #11
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %atmci_of_init.exit.do.end_crit_edge, label %atmci_of_init.exit.if.end9_crit_edge

atmci_of_init.exit.if.end9_crit_edge:             ; preds = %atmci_of_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

atmci_of_init.exit.do.end_crit_edge:              ; preds = %atmci_of_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %atmci_of_init.exit.do.end_crit_edge, %atmci_of_init.exit.thread
  %retval.0.i306 = phi ptr [ %retval.0.i.ph, %atmci_of_init.exit.thread ], [ %call.i.i, %atmci_of_init.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  %22 = ptrtoint ptr %retval.0.i306 to i32
  br label %cleanup

if.end9:                                          ; preds = %atmci_of_init.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %pdata.0 = phi ptr [ %1, %if.end.if.end9_crit_edge ], [ %call.i.i, %atmci_of_init.exit.if.end9_crit_edge ]
  %call10 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 316, i32 noundef 3520) #11
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %pdev18 = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 32
  %23 = ptrtoint ptr %pdev18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pdev, ptr %pdev18, align 4
  call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @atmci_probe.__key, i16 noundef signext 3) #11
  %queue = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 23
  %24 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 23, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %queue, ptr %prev.i, align 4
  %call24 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %mck = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 31
  %26 = ptrtoint ptr %mck to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call24, ptr %mck, align 4
  %cmp.i289 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end17
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %29
  %add.i = add i32 %sub.i, %31
  %call33 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %29, i32 noundef %add.i) #11
  %regs34 = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %regs34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call33, ptr %regs34, align 4
  %tobool36.not = icmp eq ptr %call33, null
  br i1 %tobool36.not, label %if.end30.cleanup_crit_edge, label %if.end38

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %33 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mck, align 4
  %call.i290 = call i32 @clk_prepare(ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %tobool.not.i291 = icmp eq i32 %call.i290, 0
  br i1 %tobool.not.i291, label %if.end.i292, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i292:                                      ; preds = %if.end38
  %call1.i = call i32 @clk_enable(ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end43, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %34) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end.i292
  %35 = ptrtoint ptr %regs34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs34, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 128) #11, !srcloc !391
  %37 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mck, align 4
  %call46 = call i32 @clk_get_rate(ptr noundef %38) #11
  %bus_hz = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 29
  %39 = ptrtoint ptr %bus_hz to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call46, ptr %bus_hz, align 4
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call, align 4
  %mapbase = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 30
  %42 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %mapbase, align 4
  %tasklet = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 19
  call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @atmci_tasklet_func) #11
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i294 = icmp eq ptr %44, null
  br i1 %tobool.not.i294, label %if.end.i295, label %if.end43.dev_name.exit_crit_edge

if.end43.dev_name.exit_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i295:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i295, %if.end43.dev_name.exit_crit_edge
  %retval.0.i296 = phi ptr [ %46, %if.end.i295 ], [ %44, %if.end43.dev_name.exit_crit_edge ]
  %call.i297 = call i32 @request_threaded_irq(i32 noundef %call10, ptr noundef nonnull @atmci_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i296, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %tobool51.not = icmp eq i32 %call.i297, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mck, align 4
  call void @clk_disable(ptr noundef %48) #11
  call void @clk_unprepare(ptr noundef %48) #11
  br label %cleanup

if.end54:                                         ; preds = %dev_name.exit
  call fastcc void @atmci_get_cap(ptr noundef nonnull %call.i)
  %call55 = call fastcc i32 @atmci_configure_dma(ptr noundef nonnull %call.i)
  %49 = zext i32 %call55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call55, label %if.else [
    i32 -517, label %if.end54.err_dma_probe_defer_crit_edge
    i32 0, label %if.end54.if.end79_crit_edge
  ]

if.end54.if.end79_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.end54.err_dma_probe_defer_crit_edge:           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dma_probe_defer

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %has_pdc = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 34, i32 1
  %50 = ptrtoint ptr %has_pdc to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_pdc, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool61.not = icmp eq i8 %51, 0
  %.str.13..str.9 = select i1 %tobool61.not, ptr @.str.13, ptr @.str.9
  %atmci_prepare_data.atmci_prepare_data_pdc = select i1 %tobool61.not, ptr @atmci_prepare_data, ptr @atmci_prepare_data_pdc
  %atmci_submit_data.atmci_submit_data_pdc = select i1 %tobool61.not, ptr @atmci_submit_data, ptr @atmci_submit_data_pdc
  %atmci_stop_transfer.atmci_stop_transfer_pdc = select i1 %tobool61.not, ptr @atmci_stop_transfer, ptr @atmci_stop_transfer_pdc
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.13..str.9) #14
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.end54.if.end79_crit_edge
  %atmci_prepare_data_pdc.sink = phi ptr [ @atmci_prepare_data_dma, %if.end54.if.end79_crit_edge ], [ %atmci_prepare_data.atmci_prepare_data_pdc, %if.else ]
  %atmci_submit_data_pdc.sink = phi ptr [ @atmci_submit_data_dma, %if.end54.if.end79_crit_edge ], [ %atmci_submit_data.atmci_submit_data_pdc, %if.else ]
  %atmci_stop_transfer_pdc.sink = phi ptr [ @atmci_stop_transfer_dma, %if.end54.if.end79_crit_edge ], [ %atmci_stop_transfer.atmci_stop_transfer_pdc, %if.else ]
  %prepare_data67 = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 35
  %52 = ptrtoint ptr %prepare_data67 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %atmci_prepare_data_pdc.sink, ptr %prepare_data67, align 4
  %submit_data68 = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 36
  %53 = ptrtoint ptr %submit_data68 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %atmci_submit_data_pdc.sink, ptr %submit_data68, align 4
  %stop_transfer69 = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 37
  %54 = ptrtoint ptr %stop_transfer69 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %atmci_stop_transfer_pdc.sink, ptr %stop_transfer69, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %timer = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 26
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @atmci_timeout_timer, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @atmci_probe.__key.15) #11
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i298 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %56 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !393
  %call.i299 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #11
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #11
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #11
  call void @pm_runtime_enable(ptr noundef %dev) #11
  %slot = getelementptr inbounds %struct.mci_platform_data, ptr %pdata.0, i32 0, i32 2
  %57 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool89.not = icmp eq i32 %58, 0
  br i1 %tobool89.not, label %if.end79.if.end99_crit_edge, label %if.then90

if.end79.if.end99_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then90:                                        ; preds = %if.end79
  %call93 = call fastcc i32 @atmci_init_slot(ptr noundef nonnull %call.i, ptr noundef %slot, i32 noundef 0, i32 noundef 0, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %if.then90.if.end99_crit_edge

if.then90.if.end99_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then95:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  %slot96 = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 33
  %59 = ptrtoint ptr %slot96 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %slot96, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %62, i32 0, i32 23
  %63 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_req_size, align 8
  %buf_size = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 6
  %65 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %buf_size, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.then90.if.end99_crit_edge, %if.end79.if.end99_crit_edge
  %tobool126.not = phi i1 [ true, %if.then90.if.end99_crit_edge ], [ false, %if.then95 ], [ true, %if.end79.if.end99_crit_edge ]
  %nr_slots.0 = phi i32 [ 1, %if.then90.if.end99_crit_edge ], [ 2, %if.then95 ], [ 1, %if.end79.if.end99_crit_edge ]
  %ret.0 = phi i32 [ %call93, %if.then90.if.end99_crit_edge ], [ 0, %if.then95 ], [ -19, %if.end79.if.end99_crit_edge ]
  %arrayidx101 = getelementptr %struct.mci_platform_data, ptr %pdata.0, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool103.not = icmp eq i32 %67, 0
  br i1 %tobool103.not, label %if.end99.if.end125_crit_edge, label %if.then104

if.end99.if.end125_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then104:                                       ; preds = %if.end99
  %call107 = call fastcc i32 @atmci_init_slot(ptr noundef nonnull %call.i, ptr noundef %arrayidx101, i32 noundef 1, i32 noundef 1, i32 noundef 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then109, label %if.then104.if.end125_crit_edge

if.then104.if.end125_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then109:                                       ; preds = %if.then104
  %arrayidx112 = getelementptr %struct.atmel_mci, ptr %call.i, i32 0, i32 33, i32 1
  %68 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx112, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %max_req_size114 = getelementptr inbounds %struct.mmc_host, ptr %71, i32 0, i32 23
  %72 = ptrtoint ptr %max_req_size114 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_req_size114, align 8
  %buf_size115 = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 6
  %74 = ptrtoint ptr %buf_size115 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buf_size115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp116 = icmp ugt i32 %73, %75
  br i1 %cmp116, label %if.then117, label %if.then109.if.end132_crit_edge

if.then109.if.end132_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

if.then117:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %buf_size115 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %73, ptr %buf_size115, align 4
  br label %if.end132

if.end125:                                        ; preds = %if.then104.if.end125_crit_edge, %if.end99.if.end125_crit_edge
  %ret.1 = phi i32 [ %call107, %if.then104.if.end125_crit_edge ], [ %ret.0, %if.end99.if.end125_crit_edge ]
  br i1 %tobool126.not, label %do.end130, label %if.end125.if.end132_crit_edge

if.end125.if.end132_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

do.end130:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #14
  br label %err_init_slot

if.end132:                                        ; preds = %if.end125.if.end132_crit_edge, %if.then117, %if.then109.if.end132_crit_edge
  %nr_slots.1312 = phi i32 [ 1, %if.end125.if.end132_crit_edge ], [ %nr_slots.0, %if.then117 ], [ %nr_slots.0, %if.then109.if.end132_crit_edge ]
  %has_rwproof = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 34, i32 5
  %77 = ptrtoint ptr %has_rwproof to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %has_rwproof, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool134.not = icmp eq i8 %78, 0
  br i1 %tobool134.not, label %if.then135, label %if.end132.do.end150_crit_edge

if.end132.do.end150_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end150

if.then135:                                       ; preds = %if.end132
  %buf_size137 = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 6
  %79 = ptrtoint ptr %buf_size137 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buf_size137, align 4
  %buf_phys_addr = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 7
  %call.i300 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %80, ptr noundef %buf_phys_addr, i32 noundef 3264, i32 noundef 0) #11
  %buffer = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 5
  %81 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i300, ptr %buffer, align 4
  %tobool140.not = icmp eq ptr %call.i300, null
  br i1 %tobool140.not, label %if.then141, label %if.then135.do.end150_crit_edge

if.then135.do.end150_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end150

if.then141:                                       ; preds = %if.then135
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #14
  %arrayidx159 = getelementptr %struct.atmel_mci, ptr %call.i, i32 0, i32 33, i32 0
  %82 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx159, align 4
  %tobool160.not = icmp eq ptr %83, null
  br i1 %tobool160.not, label %if.then141.for.inc_crit_edge, label %if.then161

if.then141.for.inc_crit_edge:                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end150:                                        ; preds = %if.then135.do.end150_crit_edge, %if.end132.do.end150_crit_edge
  %84 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mapbase, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %85, i32 noundef %call10, i32 noundef %nr_slots.1312) #14
  %86 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev18, align 4
  %call.i301 = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3, i32 12, i32 22
  %88 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store volatile i64 %call.i301, ptr %last_busy.i, align 8
  %call.i302 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #11
  br label %cleanup

if.then161:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @atmci_cleanup_slot(ptr noundef nonnull %83, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then161, %if.then141.for.inc_crit_edge
  %arrayidx159.1 = getelementptr %struct.atmel_mci, ptr %call.i, i32 0, i32 33, i32 1
  %89 = ptrtoint ptr %arrayidx159.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx159.1, align 4
  %tobool160.not.1 = icmp eq ptr %90, null
  br i1 %tobool160.not.1, label %for.inc.err_init_slot_crit_edge, label %if.then161.1

for.inc.err_init_slot_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_init_slot

if.then161.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @atmci_cleanup_slot(ptr noundef nonnull %90, i32 noundef 1)
  br label %err_init_slot

err_init_slot:                                    ; preds = %if.then161.1, %for.inc.err_init_slot_crit_edge, %do.end130
  %ret.2 = phi i32 [ %ret.1, %do.end130 ], [ -12, %if.then161.1 ], [ -12, %for.inc.err_init_slot_crit_edge ]
  %91 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mck, align 4
  call void @clk_disable(ptr noundef %92) #11
  call void @clk_unprepare(ptr noundef %92) #11
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  %call170 = call i32 @del_timer_sync(ptr noundef %timer) #11
  %dma = getelementptr inbounds %struct.atmel_mci, ptr %call.i, i32 0, i32 13
  %93 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dma, align 4
  %cmp.i303 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i303, label %err_init_slot.err_dma_probe_defer_crit_edge, label %if.then172

err_init_slot.err_dma_probe_defer_crit_edge:      ; preds = %err_init_slot
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dma_probe_defer

if.then172:                                       ; preds = %err_init_slot
  call void @__sanitizer_cov_trace_pc() #13
  call void @dma_release_channel(ptr noundef %94) #11
  br label %err_dma_probe_defer

err_dma_probe_defer:                              ; preds = %if.then172, %err_init_slot.err_dma_probe_defer_crit_edge, %if.end54.err_dma_probe_defer_crit_edge
  %ret.3 = phi i32 [ %call55, %if.end54.err_dma_probe_defer_crit_edge ], [ %ret.2, %err_init_slot.err_dma_probe_defer_crit_edge ], [ %ret.2, %if.then172 ]
  %call176 = call ptr @free_irq(i32 noundef %call10, ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_dma_probe_defer, %do.end150, %if.then52, %if.then3.i, %if.end38.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.then27, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then27 ], [ %call.i297, %if.then52 ], [ %ret.3, %err_dma_probe_defer ], [ 0, %do.end150 ], [ %22, %do.end ], [ -6, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i290, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %buffer = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %buf_size = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_size, align 4
  %buf_phys_addr = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %buf_phys_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull %3, i32 noundef %7, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.atmel_mci, ptr %1, i32 0, i32 33, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @atmci_cleanup_slot(ptr noundef nonnull %9, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.atmel_mci, ptr %1, i32 0, i32 33, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool4.not.1 = icmp eq ptr %11, null
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @atmci_cleanup_slot(ptr noundef nonnull %11, i32 noundef 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.inc.for.inc.1_crit_edge
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #11, !srcloc !391
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 2) #11, !srcloc !391
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %17, i32 64
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #11, !srcloc !394
  %timer = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 26
  %call14 = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  %dma = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma, align 4
  %cmp.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.inc.1.if.end19_crit_edge, label %if.then16

for.inc.1.if.end19_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_release_channel(ptr noundef %20) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.inc.1.if.end19_crit_edge
  %call20 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %call21 = tail call ptr @free_irq(i32 noundef %call20, ptr noundef %1) #11
  %mck = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 31
  %21 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mck, align 4
  tail call void @clk_disable(ptr noundef %22) #11
  tail call void @clk_unprepare(ptr noundef %22) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !396
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end19.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end19.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end19.pm_runtime_put_noidle.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_tasklet_func(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -164
  %mrq1 = getelementptr i8, ptr %t, i32 -88
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %data2 = getelementptr i8, ptr %t, i32 -80
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %state3 = getelementptr i8, ptr %t, i32 32
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #11
  %4 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state3, align 4
  %pdev = getelementptr i8, ptr %t, i32 116
  %pending_events273 = getelementptr i8, ptr %t, i32 24
  %cmd296 = getelementptr i8, ptr %t, i32 -84
  %blocks297 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %blksz298 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %bytes_xfered300 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  %error301 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %stop302 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %cmd_status.i473 = getelementptr i8, ptr %t, i32 -12
  %regs.i474 = getelementptr i8, ptr %t, i32 -120
  %need_blksz_mul_4.i509 = getelementptr i8, ptr %t, i32 137
  %need_reset.i513 = getelementptr i8, ptr %t, i32 45
  %stop_transfer307 = getelementptr i8, ptr %t, i32 148
  %completed_events234 = getelementptr i8, ptr %t, i32 28
  %need_notbusy_for_read_ops = getelementptr i8, ptr %t, i32 138
  %cmd49 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %data50 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond346.do.body_crit_edge, %entry
  %state.0 = phi i32 [ %5, %entry ], [ %state.2, %do.cond346.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !398

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug287, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %state.0) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %8 = zext i32 %state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %state.0, label %do.end.do.end347_crit_edge [
    i32 5, label %sw.bb315
    i32 1, label %do.body9
    i32 2, label %sw.bb106
    i32 3, label %do.body193
    i32 4, label %do.body255
  ]

do.end.do.end347_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end347

do.body9:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then21)) #11
          to label %do.end26 [label %if.then21], !srcloc !398

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug288, ptr noundef %dev23, ptr noundef nonnull @.str.43) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.body9
  %call27 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %pending_events273) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end26.do.cond346_crit_edge, label %do.body31

do.end26.do.cond346_crit_edge:                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond346

do.body31:                                        ; preds = %do.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then43)) #11
          to label %do.end48 [label %if.then43], !srcloc !398

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug289, ptr noundef %dev45, ptr noundef nonnull @.str.44) #11
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body31
  %13 = ptrtoint ptr %cmd296 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cmd296, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %completed_events234) #11
  %14 = ptrtoint ptr %cmd49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd49, align 4
  %16 = ptrtoint ptr %cmd_status.i473 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd_status.i473, align 4
  %18 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i474, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !394
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %resp.i, align 4
  %22 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i474, align 4
  %add.ptr2.i = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !394
  %arrayidx5.i = getelementptr %struct.mmc_command, ptr %15, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx5.i, align 4
  %26 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i474, align 4
  %add.ptr7.i = getelementptr i8, ptr %27, i32 32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !394
  %arrayidx10.i = getelementptr %struct.mmc_command, ptr %15, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx10.i, align 4
  %30 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i474, align 4
  %add.ptr12.i = getelementptr i8, ptr %31, i32 32
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !394
  %arrayidx15.i = getelementptr %struct.mmc_command, ptr %15, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx15.i, align 4
  %and.i = and i32 %17, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #13
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  %34 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -110, ptr %error.i, align 4
  br label %atmci_command_complete.exit

if.else.i:                                        ; preds = %do.end48
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 3
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and16.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %and18.i = and i32 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %or.cond.i = select i1 %tobool17.not.i, i1 true, i1 %tobool19.not.i
  br i1 %or.cond.i, label %if.else22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %error21.i = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  %37 = ptrtoint ptr %error21.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -84, ptr %error21.i, align 4
  br label %atmci_command_complete.exit

if.else22.i:                                      ; preds = %if.else.i
  %and23.i = and i32 %17, 720896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else27.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #13
  %error26.i = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  %38 = ptrtoint ptr %error26.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -5, ptr %error26.i, align 4
  br label %atmci_command_complete.exit

if.else27.i:                                      ; preds = %if.else22.i
  %39 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mrq1, align 4
  %data.i = getelementptr inbounds %struct.mmc_request, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %tobool28.not.i = icmp eq ptr %42, null
  br i1 %tobool28.not.i, label %if.else27.i.if.else38.i_crit_edge, label %land.lhs.true29.i

if.else27.i.if.else38.i_crit_edge:                ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else38.i

land.lhs.true29.i:                                ; preds = %if.else27.i
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blksz.i, align 4
  %and32.i = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %land.lhs.true29.i.if.else38.i_crit_edge, label %if.then34.i

land.lhs.true29.i.if.else38.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else38.i

if.then34.i:                                      ; preds = %land.lhs.true29.i
  %45 = ptrtoint ptr %need_blksz_mul_4.i509 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %need_blksz_mul_4.i509, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool35.not.i = icmp eq i8 %46, 0
  br i1 %tobool35.not.i, label %if.then34.i.atmci_command_complete.exit_crit_edge, label %if.then36.i

if.then34.i.atmci_command_complete.exit_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_command_complete.exit

if.then36.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  %error37.i = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  %47 = ptrtoint ptr %error37.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -22, ptr %error37.i, align 4
  %48 = ptrtoint ptr %need_reset.i513 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %need_reset.i513, align 1
  br label %atmci_command_complete.exit

if.else38.i:                                      ; preds = %land.lhs.true29.i.if.else38.i_crit_edge, %if.else27.i.if.else38.i_crit_edge
  %error39.i = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  %49 = ptrtoint ptr %error39.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %error39.i, align 4
  br label %atmci_command_complete.exit

atmci_command_complete.exit:                      ; preds = %if.else38.i, %if.then36.i, %if.then34.i.atmci_command_complete.exit_crit_edge, %if.then25.i, %if.then20.i, %if.then.i
  %50 = ptrtoint ptr %data50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data50, align 4
  %tobool51.not = icmp eq ptr %51, null
  br i1 %tobool51.not, label %land.lhs.true, label %do.body53

do.body53:                                        ; preds = %atmci_command_complete.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then65)) #11
          to label %do.end70 [label %if.then65], !srcloc !398

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev, align 4
  %dev67 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug290, ptr noundef %dev67, ptr noundef nonnull @.str.45) #11
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %do.body53
  %54 = ptrtoint ptr %cmd49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cmd49, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool72.not = icmp eq i32 %57, 0
  br i1 %tobool72.not, label %do.end70.do.cond346_crit_edge, label %if.then73

do.end70.do.cond346_crit_edge:                    ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond346

if.then73:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %stop_transfer307 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %stop_transfer307, align 4
  tail call void %59(ptr noundef %add.ptr) #11
  %60 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %data2, align 4
  %61 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i474, align 4
  %add.ptr75 = getelementptr i8, ptr %62, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 -1067450362) #11, !srcloc !391
  br label %do.cond346

land.lhs.true:                                    ; preds = %atmci_command_complete.exit
  %63 = ptrtoint ptr %cmd49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cmd49, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 4
  %and = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool81.not = icmp eq i32 %and, 0
  br i1 %tobool81.not, label %land.lhs.true.do.cond346_crit_edge, label %do.body83

land.lhs.true.do.cond346_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond346

do.body83:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then95)) #11
          to label %do.end100 [label %if.then95], !srcloc !398

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev, align 4
  %dev97 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug291, ptr noundef %dev97, ptr noundef nonnull @.str.46) #11
  br label %do.end100

do.end100:                                        ; preds = %if.then95, %do.body83
  %69 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i474, align 4
  %add.ptr102 = getelementptr i8, ptr %70, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 32) #11, !srcloc !391
  br label %do.cond346

sw.bb106:                                         ; preds = %do.end
  %call108 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %pending_events273) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %do.body131, label %do.body111

do.body111:                                       ; preds = %sw.bb106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then123)) #11
          to label %do.end128 [label %if.then123], !srcloc !398

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev, align 4
  %dev125 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug292, ptr noundef %dev125, ptr noundef nonnull @.str.47) #11
  br label %do.end128

do.end128:                                        ; preds = %if.then123, %do.body111
  tail call void @_set_bit(i32 noundef 3, ptr noundef %completed_events234) #11
  br label %do.cond346

do.body131:                                       ; preds = %sw.bb106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then143)) #11
          to label %do.end148 [label %if.then143], !srcloc !398

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev, align 4
  %dev145 = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug293, ptr noundef %dev145, ptr noundef nonnull @.str.48) #11
  br label %do.end148

do.end148:                                        ; preds = %if.then143, %do.body131
  %call150 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %pending_events273) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %do.end148.do.cond346_crit_edge, label %do.body154

do.end148.do.cond346_crit_edge:                   ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond346

do.body154:                                       ; preds = %do.end148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then166)) #11
          to label %do.end171 [label %if.then166], !srcloc !398

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev, align 4
  %dev168 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug294, ptr noundef %dev168, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41) #11
  br label %do.end171

do.end171:                                        ; preds = %if.then166, %do.body154
  tail call void @_set_bit(i32 noundef 1, ptr noundef %completed_events234) #11
  %77 = ptrtoint ptr %need_notbusy_for_read_ops to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %need_notbusy_for_read_ops, align 2, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool173.not = icmp eq i8 %78, 0
  br i1 %tobool173.not, label %lor.lhs.false, label %do.end171.if.then178_crit_edge

do.end171.if.then178_crit_edge:                   ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then178

lor.lhs.false:                                    ; preds = %do.end171
  %79 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data2, align 4
  %flags175 = getelementptr inbounds %struct.mmc_data, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %flags175 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags175, align 4
  %and176 = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.else181, label %lor.lhs.false.if.then178_crit_edge

lor.lhs.false.if.then178_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then178

if.then178:                                       ; preds = %lor.lhs.false.if.then178_crit_edge, %do.end171.if.then178_crit_edge
  %83 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i474, align 4
  %add.ptr180 = getelementptr i8, ptr %84, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 32) #11, !srcloc !391
  br label %do.cond346

if.else181:                                       ; preds = %lor.lhs.false
  %85 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mrq1, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %stop, align 4
  %tobool183.not = icmp eq ptr %88, null
  br i1 %tobool183.not, label %if.else187, label %if.then184

if.then184:                                       ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i474, align 4
  %add.ptr186 = getelementptr i8, ptr %90, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 1) #11, !srcloc !391
  tail call fastcc void @atmci_send_stop_cmd(ptr noundef %add.ptr, ptr noundef %3)
  br label %do.cond346

if.else187:                                       ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %data2, align 4
  %92 = ptrtoint ptr %blocks297 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %blocks297, align 4
  %94 = ptrtoint ptr %blksz298 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %blksz298, align 4
  %mul = mul i32 %95, %93
  %96 = ptrtoint ptr %bytes_xfered300 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mul, ptr %bytes_xfered300, align 4
  %97 = ptrtoint ptr %error301 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %error301, align 4
  br label %do.cond346

do.body193:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then205)) #11
          to label %do.end210 [label %if.then205], !srcloc !398

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev, align 4
  %dev207 = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug295, ptr noundef %dev207, ptr noundef nonnull @.str.50) #11
  br label %do.end210

do.end210:                                        ; preds = %if.then205, %do.body193
  %call212 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %pending_events273) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %do.end210.do.cond346_crit_edge, label %do.body216

do.end210.do.cond346_crit_edge:                   ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond346

do.body216:                                       ; preds = %do.end210
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then228)) #11
          to label %do.end233 [label %if.then228], !srcloc !398

if.then228:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev, align 4
  %dev230 = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug296, ptr noundef %dev230, ptr noundef nonnull @.str.51) #11
  br label %do.end233

do.end233:                                        ; preds = %if.then228, %do.body216
  tail call void @_set_bit(i32 noundef 2, ptr noundef %completed_events234) #11
  %102 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data2, align 4
  %tobool236.not = icmp eq ptr %103, null
  br i1 %tobool236.not, label %do.end233.do.cond346_crit_edge, label %if.then237

do.end233.do.cond346_crit_edge:                   ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond346

if.then237:                                       ; preds = %do.end233
  %104 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mrq1, align 4
  %stop239 = getelementptr inbounds %struct.mmc_request, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %stop239 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %stop239, align 4
  %tobool240.not = icmp eq ptr %107, null
  br i1 %tobool240.not, label %if.else244, label %if.then241

if.then241:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i474, align 4
  %add.ptr243 = getelementptr i8, ptr %109, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 1) #11, !srcloc !391
  tail call fastcc void @atmci_send_stop_cmd(ptr noundef %add.ptr, ptr noundef %3)
  br label %do.cond346

if.else244:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %data2, align 4
  %111 = ptrtoint ptr %blocks297 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %blocks297, align 4
  %113 = ptrtoint ptr %blksz298 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %blksz298, align 4
  %mul248 = mul i32 %114, %112
  %115 = ptrtoint ptr %bytes_xfered300 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %mul248, ptr %bytes_xfered300, align 4
  %116 = ptrtoint ptr %error301 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %error301, align 4
  br label %do.cond346

do.body255:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then267)) #11
          to label %do.end272 [label %if.then267], !srcloc !398

if.then267:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pdev, align 4
  %dev269 = getelementptr inbounds %struct.platform_device, ptr %118, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug297, ptr noundef %dev269, ptr noundef nonnull @.str.43) #11
  br label %do.end272

do.end272:                                        ; preds = %if.then267, %do.body255
  %call274 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %pending_events273) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %do.end272.do.cond346_crit_edge, label %do.body278

do.end272.do.cond346_crit_edge:                   ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond346

do.body278:                                       ; preds = %do.end272
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_tasklet_func, %if.then290)) #11
          to label %do.end295 [label %if.then290], !srcloc !398

if.then290:                                       ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev, align 4
  %dev292 = getelementptr inbounds %struct.platform_device, ptr %120, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_tasklet_func.__UNIQUE_ID_ddebug298, ptr noundef %dev292, ptr noundef nonnull @.str.52) #11
  br label %do.end295

do.end295:                                        ; preds = %if.then290, %do.body278
  %121 = ptrtoint ptr %cmd296 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %cmd296, align 4
  %122 = ptrtoint ptr %blocks297 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %blocks297, align 4
  %124 = ptrtoint ptr %blksz298 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %blksz298, align 4
  %mul299 = mul i32 %125, %123
  %126 = ptrtoint ptr %bytes_xfered300 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %mul299, ptr %bytes_xfered300, align 4
  %127 = ptrtoint ptr %error301 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %error301, align 4
  %128 = ptrtoint ptr %stop302 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %stop302, align 4
  %130 = ptrtoint ptr %cmd_status.i473 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cmd_status.i473, align 4
  %132 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i474, align 4
  %add.ptr.i475 = getelementptr i8, ptr %133, i32 32
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i475) #11, !srcloc !394
  %resp.i476 = getelementptr inbounds %struct.mmc_command, ptr %129, i32 0, i32 2
  %135 = ptrtoint ptr %resp.i476 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %resp.i476, align 4
  %136 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i474, align 4
  %add.ptr2.i477 = getelementptr i8, ptr %137, i32 32
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i477) #11, !srcloc !394
  %arrayidx5.i478 = getelementptr %struct.mmc_command, ptr %129, i32 0, i32 2, i32 1
  %139 = ptrtoint ptr %arrayidx5.i478 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx5.i478, align 4
  %140 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i474, align 4
  %add.ptr7.i479 = getelementptr i8, ptr %141, i32 32
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i479) #11, !srcloc !394
  %arrayidx10.i480 = getelementptr %struct.mmc_command, ptr %129, i32 0, i32 2, i32 2
  %143 = ptrtoint ptr %arrayidx10.i480 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %arrayidx10.i480, align 4
  %144 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i474, align 4
  %add.ptr12.i481 = getelementptr i8, ptr %145, i32 32
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i481) #11, !srcloc !394
  %arrayidx15.i482 = getelementptr %struct.mmc_command, ptr %129, i32 0, i32 2, i32 3
  %147 = ptrtoint ptr %arrayidx15.i482 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %arrayidx15.i482, align 4
  %and.i483 = and i32 %131, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i483)
  %tobool.not.i484 = icmp eq i32 %and.i483, 0
  br i1 %tobool.not.i484, label %if.else.i493, label %if.then.i486

if.then.i486:                                     ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #13
  %error.i485 = getelementptr inbounds %struct.mmc_command, ptr %129, i32 0, i32 5
  %148 = ptrtoint ptr %error.i485 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -110, ptr %error.i485, align 4
  br label %atmci_command_complete.exit517

if.else.i493:                                     ; preds = %do.end295
  %flags.i487 = getelementptr inbounds %struct.mmc_command, ptr %129, i32 0, i32 3
  %149 = ptrtoint ptr %flags.i487 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i487, align 4
  %and16.i488 = and i32 %150, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i488)
  %tobool17.not.i489 = icmp eq i32 %and16.i488, 0
  %and18.i490 = and i32 %131, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i490)
  %tobool19.not.i491 = icmp eq i32 %and18.i490, 0
  %or.cond.i492 = select i1 %tobool17.not.i489, i1 true, i1 %tobool19.not.i491
  br i1 %or.cond.i492, label %if.else22.i498, label %if.then20.i495

if.then20.i495:                                   ; preds = %if.else.i493
  call void @__sanitizer_cov_trace_pc() #13
  %error21.i494 = getelementptr inbounds %struct.mmc_command, ptr %129, i32 0, i32 5
  %151 = ptrtoint ptr %error21.i494 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -84, ptr %error21.i494, align 4
  br label %atmci_command_complete.exit517

if.else22.i498:                                   ; preds = %if.else.i493
  %and23.i496 = and i32 %131, 720896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i496)
  %tobool24.not.i497 = icmp eq i32 %and23.i496, 0
  br i1 %tobool24.not.i497, label %if.else27.i504, label %if.then25.i500

if.then25.i500:                                   ; preds = %if.else22.i498
  call void @__sanitizer_cov_trace_pc() #13
  %error26.i499 = getelementptr inbounds %struct.mmc_command, ptr %129, i32 0, i32 5
  %152 = ptrtoint ptr %error26.i499 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -5, ptr %error26.i499, align 4
  br label %atmci_command_complete.exit517

if.else27.i504:                                   ; preds = %if.else22.i498
  %153 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mrq1, align 4
  %data.i502 = getelementptr inbounds %struct.mmc_request, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %data.i502 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %data.i502, align 4
  %tobool28.not.i503 = icmp eq ptr %156, null
  br i1 %tobool28.not.i503, label %if.else27.i504.if.else38.i516_crit_edge, label %land.lhs.true29.i508

if.else27.i504.if.else38.i516_crit_edge:          ; preds = %if.else27.i504
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else38.i516

land.lhs.true29.i508:                             ; preds = %if.else27.i504
  %blksz.i505 = getelementptr inbounds %struct.mmc_data, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %blksz.i505 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %blksz.i505, align 4
  %and32.i506 = and i32 %158, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i506)
  %tobool33.not.i507 = icmp eq i32 %and32.i506, 0
  br i1 %tobool33.not.i507, label %land.lhs.true29.i508.if.else38.i516_crit_edge, label %if.then34.i511

land.lhs.true29.i508.if.else38.i516_crit_edge:    ; preds = %land.lhs.true29.i508
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else38.i516

if.then34.i511:                                   ; preds = %land.lhs.true29.i508
  %159 = ptrtoint ptr %need_blksz_mul_4.i509 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %need_blksz_mul_4.i509, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool35.not.i510 = icmp eq i8 %160, 0
  br i1 %tobool35.not.i510, label %if.then34.i511.atmci_command_complete.exit517_crit_edge, label %if.then36.i514

if.then34.i511.atmci_command_complete.exit517_crit_edge: ; preds = %if.then34.i511
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_command_complete.exit517

if.then36.i514:                                   ; preds = %if.then34.i511
  call void @__sanitizer_cov_trace_pc() #13
  %error37.i512 = getelementptr inbounds %struct.mmc_command, ptr %129, i32 0, i32 5
  %161 = ptrtoint ptr %error37.i512 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -22, ptr %error37.i512, align 4
  %162 = ptrtoint ptr %need_reset.i513 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %need_reset.i513, align 1
  br label %atmci_command_complete.exit517

if.else38.i516:                                   ; preds = %land.lhs.true29.i508.if.else38.i516_crit_edge, %if.else27.i504.if.else38.i516_crit_edge
  %error39.i515 = getelementptr inbounds %struct.mmc_command, ptr %129, i32 0, i32 5
  %163 = ptrtoint ptr %error39.i515 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %error39.i515, align 4
  br label %atmci_command_complete.exit517

atmci_command_complete.exit517:                   ; preds = %if.else38.i516, %if.then36.i514, %if.then34.i511.atmci_command_complete.exit517_crit_edge, %if.then25.i500, %if.then20.i495, %if.then.i486
  %164 = ptrtoint ptr %stop302 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %stop302, align 4
  %error304 = getelementptr inbounds %struct.mmc_command, ptr %165, i32 0, i32 5
  %166 = ptrtoint ptr %error304 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %error304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool305.not = icmp eq i32 %167, 0
  br i1 %tobool305.not, label %if.else310, label %if.then306

if.then306:                                       ; preds = %atmci_command_complete.exit517
  call void @__sanitizer_cov_trace_pc() #13
  %168 = ptrtoint ptr %stop_transfer307 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %stop_transfer307, align 4
  tail call void %169(ptr noundef %add.ptr) #11
  %170 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i474, align 4
  %add.ptr309 = getelementptr i8, ptr %171, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr309, i32 -1067450362) #11, !srcloc !391
  br label %if.end313

if.else310:                                       ; preds = %atmci_command_complete.exit517
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i474, align 4
  %add.ptr312 = getelementptr i8, ptr %173, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr312, i32 32) #11, !srcloc !391
  br label %if.end313

if.end313:                                        ; preds = %if.else310, %if.then306
  %state.1 = phi i32 [ 5, %if.then306 ], [ 3, %if.else310 ]
  %174 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %data2, align 4
  br label %do.cond346

sw.bb315:                                         ; preds = %do.end
  %175 = ptrtoint ptr %regs.i474 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs.i474, align 4
  %add.ptr317 = getelementptr i8, ptr %176, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr317, i32 -1067450362) #11, !srcloc !391
  %data_status = getelementptr i8, ptr %t, i32 -8
  %177 = ptrtoint ptr %data_status to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %data_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool318.not = icmp eq i32 %178, 0
  br i1 %tobool318.not, label %sw.bb315.if.end344_crit_edge, label %if.then325, !prof !399

sw.bb315.if.end344_crit_edge:                     ; preds = %sw.bb315
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end344

if.then325:                                       ; preds = %sw.bb315
  %179 = ptrtoint ptr %stop_transfer307 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %stop_transfer307, align 4
  tail call void %180(ptr noundef %add.ptr) #11
  %181 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %data2, align 4
  %tobool328.not = icmp eq ptr %3, null
  br i1 %tobool328.not, label %if.then325.if.end344_crit_edge, label %if.then329

if.then325.if.end344_crit_edge:                   ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end344

if.then329:                                       ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #13
  %and330 = and i32 %178, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330)
  %tobool331.not = icmp eq i32 %and330, 0
  %and335 = and i32 %178, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335)
  %tobool336.not = icmp eq i32 %and335, 0
  %. = select i1 %tobool336.not, i32 -5, i32 -84
  %.sink = select i1 %tobool331.not, i32 %., i32 -110
  %182 = ptrtoint ptr %error301 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %.sink, ptr %error301, align 4
  br label %if.end344

if.end344:                                        ; preds = %if.then329, %if.then325.if.end344_crit_edge, %sw.bb315.if.end344_crit_edge
  %183 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %mrq1, align 4
  tail call fastcc void @atmci_request_end(ptr noundef %add.ptr, ptr noundef %184)
  br label %unlock

do.cond346:                                       ; preds = %if.end313, %do.end272.do.cond346_crit_edge, %if.else244, %if.then241, %do.end233.do.cond346_crit_edge, %do.end210.do.cond346_crit_edge, %if.else187, %if.then184, %if.then178, %do.end148.do.cond346_crit_edge, %do.end128, %do.end100, %land.lhs.true.do.cond346_crit_edge, %if.then73, %do.end70.do.cond346_crit_edge, %do.end26.do.cond346_crit_edge
  %state.2 = phi i32 [ %state.1, %if.end313 ], [ 4, %do.end272.do.cond346_crit_edge ], [ 4, %if.then241 ], [ 5, %if.else244 ], [ 3, %do.end210.do.cond346_crit_edge ], [ 5, %do.end128 ], [ 3, %if.then178 ], [ 4, %if.then184 ], [ 5, %if.else187 ], [ 2, %do.end148.do.cond346_crit_edge ], [ 5, %if.then73 ], [ 3, %do.end100 ], [ 1, %do.end26.do.cond346_crit_edge ], [ 2, %do.end70.do.cond346_crit_edge ], [ 5, %land.lhs.true.do.cond346_crit_edge ], [ 5, %do.end233.do.cond346_crit_edge ]
  %cmp.not = icmp eq i32 %state.2, %state.0
  br i1 %cmp.not, label %do.cond346.do.end347_crit_edge, label %do.cond346.do.body_crit_edge

do.cond346.do.body_crit_edge:                     ; preds = %do.cond346
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.cond346.do.end347_crit_edge:                   ; preds = %do.cond346
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end347

do.end347:                                        ; preds = %do.cond346.do.end347_crit_edge, %do.end.do.end347_crit_edge
  %185 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %state.0, ptr %state3, align 4
  br label %unlock

unlock:                                           ; preds = %do.end347, %if.end344
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %value.i453 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 1
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 32
  %data_status = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 17
  %pending_events = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 20
  %state.i = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 19, i32 1
  %tasklet = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 19
  %data_size = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 12
  %sg1.i = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 2
  %pio_offset.i = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 4
  %data2.i = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 11
  %sg_len.i = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 3
  %cmd_status = getelementptr inbounds %struct.atmel_mci, ptr %dev_id, i32 0, i32 16
  %arrayidx.i = getelementptr %struct.atmel_mci, ptr %dev_id, i32 0, i32 33, i32 0
  %arrayidx.1.i = getelementptr %struct.atmel_mci, ptr %dev_id, i32 0, i32 33, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond333.do.body_crit_edge, %entry
  %pass_count.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond333.do.body_crit_edge ]
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !394
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 76
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !394
  %and = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end334_crit_edge, label %if.end

do.body.do.end334_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end334

if.end:                                           ; preds = %do.body
  %and4 = and i32 %and, -1067450368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end40_crit_edge, label %do.body7

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

do.body7:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then12)) #11
          to label %do.end [label %if.then12], !srcloc !398

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.59) #11
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body7
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -1067401018) #11, !srcloc !391
  %10 = ptrtoint ptr %data_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %2, ptr %data_status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then28)) #11
          to label %do.end37 [label %if.then28], !srcloc !398

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug300, ptr noundef %dev30, ptr noundef nonnull @.str.60) #11
  br label %do.end37

do.end37:                                         ; preds = %if.then28, %do.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !400
  call void @_set_bit(i32 noundef 3, ptr noundef %pending_events) #11
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end37.if.end40_crit_edge

do.end37.if.end40_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then.i:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then.i, %do.end37.if.end40_crit_edge, %if.end.if.end40_crit_edge
  %and41 = and i32 %and, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else73, label %do.body44

do.body44:                                        ; preds = %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then56)) #11
          to label %do.end61 [label %if.then56], !srcloc !398

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev58 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug301, ptr noundef %dev58, ptr noundef nonnull @.str.61) #11
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %do.body44
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr63 = getelementptr i8, ptr %16, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 32768) #11, !srcloc !391
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr65 = getelementptr i8, ptr %18, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 128) #11, !srcloc !391
  %19 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool66.not = icmp eq i32 %20, 0
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %do.end61
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %dev_id, i32 noundef 1, i32 noundef 0) #11
  %21 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i436 = icmp eq i32 %22, 0
  br i1 %tobool.not.i436, label %if.then67.atmci_pdc_set_both_buf.exit_crit_edge, label %if.then.i437

if.then67.atmci_pdc_set_both_buf.exit_crit_edge:  ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_pdc_set_both_buf.exit

if.then.i437:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %dev_id, i32 noundef 1, i32 noundef 1) #11
  br label %atmci_pdc_set_both_buf.exit

atmci_pdc_set_both_buf.exit:                      ; preds = %if.then.i437, %if.then67.atmci_pdc_set_both_buf.exit_crit_edge
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr69 = getelementptr i8, ptr %24, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 128) #11, !srcloc !391
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr71 = getelementptr i8, ptr %26, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 32768) #11, !srcloc !391
  br label %if.end104

if.else:                                          ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @atmci_pdc_complete(ptr noundef %dev_id)
  br label %if.end104

if.else73:                                        ; preds = %if.end40
  %and74 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else73.if.end104_crit_edge, label %do.body77

if.else73.if.end104_crit_edge:                    ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

do.body77:                                        ; preds = %if.else73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then89)) #11
          to label %do.end94 [label %if.then89], !srcloc !398

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev91 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug302, ptr noundef %dev91, ptr noundef nonnull @.str.62) #11
  br label %do.end94

do.end94:                                         ; preds = %if.then89, %do.body77
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr96 = getelementptr i8, ptr %30, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 128) #11, !srcloc !391
  %31 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool98.not = icmp eq i32 %32, 0
  br i1 %tobool98.not, label %do.end94.if.end104_crit_edge, label %if.then99

do.end94.if.end104_crit_edge:                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then99:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %dev_id, i32 noundef 1, i32 noundef 1)
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr101 = getelementptr i8, ptr %34, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 128) #11, !srcloc !391
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %do.end94.if.end104_crit_edge, %if.else73.if.end104_crit_edge, %if.else, %atmci_pdc_set_both_buf.exit
  %and105 = and i32 %and, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.else139, label %do.body108

do.body108:                                       ; preds = %if.end104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then120)) #11
          to label %do.end125 [label %if.then120], !srcloc !398

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 4
  %dev122 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug303, ptr noundef %dev122, ptr noundef nonnull @.str.63) #11
  br label %do.end125

do.end125:                                        ; preds = %if.then120, %do.body108
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr127 = getelementptr i8, ptr %38, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 16384) #11, !srcloc !391
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr129 = getelementptr i8, ptr %40, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 64) #11, !srcloc !391
  %41 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool131.not = icmp eq i32 %42, 0
  br i1 %tobool131.not, label %if.else137, label %if.then132

if.then132:                                       ; preds = %do.end125
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %dev_id, i32 noundef 0, i32 noundef 0) #11
  %43 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i439 = icmp eq i32 %44, 0
  br i1 %tobool.not.i439, label %if.then132.atmci_pdc_set_both_buf.exit441_crit_edge, label %if.then.i440

if.then132.atmci_pdc_set_both_buf.exit441_crit_edge: ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_pdc_set_both_buf.exit441

if.then.i440:                                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %dev_id, i32 noundef 0, i32 noundef 1) #11
  br label %atmci_pdc_set_both_buf.exit441

atmci_pdc_set_both_buf.exit441:                   ; preds = %if.then.i440, %if.then132.atmci_pdc_set_both_buf.exit441_crit_edge
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr134 = getelementptr i8, ptr %46, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 64) #11, !srcloc !391
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr136 = getelementptr i8, ptr %48, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 16384) #11, !srcloc !391
  br label %if.end170

if.else137:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @atmci_pdc_complete(ptr noundef %dev_id)
  br label %if.end170

if.else139:                                       ; preds = %if.end104
  %and140 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.else139.if.end170_crit_edge, label %do.body143

if.else139.if.end170_crit_edge:                   ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

do.body143:                                       ; preds = %if.else139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then155)) #11
          to label %do.end160 [label %if.then155], !srcloc !398

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 4
  %dev157 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug304, ptr noundef %dev157, ptr noundef nonnull @.str.64) #11
  br label %do.end160

do.end160:                                        ; preds = %if.then155, %do.body143
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr162 = getelementptr i8, ptr %52, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 64) #11, !srcloc !391
  %53 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool164.not = icmp eq i32 %54, 0
  br i1 %tobool164.not, label %do.end160.if.end170_crit_edge, label %if.then165

do.end160.if.end170_crit_edge:                    ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.then165:                                       ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %dev_id, i32 noundef 0, i32 noundef 1)
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr167 = getelementptr i8, ptr %56, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 64) #11, !srcloc !391
  br label %if.end170

if.end170:                                        ; preds = %if.then165, %do.end160.if.end170_crit_edge, %if.else139.if.end170_crit_edge, %if.else137, %atmci_pdc_set_both_buf.exit441
  %and171 = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end170.if.end220_crit_edge, label %do.body174

if.end170.if.end220_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end220

do.body174:                                       ; preds = %if.end170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then186)) #11
          to label %do.end191 [label %if.then186], !srcloc !398

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev, align 4
  %dev188 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug305, ptr noundef %dev188, ptr noundef nonnull @.str.65) #11
  br label %do.end191

do.end191:                                        ; preds = %if.then186, %do.body174
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %add.ptr193 = getelementptr i8, ptr %60, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 8) #11, !srcloc !391
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !401
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then212)) #11
          to label %do.end217 [label %if.then212], !srcloc !398

if.then212:                                       ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev, align 4
  %dev214 = getelementptr inbounds %struct.platform_device, ptr %62, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug306, ptr noundef %dev214, ptr noundef nonnull @.str.66) #11
  br label %do.end217

do.end217:                                        ; preds = %if.then212, %do.end191
  call void @_set_bit(i32 noundef 2, ptr noundef %pending_events) #11
  %call.i443 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i443)
  %tobool.not.i444 = icmp eq i32 %call.i443, 0
  br i1 %tobool.not.i444, label %if.then.i445, label %do.end217.if.end220_crit_edge

do.end217.if.end220_crit_edge:                    ; preds = %do.end217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end220

if.then.i445:                                     ; preds = %do.end217
  call void @__sanitizer_cov_trace_pc() #13
  call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %if.end220

if.end220:                                        ; preds = %if.then.i445, %do.end217.if.end220_crit_edge, %if.end170.if.end220_crit_edge
  %and221 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.end220.if.end270_crit_edge, label %do.body224

if.end220.if.end270_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end270

do.body224:                                       ; preds = %if.end220
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then236)) #11
          to label %do.end241 [label %if.then236], !srcloc !398

if.then236:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev, align 4
  %dev238 = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug307, ptr noundef %dev238, ptr noundef nonnull @.str.67) #11
  br label %do.end241

do.end241:                                        ; preds = %if.then236, %do.body224
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr243 = getelementptr i8, ptr %66, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 32) #11, !srcloc !391
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !402
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then262)) #11
          to label %do.end267 [label %if.then262], !srcloc !398

if.then262:                                       ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev, align 4
  %dev264 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug308, ptr noundef %dev264, ptr noundef nonnull @.str.66) #11
  br label %do.end267

do.end267:                                        ; preds = %if.then262, %do.end241
  call void @_set_bit(i32 noundef 2, ptr noundef %pending_events) #11
  %call.i448 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i448)
  %tobool.not.i449 = icmp eq i32 %call.i448, 0
  br i1 %tobool.not.i449, label %if.then.i450, label %do.end267.if.end270_crit_edge

do.end267.if.end270_crit_edge:                    ; preds = %do.end267
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end270

if.then.i450:                                     ; preds = %do.end267
  call void @__sanitizer_cov_trace_pc() #13
  call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %if.end270

if.end270:                                        ; preds = %if.then.i450, %do.end267.if.end270_crit_edge, %if.end220.if.end270_crit_edge
  %and271 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271)
  %tobool272.not = icmp eq i32 %and271, 0
  br i1 %tobool272.not, label %if.end270.if.end274_crit_edge, label %if.then273

if.end270.if.end274_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end274

if.then273:                                       ; preds = %if.end270
  %69 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sg1.i, align 4
  %71 = ptrtoint ptr %pio_offset.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pio_offset.i, align 4
  %73 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #11
  %75 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %value.i, align 4, !annotation !390
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then273
  %sg.0.i = phi ptr [ %70, %if.then273 ], [ %sg.1.i, %do.cond.i.do.body.i_crit_edge ]
  %offset.0.i = phi i32 [ %72, %if.then273 ], [ %offset.2.i, %do.cond.i.do.body.i_crit_edge ]
  %nbytes.0.i = phi i32 [ 0, %if.then273 ], [ %nbytes.2.i, %do.cond.i.do.body.i_crit_edge ]
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %77, i32 48
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !394
  %79 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %value.i, align 4
  %add.i = add i32 %offset.0.i, 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0.i, i32 0, i32 2
  %80 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %81)
  %cmp.not.i = icmp ugt i32 %add.i, %81
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i452, !prof !403

if.then.i452:                                     ; preds = %do.body.i
  %call4.i = call i32 @sg_pcopy_from_buffer(ptr noundef %sg.0.i, i32 noundef 1, ptr noundef nonnull %value.i, i32 noundef 4, i32 noundef %offset.0.i) #11
  %add6.i = add i32 %nbytes.0.i, 4
  %82 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %83)
  %cmp8.i = icmp eq i32 %add.i, %83
  br i1 %cmp8.i, label %if.then9.i, label %if.then.i452.if.end36.i_crit_edge

if.then.i452.if.end36.i_crit_edge:                ; preds = %if.then.i452
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then9.i:                                       ; preds = %if.then.i452
  %84 = ptrtoint ptr %sg.0.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sg.0.i, align 4
  %and.i.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !399

do.body2.i.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !404
  unreachable

sg_page.exit.i:                                   ; preds = %if.then9.i
  %and.i.i = and i32 %85, -4
  %86 = inttoptr i32 %and.i.i to ptr
  call void @flush_dcache_page(ptr noundef %86) #11
  %call11.i = call ptr @sg_next(ptr noundef %sg.0.i) #11
  %87 = ptrtoint ptr %sg1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call11.i, ptr %sg1.i, align 4
  %88 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sg_len.i, align 4
  %dec.i = add i32 %89, -1
  store i32 %dec.i, ptr %sg_len.i, align 4
  %tobool13.not.i = icmp eq ptr %call11.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool15.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool13.not.i, i1 true, i1 %tobool15.not.i
  br i1 %or.cond.i, label %sg_page.exit.i.done.i_crit_edge, label %sg_page.exit.i.if.end36.i_crit_edge

sg_page.exit.i.if.end36.i_crit_edge:              ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

sg_page.exit.i.done.i_crit_edge:                  ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.else.i:                                        ; preds = %do.body.i
  %sub.i = sub i32 %81, %offset.0.i
  %call19.i = call i32 @sg_pcopy_from_buffer(ptr noundef %sg.0.i, i32 noundef 1, ptr noundef nonnull %value.i, i32 noundef %sub.i, i32 noundef %offset.0.i) #11
  %90 = ptrtoint ptr %sg.0.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sg.0.i, align 4
  %and.i.i120.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i120.i)
  %tobool.i.not.i121.i = icmp eq i32 %and.i.i120.i, 0
  br i1 %tobool.i.not.i121.i, label %sg_page.exit124.i, label %do.body2.i122.i, !prof !399

do.body2.i122.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !404
  unreachable

sg_page.exit124.i:                                ; preds = %if.else.i
  %and.i123.i = and i32 %91, -4
  %92 = inttoptr i32 %and.i123.i to ptr
  call void @flush_dcache_page(ptr noundef %92) #11
  %call22.i = call ptr @sg_next(ptr noundef %sg.0.i) #11
  %93 = ptrtoint ptr %sg1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call22.i, ptr %sg1.i, align 4
  %94 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sg_len.i, align 4
  %dec25.i = add i32 %95, -1
  store i32 %dec25.i, ptr %sg_len.i, align 4
  %tobool26.not.i = icmp eq ptr %call22.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec25.i)
  %tobool29.not.i = icmp eq i32 %dec25.i, 0
  %or.cond118.i = select i1 %tobool26.not.i, i1 true, i1 %tobool29.not.i
  br i1 %or.cond118.i, label %done.split.loop.exit.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %sg_page.exit124.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub32.i = sub i32 4, %sub.i
  %add.ptr33.i = getelementptr i8, ptr %value.i, i32 %sub.i
  %call34.i = call i32 @sg_pcopy_from_buffer(ptr noundef nonnull %call22.i, i32 noundef 1, ptr noundef %add.ptr33.i, i32 noundef %sub32.i, i32 noundef 0) #11
  %add35.i = add i32 %nbytes.0.i, 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %cleanup.thread.i, %sg_page.exit.i.if.end36.i_crit_edge, %if.then.i452.if.end36.i_crit_edge
  %sg.1.i = phi ptr [ %sg.0.i, %if.then.i452.if.end36.i_crit_edge ], [ %call11.i, %sg_page.exit.i.if.end36.i_crit_edge ], [ %call22.i, %cleanup.thread.i ]
  %offset.2.i = phi i32 [ %add.i, %if.then.i452.if.end36.i_crit_edge ], [ 0, %sg_page.exit.i.if.end36.i_crit_edge ], [ %sub32.i, %cleanup.thread.i ]
  %nbytes.2.i = phi i32 [ %add6.i, %if.then.i452.if.end36.i_crit_edge ], [ %add6.i, %sg_page.exit.i.if.end36.i_crit_edge ], [ %add35.i, %cleanup.thread.i ]
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %add.ptr38.i = getelementptr i8, ptr %97, i32 64
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #11, !srcloc !394
  %and.i = and i32 %98, -1067450368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool40.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool40.not.i, label %do.cond.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs, align 4
  %add.ptr43.i = getelementptr i8, ptr %100, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 -1067450334) #11, !srcloc !391
  %101 = ptrtoint ptr %data_status to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %98, ptr %data_status, align 4
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %74, i32 0, i32 7
  %102 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bytes_xfered.i, align 4
  %add44.i = add i32 %103, %nbytes.2.i
  store i32 %add44.i, ptr %bytes_xfered.i, align 4
  br label %atmci_read_data_pio.exit

do.cond.i:                                        ; preds = %if.end36.i
  %and46.i = and i32 %98, 2
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %pio_offset.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %offset.2.i, ptr %pio_offset.i, align 4
  %bytes_xfered49.i = getelementptr inbounds %struct.mmc_data, ptr %74, i32 0, i32 7
  %105 = ptrtoint ptr %bytes_xfered49.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bytes_xfered49.i, align 4
  %add50.i = add i32 %106, %nbytes.2.i
  store i32 %add50.i, ptr %bytes_xfered49.i, align 4
  br label %atmci_read_data_pio.exit

done.split.loop.exit.i:                           ; preds = %sg_page.exit124.i
  call void @__sanitizer_cov_trace_pc() #13
  %add20.le.i = add i32 %sub.i, %nbytes.0.i
  br label %done.i

done.i:                                           ; preds = %done.split.loop.exit.i, %sg_page.exit.i.done.i_crit_edge
  %nbytes.3.i = phi i32 [ %add20.le.i, %done.split.loop.exit.i ], [ %add6.i, %sg_page.exit.i.done.i_crit_edge ]
  %107 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs, align 4
  %add.ptr52.i = getelementptr i8, ptr %108, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 2) #11, !srcloc !391
  %109 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs, align 4
  %add.ptr54.i = getelementptr i8, ptr %110, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 32) #11, !srcloc !391
  %bytes_xfered55.i = getelementptr inbounds %struct.mmc_data, ptr %74, i32 0, i32 7
  %111 = ptrtoint ptr %bytes_xfered55.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bytes_xfered55.i, align 4
  %add56.i = add i32 %112, %nbytes.3.i
  store i32 %add56.i, ptr %bytes_xfered55.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !405
  call void @_set_bit(i32 noundef 1, ptr noundef %pending_events) #11
  br label %atmci_read_data_pio.exit

atmci_read_data_pio.exit:                         ; preds = %done.i, %do.end.i, %if.then41.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #11
  br label %if.end274

if.end274:                                        ; preds = %atmci_read_data_pio.exit, %if.end270.if.end274_crit_edge
  %and275 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %tobool276.not = icmp eq i32 %and275, 0
  br i1 %tobool276.not, label %if.end274.if.end278_crit_edge, label %if.then277

if.end274.if.end278_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end278

if.then277:                                       ; preds = %if.end274
  %113 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sg1.i, align 4
  %115 = ptrtoint ptr %pio_offset.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pio_offset.i, align 4
  %117 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i453) #11
  %119 = ptrtoint ptr %value.i453 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %value.i453, align 4, !annotation !390
  br label %do.body.i465

do.body.i465:                                     ; preds = %do.cond.i483.do.body.i465_crit_edge, %if.then277
  %sg.0.i459 = phi ptr [ %114, %if.then277 ], [ %sg.1.i477, %do.cond.i483.do.body.i465_crit_edge ]
  %offset.0.i460 = phi i32 [ %116, %if.then277 ], [ %offset.2.i478, %do.cond.i483.do.body.i465_crit_edge ]
  %nbytes.0.i461 = phi i32 [ 0, %if.then277 ], [ %nbytes.2.i479, %do.cond.i483.do.body.i465_crit_edge ]
  %add.i462 = add i32 %offset.0.i460, 4
  %length.i463 = getelementptr inbounds %struct.scatterlist, ptr %sg.0.i459, i32 0, i32 2
  %120 = ptrtoint ptr %length.i463 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %length.i463, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i462, i32 %121)
  %cmp.not.i464 = icmp ugt i32 %add.i462, %121
  br i1 %cmp.not.i464, label %if.else.i475, label %if.then.i468, !prof !403

if.then.i468:                                     ; preds = %do.body.i465
  %call.i466 = call i32 @sg_pcopy_to_buffer(ptr noundef %sg.0.i459, i32 noundef 1, ptr noundef nonnull %value.i453, i32 noundef 4, i32 noundef %offset.0.i460) #11
  %122 = ptrtoint ptr %value.i453 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %value.i453, align 4
  %124 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs, align 4
  %add.ptr.i467 = getelementptr i8, ptr %125, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i467, i32 %123) #11, !srcloc !391
  %add5.i = add i32 %nbytes.0.i461, 4
  %126 = ptrtoint ptr %length.i463 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %length.i463, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i462, i32 %127)
  %cmp7.i = icmp eq i32 %add.i462, %127
  br i1 %cmp7.i, label %if.then8.i, label %if.then.i468.if.end37.i_crit_edge

if.then.i468.if.end37.i_crit_edge:                ; preds = %if.then.i468
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then8.i:                                       ; preds = %if.then.i468
  %call9.i = call ptr @sg_next(ptr noundef %sg.0.i459) #11
  %128 = ptrtoint ptr %sg1.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call9.i, ptr %sg1.i, align 4
  %129 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sg_len.i, align 4
  %dec.i469 = add i32 %130, -1
  store i32 %dec.i469, ptr %sg_len.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i469)
  %tobool13.not.i470 = icmp eq i32 %dec.i469, 0
  %or.cond.i471 = select i1 %tobool11.not.i, i1 true, i1 %tobool13.not.i470
  br i1 %or.cond.i471, label %if.then8.i.done.i487_crit_edge, label %if.then8.i.if.end37.i_crit_edge

if.then8.i.if.end37.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then8.i.done.i487_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i487

if.else.i475:                                     ; preds = %do.body.i465
  %sub.i472 = sub i32 %121, %offset.0.i460
  %131 = ptrtoint ptr %value.i453 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %value.i453, align 4
  %call17.i = call i32 @sg_pcopy_to_buffer(ptr noundef %sg.0.i459, i32 noundef 1, ptr noundef nonnull %value.i453, i32 noundef %sub.i472, i32 noundef %offset.0.i460) #11
  %call19.i473 = call ptr @sg_next(ptr noundef %sg.0.i459) #11
  %132 = ptrtoint ptr %sg1.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call19.i473, ptr %sg1.i, align 4
  %133 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sg_len.i, align 4
  %dec22.i = add i32 %134, -1
  store i32 %dec22.i, ptr %sg_len.i, align 4
  %tobool23.not.i = icmp eq ptr %call19.i473, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec22.i)
  %tobool26.not.i474 = icmp eq i32 %dec22.i, 0
  %or.cond119.i = select i1 %tobool23.not.i, i1 true, i1 %tobool26.not.i474
  br i1 %or.cond119.i, label %cleanup.i, label %cleanup.thread.i476

cleanup.thread.i476:                              ; preds = %if.else.i475
  call void @__sanitizer_cov_trace_pc() #13
  %sub31.i = sub i32 4, %sub.i472
  %add.ptr32.i = getelementptr i8, ptr %value.i453, i32 %sub.i472
  %call33.i = call i32 @sg_pcopy_to_buffer(ptr noundef nonnull %call19.i473, i32 noundef 1, ptr noundef %add.ptr32.i, i32 noundef %sub31.i, i32 noundef 0) #11
  %135 = ptrtoint ptr %value.i453 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %value.i453, align 4
  %137 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs, align 4
  %add.ptr35.i = getelementptr i8, ptr %138, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %136) #11, !srcloc !391
  %add36.i = add i32 %nbytes.0.i461, 4
  br label %if.end37.i

cleanup.i:                                        ; preds = %if.else.i475
  call void @__sanitizer_cov_trace_pc() #13
  %add18.i = add i32 %sub.i472, %nbytes.0.i461
  %139 = ptrtoint ptr %value.i453 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %value.i453, align 4
  %141 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs, align 4
  %add.ptr29.i = getelementptr i8, ptr %142, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %140) #11, !srcloc !391
  br label %done.i487

if.end37.i:                                       ; preds = %cleanup.thread.i476, %if.then8.i.if.end37.i_crit_edge, %if.then.i468.if.end37.i_crit_edge
  %sg.1.i477 = phi ptr [ %sg.0.i459, %if.then.i468.if.end37.i_crit_edge ], [ %call9.i, %if.then8.i.if.end37.i_crit_edge ], [ %call19.i473, %cleanup.thread.i476 ]
  %offset.2.i478 = phi i32 [ %add.i462, %if.then.i468.if.end37.i_crit_edge ], [ 0, %if.then8.i.if.end37.i_crit_edge ], [ %sub31.i, %cleanup.thread.i476 ]
  %nbytes.2.i479 = phi i32 [ %add5.i, %if.then.i468.if.end37.i_crit_edge ], [ %add5.i, %if.then8.i.if.end37.i_crit_edge ], [ %add36.i, %cleanup.thread.i476 ]
  %143 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs, align 4
  %add.ptr39.i = getelementptr i8, ptr %144, i32 64
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #11, !srcloc !394
  %and.i480 = and i32 %145, -1067450368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i480)
  %tobool41.not.i = icmp eq i32 %and.i480, 0
  br i1 %tobool41.not.i, label %do.cond.i483, label %if.then42.i

if.then42.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs, align 4
  %add.ptr44.i = getelementptr i8, ptr %147, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 -1067450332) #11, !srcloc !391
  %148 = ptrtoint ptr %data_status to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %145, ptr %data_status, align 4
  %bytes_xfered.i482 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 7
  %149 = ptrtoint ptr %bytes_xfered.i482 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %bytes_xfered.i482, align 4
  %add45.i = add i32 %150, %nbytes.2.i479
  store i32 %add45.i, ptr %bytes_xfered.i482, align 4
  br label %atmci_write_data_pio.exit

do.cond.i483:                                     ; preds = %if.end37.i
  %and47.i = and i32 %145, 4
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %do.end.i484, label %do.cond.i483.do.body.i465_crit_edge

do.cond.i483.do.body.i465_crit_edge:              ; preds = %do.cond.i483
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i465

do.end.i484:                                      ; preds = %do.cond.i483
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %pio_offset.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %offset.2.i478, ptr %pio_offset.i, align 4
  %bytes_xfered50.i = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 7
  %152 = ptrtoint ptr %bytes_xfered50.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %bytes_xfered50.i, align 4
  %add51.i = add i32 %153, %nbytes.2.i479
  store i32 %add51.i, ptr %bytes_xfered50.i, align 4
  br label %atmci_write_data_pio.exit

done.i487:                                        ; preds = %cleanup.i, %if.then8.i.done.i487_crit_edge
  %nbytes.3.i485 = phi i32 [ %add18.i, %cleanup.i ], [ %add5.i, %if.then8.i.done.i487_crit_edge ]
  %154 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs, align 4
  %add.ptr53.i = getelementptr i8, ptr %155, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 4) #11, !srcloc !391
  %156 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs, align 4
  %add.ptr55.i = getelementptr i8, ptr %157, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 32) #11, !srcloc !391
  %bytes_xfered56.i = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 7
  %158 = ptrtoint ptr %bytes_xfered56.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %bytes_xfered56.i, align 4
  %add57.i = add i32 %159, %nbytes.3.i485
  store i32 %add57.i, ptr %bytes_xfered56.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !406
  call void @_set_bit(i32 noundef 1, ptr noundef %pending_events) #11
  br label %atmci_write_data_pio.exit

atmci_write_data_pio.exit:                        ; preds = %done.i487, %do.end.i484, %if.then42.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i453) #11
  br label %if.end278

if.end278:                                        ; preds = %atmci_write_data_pio.exit, %if.end274.if.end278_crit_edge
  %and279 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %if.end278.if.end328_crit_edge, label %do.body282

if.end278.if.end328_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end328

do.body282:                                       ; preds = %if.end278
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then294)) #11
          to label %do.end299 [label %if.then294], !srcloc !398

if.then294:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdev, align 4
  %dev296 = getelementptr inbounds %struct.platform_device, ptr %161, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug309, ptr noundef %dev296, ptr noundef nonnull @.str.68) #11
  br label %do.end299

do.end299:                                        ; preds = %if.then294, %do.body282
  %162 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs, align 4
  %add.ptr301 = getelementptr i8, ptr %163, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr301, i32 1) #11, !srcloc !391
  %164 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %2, ptr %cmd_status, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !407
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_interrupt.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_interrupt, %if.then320)) #11
          to label %do.end325 [label %if.then320], !srcloc !398

if.then320:                                       ; preds = %do.end299
  call void @__sanitizer_cov_trace_pc() #13
  %165 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pdev, align 4
  %dev322 = getelementptr inbounds %struct.platform_device, ptr %166, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_interrupt.__UNIQUE_ID_ddebug310, ptr noundef %dev322, ptr noundef nonnull @.str.69) #11
  br label %do.end325

do.end325:                                        ; preds = %if.then320, %do.end299
  call void @_set_bit(i32 noundef 0, ptr noundef %pending_events) #11
  %call.i489 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i489)
  %tobool.not.i490 = icmp eq i32 %call.i489, 0
  br i1 %tobool.not.i490, label %if.then.i491, label %do.end325.if.end328_crit_edge

do.end325.if.end328_crit_edge:                    ; preds = %do.end325
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end328

if.then.i491:                                     ; preds = %do.end325
  call void @__sanitizer_cov_trace_pc() #13
  call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %if.end328

if.end328:                                        ; preds = %if.then.i491, %do.end325.if.end328_crit_edge, %if.end278.if.end328_crit_edge
  %and329 = and i32 %and, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329)
  %tobool330.not = icmp eq i32 %and329, 0
  br i1 %tobool330.not, label %if.end328.do.cond333_crit_edge, label %if.then331

if.end328.do.cond333_crit_edge:                   ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond333

if.then331:                                       ; preds = %if.end328
  %167 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i493 = icmp eq ptr %168, null
  br i1 %tobool.not.i493, label %if.then331.if.end.i_crit_edge, label %land.lhs.true.i

if.then331.if.end.i_crit_edge:                    ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then331
  %sdio_irq.i = getelementptr inbounds %struct.atmel_mci_slot, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %sdio_irq.i, align 4
  %and.i494 = and i32 %170, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i494)
  %tobool2.not.i = icmp eq i32 %and.i494, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i495

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i495:                                     ; preds = %land.lhs.true.i
  %171 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %168, align 4
  %ops.i.i = getelementptr inbounds %struct.mmc_host, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ops.i.i, align 4
  %enable_sdio_irq.i.i = getelementptr inbounds %struct.mmc_host_ops, ptr %174, i32 0, i32 7
  %175 = ptrtoint ptr %enable_sdio_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %enable_sdio_irq.i.i, align 4
  call void %176(ptr noundef %172, i32 noundef 0) #11
  %sdio_irq_pending.i.i = getelementptr inbounds %struct.mmc_host, ptr %172, i32 0, i32 49
  %177 = ptrtoint ptr %sdio_irq_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %sdio_irq_pending.i.i, align 4
  %sdio_irq_thread.i.i = getelementptr inbounds %struct.mmc_host, ptr %172, i32 0, i32 47
  %178 = ptrtoint ptr %sdio_irq_thread.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %sdio_irq_thread.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %179, null
  br i1 %tobool.not.i.i, label %if.then.i495.if.end.i_crit_edge, label %if.then.i.i

if.then.i495.if.end.i_crit_edge:                  ; preds = %if.then.i495
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i495
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call i32 @wake_up_process(ptr noundef nonnull %179) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i495.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then331.if.end.i_crit_edge
  %180 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %181, null
  br i1 %tobool.not.1.i, label %if.end.i.do.cond333_crit_edge, label %land.lhs.true.1.i

if.end.i.do.cond333_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond333

land.lhs.true.1.i:                                ; preds = %if.end.i
  %sdio_irq.1.i = getelementptr inbounds %struct.atmel_mci_slot, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %sdio_irq.1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %sdio_irq.1.i, align 4
  %and.1.i = and i32 %183, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool2.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool2.not.1.i, label %land.lhs.true.1.i.do.cond333_crit_edge, label %if.then.1.i

land.lhs.true.1.i.do.cond333_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond333

if.then.1.i:                                      ; preds = %land.lhs.true.1.i
  %184 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %181, align 4
  %ops.i.1.i = getelementptr inbounds %struct.mmc_host, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %ops.i.1.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ops.i.1.i, align 4
  %enable_sdio_irq.i.1.i = getelementptr inbounds %struct.mmc_host_ops, ptr %187, i32 0, i32 7
  %188 = ptrtoint ptr %enable_sdio_irq.i.1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %enable_sdio_irq.i.1.i, align 4
  call void %189(ptr noundef %185, i32 noundef 0) #11
  %sdio_irq_pending.i.1.i = getelementptr inbounds %struct.mmc_host, ptr %185, i32 0, i32 49
  %190 = ptrtoint ptr %sdio_irq_pending.i.1.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 1, ptr %sdio_irq_pending.i.1.i, align 4
  %sdio_irq_thread.i.1.i = getelementptr inbounds %struct.mmc_host, ptr %185, i32 0, i32 47
  %191 = ptrtoint ptr %sdio_irq_thread.i.1.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sdio_irq_thread.i.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %192, null
  br i1 %tobool.not.i.1.i, label %if.then.1.i.do.cond333_crit_edge, label %if.then.i.1.i

if.then.1.i.do.cond333_crit_edge:                 ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond333

if.then.i.1.i:                                    ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.1.i = call i32 @wake_up_process(ptr noundef nonnull %192) #11
  br label %do.cond333

do.cond333:                                       ; preds = %if.then.i.1.i, %if.then.1.i.do.cond333_crit_edge, %land.lhs.true.1.i.do.cond333_crit_edge, %if.end.i.do.cond333_crit_edge, %if.end328.do.cond333_crit_edge
  %inc = add nuw nsw i32 %pass_count.0, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %do.cond333.do.end334_crit_edge, label %do.cond333.do.body_crit_edge

do.cond333.do.body_crit_edge:                     ; preds = %do.cond333
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.cond333.do.end334_crit_edge:                   ; preds = %do.cond333
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end334

do.end334:                                        ; preds = %do.cond333.do.end334_crit_edge, %do.body.do.end334_crit_edge
  %pass_count.1 = phi i32 [ 6, %do.cond333.do.end334_crit_edge ], [ %pass_count.0, %do.body.do.end334_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass_count.1)
  %tobool335.not = icmp ne i32 %pass_count.1, 0
  %cond = zext i1 %tobool335.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmci_get_cap(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 252
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !394
  %and.i = and i32 %2, 4095
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %and.i) #14
  %caps = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %caps, align 4
  %has_pdc = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 1
  %6 = ptrtoint ptr %has_pdc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %has_pdc, align 1
  %has_cfg_reg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 2
  %has_cstor_reg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 3
  %has_highspeed = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 4
  %has_rwproof = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 5
  %has_bad_data_ordering = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 7
  %7 = call ptr @memset(ptr %has_cfg_reg, i32 0, i32 5)
  %8 = ptrtoint ptr %has_bad_data_ordering to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %has_bad_data_ordering, align 1
  %need_reset_after_xfer = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 8
  %9 = ptrtoint ptr %need_reset_after_xfer to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %need_reset_after_xfer, align 4
  %need_blksz_mul_4 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 9
  %10 = ptrtoint ptr %need_blksz_mul_4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %need_blksz_mul_4, align 1
  %need_notbusy_for_read_ops = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 10
  %11 = ptrtoint ptr %need_notbusy_for_read_ops to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %need_notbusy_for_read_ops, align 2
  %12 = lshr i32 %and.i, 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %12, label %sw.default [
    i32 6, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge69
    i32 4, label %entry.sw.bb13_crit_edge
    i32 3, label %entry.sw.bb13_crit_edge70
    i32 2, label %entry.sw.bb24_crit_edge
    i32 1, label %entry.sw.bb31_crit_edge
    i32 0, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.bb31_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb31

entry.sw.bb24_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

entry.sw.bb13_crit_edge70:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.bb_crit_edge69:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge69
  %has_odd_clk_div = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 6
  %14 = ptrtoint ptr %has_odd_clk_div to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %has_odd_clk_div, align 2
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb, %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge70
  %15 = ptrtoint ptr %caps to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %caps, align 4
  %16 = ptrtoint ptr %has_pdc to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %has_pdc, align 1
  %17 = ptrtoint ptr %has_cfg_reg to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %has_cfg_reg, align 2
  %18 = ptrtoint ptr %has_cstor_reg to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %has_cstor_reg, align 1
  %19 = ptrtoint ptr %has_highspeed to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %has_highspeed, align 4
  br label %sw.bb24

sw.bb24:                                          ; preds = %sw.bb13, %entry.sw.bb24_crit_edge
  %20 = ptrtoint ptr %has_rwproof to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %has_rwproof, align 1
  %21 = ptrtoint ptr %need_blksz_mul_4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %need_blksz_mul_4, align 1
  %22 = ptrtoint ptr %need_notbusy_for_read_ops to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %need_notbusy_for_read_ops, align 2
  br label %sw.bb31

sw.bb31:                                          ; preds = %sw.bb24, %entry.sw.bb31_crit_edge
  %23 = ptrtoint ptr %has_bad_data_ordering to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %has_bad_data_ordering, align 1
  %24 = ptrtoint ptr %need_reset_after_xfer to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %need_reset_after_xfer, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %has_pdc to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %has_pdc, align 1
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev42 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42, ptr noundef nonnull @.str.75) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmci_configure_dma(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.77) #11
  %dma = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 13
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dma, align 4
  %cmp = icmp eq ptr %call, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #11
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %dma_filter = getelementptr inbounds %struct.mci_platform_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dma_filter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_filter, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #11
  %10 = ptrtoint ptr %dma_filter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_filter, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %6, align 4
  %call9 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef %11, ptr noundef %13, ptr noundef null) #11
  %tobool14.not = icmp eq ptr %call9, null
  %spec.store.select = select i1 %tobool14.not, ptr inttoptr (i32 -19 to ptr), ptr %call9
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.store.select, ptr %dma, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #11
  br label %if.end21

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #11
  br label %return

if.end21:                                         ; preds = %if.end, %entry.if.end21_crit_edge
  %15 = phi ptr [ %spec.store.select, %if.end ], [ %call, %entry.if.end21_crit_edge ]
  %cmp.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %do.end

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %15 to i32
  br label %return

do.end:                                           ; preds = %if.end21
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %dev31 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %15, i32 0, i32 5
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.dma_chan_name.exit_crit_edge

do.end.dma_chan_name.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %do.end.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %do.end.dma_chan_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str.78, ptr noundef %retval.0.i.i) #14
  %mapbase = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 30
  %25 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mapbase, align 4
  %add = add i32 %26, 48
  %src_addr = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15, i32 1
  %27 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15, i32 3
  %28 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15, i32 5
  %29 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %src_maxburst, align 4
  %add38 = add i32 %26, 52
  %dst_addr = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15, i32 2
  %30 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add38, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15, i32 4
  %31 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15, i32 6
  %32 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %dst_maxburst, align 4
  %device_fc = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15, i32 9
  %33 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %device_fc, align 4
  br label %return

return:                                           ; preds = %dma_chan_name.exit, %if.then25, %cleanup
  %retval.1 = phi i32 [ -19, %cleanup ], [ %16, %if.then25 ], [ 0, %dma_chan_name.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_prepare_data_dma(ptr noundef %host, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -115, ptr %error, align 4
  %data1 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 11
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !399

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1103, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sg21 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 2
  %3 = ptrtoint ptr %sg21 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %sg21, align 4
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data1, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blksz, align 4
  %mul = mul i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul)
  %cmp = icmp ult i32 %mul, 16
  br i1 %cmp, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -115, ptr %error, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %10 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg.i, align 4
  %12 = ptrtoint ptr %sg21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %sg21, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %13 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sg_len.i, align 4
  %sg_len2.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 3
  %15 = ptrtoint ptr %sg_len2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sg_len2.i, align 4
  %16 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data, ptr %data1, align 4
  %data_chan.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 14
  %17 = ptrtoint ptr %data_chan.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %data_chan.i, align 4
  %18 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks, align 4
  %20 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blksz, align 4
  %mul.i = mul i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 11
  %and.i = and i32 %mul.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then23.atmci_prepare_data.exit_crit_edge, label %if.then.i

if.then23.atmci_prepare_data.exit_crit_edge:      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_prepare_data.exit

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %need_reset.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 25
  %22 = ptrtoint ptr %need_reset.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %need_reset.i, align 1
  br label %atmci_prepare_data.exit

atmci_prepare_data.exit:                          ; preds = %if.then.i, %if.then23.atmci_prepare_data.exit_crit_edge
  %pio_offset.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %pio_offset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pio_offset.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and7.i = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %..i = select i1 %tobool8.not.i, i32 -1067450364, i32 -1067450366
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %and = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end24
  %26 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -115, ptr %error, align 4
  %sg.i133 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %27 = ptrtoint ptr %sg.i133 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg.i133, align 4
  %29 = ptrtoint ptr %sg21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %sg21, align 4
  %sg_len.i135 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %30 = ptrtoint ptr %sg_len.i135 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sg_len.i135, align 4
  %sg_len2.i136 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 3
  %32 = ptrtoint ptr %sg_len2.i136 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sg_len2.i136, align 4
  %33 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %data, ptr %data1, align 4
  %data_chan.i138 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 14
  %34 = ptrtoint ptr %data_chan.i138 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %data_chan.i138, align 4
  %35 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blocks, align 4
  %37 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %blksz, align 4
  %mul.i141 = mul i32 %38, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %mul.i141)
  %cmp.i142 = icmp ugt i32 %mul.i141, 11
  %and.i143 = and i32 %mul.i141, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i143)
  %tobool.not.i144 = icmp eq i32 %and.i143, 0
  %or.cond.i145 = and i1 %cmp.i142, %tobool.not.i144
  br i1 %or.cond.i145, label %if.then27.atmci_prepare_data.exit153_crit_edge, label %if.then.i147

if.then27.atmci_prepare_data.exit153_crit_edge:   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_prepare_data.exit153

if.then.i147:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %need_reset.i146 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 25
  %39 = ptrtoint ptr %need_reset.i146 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %need_reset.i146, align 1
  br label %atmci_prepare_data.exit153

atmci_prepare_data.exit153:                       ; preds = %if.then.i147, %if.then27.atmci_prepare_data.exit153_crit_edge
  %pio_offset.i148 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 4
  %40 = ptrtoint ptr %pio_offset.i148 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %pio_offset.i148, align 4
  %flags.i149 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %41 = ptrtoint ptr %flags.i149 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i149, align 4
  %and7.i150 = and i32 %42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i150)
  %tobool8.not.i151 = icmp eq i32 %and7.i150, 0
  %..i152 = select i1 %tobool8.not.i151, i32 -1067450364, i32 -1067450366
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %sg30 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %43 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp31205.not = icmp eq i32 %44, 0
  br i1 %cmp31205.not, label %if.end29.for.end_crit_edge, label %for.body.preheader

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end29
  %45 = ptrtoint ptr %sg30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sg30, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0207 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.0206 = phi ptr [ %call39, %for.inc.for.body_crit_edge ], [ %46, %for.body.preheader ]
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0206, i32 0, i32 1
  %47 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset, align 4
  %and32 = and i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %lor.lhs.false, label %for.body.if.then36_crit_edge

for.body.if.then36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

lor.lhs.false:                                    ; preds = %for.body
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0206, i32 0, i32 2
  %49 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length, align 4
  %and34 = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %for.inc, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %for.body.if.then36_crit_edge
  %51 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -115, ptr %error, align 4
  %52 = ptrtoint ptr %sg30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sg30, align 4
  %54 = ptrtoint ptr %sg21 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %sg21, align 4
  %55 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sg_len, align 4
  %sg_len2.i158 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 3
  %57 = ptrtoint ptr %sg_len2.i158 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %sg_len2.i158, align 4
  %58 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %data, ptr %data1, align 4
  %data_chan.i160 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 14
  %59 = ptrtoint ptr %data_chan.i160 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %data_chan.i160, align 4
  %60 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %blocks, align 4
  %62 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %blksz, align 4
  %mul.i163 = mul i32 %63, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %mul.i163)
  %cmp.i164 = icmp ugt i32 %mul.i163, 11
  %and.i165 = and i32 %mul.i163, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i165)
  %tobool.not.i166 = icmp eq i32 %and.i165, 0
  %or.cond.i167 = and i1 %cmp.i164, %tobool.not.i166
  br i1 %or.cond.i167, label %if.then36.atmci_prepare_data.exit175_crit_edge, label %if.then.i169

if.then36.atmci_prepare_data.exit175_crit_edge:   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_prepare_data.exit175

if.then.i169:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %need_reset.i168 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 25
  %64 = ptrtoint ptr %need_reset.i168 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %need_reset.i168, align 1
  br label %atmci_prepare_data.exit175

atmci_prepare_data.exit175:                       ; preds = %if.then.i169, %if.then36.atmci_prepare_data.exit175_crit_edge
  %pio_offset.i170 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 4
  %65 = ptrtoint ptr %pio_offset.i170 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %pio_offset.i170, align 4
  %flags.i171 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %66 = ptrtoint ptr %flags.i171 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i171, align 4
  %and7.i172 = and i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i172)
  %tobool8.not.i173 = icmp eq i32 %and7.i172, 0
  %..i174 = select i1 %tobool8.not.i173, i32 -1067450364, i32 -1067450366
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw i32 %i.0207, 1
  %call39 = tail call ptr @sg_next(ptr noundef %sg.0206) #11
  %68 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sg_len, align 4
  %cmp31 = icmp ult i32 %inc, %69
  br i1 %cmp31, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  %dma = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 13
  %70 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma, align 4
  %tobool41.not = icmp eq ptr %71, null
  br i1 %tobool41.not, label %for.end.cleanup_crit_edge, label %if.then42

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then42:                                        ; preds = %for.end
  %data_chan = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 14
  %72 = ptrtoint ptr %data_chan to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %data_chan, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags, align 4
  %and47 = and i32 %74, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %dma_conf52 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.then42
  %75 = ptrtoint ptr %dma_conf52 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %dma_conf52, align 4
  %src_maxburst = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15, i32 5
  %76 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %src_maxburst, align 4
  %regs.i.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %78 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 252
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp1.i = icmp ugt i32 %77, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.then49.if.end56_crit_edge

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then2.i:                                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i = and i32 %80, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %and.i.i)
  %cmp.i176 = icmp ugt i32 %and.i.i, 1535
  %spec.store.select.neg.i = select i1 %cmp.i176, i32 -1, i32 -2
  %81 = tail call i32 @llvm.ctlz.i32(i32 %77, i1 true) #11, !range !408
  %sub.i.i = sub nuw nsw i32 32, %81
  %sub.i = add nsw i32 %sub.i.i, %spec.store.select.neg.i
  br label %if.end56

if.else:                                          ; preds = %if.then42
  %82 = ptrtoint ptr %dma_conf52 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %dma_conf52, align 4
  %dst_maxburst = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15, i32 6
  %83 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dst_maxburst, align 4
  %regs.i.i177 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %85 = ptrtoint ptr %regs.i.i177 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i177, align 4
  %add.ptr.i.i178 = getelementptr i8, ptr %86, i32 252
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i178) #11, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp1.i179 = icmp ugt i32 %84, 1
  br i1 %cmp1.i179, label %if.then2.i185, label %if.else.if.end56_crit_edge

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then2.i185:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i180 = and i32 %87, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %and.i.i180)
  %cmp.i181 = icmp ugt i32 %and.i.i180, 1535
  %spec.store.select.neg.i182 = select i1 %cmp.i181, i32 -1, i32 -2
  %88 = tail call i32 @llvm.ctlz.i32(i32 %84, i1 true) #11, !range !408
  %sub.i.i183 = sub nuw nsw i32 32, %88
  %sub.i184 = add nsw i32 %sub.i.i183, %spec.store.select.neg.i182
  br label %if.end56

if.end56:                                         ; preds = %if.then2.i185, %if.else.if.end56_crit_edge, %if.then2.i, %if.then49.if.end56_crit_edge
  %slave_dirn.0 = phi i32 [ 2, %if.then49.if.end56_crit_edge ], [ 2, %if.then2.i ], [ 1, %if.else.if.end56_crit_edge ], [ 1, %if.then2.i185 ]
  %maxburst.0 = phi i32 [ 0, %if.then49.if.end56_crit_edge ], [ %sub.i, %if.then2.i ], [ 0, %if.else.if.end56_crit_edge ], [ %sub.i184, %if.then2.i185 ]
  %caps = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34
  %89 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %caps, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool57.not = icmp eq i8 %90, 0
  br i1 %tobool57.not, label %if.end56.if.end59_crit_edge, label %if.then58

if.end56.if.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nsw i32 %maxburst.0, 4
  %or = or i32 %shl, 256
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %92, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #11, !srcloc !391
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end56.if.end59_crit_edge
  %93 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %71, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %94, i32 0, i32 15
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  %97 = ptrtoint ptr %sg30 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sg30, align 4
  %99 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sg_len, align 4
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags, align 4
  %and.i189 = and i32 %102, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool.not.i190 = icmp eq i32 %and.i189, 0
  %cond.i = select i1 %tobool.not.i190, i32 2, i32 1
  %call63 = tail call i32 @dma_map_sg_attrs(ptr noundef %96, ptr noundef %98, i32 noundef %100, i32 noundef %cond.i, i32 noundef 0) #11
  %103 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %71, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %104, i32 0, i32 44
  %105 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i191 = icmp eq ptr %106, null
  br i1 %tobool.not.i191, label %if.end59.lor.lhs.false.i_crit_edge, label %if.then.i192

if.end59.lor.lhs.false.i_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

if.then.i192:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %dma_conf64 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 15
  %call.i = tail call i32 %106(ptr noundef nonnull %71, ptr noundef %dma_conf64) #11
  %107 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr = load ptr, ptr %71, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then.i192, %if.end59.lor.lhs.false.i_crit_edge
  %108 = phi ptr [ %.pr, %if.then.i192 ], [ %104, %if.end59.lor.lhs.false.i_crit_edge ]
  %109 = ptrtoint ptr %sg30 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sg30, align 4
  %tobool1.not.i = icmp eq ptr %108, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.unmap_exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.unmap_exit_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %108, i32 0, i32 39
  %111 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %112, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.unmap_exit_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.unmap_exit_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_exit

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i194 = tail call ptr %112(ptr noundef nonnull %71, ptr noundef %110, i32 noundef %call63, i32 noundef %slave_dirn.0, i32 noundef 3, ptr noundef null) #11
  %tobool68.not = icmp eq ptr %call.i194, null
  br i1 %tobool68.not, label %dmaengine_prep_slave_sg.exit.unmap_exit_crit_edge, label %if.end70

dmaengine_prep_slave_sg.exit.unmap_exit_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_exit

if.end70:                                         ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %data_desc = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 13, i32 1
  %113 = ptrtoint ptr %data_desc to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i194, ptr %data_desc, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i194, i32 0, i32 6
  %114 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @atmci_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i194, i32 0, i32 8
  %115 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %host, ptr %callback_param, align 4
  br label %cleanup

unmap_exit:                                       ; preds = %dmaengine_prep_slave_sg.exit.unmap_exit_crit_edge, %lor.lhs.false2.i.unmap_exit_crit_edge, %lor.lhs.false.i.unmap_exit_crit_edge
  %116 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %71, align 4
  %dev73 = getelementptr inbounds %struct.dma_device, ptr %117, i32 0, i32 15
  %118 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev73, align 4
  %120 = ptrtoint ptr %sg30 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sg30, align 4
  %122 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sg_len, align 4
  %124 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags, align 4
  %and.i197 = and i32 %125, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197)
  %tobool.not.i198 = icmp eq i32 %and.i197, 0
  %cond.i199 = select i1 %tobool.not.i198, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %119, ptr noundef %121, i32 noundef %123, i32 noundef %cond.i199, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %unmap_exit, %if.end70, %for.end.cleanup_crit_edge, %atmci_prepare_data.exit175, %atmci_prepare_data.exit153, %atmci_prepare_data.exit
  %retval.0 = phi i32 [ %..i, %atmci_prepare_data.exit ], [ %..i152, %atmci_prepare_data.exit153 ], [ %..i174, %atmci_prepare_data.exit175 ], [ -1067450368, %if.end70 ], [ -12, %unmap_exit ], [ -19, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_submit_data_dma(ptr nocapture noundef readonly %host, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data_chan = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 14
  %0 = ptrtoint ptr %data_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_chan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data_desc = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %data_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_desc, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_submit.i, align 4
  %call.i = tail call i32 %5(ptr noundef %3) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 50
  %8 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %9(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_stop_transfer_dma(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data_chan = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 14
  %0 = ptrtoint ptr %data_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_chan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then.dmaengine_terminate_all.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %5(ptr noundef nonnull %1) #11
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then.dmaengine_terminate_all.exit_crit_edge
  %data1.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 11
  %6 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data1.i, align 4
  %tobool.not.i12 = icmp eq ptr %7, null
  br i1 %tobool.not.i12, label %dmaengine_terminate_all.exit.if.end6_crit_edge, label %if.then.i13

dmaengine_terminate_all.exit.if.end6_crit_edge:   ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then.i13:                                      ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dma.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 13
  %8 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 12
  %14 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 10
  %16 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 6
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %cond.i.i, i32 noundef 0) #11
  br label %if.end6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_stop_transfer_dma.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_stop_transfer_dma, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !398

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_stop_transfer_dma.__UNIQUE_ID_ddebug279, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.81) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %pending_events = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending_events) #11
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 32) #11, !srcloc !391
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.i13, %dmaengine_terminate_all.exit.if.end6_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_prepare_data_pdc(ptr nocapture noundef %host, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -115, ptr %error, align 4
  %data1 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 11
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data, ptr %data1, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  %sg2 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 2
  %4 = ptrtoint ptr %sg2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sg2, align 4
  %mode_reg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 27
  %5 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode_reg, align 4
  %or = or i32 %6, 32768
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #11, !srcloc !391
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !394
  %and7 = and i32 %13, 65535
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blksz, align 4
  %shl = shl i32 %15, 16
  %or8 = or i32 %shl, %and7
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %or8) #11, !srcloc !391
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks, align 4
  %20 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blksz, align 4
  %mul = mul i32 %21, %19
  %data_size = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 12
  %22 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %data_size, align 4
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %27 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_len, align 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and.i = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %call14 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %26, i32 noundef %28, i32 noundef %cond.i, i32 noundef 0) #11
  %has_rwproof = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 5
  %31 = ptrtoint ptr %has_rwproof to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_rwproof, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool15.not = icmp eq i8 %32, 0
  br i1 %tobool15.not, label %land.lhs.true, label %entry.if.end35thread-pre-split_crit_edge

entry.if.end35thread-pre-split_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35thread-pre-split

land.lhs.true:                                    ; preds = %entry
  %33 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data1, align 4
  %flags17 = getelementptr inbounds %struct.mmc_data, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags17, align 4
  %and18 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end35thread-pre-split_crit_edge, label %if.then20

land.lhs.true.if.end35thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35thread-pre-split

if.then20:                                        ; preds = %land.lhs.true
  %sg22 = getelementptr inbounds %struct.mmc_data, ptr %34, i32 0, i32 12
  %37 = ptrtoint ptr %sg22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sg22, align 4
  %sg_len24 = getelementptr inbounds %struct.mmc_data, ptr %34, i32 0, i32 10
  %39 = ptrtoint ptr %sg_len24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sg_len24, align 4
  %buffer = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 5
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  %43 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_size, align 4
  %call26 = tail call i32 @sg_copy_to_buffer(ptr noundef %38, i32 noundef %40, ptr noundef %42, i32 noundef %44) #11
  %has_bad_data_ordering = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 7
  %45 = ptrtoint ptr %has_bad_data_ordering to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %has_bad_data_ordering, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool28.not = icmp eq i8 %46, 0
  br i1 %tobool28.not, label %if.then20.if.end35thread-pre-split_crit_edge, label %for.cond.preheader

if.then20.if.end35thread-pre-split_crit_edge:     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35thread-pre-split

for.cond.preheader:                               ; preds = %if.then20
  %47 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp80.not = icmp eq i32 %48, 0
  br i1 %cmp80.not, label %for.cond.preheader.if.end42_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end42_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.081 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %49 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr i32, ptr %50, i32 %i.081
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.081, 1
  %55 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_size, align 4
  %cmp = icmp ult i32 %inc, %56
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end35thread-pre-split:                         ; preds = %if.then20.if.end35thread-pre-split_crit_edge, %land.lhs.true.if.end35thread-pre-split_crit_edge, %entry.if.end35thread-pre-split_crit_edge
  %57 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %data_size, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35thread-pre-split, %for.body.if.end35_crit_edge
  %58 = phi i32 [ %.pr, %if.end35thread-pre-split ], [ %56, %for.body.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool37.not = icmp eq i32 %58, 0
  br i1 %tobool37.not, label %if.end35.if.end42_crit_edge, label %if.then38

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then38:                                        ; preds = %if.end35
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %and40 = lshr i32 %60, 9
  %and40.lobit = and i32 %and40, 1
  %61 = xor i32 %and40.lobit, 1
  tail call fastcc void @atmci_pdc_set_single_buf(ptr noundef %host, i32 noundef %61, i32 noundef 0) #11
  %62 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i79 = icmp eq i32 %63, 0
  br i1 %tobool.not.i79, label %if.then38.if.end42_crit_edge, label %if.then.i

if.then38.if.end42_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @atmci_pdc_set_single_buf(ptr noundef %host, i32 noundef %61, i32 noundef 1) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then.i, %if.then38.if.end42_crit_edge, %if.end35.if.end42_crit_edge, %for.cond.preheader.if.end42_crit_edge
  %and = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -1067417464, i32 -1067433920
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_submit_data_pdc(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %regs1 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 288
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 1) #11, !srcloc !391
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 256) #11, !srcloc !391
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_stop_transfer_pdc(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 514) #11, !srcloc !391
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmci_prepare_data(ptr nocapture noundef writeonly %host, ptr noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -115, ptr %error, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %1 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sg, align 4
  %sg1 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 2
  %3 = ptrtoint ptr %sg1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %sg1, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_len, align 4
  %sg_len2 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 3
  %6 = ptrtoint ptr %sg_len2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sg_len2, align 4
  %data3 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 11
  %7 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %data3, align 4
  %data_chan = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 14
  %8 = ptrtoint ptr %data_chan to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %data_chan, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blksz, align 4
  %mul = mul i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %mul)
  %cmp = icmp ugt i32 %mul, 11
  %and = and i32 %mul, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %need_reset = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 25
  %13 = ptrtoint ptr %need_reset to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %need_reset, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pio_offset = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %pio_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pio_offset, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and7 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %. = select i1 %tobool8.not, i32 -1067450364, i32 -1067450366
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atmci_submit_data(ptr nocapture noundef %host, ptr nocapture noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_stop_transfer(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_stop_transfer.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_stop_transfer, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !398

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_stop_transfer.__UNIQUE_ID_ddebug278, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.82) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pending_events = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending_events) #11
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 32) #11, !srcloc !391
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_timeout_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -212
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_timeout_timer.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_timeout_timer, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !398

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr i8, ptr %t, i32 68
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_timeout_timer.__UNIQUE_ID_ddebug274, ptr noundef %dev, ptr noundef nonnull @.str.84) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mrq = getelementptr i8, ptr %t, i32 -136
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  %data = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  %error = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -110, ptr %error, align 4
  %data9 = getelementptr i8, ptr %t, i32 -128
  %9 = ptrtoint ptr %data9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %data9, align 4
  %state = getelementptr i8, ptr %t, i32 -16
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then10, label %if.then5.if.end16_crit_edge

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %stop_transfer = getelementptr i8, ptr %t, i32 100
  %12 = ptrtoint ptr %stop_transfer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stop_transfer, align 4
  tail call void %13(ptr noundef %add.ptr) #11
  br label %if.end16

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %error14 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %error14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -110, ptr %error14, align 4
  %cmd15 = getelementptr i8, ptr %t, i32 -132
  %15 = ptrtoint ptr %cmd15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cmd15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10, %if.then5.if.end16_crit_edge
  %need_reset = getelementptr i8, ptr %t, i32 -3
  %16 = ptrtoint ptr %need_reset to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %need_reset, align 1
  %state17 = getelementptr i8, ptr %t, i32 -16
  %17 = ptrtoint ptr %state17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %state17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !409
  %state.i = getelementptr i8, ptr %t, i32 -44
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end16.tasklet_schedule.exit_crit_edge

if.end16.tasklet_schedule.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr i8, ptr %t, i32 -48
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end16.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmci_init_slot(ptr noundef %host, ptr nocapture noundef readonly %slot_data, i32 noundef %id, i32 noundef %sdc_reg, i32 noundef %sdio_irq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @mmc_alloc_host(i32 noundef 96, ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %private.i, align 4
  %host3 = getelementptr inbounds %struct.atmel_mci_slot, ptr %private.i, i32 0, i32 1
  %3 = ptrtoint ptr %host3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %host, ptr %host3, align 4
  %detect_pin = getelementptr inbounds %struct.mci_slot_pdata, ptr %slot_data, i32 0, i32 1
  %4 = ptrtoint ptr %detect_pin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %detect_pin, align 4
  %detect_pin4 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 6
  %6 = ptrtoint ptr %detect_pin4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %detect_pin4, align 4
  %wp_pin = getelementptr inbounds %struct.mci_slot_pdata, ptr %slot_data, i32 0, i32 2
  %7 = ptrtoint ptr %wp_pin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wp_pin, align 4
  %wp_pin5 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7
  %9 = ptrtoint ptr %wp_pin5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %wp_pin5, align 4
  %detect_is_active_high = getelementptr inbounds %struct.mci_slot_pdata, ptr %slot_data, i32 0, i32 3
  %10 = ptrtoint ptr %detect_is_active_high to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %detect_is_active_high, align 4, !range !392
  %detect_is_active_high7 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %detect_is_active_high7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %detect_is_active_high7, align 4
  %sdc_reg8 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1
  %13 = ptrtoint ptr %sdc_reg8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sdc_reg, ptr %sdc_reg8, align 4
  %sdio_irq9 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %sdio_irq9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sdio_irq, ptr %sdio_irq9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_init_slot.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_init_slot, %if.then15)) #11
          to label %do.end [label %if.then15], !srcloc !398

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %slot_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot_data, align 4
  %17 = ptrtoint ptr %detect_pin to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %detect_pin, align 4
  %19 = ptrtoint ptr %detect_is_active_high to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %detect_is_active_high, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool18.not, ptr @.str.88, ptr @.str.87
  %21 = ptrtoint ptr %wp_pin to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wp_pin, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_init_slot.__UNIQUE_ID_ddebug311, ptr noundef %class_dev, ptr noundef nonnull @.str.86, i32 noundef %id, i32 noundef %16, i32 noundef %18, ptr noundef nonnull %cond, i32 noundef %22) #11
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 3
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @atmci_ops, ptr %ops, align 4
  %bus_hz = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 29
  %24 = ptrtoint ptr %bus_hz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_hz, align 4
  %sub = add i32 %25, 511
  %div251 = lshr i32 %sub, 9
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 5
  %26 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div251, ptr %f_min, align 4
  %27 = load i32, ptr %bus_hz, align 4
  %div22252 = lshr i32 %27, 1
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 6
  %28 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div22252, ptr %f_max, align 8
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 8
  %29 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3145728, ptr %ocr_avail, align 64
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 16
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps, align 32
  %or = or i32 %31, 8
  store i32 %or, ptr %caps, align 32
  %has_highspeed = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 4
  %32 = ptrtoint ptr %has_highspeed to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_highspeed, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool27.not = icmp eq i8 %33, 0
  br i1 %tobool27.not, label %do.end.if.end31_crit_edge, label %if.then28

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %or30 = or i32 %31, 12
  %34 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or30, ptr %caps, align 32
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %do.end.if.end31_crit_edge
  %35 = ptrtoint ptr %slot_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slot_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp = icmp ugt i32 %36, 3
  br i1 %cmp, label %land.lhs.true, label %if.end31.if.end44_crit_edge

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end31
  %has_rwproof = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 5
  %37 = ptrtoint ptr %has_rwproof to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_rwproof, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool34.not = icmp eq i8 %38, 0
  br i1 %tobool34.not, label %land.lhs.true.if.end44_crit_edge, label %if.then35

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then35:                                        ; preds = %land.lhs.true
  %39 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps, align 32
  %or37 = or i32 %40, 1
  store i32 %or37, ptr %caps, align 32
  %41 = ptrtoint ptr %slot_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slot_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %42)
  %cmp39 = icmp ugt i32 %42, 7
  br i1 %cmp39, label %if.then40, label %if.then35.if.end44_crit_edge

if.then35.if.end44_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %or42 = or i32 %40, 65
  %43 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or42, ptr %caps, align 32
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.then35.if.end44_crit_edge, %land.lhs.true.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %regs.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 252
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !394
  %and.i = and i32 %46, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp46 = icmp eq i32 %and.i, 0
  br i1 %cmp46, label %if.then47, label %if.end44.if.end57_crit_edge

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %47 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1048320, ptr %max_seg_size, align 16
  br label %if.end57

if.end57:                                         ; preds = %if.then47, %if.end44.if.end57_crit_edge
  %.sink274 = phi i16 [ 256, %if.then47 ], [ 64, %if.end44.if.end57_crit_edge ]
  %.sink273 = phi i32 [ 4095, %if.then47 ], [ 32768, %if.end44.if.end57_crit_edge ]
  %.sink272 = phi i32 [ 256, %if.then47 ], [ 512, %if.end44.if.end57_crit_edge ]
  %.sink = phi i32 [ 1048320, %if.then47 ], [ 16777216, %if.end44.if.end57_crit_edge ]
  %48 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 21
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %.sink274, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink273, ptr %50, align 4
  %52 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink272, ptr %52, align 128
  %54 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink, ptr %54, align 8
  %flags = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  %56 = ptrtoint ptr %detect_pin4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %detect_pin4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %57)
  %58 = icmp ult i32 %57, 2048
  br i1 %58, label %if.then60, label %if.end57.if.then99_crit_edge

if.end57.if.then99_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then99

if.then60:                                        ; preds = %if.end57
  %59 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev, align 4
  %dev62 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  %call64 = tail call i32 @devm_gpio_request(ptr noundef %dev62, i32 noundef %57, ptr noundef nonnull @.str.89) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.else85, label %do.body67

do.body67:                                        ; preds = %if.then60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_init_slot.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_init_slot, %if.then79)) #11
          to label %do.end83 [label %if.then79], !srcloc !398

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev80 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_init_slot.__UNIQUE_ID_ddebug312, ptr noundef %class_dev80, ptr noundef nonnull @.str.90) #11
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body67
  %61 = ptrtoint ptr %detect_pin4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -16, ptr %detect_pin4, align 4
  br label %if.then99

if.else85:                                        ; preds = %if.then60
  %62 = ptrtoint ptr %detect_pin4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %detect_pin4, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %63) #11
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #11
  %64 = ptrtoint ptr %detect_is_active_high7 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %detect_is_active_high7, align 4, !range !392
  %66 = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %66)
  %tobool91.not = icmp eq i32 %call1.i, %66
  br i1 %tobool91.not, label %if.else85.if.end96_crit_edge, label %if.then92

if.else85.if.end96_crit_edge:                     ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then92:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.else85.if.end96_crit_edge
  %67 = ptrtoint ptr %detect_pin4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr = load i32, ptr %detect_pin4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %.pr)
  %68 = icmp ult i32 %.pr, 2048
  br i1 %68, label %if.end96.if.end108_crit_edge, label %if.end96.if.then99_crit_edge

if.end96.if.then99_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then99

if.end96.if.end108_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then99:                                        ; preds = %if.end96.if.then99_crit_edge, %do.end83, %if.end57.if.then99_crit_edge
  %non_removable = getelementptr inbounds %struct.mci_slot_pdata, ptr %slot_data, i32 0, i32 4
  %69 = ptrtoint ptr %non_removable to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %non_removable, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool100.not = icmp eq i8 %70, 0
  %71 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %caps, align 32
  %. = select i1 %tobool100.not, i32 32, i32 256
  %or103 = or i32 %72, %.
  store i32 %or103, ptr %caps, align 32
  br label %if.end108

if.end108:                                        ; preds = %if.then99, %if.end96.if.end108_crit_edge
  %73 = ptrtoint ptr %wp_pin5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %wp_pin5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %74)
  %75 = icmp ult i32 %74, 2048
  br i1 %75, label %if.then111, label %if.end108.if.end137_crit_edge

if.end108.if.end137_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then111:                                       ; preds = %if.end108
  %76 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev, align 4
  %dev113 = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3
  %call115 = tail call i32 @devm_gpio_request(ptr noundef %dev113, i32 noundef %74, ptr noundef nonnull @.str.91) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then111.if.end137_crit_edge, label %do.body118

if.then111.if.end137_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

do.body118:                                       ; preds = %if.then111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_init_slot.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_init_slot, %if.then130)) #11
          to label %do.end134 [label %if.then130], !srcloc !398

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev131 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_init_slot.__UNIQUE_ID_ddebug313, ptr noundef %class_dev131, ptr noundef nonnull @.str.92) #11
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %do.body118
  %78 = ptrtoint ptr %wp_pin5 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -16, ptr %wp_pin5, align 4
  br label %if.end137

if.end137:                                        ; preds = %do.end134, %if.then111.if.end137_crit_edge, %if.end108.if.end137_crit_edge
  %arrayidx = getelementptr %struct.atmel_mci, ptr %host, i32 0, i32 33, i32 %id
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %private.i, ptr %arrayidx, align 4
  %call139 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %call) #11
  %call140 = tail call i32 @mmc_add_host(ptr noundef nonnull %call) #11
  %80 = ptrtoint ptr %detect_pin4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %detect_pin4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %81)
  %82 = icmp ult i32 %81, 2048
  br i1 %82, label %if.then143, label %if.end137.if.end173_crit_edge

if.end137.if.end173_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

if.then143:                                       ; preds = %if.end137
  %detect_timer = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %detect_timer, ptr noundef nonnull @atmci_detect_change, i32 noundef 0, ptr noundef nonnull @.str.93, ptr noundef nonnull @atmci_init_slot.__key) #11
  %83 = ptrtoint ptr %detect_pin4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %detect_pin4, align 4
  %call.i262 = tail call ptr @gpio_to_desc(i32 noundef %84) #11
  %call1.i263 = tail call i32 @gpiod_to_irq(ptr noundef %call.i262) #11
  %call.i264 = tail call i32 @request_threaded_irq(i32 noundef %call1.i263, ptr noundef nonnull @atmci_detect_interrupt, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.94, ptr noundef %private.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool150.not = icmp eq i32 %call.i264, 0
  br i1 %tobool150.not, label %if.then143.if.end173_crit_edge, label %do.body152

if.then143.if.end173_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

do.body152:                                       ; preds = %if.then143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_init_slot.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_init_slot, %if.then164)) #11
          to label %do.end170 [label %if.then164], !srcloc !398

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev165 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 1
  %85 = ptrtoint ptr %detect_pin4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %detect_pin4, align 4
  %call.i265 = tail call ptr @gpio_to_desc(i32 noundef %86) #11
  %call1.i266 = tail call i32 @gpiod_to_irq(ptr noundef %call.i265) #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_init_slot.__UNIQUE_ID_ddebug314, ptr noundef %class_dev165, ptr noundef nonnull @.str.95, i32 noundef %call1.i266) #11
  br label %do.end170

do.end170:                                        ; preds = %if.then164, %do.body152
  %87 = ptrtoint ptr %detect_pin4 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -16, ptr %detect_pin4, align 4
  br label %if.end173

if.end173:                                        ; preds = %do.end170, %if.then143.if.end173_crit_edge, %if.end137.if.end173_crit_edge
  %88 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %private.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.mmc_host, ptr %89, i32 0, i32 55
  %90 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %debugfs_root.i, align 8
  %tobool.not.i = icmp eq ptr %91, null
  br i1 %tobool.not.i, label %if.end173.cleanup_crit_edge, label %if.end.i

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %host3, align 4
  %call.i267 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.119, i16 noundef zeroext 256, ptr noundef nonnull %91, ptr noundef %93, ptr noundef nonnull @atmci_regs_fops) #11
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.120, i16 noundef zeroext 256, ptr noundef nonnull %91, ptr noundef %private.i, ptr noundef nonnull @atmci_req_fops) #11
  %state.i = getelementptr inbounds %struct.atmel_mci, ptr %93, i32 0, i32 22
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.121, i16 noundef zeroext 256, ptr noundef nonnull %91, ptr noundef %state.i) #11
  %pending_events.i = getelementptr inbounds %struct.atmel_mci, ptr %93, i32 0, i32 20
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.122, i16 noundef zeroext 256, ptr noundef nonnull %91, ptr noundef %pending_events.i) #11
  %completed_events.i = getelementptr inbounds %struct.atmel_mci, ptr %93, i32 0, i32 21
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.123, i16 noundef zeroext 256, ptr noundef nonnull %91, ptr noundef %completed_events.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end173.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end173.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmci_cleanup_slot(ptr noundef %slot, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.atmel_mci_slot, ptr %slot, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !410
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 4
  tail call void @mmc_remove_host(ptr noundef %1) #11
  %detect_pin = getelementptr inbounds %struct.atmel_mci_slot, ptr %slot, i32 0, i32 8
  %2 = ptrtoint ptr %detect_pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %detect_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #11
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #11
  %call5 = tail call ptr @free_irq(i32 noundef %call1.i, ptr noundef %slot) #11
  %detect_timer = getelementptr inbounds %struct.atmel_mci_slot, ptr %slot, i32 0, i32 11
  %call6 = tail call i32 @del_timer_sync(ptr noundef %detect_timer) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %host = getelementptr inbounds %struct.atmel_mci_slot, ptr %slot, i32 0, i32 1
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %arrayidx = getelementptr %struct.atmel_mci, ptr %6, i32 0, i32 33, i32 %id
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot, align 4
  tail call void @mmc_free_host(ptr noundef %9) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #11, !srcloc !396
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmci_send_stop_cmd(ptr noundef %host, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_send_stop_cmd.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_send_stop_cmd, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !398

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_send_stop_cmd.__UNIQUE_ID_ddebug275, ptr noundef %dev, ptr noundef nonnull @.str.54) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stop = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop, align 4
  %stop_cmdr = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 18
  %4 = ptrtoint ptr %stop_cmdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stop_cmdr, align 4
  %busy_timeout.i = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %busy_timeout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %busy_timeout.i, align 4
  %cmd2.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 10
  %8 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd2.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %do.end.if.end.i_crit_edge, label %do.end.i, !prof !399

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 817, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %spec.select.i = select i1 %tobool.not.i, i32 2000, i32 %7
  %10 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %cmd2.i, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg.i, align 4
  %regs.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #11, !srcloc !391
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %5) #11, !srcloc !391
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select.i) #11
  %timer.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 26
  %add.i = add i32 %call2.i.i, %17
  %call26.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #11
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #11, !srcloc !391
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmci_request_end(ptr noundef %host, ptr noundef %mrq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_slot = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %cur_slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_slot, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmd = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 10
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.rhs.if.end_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !399

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1564, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %timer = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 26
  %call = tail call i32 @del_timer(ptr noundef %timer) #11
  %need_clock_update = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 24
  %8 = ptrtoint ptr %need_clock_update to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %need_clock_update, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool21.not = icmp eq i8 %9, 0
  br i1 %tobool21.not, label %if.end.if.end28_crit_edge, label %if.then22

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then22:                                        ; preds = %if.end
  %mode_reg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 27
  %10 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_reg, align 4
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #11, !srcloc !391
  %has_cfg_reg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 2
  %14 = ptrtoint ptr %has_cfg_reg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_cfg_reg, align 2, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not = icmp eq i8 %15, 0
  br i1 %tobool23.not, label %if.then22.if.end28_crit_edge, label %if.then24

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %cfg_reg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 28
  %16 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_reg, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr26 = getelementptr i8, ptr %19, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %17) #11, !srcloc !391
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then22.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %20 = ptrtoint ptr %cur_slot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_slot, align 4
  %mrq30 = getelementptr inbounds %struct.atmel_mci_slot, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %mrq30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %mrq30, align 4
  %mrq31 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 9
  %23 = ptrtoint ptr %mrq31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mrq31, align 4
  %queue = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 23
  %24 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %25, %queue
  br i1 %cmp.i.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end28
  %add.ptr37 = getelementptr i8, ptr %25, i32 -20
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %25) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.list_del.exit_crit_edge

if.then34.list_del.exit_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then34.list_del.exit_crit_edge
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %state = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 22
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %state, align 4
  tail call fastcc void @atmci_start_request(ptr noundef %host, ptr noundef %add.ptr37)
  br label %if.end39

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %state38 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 22
  %35 = ptrtoint ptr %state38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %state38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %list_del.exit
  tail call void @_raw_spin_unlock(ptr noundef %host) #11
  tail call void @mmc_request_done(ptr noundef %3, ptr noundef %mrq) #11
  tail call void @_raw_spin_lock(ptr noundef %host) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmci_start_request(ptr noundef %host, ptr noundef %slot) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.atmel_mci_slot, ptr %slot, i32 0, i32 4
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %cur_slot = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 8
  %2 = ptrtoint ptr %cur_slot to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %slot, ptr %cur_slot, align 4
  %mrq2 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %mrq2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %mrq2, align 4
  %pending_events = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 20
  %4 = ptrtoint ptr %pending_events to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pending_events, align 4
  %completed_events = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 21
  %5 = ptrtoint ptr %completed_events to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %completed_events, align 4
  %cmd_status = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 16
  %6 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cmd_status, align 4
  %data_status = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 17
  %7 = ptrtoint ptr %data_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data_status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_start_request.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_start_request, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !398

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %cmd5 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd5, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_start_request.__UNIQUE_ID_ddebug280, ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %13) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %need_reset = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 25
  %14 = ptrtoint ptr %need_reset to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %need_reset, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %do.end.if.then8_crit_edge

do.end.if.then8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

lor.lhs.false:                                    ; preds = %do.end
  %need_reset_after_xfer = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 8
  %16 = ptrtoint ptr %need_reset_after_xfer to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %need_reset_after_xfer, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %do.end.if.then8_crit_edge
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 76
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !394
  %and = and i32 %20, 768
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 128) #11, !srcloc !391
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 1) #11, !srcloc !391
  %mode_reg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 27
  %25 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode_reg, align 4
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %26) #11, !srcloc !391
  %has_cfg_reg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 2
  %29 = ptrtoint ptr %has_cfg_reg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_cfg_reg, align 2, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not = icmp eq i8 %30, 0
  br i1 %tobool17.not, label %if.then8.if.end21_crit_edge, label %if.then18

if.then8.if.end21_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %cfg_reg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 28
  %31 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cfg_reg, align 4
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %34, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %32) #11, !srcloc !391
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then8.if.end21_crit_edge
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %36, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %and) #11, !srcloc !391
  %37 = ptrtoint ptr %need_reset to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %need_reset, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %lor.lhs.false.if.end25_crit_edge
  %sdc_reg = getelementptr inbounds %struct.atmel_mci_slot, ptr %slot, i32 0, i32 2
  %38 = ptrtoint ptr %sdc_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sdc_reg, align 4
  %regs26 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %40 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs26, align 4
  %add.ptr27 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %39) #11, !srcloc !391
  %42 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs26, align 4
  %add.ptr29 = getelementptr i8, ptr %43, i32 76
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #11, !srcloc !394
  %and31 = and i32 %44, -769
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end25.if.end50_crit_edge, label %do.body34

if.end25.if.end50_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

do.body34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_start_request.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_start_request, %if.then46)) #11
          to label %if.end50 [label %if.then46], !srcloc !398

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %slot, align 4
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %46, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_start_request.__UNIQUE_ID_ddebug281, ptr noundef %class_dev, ptr noundef nonnull @.str.57, i32 noundef %44) #11
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %do.body34, %if.end25.if.end50_crit_edge
  %flags = getelementptr inbounds %struct.atmel_mci_slot, ptr %slot, i32 0, i32 7
  %call51 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.if.end78_crit_edge, label %if.then59, !prof !399

if.end50.if.end78_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then59:                                        ; preds = %if.end50
  %47 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs26, align 4
  %add.ptr61 = getelementptr i8, ptr %48, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 256) #11, !srcloc !391
  %49 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs26, align 4
  %add.ptr63257 = getelementptr i8, ptr %50, i32 64
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63257) #11, !srcloc !394
  %and65258 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65258)
  %tobool66.not259 = icmp eq i32 %and65258, 0
  br i1 %tobool66.not259, label %if.then59.do.end73_crit_edge, label %if.then59.if.end78_crit_edge

if.then59.if.end78_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then59.do.end73_crit_edge:                     ; preds = %if.then59
  br label %do.end73

do.end73:                                         ; preds = %do.end73.do.end73_crit_edge, %if.then59.do.end73_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !411
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !412
  %52 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs26, align 4
  %add.ptr63 = getelementptr i8, ptr %53, i32 64
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #11, !srcloc !394
  %and65 = and i32 %54, 1
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.end73.do.end73_crit_edge, label %do.end73.if.end78_crit_edge

do.end73.if.end78_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

do.end73.do.end73_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

if.end78:                                         ; preds = %do.end73.if.end78_crit_edge, %if.then59.if.end78_crit_edge, %if.end50.if.end78_crit_edge
  %data79 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %data79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data79, align 4
  %tobool80.not = icmp eq ptr %56, null
  br i1 %tobool80.not, label %if.end78.if.end87_crit_edge, label %if.then81

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then81:                                        ; preds = %if.end78
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %sub.i.i = add i32 %58, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  %bus_hz.i.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 29
  %59 = ptrtoint ptr %bus_hz.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bus_hz.i.i, align 4
  %sub2.i.i = add i32 %60, 1999999
  %div3.i.i = udiv i32 %sub2.i.i, 2000000
  %mul.i.i = mul i32 %div3.i.i, %div.i.i
  %timeout_clks.i = getelementptr inbounds %struct.mmc_data, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %timeout_clks.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %timeout_clks.i, align 4
  %add.i = add i32 %mul.i.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add.i)
  %cmp2.i = icmp ult i32 %add.i, 15
  br i1 %cmp2.i, label %if.then81.atmci_set_timeout.exit_crit_edge, label %for.inc.i

if.then81.atmci_set_timeout.exit_crit_edge:       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_set_timeout.exit

for.inc.i:                                        ; preds = %if.then81
  %sub.1.i = add i32 %add.i, 15
  %shr.1.i = lshr i32 %sub.1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %sub.1.i)
  %cmp2.1.i = icmp ult i32 %sub.1.i, 240
  br i1 %cmp2.1.i, label %for.inc.i.atmci_set_timeout.exit_crit_edge, label %for.inc.1.i

for.inc.i.atmci_set_timeout.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_set_timeout.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %sub.2.i = add i32 %add.i, 127
  %shr.2.i = lshr i32 %sub.2.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %sub.2.i)
  %cmp2.2.i = icmp ult i32 %sub.2.i, 1920
  br i1 %cmp2.2.i, label %for.inc.1.i.atmci_set_timeout.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.atmci_set_timeout.exit_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_set_timeout.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %sub.3.i = add i32 %add.i, 255
  %shr.3.i = lshr i32 %sub.3.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %sub.3.i)
  %cmp2.3.i = icmp ult i32 %sub.3.i, 3840
  br i1 %cmp2.3.i, label %for.inc.2.i.atmci_set_timeout.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.atmci_set_timeout.exit_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_set_timeout.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %sub.4.i = add i32 %add.i, 1023
  %shr.4.i = lshr i32 %sub.4.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15360, i32 %sub.4.i)
  %cmp2.4.i = icmp ult i32 %sub.4.i, 15360
  br i1 %cmp2.4.i, label %for.inc.3.i.atmci_set_timeout.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.atmci_set_timeout.exit_crit_edge:     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_set_timeout.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %sub.5.i = add i32 %add.i, 4095
  %shr.5.i = lshr i32 %sub.5.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %sub.5.i)
  %cmp2.5.i = icmp ult i32 %sub.5.i, 61440
  br i1 %cmp2.5.i, label %for.inc.4.i.atmci_set_timeout.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.atmci_set_timeout.exit_crit_edge:     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_set_timeout.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %sub.6.i = add i32 %add.i, 65535
  %shr.6.i = lshr i32 %sub.6.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %sub.6.i)
  %cmp2.6.i = icmp ult i32 %sub.6.i, 983040
  br i1 %cmp2.6.i, label %for.inc.5.i.atmci_set_timeout.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.atmci_set_timeout.exit_crit_edge:     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_set_timeout.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.7.i = add i32 %add.i, 1048575
  %shr.7.i = lshr i32 %sub.7.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 15728640, i32 %sub.7.i)
  %cmp2.7.i = icmp ult i32 %sub.7.i, 15728640
  %spec.select.i = select i1 %cmp2.7.i, i32 %shr.7.i, i32 15
  %spec.select3.i = select i1 %cmp2.7.i, i32 7, i32 8
  br label %atmci_set_timeout.exit

atmci_set_timeout.exit:                           ; preds = %for.inc.6.i, %for.inc.5.i.atmci_set_timeout.exit_crit_edge, %for.inc.4.i.atmci_set_timeout.exit_crit_edge, %for.inc.3.i.atmci_set_timeout.exit_crit_edge, %for.inc.2.i.atmci_set_timeout.exit_crit_edge, %for.inc.1.i.atmci_set_timeout.exit_crit_edge, %for.inc.i.atmci_set_timeout.exit_crit_edge, %if.then81.atmci_set_timeout.exit_crit_edge
  %cmp3.i = phi i32 [ %add.i, %if.then81.atmci_set_timeout.exit_crit_edge ], [ %shr.1.i, %for.inc.i.atmci_set_timeout.exit_crit_edge ], [ %shr.2.i, %for.inc.1.i.atmci_set_timeout.exit_crit_edge ], [ %shr.3.i, %for.inc.2.i.atmci_set_timeout.exit_crit_edge ], [ %shr.4.i, %for.inc.3.i.atmci_set_timeout.exit_crit_edge ], [ %shr.5.i, %for.inc.4.i.atmci_set_timeout.exit_crit_edge ], [ %shr.6.i, %for.inc.5.i.atmci_set_timeout.exit_crit_edge ], [ %spec.select.i, %for.inc.6.i ]
  %dtomul.0.lcssa.i = phi i32 [ 0, %if.then81.atmci_set_timeout.exit_crit_edge ], [ 1, %for.inc.i.atmci_set_timeout.exit_crit_edge ], [ 2, %for.inc.1.i.atmci_set_timeout.exit_crit_edge ], [ 3, %for.inc.2.i.atmci_set_timeout.exit_crit_edge ], [ 4, %for.inc.3.i.atmci_set_timeout.exit_crit_edge ], [ 5, %for.inc.4.i.atmci_set_timeout.exit_crit_edge ], [ 6, %for.inc.5.i.atmci_set_timeout.exit_crit_edge ], [ %spec.select3.i, %for.inc.6.i ]
  %63 = tail call i32 @llvm.umin.i32(i32 %dtomul.0.lcssa.i, i32 7) #11
  %shl6.i = shl nuw nsw i32 %63, 4
  %or.i = or i32 %shl6.i, %cmp3.i
  %64 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs26, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #11, !srcloc !391
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %56, i32 0, i32 3
  %66 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %56, i32 0, i32 2
  %68 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %blksz, align 4
  %shl82 = shl i32 %69, 16
  %or = or i32 %shl82, %67
  %70 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs26, align 4
  %add.ptr84 = getelementptr i8, ptr %71, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %or) #11, !srcloc !391
  %prepare_data = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 35
  %72 = ptrtoint ptr %prepare_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prepare_data, align 4
  %call85 = tail call i32 %73(ptr noundef %host, ptr noundef nonnull %56) #11
  %phi.bo = or i32 %call85, 1
  br label %if.end87

if.end87:                                         ; preds = %atmci_set_timeout.exit, %if.end78.if.end87_crit_edge
  %iflags.0 = phi i32 [ %phi.bo, %atmci_set_timeout.exit ], [ 1, %if.end78.if.end87_crit_edge ]
  %cmd89 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %cmd89 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cmd89, align 4
  %76 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %slot, align 4
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %75, i32 0, i32 5
  %78 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -115, ptr %error.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %75, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %75, i32 0, i32 3
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end87.if.end6.i_crit_edge, label %if.then.i

if.end87.if.end6.i_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then.i:                                        ; preds = %if.end87
  %and2.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i190 = or i32 %80, 128
  br label %if.end6.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %or5.i = or i32 %80, 64
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then4.i, %if.end87.if.end6.i_crit_edge
  %cmdr.0.i = phi i32 [ %or.i190, %if.then4.i ], [ %or5.i, %if.else.i ], [ %80, %if.end87.if.end6.i_crit_edge ]
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 28, i32 3
  %83 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bus_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp.i = icmp eq i8 %84, 1
  %spec.select.v.i = select i1 %cmp.i, i32 6144, i32 4096
  %spec.select.i191 = or i32 %spec.select.v.i, %cmdr.0.i
  %data12.i = getelementptr inbounds %struct.mmc_command, ptr %75, i32 0, i32 7
  %85 = ptrtoint ptr %data12.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data12.i, align 4
  %tobool13.not.i = icmp eq ptr %86, null
  br i1 %tobool13.not.i, label %if.end6.i.atmci_prepare_command.exit_crit_edge, label %if.then14.i

if.end6.i.atmci_prepare_command.exit_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_prepare_command.exit

if.then14.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %80)
  %cmp17.i = icmp eq i32 %80, 53
  br i1 %cmp17.i, label %if.then19.i, label %if.else21.i

if.then19.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %or20.i = or i32 %spec.select.i191, 2686976
  br label %if.end29.i

if.else21.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp22.i = icmp ugt i32 %88, 1
  %spec.select54.v.i = select i1 %cmp22.i, i32 589824, i32 65536
  %spec.select54.i = or i32 %spec.select54.v.i, %spec.select.i191
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else21.i, %if.then19.i
  %cmdr.2.i = phi i32 [ %or20.i, %if.then19.i ], [ %spec.select54.i, %if.else21.i ]
  %flags30.i = getelementptr inbounds %struct.mmc_data, ptr %86, i32 0, i32 6
  %89 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags30.i, align 4
  %and31.i = shl i32 %90, 9
  %91 = and i32 %and31.i, 262144
  %92 = or i32 %91, %cmdr.2.i
  br label %atmci_prepare_command.exit

atmci_prepare_command.exit:                       ; preds = %if.end29.i, %if.end6.i.atmci_prepare_command.exit_crit_edge
  %cmdr.3.i = phi i32 [ %spec.select.i191, %if.end6.i.atmci_prepare_command.exit_crit_edge ], [ %92, %if.end29.i ]
  %submit_data = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 36
  %93 = ptrtoint ptr %submit_data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %submit_data, align 4
  %cmp.not = icmp eq ptr %94, @atmci_submit_data_dma
  br i1 %cmp.not, label %atmci_prepare_command.exit.if.end93_crit_edge, label %if.then92

atmci_prepare_command.exit.if.end93_crit_edge:    ; preds = %atmci_prepare_command.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then92:                                        ; preds = %atmci_prepare_command.exit
  %busy_timeout.i = getelementptr inbounds %struct.mmc_command, ptr %75, i32 0, i32 6
  %95 = ptrtoint ptr %busy_timeout.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %busy_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i192 = icmp eq i32 %96, 0
  %spec.select.i193 = select i1 %tobool.not.i192, i32 2000, i32 %96
  %cmd2.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 10
  %97 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cmd2.i, align 4
  %tobool3.not.i194 = icmp eq ptr %98, null
  br i1 %tobool3.not.i194, label %if.then92.if.end.i_crit_edge, label %do.end.i, !prof !399

if.then92.if.end.i_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 817, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then92.if.end.i_crit_edge
  %99 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %75, ptr %cmd2.i, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %75, i32 0, i32 1
  %100 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arg.i, align 4
  %102 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs26, align 4
  %add.ptr.i196 = getelementptr i8, ptr %103, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 %101) #11, !srcloc !391
  %104 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs26, align 4
  %add.ptr25.i = getelementptr i8, ptr %105, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %cmdr.3.i) #11, !srcloc !391
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select.i193) #11
  %timer.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 26
  %add.i197 = add i32 %call2.i.i, %106
  %call26.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i197) #11
  br label %if.end93

if.end93:                                         ; preds = %if.end.i, %atmci_prepare_command.exit.if.end93_crit_edge
  br i1 %tobool80.not, label %if.end93.if.end97_crit_edge, label %if.then95

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %submit_data to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %submit_data, align 4
  tail call void %108(ptr noundef %host, ptr noundef nonnull %56) #11
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end93.if.end97_crit_edge
  %109 = ptrtoint ptr %submit_data to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %submit_data, align 4
  %cmp99 = icmp eq ptr %110, @atmci_submit_data_dma
  br i1 %cmp99, label %if.then100, label %if.end97.if.end101_crit_edge

if.end97.if.end101_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then100:                                       ; preds = %if.end97
  %busy_timeout.i198 = getelementptr inbounds %struct.mmc_command, ptr %75, i32 0, i32 6
  %111 = ptrtoint ptr %busy_timeout.i198 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %busy_timeout.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i199 = icmp eq i32 %112, 0
  %spec.select.i200 = select i1 %tobool.not.i199, i32 2000, i32 %112
  %cmd2.i201 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 10
  %113 = ptrtoint ptr %cmd2.i201 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cmd2.i201, align 4
  %tobool3.not.i202 = icmp eq ptr %114, null
  br i1 %tobool3.not.i202, label %if.then100.if.end.i208_crit_edge, label %do.end.i203, !prof !399

if.then100.if.end.i208_crit_edge:                 ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i208

do.end.i203:                                      ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 817, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i208

if.end.i208:                                      ; preds = %do.end.i203, %if.then100.if.end.i208_crit_edge
  %115 = ptrtoint ptr %cmd2.i201 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %75, ptr %cmd2.i201, align 4
  %arg.i204 = getelementptr inbounds %struct.mmc_command, ptr %75, i32 0, i32 1
  %116 = ptrtoint ptr %arg.i204 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arg.i204, align 4
  %118 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs26, align 4
  %add.ptr.i206 = getelementptr i8, ptr %119, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 %117) #11, !srcloc !391
  %120 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs26, align 4
  %add.ptr25.i207 = getelementptr i8, ptr %121, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i207, i32 %cmdr.3.i) #11, !srcloc !391
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %122 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i214 = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select.i200) #11
  %timer.i217 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 26
  %add.i218 = add i32 %call2.i.i214, %122
  %call26.i219 = tail call i32 @mod_timer(ptr noundef %timer.i217, i32 noundef %add.i218) #11
  br label %if.end101

if.end101:                                        ; preds = %if.end.i208, %if.end97.if.end101_crit_edge
  %stop = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %123 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %stop, align 4
  %tobool102.not = icmp eq ptr %124, null
  br i1 %tobool102.not, label %if.end101.if.end118_crit_edge, label %if.then103

if.end101.if.end118_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

if.then103:                                       ; preds = %if.end101
  %125 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %slot, align 4
  %error.i221 = getelementptr inbounds %struct.mmc_command, ptr %124, i32 0, i32 5
  %127 = ptrtoint ptr %error.i221 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -115, ptr %error.i221, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %124, align 4
  %flags.i222 = getelementptr inbounds %struct.mmc_command, ptr %124, i32 0, i32 3
  %130 = ptrtoint ptr %flags.i222 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags.i222, align 4
  %and.i223 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i223)
  %tobool.not.i224 = icmp eq i32 %and.i223, 0
  br i1 %tobool.not.i224, label %if.then103.if.end6.i239_crit_edge, label %if.then.i227

if.then103.if.end6.i239_crit_edge:                ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i239

if.then.i227:                                     ; preds = %if.then103
  %and2.i225 = and i32 %131, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i225)
  %tobool3.not.i226 = icmp eq i32 %and2.i225, 0
  br i1 %tobool3.not.i226, label %if.else.i231, label %if.then4.i229

if.then4.i229:                                    ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #13
  %or.i228 = or i32 %129, 128
  br label %if.end6.i239

if.else.i231:                                     ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #13
  %or5.i230 = or i32 %129, 64
  br label %if.end6.i239

if.end6.i239:                                     ; preds = %if.else.i231, %if.then4.i229, %if.then103.if.end6.i239_crit_edge
  %cmdr.0.i232 = phi i32 [ %or.i228, %if.then4.i229 ], [ %or5.i230, %if.else.i231 ], [ %129, %if.then103.if.end6.i239_crit_edge ]
  %bus_mode.i233 = getelementptr inbounds %struct.mmc_host, ptr %126, i32 0, i32 28, i32 3
  %132 = ptrtoint ptr %bus_mode.i233 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bus_mode.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %133)
  %cmp.i234 = icmp eq i8 %133, 1
  %spec.select.v.i235 = select i1 %cmp.i234, i32 6144, i32 4096
  %spec.select.i236 = or i32 %spec.select.v.i235, %cmdr.0.i232
  %data12.i237 = getelementptr inbounds %struct.mmc_command, ptr %124, i32 0, i32 7
  %134 = ptrtoint ptr %data12.i237 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data12.i237, align 4
  %tobool13.not.i238 = icmp eq ptr %135, null
  br i1 %tobool13.not.i238, label %if.end6.i239.atmci_prepare_command.exit254_crit_edge, label %if.then14.i241

if.end6.i239.atmci_prepare_command.exit254_crit_edge: ; preds = %if.end6.i239
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_prepare_command.exit254

if.then14.i241:                                   ; preds = %if.end6.i239
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %129)
  %cmp17.i240 = icmp eq i32 %129, 53
  br i1 %cmp17.i240, label %if.then19.i243, label %if.else21.i248

if.then19.i243:                                   ; preds = %if.then14.i241
  call void @__sanitizer_cov_trace_pc() #13
  %or20.i242 = or i32 %spec.select.i236, 2686976
  br label %if.end29.i252

if.else21.i248:                                   ; preds = %if.then14.i241
  call void @__sanitizer_cov_trace_pc() #13
  %blocks.i244 = getelementptr inbounds %struct.mmc_data, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %blocks.i244 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %blocks.i244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp22.i245 = icmp ugt i32 %137, 1
  %spec.select54.v.i246 = select i1 %cmp22.i245, i32 589824, i32 65536
  %spec.select54.i247 = or i32 %spec.select54.v.i246, %spec.select.i236
  br label %if.end29.i252

if.end29.i252:                                    ; preds = %if.else21.i248, %if.then19.i243
  %cmdr.2.i249 = phi i32 [ %or20.i242, %if.then19.i243 ], [ %spec.select54.i247, %if.else21.i248 ]
  %flags30.i250 = getelementptr inbounds %struct.mmc_data, ptr %135, i32 0, i32 6
  %138 = ptrtoint ptr %flags30.i250 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags30.i250, align 4
  %and31.i251 = shl i32 %139, 9
  %140 = and i32 %and31.i251, 262144
  %141 = or i32 %140, %cmdr.2.i249
  br label %atmci_prepare_command.exit254

atmci_prepare_command.exit254:                    ; preds = %if.end29.i252, %if.end6.i239.atmci_prepare_command.exit254_crit_edge
  %cmdr.3.i253 = phi i32 [ %spec.select.i236, %if.end6.i239.atmci_prepare_command.exit254_crit_edge ], [ %141, %if.end29.i252 ]
  %stop_cmdr = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 18
  %or108 = or i32 %cmdr.3.i253, 131072
  %142 = ptrtoint ptr %stop_cmdr to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or108, ptr %stop_cmdr, align 4
  %flags109 = getelementptr inbounds %struct.mmc_data, ptr %56, i32 0, i32 6
  %143 = ptrtoint ptr %flags109 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flags109, align 4
  %and110 = and i32 %144, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.then112, label %atmci_prepare_command.exit254.if.end115_crit_edge

atmci_prepare_command.exit254.if.end115_crit_edge: ; preds = %atmci_prepare_command.exit254
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then112:                                       ; preds = %atmci_prepare_command.exit254
  call void @__sanitizer_cov_trace_pc() #13
  %or114 = or i32 %cmdr.3.i253, 393216
  %145 = ptrtoint ptr %stop_cmdr to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %or114, ptr %stop_cmdr, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %atmci_prepare_command.exit254.if.end115_crit_edge
  %146 = ptrtoint ptr %stop_cmdr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %stop_cmdr, align 4
  %or117 = or i32 %147, 524288
  store i32 %or117, ptr %stop_cmdr, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end115, %if.end101.if.end118_crit_edge
  %148 = ptrtoint ptr %regs26 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs26, align 4
  %add.ptr120 = getelementptr i8, ptr %149, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %iflags.0) #11, !srcloc !391
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmci_pdc_complete(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blksz, align 4
  %mul = mul i32 %5, %3
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 514) #11, !srcloc !391
  %has_rwproof = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 5
  %8 = ptrtoint ptr %has_rwproof to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_rwproof, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end12thread-pre-split_crit_edge

entry.if.end12thread-pre-split_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12thread-pre-split

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %has_bad_data_ordering = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 7
  %14 = ptrtoint ptr %has_bad_data_ordering to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_bad_data_ordering, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp40 = icmp sgt i32 %mul, 0
  %or.cond = select i1 %tobool5.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %buffer = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr i32, ptr %17, i32 %i.041
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 10
  %26 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_len, align 4
  %buffer11 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 5
  %28 = ptrtoint ptr %buffer11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer11, align 4
  %call = tail call i32 @sg_copy_from_buffer(ptr noundef %25, i32 noundef %27, ptr noundef %29, i32 noundef %mul) #11
  br label %if.end12thread-pre-split

if.end12thread-pre-split:                         ; preds = %if.end, %entry.if.end12thread-pre-split_crit_edge
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load ptr, ptr %data, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %land.lhs.true.if.end12_crit_edge
  %31 = phi ptr [ %.pr, %if.end12thread-pre-split ], [ %11, %land.lhs.true.if.end12_crit_edge ]
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end12.atmci_pdc_cleanup.exit_crit_edge, label %if.then.i

if.end12.atmci_pdc_cleanup.exit_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_pdc_cleanup.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %31, i32 0, i32 12
  %34 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %31, i32 0, i32 10
  %36 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %31, i32 0, i32 6
  %38 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %35, i32 noundef %37, i32 noundef %cond.i.i, i32 noundef 0) #11
  br label %atmci_pdc_cleanup.exit

atmci_pdc_cleanup.exit:                           ; preds = %if.then.i, %if.end12.atmci_pdc_cleanup.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_pdc_complete.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_pdc_complete, %if.then17)) #11
          to label %do.end [label %if.then17], !srcloc !398

if.then17:                                        ; preds = %atmci_pdc_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %40 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_pdc_complete.__UNIQUE_ID_ddebug276, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70) #11
  br label %do.end

do.end:                                           ; preds = %if.then17, %atmci_pdc_cleanup.exit
  %pending_events = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending_events) #11
  %state.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 19, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i37 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i37, label %if.then.i38, label %do.end.tasklet_schedule.exit_crit_edge

do.end.tasklet_schedule.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i38:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 19
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i38, %do.end.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmci_pdc_set_single_buf(ptr nocapture noundef %host, i32 noundef %dir, i32 noundef %buf_nb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %. = select i1 %cmp, i32 256, i32 264
  %.73 = select i1 %cmp, i32 260, i32 268
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %buf_nb)
  %cmp1 = icmp eq i32 %buf_nb, 1
  %add = or i32 %., 16
  %add3 = or i32 %.73, 16
  %pointer_reg.1 = select i1 %cmp1, i32 %add, i32 %.
  %counter_reg.1 = select i1 %cmp1, i32 %add3, i32 %.73
  %has_rwproof = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 34, i32 5
  %0 = ptrtoint ptr %has_rwproof to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_rwproof, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then5, label %if.else7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %buf_size6 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 6
  %2 = ptrtoint ptr %buf_size6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_size6, align 4
  %buf_phys_addr = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 7
  %4 = ptrtoint ptr %buf_phys_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_phys_addr, align 4
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %pointer_reg.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #11, !srcloc !391
  br label %if.end11

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 2
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_address, align 4
  %regs9 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %14 = ptrtoint ptr %regs9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs9, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 %pointer_reg.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %13) #11, !srcloc !391
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.then5
  %buf_size.0 = phi i32 [ %11, %if.else7 ], [ %3, %if.then5 ]
  %data_size = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 12
  %16 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %buf_size.0)
  %cmp12.not = icmp ugt i32 %17, %buf_size.0
  br i1 %cmp12.not, label %if.else28, label %if.then13

if.then13:                                        ; preds = %if.end11
  %and = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else22, label %if.then16

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %regs18 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %18 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs18, align 4
  %add.ptr19 = getelementptr i8, ptr %19, i32 %counter_reg.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %17) #11, !srcloc !391
  %mode_reg = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 27
  %20 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode_reg, align 4
  %or = or i32 %21, 8192
  %22 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs18, align 4
  %add.ptr21 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %or) #11, !srcloc !391
  br label %if.end26

if.else22:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %div72 = lshr i32 %17, 2
  %regs24 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %24 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs24, align 4
  %add.ptr25 = getelementptr i8, ptr %25, i32 %counter_reg.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %div72) #11, !srcloc !391
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then16
  %26 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %data_size, align 4
  br label %if.end43

if.else28:                                        ; preds = %if.end11
  %sg29 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 2
  %27 = ptrtoint ptr %sg29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg29, align 4
  %dma_length30 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %dma_length30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_length30, align 4
  %div3171 = lshr i32 %30, 2
  %regs32 = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 1
  %31 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs32, align 4
  %add.ptr33 = getelementptr i8, ptr %32, i32 %counter_reg.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %div3171) #11, !srcloc !391
  %33 = ptrtoint ptr %sg29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg29, align 4
  %dma_length35 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %dma_length35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_length35, align 4
  %37 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_size, align 4
  %sub = sub i32 %38, %36
  store i32 %sub, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %tobool38.not = icmp eq i32 %38, %36
  br i1 %tobool38.not, label %if.else28.if.end43_crit_edge, label %if.then39

if.else28.if.end43_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then39:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @sg_next(ptr noundef %34) #11
  %39 = ptrtoint ptr %sg29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call, ptr %sg29, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.else28.if.end43_crit_edge, %if.end26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_dma_complete(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.atmel_mci, ptr %arg, i32 0, i32 11
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %caps = getelementptr inbounds %struct.atmel_mci, ptr %arg, i32 0, i32 34
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %caps, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %arg, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !394
  %and = and i32 %6, -257
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #11, !srcloc !391
  %9 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load ptr, ptr %data1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = phi ptr [ %.pr, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.atmci_dma_cleanup.exit_crit_edge, label %if.then.i

if.end.atmci_dma_cleanup.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmci_dma_cleanup.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dma.i = getelementptr inbounds %struct.atmel_mci, ptr %arg, i32 0, i32 13
  %11 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 12
  %17 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 10
  %19 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 6
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef %cond.i.i, i32 noundef 0) #11
  br label %atmci_dma_cleanup.exit

atmci_dma_cleanup.exit:                           ; preds = %if.then.i, %if.end.atmci_dma_cleanup.exit_crit_edge
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %atmci_dma_cleanup.exit.if.end14_crit_edge, label %do.body

atmci_dma_cleanup.exit.if.end14_crit_edge:        ; preds = %atmci_dma_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

do.body:                                          ; preds = %atmci_dma_cleanup.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_dma_complete.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_dma_complete, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !398

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %arg, i32 0, i32 32
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_dma_complete.__UNIQUE_ID_ddebug277, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.80) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %pending_events = getelementptr inbounds %struct.atmel_mci, ptr %arg, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending_events) #11
  %state.i = getelementptr inbounds %struct.atmel_mci, ptr %arg, i32 0, i32 19, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i23 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i23, label %if.then.i24, label %do.end.tasklet_schedule.exit_crit_edge

do.end.tasklet_schedule.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i24:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr inbounds %struct.atmel_mci, ptr %arg, i32 0, i32 19
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i24, %do.end.tasklet_schedule.exit_crit_edge
  %regs12 = getelementptr inbounds %struct.atmel_mci, ptr %arg, i32 0, i32 1
  %25 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs12, align 4
  %add.ptr13 = getelementptr i8, ptr %26, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 32) #11, !srcloc !391
  br label %if.end14

if.end14:                                         ; preds = %tasklet_schedule.exit, %atmci_dma_cleanup.exit.if.end14_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_detect_change(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !413
  %flags = getelementptr i8, ptr %t, i32 -16
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %detect_pin = getelementptr i8, ptr %t, i32 -12
  %3 = ptrtoint ptr %detect_pin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %detect_pin, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %4) #11
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #11
  tail call void @enable_irq(i32 noundef %call1.i) #11
  %5 = ptrtoint ptr %detect_pin to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %detect_pin, align 4
  %call.i144 = tail call ptr @gpio_to_desc(i32 noundef %6) #11
  %call1.i145 = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i144) #11
  %detect_is_active_high = getelementptr i8, ptr %t, i32 -4
  %7 = ptrtoint ptr %detect_is_active_high to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %detect_is_active_high, align 4, !range !392
  %9 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i145, i32 %9)
  %tobool8.not = icmp eq i32 %call1.i145, %9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and1.i143 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i143)
  %tobool11 = icmp eq i32 %and1.i143, 0
  %cmp.not = xor i1 %tobool8.not, %tobool11
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %if.end
  %host19 = getelementptr i8, ptr %t, i32 -44
  %12 = ptrtoint ptr %host19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_detect_change.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_detect_change, %if.then28)) #11
          to label %do.end33 [label %if.then28], !srcloc !398

if.then28:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 1
  %cond = select i1 %tobool8.not, ptr @.str.117, ptr @.str.118
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_detect_change.__UNIQUE_ID_ddebug286, ptr noundef %class_dev, ptr noundef nonnull @.str.116, ptr noundef nonnull %cond) #11
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %if.then18
  tail call void @_raw_spin_lock(ptr noundef %13) #11
  br i1 %tobool8.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %if.end38

if.else:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then35
  %mrq39 = getelementptr i8, ptr %t, i32 -32
  %16 = ptrtoint ptr %mrq39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mrq39, align 4
  %tobool40.not = icmp eq ptr %17, null
  br i1 %tobool40.not, label %if.end38.if.end89_crit_edge, label %if.then41

if.end38.if.end89_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then41:                                        ; preds = %if.end38
  %mrq42 = getelementptr inbounds %struct.atmel_mci, ptr %13, i32 0, i32 9
  %18 = ptrtoint ptr %mrq42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mrq42, align 4
  %cmp43 = icmp eq ptr %17, %19
  br i1 %cmp43, label %if.then45, label %if.else70

if.then45:                                        ; preds = %if.then41
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 128) #11, !srcloc !391
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 1) #11, !srcloc !391
  %mode_reg = getelementptr inbounds %struct.atmel_mci, ptr %13, i32 0, i32 27
  %24 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode_reg, align 4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr50 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %25) #11, !srcloc !391
  %has_cfg_reg = getelementptr inbounds %struct.atmel_mci, ptr %13, i32 0, i32 34, i32 2
  %28 = ptrtoint ptr %has_cfg_reg to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_cfg_reg, align 2, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool51.not = icmp eq i8 %29, 0
  br i1 %tobool51.not, label %if.then45.if.end55_crit_edge, label %if.then52

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then52:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %cfg_reg = getelementptr inbounds %struct.atmel_mci, ptr %13, i32 0, i32 28
  %30 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cfg_reg, align 4
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr54 = getelementptr i8, ptr %33, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %31) #11, !srcloc !391
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.then45.if.end55_crit_edge
  %data = getelementptr inbounds %struct.atmel_mci, ptr %13, i32 0, i32 11
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %data, align 4
  %cmd = getelementptr inbounds %struct.atmel_mci, ptr %13, i32 0, i32 10
  %35 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %cmd, align 4
  %state = getelementptr inbounds %struct.atmel_mci, ptr %13, i32 0, i32 22
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %37, label %if.end55.sw.epilog_crit_edge [
    i32 4, label %sw.bb68
    i32 1, label %sw.bb
    i32 2, label %sw.bb61
    i32 3, label %sw.bb65
  ]

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end55
  %cmd56 = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 1
  %39 = ptrtoint ptr %cmd56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmd56, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -123, ptr %error, align 4
  %data57 = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 2
  %42 = ptrtoint ptr %data57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data57, align 4
  %tobool58.not = icmp eq ptr %43, null
  br i1 %tobool58.not, label %sw.bb.sw.epilog_crit_edge, label %if.then59

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then59:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %stop_transfer = getelementptr inbounds %struct.atmel_mci, ptr %13, i32 0, i32 37
  %44 = ptrtoint ptr %stop_transfer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stop_transfer, align 4
  tail call void %45(ptr noundef %13) #11
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %data62 = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 2
  %46 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data62, align 4
  %error63 = getelementptr inbounds %struct.mmc_data, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %error63 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -123, ptr %error63, align 4
  %stop_transfer64 = getelementptr inbounds %struct.atmel_mci, ptr %13, i32 0, i32 37
  %49 = ptrtoint ptr %stop_transfer64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stop_transfer64, align 4
  tail call void %50(ptr noundef %13) #11
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %data66 = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 2
  %51 = ptrtoint ptr %data66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data66, align 4
  %error67 = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %error67 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -123, ptr %error67, align 4
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %stop = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 3
  %54 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stop, align 4
  %error69 = getelementptr inbounds %struct.mmc_command, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %error69 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -123, ptr %error69, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb68, %sw.bb65, %sw.bb61, %if.then59, %sw.bb.sw.epilog_crit_edge, %if.end55.sw.epilog_crit_edge
  tail call fastcc void @atmci_request_end(ptr noundef %13, ptr noundef nonnull %17)
  br label %if.end89

if.else70:                                        ; preds = %if.then41
  %queue_node = getelementptr i8, ptr %t, i32 -28
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else70.list_del.exit_crit_edge

if.else70.list_del.exit_crit_edge:                ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %t, i32 -24
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i, align 4
  %59 = ptrtoint ptr %queue_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %queue_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else70.list_del.exit_crit_edge
  %63 = ptrtoint ptr %queue_node to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %queue_node, align 4
  %prev.i = getelementptr i8, ptr %t, i32 -24
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmd71 = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 1
  %65 = ptrtoint ptr %cmd71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cmd71, align 4
  %error72 = getelementptr inbounds %struct.mmc_command, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %error72 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -123, ptr %error72, align 4
  %data73 = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 2
  %68 = ptrtoint ptr %data73 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data73, align 4
  %tobool74.not = icmp eq ptr %69, null
  br i1 %tobool74.not, label %list_del.exit.if.end78_crit_edge, label %if.then75

list_del.exit.if.end78_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then75:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %error77 = getelementptr inbounds %struct.mmc_data, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %error77 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -123, ptr %error77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %list_del.exit.if.end78_crit_edge
  %stop79 = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 3
  %71 = ptrtoint ptr %stop79 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stop79, align 4
  %tobool80.not = icmp eq ptr %72, null
  br i1 %tobool80.not, label %if.end78.if.end84_crit_edge, label %if.then81

if.end78.if.end84_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %error83 = getelementptr inbounds %struct.mmc_command, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %error83 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -123, ptr %error83, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end78.if.end84_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %13) #11
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr, align 4
  tail call void @mmc_request_done(ptr noundef %75, ptr noundef nonnull %17) #11
  tail call void @_raw_spin_lock(ptr noundef %13) #11
  br label %if.end89

if.end89:                                         ; preds = %if.end84, %sw.epilog, %if.end38.if.end89_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %13) #11
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr, align 4
  tail call void @mmc_detect_change(ptr noundef %77, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_detect_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #11
  %detect_timer = getelementptr inbounds %struct.atmel_mci_slot, ptr %dev_id, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 2
  %call1 = tail call i32 @mod_timer(ptr noundef %detect_timer, i32 noundef %add) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.atmel_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %mrq2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %mrq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !399

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1351, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_request.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_request, %if.then32)) #11
          to label %do.end35 [label %if.then32], !srcloc !398

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_request.__UNIQUE_ID_ddebug283, ptr noundef %dev, ptr noundef nonnull @.str.97, i32 noundef %9) #11
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %if.end
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool37.not = icmp eq i32 %and1.i, 0
  br i1 %tobool37.not, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  %cmd39 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %12 = ptrtoint ptr %cmd39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd39, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -123, ptr %error, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #11
  br label %cleanup

if.end40:                                         ; preds = %do.end35
  %data41 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %15 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data41, align 4
  %tobool42.not = icmp eq ptr %16, null
  br i1 %tobool42.not, label %if.end40.if.end48_crit_edge, label %land.lhs.true

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end40
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp ugt i32 %18, 1
  br i1 %cmp, label %land.lhs.true43, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true43:                                  ; preds = %land.lhs.true
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blksz, align 4
  %and = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %land.lhs.true43.if.end48_crit_edge, label %if.then45

land.lhs.true43.if.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  %cmd46 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %21 = ptrtoint ptr %cmd46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd46, align 4
  %error47 = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %error47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -22, ptr %error47, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #11
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true43.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  tail call fastcc void @atmci_queue_request(ptr noundef %1, ptr noundef %private.i, ptr noundef %mrq)
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.atmel_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %sdc_reg = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %2 = ptrtoint ptr %sdc_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdc_reg, align 4
  %and = and i32 %3, -193
  store i32 %and, ptr %sdc_reg, align 4
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %4 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_width, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.178)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 3, label %sw.bb6
    i8 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or5 = or i32 %and, 128
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or8 = or i32 %3, 192
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb6, %sw.bb3
  %or8.sink = phi i32 [ %or8, %sw.bb6 ], [ %or5, %sw.bb3 ]
  %7 = ptrtoint ptr %sdc_reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or8.sink, ptr %sdc_reg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %8 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #11
  br i1 %tobool.not, label %if.else120, label %if.then

if.then:                                          ; preds = %sw.epilog
  %mode_reg = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.then10, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then10:                                        ; preds = %if.then
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 128) #11, !srcloc !391
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #11, !srcloc !391
  %has_cfg_reg = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 34, i32 2
  %16 = ptrtoint ptr %has_cfg_reg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_cfg_reg, align 2, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  br i1 %tobool13.not, label %if.then10.if.end17_crit_edge, label %if.then14

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %cfg_reg = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 28
  %18 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg_reg, align 4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %21, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %19) #11, !srcloc !391
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then10.if.end17_crit_edge, %if.then.if.end17_crit_edge
  %22 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ios, align 4
  %clock19 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %clock19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %clock19, align 4
  %arrayidx = getelementptr %struct.atmel_mci, ptr %1, i32 0, i32 33, i32 0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %if.end17.for.inc_crit_edge, label %land.lhs.true

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %clock25 = getelementptr inbounds %struct.atmel_mci_slot, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %clock25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clock25, align 4
  %29 = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %29)
  %30 = icmp ult i32 %29, -2
  %spec.select = select i1 %30, i32 %28, i32 -1
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end17.for.inc_crit_edge
  %clock_min.1 = phi i32 [ -1, %if.end17.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %arrayidx.1 = getelementptr %struct.atmel_mci, ptr %1, i32 0, i32 33, i32 1
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.1, align 4
  %tobool22.not.1 = icmp eq ptr %32, null
  br i1 %tobool22.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %clock25.1 = getelementptr inbounds %struct.atmel_mci_slot, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %clock25.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clock25.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool26.not.1 = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %clock_min.1)
  %cmp31.1 = icmp ult i32 %34, %clock_min.1
  %or.cond.1 = select i1 %tobool26.not.1, i1 %cmp31.1, i1 false
  %spec.select.1 = select i1 %or.cond.1, i32 %34, i32 %clock_min.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.inc.for.inc.1_crit_edge
  %clock_min.1.1 = phi i32 [ %clock_min.1, %for.inc.for.inc.1_crit_edge ], [ %spec.select.1, %land.lhs.true.1 ]
  %has_odd_clk_div = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 34, i32 6
  %35 = ptrtoint ptr %has_odd_clk_div to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_odd_clk_div, align 2, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool39.not = icmp eq i8 %36, 0
  %bus_hz63 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 29
  %37 = ptrtoint ptr %bus_hz63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bus_hz63, align 4
  br i1 %tobool39.not, label %if.else62, label %if.then40

if.then40:                                        ; preds = %for.inc.1
  %add = add i32 %clock_min.1.1, -1
  %sub = add i32 %add, %38
  %div = udiv i32 %sub, %clock_min.1.1
  %sub41 = add i32 %div, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub41)
  %cmp42 = icmp slt i32 %sub41, 0
  br i1 %cmp42, label %do.end, label %if.else

do.end:                                           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %div46257 = lshr i32 %38, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %class_dev, ptr noundef nonnull @.str.100, i32 noundef %clock_min.1.1, i32 noundef %div46257) #14
  br label %if.end57

if.else:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %sub41)
  %cmp47 = icmp ugt i32 %sub41, 511
  br i1 %cmp47, label %do.end52, label %if.else.if.end57_crit_edge

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

do.end52:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev53 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %div55 = udiv i32 %38, 513
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %class_dev53, ptr noundef nonnull @.str.103, i32 noundef %clock_min.1.1, i32 noundef %div55) #14
  br label %if.end57

if.end57:                                         ; preds = %do.end52, %if.else.if.end57_crit_edge, %do.end
  %clkdiv.0 = phi i32 [ 0, %do.end ], [ 511, %do.end52 ], [ %sub41, %if.else.if.end57_crit_edge ]
  %shr260 = lshr i32 %clkdiv.0, 1
  %and58 = shl nuw nsw i32 %clkdiv.0, 16
  %shl59 = and i32 %and58, 65536
  %or60 = or i32 %shl59, %shr260
  br label %if.end81

if.else62:                                        ; preds = %for.inc.1
  %mul = shl i32 %clock_min.1.1, 1
  %add64 = add i32 %mul, -1
  %sub65 = add i32 %add64, %38
  %div67 = udiv i32 %sub65, %mul
  %sub68 = add i32 %div67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub68)
  %cmp69 = icmp sgt i32 %sub68, 255
  br i1 %cmp69, label %do.end74, label %if.else62.if.end81_crit_edge

if.else62.if.end81_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

do.end74:                                         ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev75 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %div77256 = lshr i32 %38, 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %class_dev75, ptr noundef nonnull @.str.103, i32 noundef %clock_min.1.1, i32 noundef %div77256) #14
  br label %if.end81

if.end81:                                         ; preds = %do.end74, %if.else62.if.end81_crit_edge, %if.end57
  %storemerge = phi i32 [ %or60, %if.end57 ], [ 255, %do.end74 ], [ %sub68, %if.else62.if.end81_crit_edge ]
  %39 = ptrtoint ptr %mode_reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge, ptr %mode_reg, align 4
  %has_rwproof = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 34, i32 5
  %40 = ptrtoint ptr %has_rwproof to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %has_rwproof, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool83.not = icmp eq i8 %41, 0
  br i1 %tobool83.not, label %if.end81.if.end87_crit_edge, label %if.then84

if.end81.if.end87_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %or86 = or i32 %storemerge, 6144
  %42 = ptrtoint ptr %mode_reg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or86, ptr %mode_reg, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end81.if.end87_crit_edge
  %has_cfg_reg89 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 34, i32 2
  %43 = ptrtoint ptr %has_cfg_reg89 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %has_cfg_reg89, align 2, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool90.not = icmp eq i8 %44, 0
  br i1 %tobool90.not, label %if.end87.if.end102_crit_edge, label %if.then91

if.end87.if.end102_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %45 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp93 = icmp eq i8 %46, 2
  %cfg_reg96 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 28
  %47 = ptrtoint ptr %cfg_reg96 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cfg_reg96, align 4
  %and100 = and i32 %48, -257
  %masksel = select i1 %cmp93, i32 256, i32 0
  %or97.sink = or i32 %and100, %masksel
  store i32 %or97.sink, ptr %cfg_reg96, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then91, %if.end87.if.end102_crit_edge
  %queue = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 23
  %49 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %50, %queue
  br i1 %cmp.i.not, label %if.then105, label %if.else117

if.then105:                                       ; preds = %if.end102
  %51 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode_reg, align 4
  %regs107 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %regs107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs107, align 4
  %add.ptr108 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %52) #11, !srcloc !391
  %55 = ptrtoint ptr %has_cfg_reg89 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %has_cfg_reg89, align 2, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool111.not = icmp eq i8 %56, 0
  br i1 %tobool111.not, label %if.then105.if.end154_crit_edge, label %if.then112

if.then105.if.end154_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

if.then112:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #13
  %cfg_reg113 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 28
  %57 = ptrtoint ptr %cfg_reg113 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cfg_reg113, align 4
  %59 = ptrtoint ptr %regs107 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs107, align 4
  %add.ptr115 = getelementptr i8, ptr %60, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %58) #11, !srcloc !391
  br label %if.end154

if.else117:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %need_clock_update = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 24
  %61 = ptrtoint ptr %need_clock_update to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %need_clock_update, align 4
  br label %if.end154

if.else120:                                       ; preds = %sw.epilog
  %clock122 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %62 = ptrtoint ptr %clock122 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %clock122, align 4
  %arrayidx128 = getelementptr %struct.atmel_mci, ptr %1, i32 0, i32 33, i32 0
  %63 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx128, align 4
  %tobool129.not = icmp eq ptr %64, null
  br i1 %tobool129.not, label %if.else120.for.inc137_crit_edge, label %land.lhs.true130

if.else120.for.inc137_crit_edge:                  ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc137

land.lhs.true130:                                 ; preds = %if.else120
  %clock133 = getelementptr inbounds %struct.atmel_mci_slot, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %clock133 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %clock133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool134.not = icmp eq i32 %66, 0
  br i1 %tobool134.not, label %land.lhs.true130.for.inc137_crit_edge, label %land.lhs.true130.if.end154_crit_edge

land.lhs.true130.if.end154_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

land.lhs.true130.for.inc137_crit_edge:            ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc137

for.inc137:                                       ; preds = %land.lhs.true130.for.inc137_crit_edge, %if.else120.for.inc137_crit_edge
  %arrayidx128.1 = getelementptr %struct.atmel_mci, ptr %1, i32 0, i32 33, i32 1
  %67 = ptrtoint ptr %arrayidx128.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx128.1, align 4
  %tobool129.not.1 = icmp eq ptr %68, null
  br i1 %tobool129.not.1, label %for.inc137.for.inc137.1_crit_edge, label %land.lhs.true130.1

for.inc137.for.inc137.1_crit_edge:                ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc137.1

land.lhs.true130.1:                               ; preds = %for.inc137
  %clock133.1 = getelementptr inbounds %struct.atmel_mci_slot, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %clock133.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %clock133.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool134.not.1 = icmp eq i32 %70, 0
  br i1 %tobool134.not.1, label %land.lhs.true130.1.for.inc137.1_crit_edge, label %land.lhs.true130.1.if.end154_crit_edge

land.lhs.true130.1.if.end154_crit_edge:           ; preds = %land.lhs.true130.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

land.lhs.true130.1.for.inc137.1_crit_edge:        ; preds = %land.lhs.true130.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc137.1

for.inc137.1:                                     ; preds = %land.lhs.true130.1.for.inc137.1_crit_edge, %for.inc137.for.inc137.1_crit_edge
  %regs142 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 1
  %71 = ptrtoint ptr %regs142 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs142, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 2) #11, !srcloc !391
  %mode_reg144 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 27
  %73 = ptrtoint ptr %mode_reg144 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mode_reg144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool145.not = icmp eq i32 %74, 0
  br i1 %tobool145.not, label %for.inc137.1.if.end150_crit_edge, label %if.then146

for.inc137.1.if.end150_crit_edge:                 ; preds = %for.inc137.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then146:                                       ; preds = %for.inc137.1
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %regs142 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs142, align 4
  %add.ptr148 = getelementptr i8, ptr %76, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #11, !srcloc !394
  br label %if.end150

if.end150:                                        ; preds = %if.then146, %for.inc137.1.if.end150_crit_edge
  %78 = ptrtoint ptr %mode_reg144 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %mode_reg144, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.end150, %land.lhs.true130.1.if.end154_crit_edge, %land.lhs.true130.if.end154_crit_edge, %if.else117, %if.then112, %if.then105.if.end154_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #11
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %79 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %power_mode, align 2
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %80, label %if.end154.sw.epilog172_crit_edge [
    i8 0, label %sw.bb156
    i8 1, label %sw.bb163
  ]

if.end154.sw.epilog172_crit_edge:                 ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog172

sw.bb156:                                         ; preds = %if.end154
  %supply = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %82 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %supply, align 16
  %cmp.i258 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %sw.bb156.sw.epilog172_crit_edge, label %if.then158

sw.bb156.sw.epilog172_crit_edge:                  ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog172

if.then158:                                       ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #13
  %call161 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %83, i16 noundef zeroext 0) #11
  br label %sw.epilog172

sw.bb163:                                         ; preds = %if.end154
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  %supply164 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %84 = ptrtoint ptr %supply164 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %supply164, align 16
  %cmp.i259 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259, label %sw.bb163.sw.epilog172_crit_edge, label %if.then167

sw.bb163.sw.epilog172_crit_edge:                  ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog172

if.then167:                                       ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #13
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %86 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %vdd, align 4
  %call170 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %85, i16 noundef zeroext %87) #11
  br label %sw.epilog172

sw.epilog172:                                     ; preds = %if.then167, %sw.bb163.sw.epilog172_crit_edge, %if.then158, %sw.bb156.sw.epilog172_crit_edge, %if.end154.sw.epilog172_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_get_ro(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wp_pin = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %0 = ptrtoint ptr %wp_pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wp_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #11
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_get_ro.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_get_ro, %if.then7)) #11
          to label %if.end9 [label %if.then7], !srcloc !398

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool8.not = icmp eq i32 %call1.i, 0
  %cond = select i1 %tobool8.not, ptr @.str.110, ptr @.str.109
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_get_ro.__UNIQUE_ID_ddebug284, ptr noundef %class_dev, ptr noundef nonnull @.str.108, ptr noundef nonnull %cond) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then, %entry.if.end9_crit_edge
  %read_only.0 = phi i32 [ %call1.i, %if.then7 ], [ -38, %entry.if.end9_crit_edge ], [ %call1.i, %if.then ]
  ret i32 %read_only.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_get_cd(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %detect_pin = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %detect_pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %detect_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #11
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #11
  %detect_is_active_high = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %3 = ptrtoint ptr %detect_is_active_high to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %detect_is_active_high, align 4, !range !392
  %5 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %5)
  %tobool4.not = icmp eq i32 %call1.i, %5
  %lnot.ext = zext i1 %tobool4.not to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_get_cd.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_get_cd, %if.then12)) #11
          to label %if.end14 [label %if.then12], !srcloc !398

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %cond = select i1 %tobool4.not, ptr @.str.113, ptr @.str.114
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_get_cd.__UNIQUE_ID_ddebug285, ptr noundef %class_dev, ptr noundef nonnull @.str.112, ptr noundef nonnull %cond) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then, %entry.if.end14_crit_edge
  %present.0 = phi i32 [ %lnot.ext, %if.then12 ], [ -38, %entry.if.end14_crit_edge ], [ %lnot.ext, %if.then ]
  ret i32 %present.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmci_enable_sdio_irq(ptr nocapture noundef readonly %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.atmel_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %sdio_irq2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %sdio_irq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdio_irq2, align 4
  %regs3 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #11, !srcloc !391
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr4 = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #11, !srcloc !391
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmci_queue_request(ptr noundef %host, ptr noundef %slot, ptr noundef %mrq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %host) #11
  %mrq1 = getelementptr inbounds %struct.atmel_mci_slot, ptr %slot, i32 0, i32 4
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mrq, ptr %mrq1, align 4
  %state = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state, align 4
  tail call fastcc void @atmci_start_request(ptr noundef %host, ptr noundef %slot)
  br label %if.end6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmci_queue_request.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmci_queue_request, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !398

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 32
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmci_queue_request.__UNIQUE_ID_ddebug282, ptr noundef %dev, ptr noundef nonnull @.str.99) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %queue_node = getelementptr inbounds %struct.atmel_mci_slot, ptr %slot, i32 0, i32 5
  %queue = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.atmel_mci, ptr %host, i32 0, i32 23, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue_node, ptr noundef %7, ptr noundef %queue) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue_node, ptr %prev.i, align 4
  %9 = ptrtoint ptr %queue_node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue, ptr %queue_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.atmel_mci_slot, ptr %slot, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue_node, ptr %7, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %do.end.if.end6_crit_edge, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %host) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @atmci_regs_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_regs_show(ptr noundef %s, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 256) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #11
  %regs = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  tail call void @mmiocpy(ptr noundef nonnull %call7.i, ptr noundef %6, i32 noundef 256) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #11
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %call.i123 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i123, ptr %last_busy.i, align 8
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %call.i124 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev6, i32 noundef 13) #11
  %arrayidx = getelementptr i32, ptr %call7.i, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %and = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool9.not, ptr @.str.113, ptr @.str.125
  %and11 = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.113, ptr @.str.126
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.124, i32 noundef %13, ptr noundef nonnull %cond, ptr noundef nonnull %cond13) #11
  %caps = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 34
  %has_odd_clk_div = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 34, i32 6
  %14 = ptrtoint ptr %has_odd_clk_div to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_odd_clk_div, align 2, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and17 = shl i32 %17, 1
  %shl = and i32 %and17, 510
  %shr = lshr i32 %17, 16
  %and19 = and i32 %shr, 1
  %or = or i32 %shl, %and19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.127, i32 noundef %or) #11
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and21 = and i32 %17, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.128, i32 noundef %and21) #11
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %arrayidx23 = getelementptr i32, ptr %call7.i, i32 2
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.129, i32 noundef %19) #11
  %arrayidx24 = getelementptr i32, ptr %call7.i, i32 3
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.130, i32 noundef %21) #11
  %arrayidx25 = getelementptr i32, ptr %call7.i, i32 4
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx25, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.131, i32 noundef %23) #11
  %arrayidx26 = getelementptr i32, ptr %call7.i, i32 6
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 8
  %and28 = and i32 %25, 65535
  %shr30 = lshr i32 %25, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.132, i32 noundef %25, i32 noundef %and28, i32 noundef %shr30) #11
  %has_cstor_reg = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 34, i32 3
  %26 = ptrtoint ptr %has_cstor_reg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_cstor_reg, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool33.not = icmp eq i8 %27, 0
  br i1 %tobool33.not, label %if.end22.if.end36_crit_edge, label %if.then34

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then34:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx35 = getelementptr i32, ptr %call7.i, i32 7
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.133, i32 noundef %29) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end22.if.end36_crit_edge
  %arrayidx37 = getelementptr i32, ptr %call7.i, i32 16
  %30 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx37, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.134, i32 noundef %31) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end36
  %i.013.i = phi i32 [ 0, %if.end36 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.013.i
  %and.i = and i32 %shl.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %32 = lshr i32 805317632, %i.013.i
  %33 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool1.not.not.i = icmp eq i32 %33, 0
  br i1 %tobool1.not.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [32 x ptr], ptr @atmci_show_status_reg.sr_bit, i32 0, i32 %i.013.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.171, ptr noundef %35) #11
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.172) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then2.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %atmci_show_status_reg.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

atmci_show_status_reg.exit:                       ; preds = %for.inc.i
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #11
  %arrayidx38 = getelementptr i32, ptr %call7.i, i32 19
  %36 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx38, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.135, i32 noundef %37) #11
  br label %for.body.i129

for.body.i129:                                    ; preds = %for.inc.i137.for.body.i129_crit_edge, %atmci_show_status_reg.exit
  %i.013.i125 = phi i32 [ 0, %atmci_show_status_reg.exit ], [ %inc.i135, %for.inc.i137.for.body.i129_crit_edge ]
  %shl.i126 = shl nuw i32 1, %i.013.i125
  %and.i127 = and i32 %shl.i126, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i128 = icmp eq i32 %and.i127, 0
  br i1 %tobool.not.i128, label %for.body.i129.for.inc.i137_crit_edge, label %if.then.i131

for.body.i129.for.inc.i137_crit_edge:             ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i137

if.then.i131:                                     ; preds = %for.body.i129
  %38 = lshr i32 805317632, %i.013.i125
  %39 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool1.not.not.i130 = icmp eq i32 %39, 0
  br i1 %tobool1.not.not.i130, label %if.then2.i133, label %if.else.i134

if.then2.i133:                                    ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i132 = getelementptr [32 x ptr], ptr @atmci_show_status_reg.sr_bit, i32 0, i32 %i.013.i125
  %40 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i132, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.171, ptr noundef %41) #11
  br label %for.inc.i137

if.else.i134:                                     ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.172) #11
  br label %for.inc.i137

for.inc.i137:                                     ; preds = %if.else.i134, %if.then2.i133, %for.body.i129.for.inc.i137_crit_edge
  %inc.i135 = add nuw nsw i32 %i.013.i125, 1
  %exitcond.not.i136 = icmp eq i32 %inc.i135, 32
  br i1 %exitcond.not.i136, label %atmci_show_status_reg.exit138, label %for.inc.i137.for.body.i129_crit_edge

for.inc.i137.for.body.i129_crit_edge:             ; preds = %for.inc.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i129

atmci_show_status_reg.exit138:                    ; preds = %for.inc.i137
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #11
  %42 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %caps, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool40.not = icmp eq i8 %43, 0
  br i1 %tobool40.not, label %atmci_show_status_reg.exit138.if.end54_crit_edge, label %if.then41

atmci_show_status_reg.exit138.if.end54_crit_edge: ; preds = %atmci_show_status_reg.exit138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then41:                                        ; preds = %atmci_show_status_reg.exit138
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx42 = getelementptr i32, ptr %call7.i, i32 20
  %44 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx42, align 8
  %and43 = and i32 %45, 3
  %shr44 = lshr i32 %45, 4
  %and45 = and i32 %shr44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %shl49 = shl nuw nsw i32 2, %and45
  %spec.select = select i1 %tobool46.not, i32 1, i32 %shl49
  %and51 = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %cond53 = select i1 %tobool52.not, ptr @.str.113, ptr @.str.137
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.136, i32 noundef %45, i32 noundef %and43, i32 noundef %spec.select, ptr noundef nonnull %cond53) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then41, %atmci_show_status_reg.exit138.if.end54_crit_edge
  %has_cfg_reg = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 34, i32 2
  %46 = ptrtoint ptr %has_cfg_reg to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %has_cfg_reg, align 2, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool56.not = icmp eq i8 %47, 0
  br i1 %tobool56.not, label %if.end54.if.end72_crit_edge, label %if.then57

if.end54.if.end72_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx59 = getelementptr i32, ptr %call7.i, i32 21
  %48 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx59, align 4
  %and60 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %cond62 = select i1 %tobool61.not, ptr @.str.113, ptr @.str.139
  %and63 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %cond65 = select i1 %tobool64.not, ptr @.str.113, ptr @.str.140
  %and66 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %cond68 = select i1 %tobool67.not, ptr @.str.113, ptr @.str.141
  %and69 = and i32 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %cond71 = select i1 %tobool70.not, ptr @.str.113, ptr @.str.142
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.138, i32 noundef %49, ptr noundef nonnull %cond62, ptr noundef nonnull %cond65, ptr noundef nonnull %cond68, ptr noundef nonnull %cond71) #11
  br label %if.end72

if.end72:                                         ; preds = %if.then57, %if.end54.if.end72_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end72 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_req_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @atmci_req_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_req_show(ptr noundef %s, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %host = getelementptr inbounds %struct.atmel_mci_slot, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #11
  %mrq1 = getelementptr inbounds %struct.atmel_mci_slot, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then:                                          ; preds = %entry
  %cmd2 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd2, align 4
  %data3 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data3, align 4
  %stop4 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %stop4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stop4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %resp = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resp, align 4
  %arrayidx8 = getelementptr %struct.mmc_command, ptr %7, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.mmc_command, ptr %7, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.mmc_command, ptr %7, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #11
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 7
  %28 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytes_xfered, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 3
  %30 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 2
  %32 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blksz, align 4
  %flags15 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 6
  %34 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags15, align 4
  %error16 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 5
  %36 = ptrtoint ptr %error16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.174, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.end17.if.end33_crit_edge, label %if.then19

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %11, align 4
  %arg21 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 1
  %40 = ptrtoint ptr %arg21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arg21, align 4
  %flags22 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 3
  %42 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags22, align 4
  %resp23 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 2
  %44 = ptrtoint ptr %resp23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %resp23, align 4
  %arrayidx26 = getelementptr %struct.mmc_command, ptr %11, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr %struct.mmc_command, ptr %11, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr %struct.mmc_command, ptr %11, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx30, align 4
  %error31 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 5
  %52 = ptrtoint ptr %error31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %error31, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then19, %if.end17.if.end33_crit_edge, %entry.if.end33_crit_edge
  %54 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %host, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %55) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mck = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mck, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmci_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_select_default_state(ptr noundef %dev) #11
  %mck = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mck, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %3) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 179)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 179)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !128, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !158, !159, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !179, !180, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !195, !197, !198, !199, !200, !201, !203, !205, !206, !208, !210, !211, !213, !214, !216, !218, !219, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !240, !241, !243, !244, !245, !246, !247, !249, !250, !251, !252, !253, !255, !256, !257, !258, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379}
!llvm.module.flags = !{!381, !382, !383, !384, !385, !386, !387, !388}
!llvm.ident = !{!389}

!0 = !{ptr @__initcall__kmod_atmel_mci__315_2676_atmci_driver_init6, !1, !"__initcall__kmod_atmel_mci__315_2676_atmci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2676, i32 1}
!2 = !{ptr @__exitcall_atmci_driver_exit, !1, !"__exitcall_atmci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description316, !4, !"__UNIQUE_ID_description316", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2678, i32 1}
!5 = !{ptr @__UNIQUE_ID_author317, !6, !"__UNIQUE_ID_author317", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2679, i32 1}
!7 = !{ptr @__UNIQUE_ID_file318, !8, !"__UNIQUE_ID_file318", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2680, i32 1}
!9 = !{ptr @__UNIQUE_ID_license319, !8, !"__UNIQUE_ID_license319", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2670, i32 12}
!12 = !{ptr @atmci_driver, !13, !"atmci_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2666, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2465, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @atmci_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @atmci_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @atmci_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2479, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2482, i32 39}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2517, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @atmci_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @atmci_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2522, i32 3}
!34 = !{ptr @atmci_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @atmci_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @atmci_probe.__key.15, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2530, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2561, i32 3}
!41 = !{ptr @atmci_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @atmci_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2571, i32 4}
!45 = !{ptr @atmci_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @atmci_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2576, i32 2}
!49 = !{ptr @atmci_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @atmci_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/atmel-mci.c", i32 613, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @atmci_of_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @atmci_of_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/atmel-mci.c", i32 622, i32 33}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/atmel-mci.c", i32 623, i32 4}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @atmci_of_init._entry.29, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @atmci_of_init._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/atmel-mci.c", i32 629, i32 4}
!65 = !{ptr @atmci_of_init._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @atmci_of_init._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/atmel-mci.c", i32 635, i32 33}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/atmel-mci.c", i32 640, i32 27}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/atmel-mci.c", i32 643, i32 31}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/atmel-mci.c", i32 646, i32 31}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/atmel-mci.c", i32 649, i32 27}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1742, i32 3}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug287, !78, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1755, i32 4}
!83 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug288, !82, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1760, i32 4}
!86 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug289, !85, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1765, i32 5}
!89 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug290, !88, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1781, i32 5}
!92 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug291, !91, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1793, i32 5}
!95 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug292, !94, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1806, i32 4}
!98 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug293, !97, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1811, i32 4}
!101 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug294, !100, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1839, i32 4}
!104 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug295, !103, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1844, i32 4}
!107 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug296, !106, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!108 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug297, !109, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1876, i32 4}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1881, i32 4}
!112 = !{ptr @atmci_tasklet_func.__UNIQUE_ID_ddebug298, !111, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/host/atmel-mci.c", i32 832, i32 2}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @atmci_send_stop_cmd.__UNIQUE_ID_ddebug275, !114, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1251, i32 2}
!119 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @atmci_start_request.__UNIQUE_ID_ddebug280, !118, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1268, i32 3}
!123 = !{ptr @atmci_start_request.__UNIQUE_ID_ddebug281, !122, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!124 = distinct !{null, !125, !"dtomul_to_shift", i1 false, i1 false}
!125 = !{!"../drivers/mmc/host/atmel-mci.c", i32 734, i32 18}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2091, i32 4}
!128 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug299, !127, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2098, i32 4}
!132 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug300, !131, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2105, i32 4}
!135 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug301, !134, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2121, i32 4}
!138 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug302, !137, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2132, i32 4}
!141 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug303, !140, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2148, i32 4}
!144 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug304, !143, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2165, i32 4}
!147 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug305, !146, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2168, i32 4}
!150 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug306, !149, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2174, i32 4}
!153 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug307, !152, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!154 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug308, !155, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!155 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2177, i32 4}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2188, i32 4}
!158 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug309, !157, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2192, i32 4}
!161 = !{ptr @atmci_interrupt.__UNIQUE_ID_ddebug310, !160, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mmc/host/atmel-mci.c", i32 935, i32 2}
!164 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @atmci_pdc_complete.__UNIQUE_ID_ddebug276, !163, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2401, i32 2}
!168 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @atmci_get_cap._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @atmci_get_cap._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2443, i32 3}
!173 = !{ptr @atmci_get_cap._entry.74, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @atmci_get_cap._entry_ptr.76, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2356, i32 54}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2377, i32 2}
!179 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @atmci_configure_dma._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @atmci_configure_dma._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mmc/host/atmel-mci.c", i32 971, i32 3}
!184 = !{ptr @atmci_dma_complete.__UNIQUE_ID_ddebug277, !183, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1222, i32 3}
!187 = !{ptr @atmci_stop_transfer_dma.__UNIQUE_ID_ddebug279, !186, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1199, i32 2}
!190 = !{ptr @atmci_stop_transfer.__UNIQUE_ID_ddebug278, !189, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mmc/host/atmel-mci.c", i32 696, i32 2}
!193 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @atmci_timeout_timer.__UNIQUE_ID_ddebug274, !192, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!195 = !{ptr @.str.85, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2240, i32 2}
!197 = !{ptr @.str.86, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @atmci_init_slot.__UNIQUE_ID_ddebug311, !196, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!199 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2283, i32 11}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2284, i32 4}
!205 = !{ptr @atmci_init_slot.__UNIQUE_ID_ddebug312, !204, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2301, i32 11}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2302, i32 4}
!210 = !{ptr @atmci_init_slot.__UNIQUE_ID_ddebug313, !209, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!211 = !{ptr @atmci_init_slot.__key, !212, !"__key", i1 false, i1 false}
!212 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2314, i32 3}
!213 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.94, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2319, i32 5}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2321, i32 4}
!218 = !{ptr @atmci_init_slot.__UNIQUE_ID_ddebug314, !217, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!219 = !{ptr @atmci_ops, !220, !"atmci_ops", i1 false, i1 false}
!220 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1548, i32 34}
!221 = !{ptr @.str.96, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1352, i32 2}
!223 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @atmci_request.__UNIQUE_ID_ddebug283, !222, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!225 = !{ptr @.str.98, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1339, i32 3}
!227 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @atmci_queue_request.__UNIQUE_ID_ddebug282, !226, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!229 = !{ptr @.str.100, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1424, i32 5}
!231 = !{ptr @.str.101, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @atmci_set_ios._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @atmci_set_ios._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.103, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1429, i32 5}
!236 = !{ptr @atmci_set_ios._entry.102, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @atmci_set_ios._entry_ptr.104, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @atmci_set_ios._entry.105, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1439, i32 5}
!240 = !{ptr @atmci_set_ios._entry_ptr.106, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.107, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1515, i32 3}
!243 = !{ptr @.str.108, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @atmci_get_ro.__UNIQUE_ID_ddebug284, !242, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!245 = !{ptr @.str.109, !242, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.110, !242, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.111, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1530, i32 3}
!249 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @atmci_get_cd.__UNIQUE_ID_ddebug285, !248, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!251 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.114, !248, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.115, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/mmc/host/atmel-mci.c", i32 1653, i32 3}
!255 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @atmci_detect_change.__UNIQUE_ID_ddebug286, !254, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!257 = !{ptr @.str.117, !254, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/mmc/host/atmel-mci.c", i32 587, i32 22}
!261 = !{ptr @.str.120, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/mmc/host/atmel-mci.c", i32 588, i32 22}
!263 = !{ptr @.str.121, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mmc/host/atmel-mci.c", i32 589, i32 21}
!265 = !{ptr @.str.122, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mmc/host/atmel-mci.c", i32 590, i32 21}
!267 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/mmc/host/atmel-mci.c", i32 592, i32 21}
!269 = !{ptr @atmci_regs_fops, !270, !"atmci_regs_fops", i1 false, i1 false}
!270 = !{!"../drivers/mmc/host/atmel-mci.c", i32 575, i32 1}
!271 = !{ptr @.str.124, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/mmc/host/atmel-mci.c", i32 522, i32 16}
!273 = !{ptr @.str.125, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/mmc/host/atmel-mci.c", i32 524, i32 43}
!275 = !{ptr @.str.126, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/mmc/host/atmel-mci.c", i32 525, i32 43}
!277 = !{ptr @.str.127, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/mmc/host/atmel-mci.c", i32 527, i32 17}
!279 = !{ptr @.str.128, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/mmc/host/atmel-mci.c", i32 531, i32 17}
!281 = !{ptr @.str.129, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/mmc/host/atmel-mci.c", i32 533, i32 16}
!283 = !{ptr @.str.130, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/mmc/host/atmel-mci.c", i32 534, i32 16}
!285 = !{ptr @.str.131, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/mmc/host/atmel-mci.c", i32 535, i32 16}
!287 = !{ptr @.str.132, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/mmc/host/atmel-mci.c", i32 536, i32 16}
!289 = !{ptr @.str.133, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mmc/host/atmel-mci.c", i32 541, i32 17}
!291 = !{ptr @.str.134, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/mmc/host/atmel-mci.c", i32 545, i32 27}
!293 = !{ptr @.str.135, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/mmc/host/atmel-mci.c", i32 546, i32 27}
!295 = !{ptr @.str.136, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mmc/host/atmel-mci.c", i32 552, i32 17}
!297 = !{ptr @.str.137, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mmc/host/atmel-mci.c", i32 556, i32 25}
!299 = !{ptr @.str.138, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/mmc/host/atmel-mci.c", i32 562, i32 17}
!301 = !{ptr @.str.139, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mmc/host/atmel-mci.c", i32 564, i32 38}
!303 = !{ptr @.str.140, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/mmc/host/atmel-mci.c", i32 565, i32 36}
!305 = !{ptr @.str.141, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/mmc/host/atmel-mci.c", i32 566, i32 30}
!307 = !{ptr @.str.142, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/mmc/host/atmel-mci.c", i32 567, i32 29}
!309 = !{ptr @.str.143, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/mmc/host/atmel-mci.c", i32 455, i32 9}
!311 = !{ptr @.str.144, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/mmc/host/atmel-mci.c", i32 456, i32 9}
!313 = !{ptr @.str.145, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/mmc/host/atmel-mci.c", i32 457, i32 9}
!315 = !{ptr @.str.146, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/mmc/host/atmel-mci.c", i32 458, i32 9}
!317 = !{ptr @.str.147, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/mmc/host/atmel-mci.c", i32 459, i32 9}
!319 = !{ptr @.str.148, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/mmc/host/atmel-mci.c", i32 460, i32 9}
!321 = !{ptr @.str.149, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/mmc/host/atmel-mci.c", i32 461, i32 9}
!323 = !{ptr @.str.150, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/mmc/host/atmel-mci.c", i32 462, i32 9}
!325 = !{ptr @.str.151, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/mmc/host/atmel-mci.c", i32 463, i32 9}
!327 = !{ptr @.str.152, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/mmc/host/atmel-mci.c", i32 464, i32 9}
!329 = !{ptr @.str.153, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/mmc/host/atmel-mci.c", i32 465, i32 10}
!331 = !{ptr @.str.154, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/mmc/host/atmel-mci.c", i32 466, i32 10}
!333 = !{ptr @.str.155, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/mmc/host/atmel-mci.c", i32 467, i32 10}
!335 = !{ptr @.str.156, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/mmc/host/atmel-mci.c", i32 468, i32 10}
!337 = !{ptr @.str.157, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/mmc/host/atmel-mci.c", i32 469, i32 10}
!339 = !{ptr @.str.158, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/mmc/host/atmel-mci.c", i32 470, i32 10}
!341 = !{ptr @.str.159, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/mmc/host/atmel-mci.c", i32 471, i32 10}
!343 = !{ptr @.str.160, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/mmc/host/atmel-mci.c", i32 472, i32 10}
!345 = !{ptr @.str.161, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/mmc/host/atmel-mci.c", i32 473, i32 10}
!347 = !{ptr @.str.162, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/mmc/host/atmel-mci.c", i32 474, i32 10}
!349 = !{ptr @.str.163, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/mmc/host/atmel-mci.c", i32 475, i32 10}
!351 = !{ptr @.str.164, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/mmc/host/atmel-mci.c", i32 476, i32 10}
!353 = !{ptr @.str.165, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/mmc/host/atmel-mci.c", i32 477, i32 10}
!355 = !{ptr @.str.166, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/mmc/host/atmel-mci.c", i32 478, i32 10}
!357 = !{ptr @.str.167, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/mmc/host/atmel-mci.c", i32 479, i32 10}
!359 = !{ptr @.str.168, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/mmc/host/atmel-mci.c", i32 480, i32 10}
!361 = !{ptr @.str.169, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/mmc/host/atmel-mci.c", i32 481, i32 10}
!363 = !{ptr @atmci_show_status_reg.sr_bit, !364, !"sr_bit", i1 false, i1 false}
!364 = !{!"../drivers/mmc/host/atmel-mci.c", i32 454, i32 21}
!365 = !{ptr @.str.170, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/mmc/host/atmel-mci.c", i32 485, i32 16}
!367 = !{ptr @.str.171, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/mmc/host/atmel-mci.c", i32 489, i32 19}
!369 = !{ptr @.str.172, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/mmc/host/atmel-mci.c", i32 491, i32 17}
!371 = !{ptr @atmci_req_fops, !372, !"atmci_req_fops", i1 false, i1 false}
!372 = !{!"../drivers/mmc/host/atmel-mci.c", i32 449, i32 1}
!373 = !{ptr @.str.173, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/mmc/host/atmel-mci.c", i32 428, i32 5}
!375 = !{ptr @.str.174, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/mmc/host/atmel-mci.c", i32 433, i32 18}
!377 = !{ptr @atmci_dt_ids, !378, !"atmci_dt_ids", i1 false, i1 false}
!378 = !{!"../drivers/mmc/host/atmel-mci.c", i32 597, i32 34}
!379 = !{ptr @atmci_dev_pm_ops, !380, !"atmci_dev_pm_ops", i1 false, i1 false}
!380 = !{!"../drivers/mmc/host/atmel-mci.c", i32 2660, i32 32}
!381 = !{i32 1, !"wchar_size", i32 2}
!382 = !{i32 1, !"min_enum_size", i32 4}
!383 = !{i32 8, !"branch-target-enforcement", i32 0}
!384 = !{i32 8, !"sign-return-address", i32 0}
!385 = !{i32 8, !"sign-return-address-all", i32 0}
!386 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!387 = !{i32 7, !"uwtable", i32 1}
!388 = !{i32 7, !"frame-pointer", i32 2}
!389 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!390 = !{!"auto-init"}
!391 = !{i64 6022295}
!392 = !{i8 0, i8 2}
!393 = !{i64 2148532653, i64 2148532679, i64 2148532708, i64 2148532742, i64 2148532773, i64 2148532796}
!394 = !{i64 6022713}
!395 = !{i64 2148532072}
!396 = !{i64 1018672, i64 1018697, i64 1018719, i64 1018735, i64 1018747, i64 1018767, i64 1018791, i64 1018807, i64 1018819}
!397 = !{i64 2148532260}
!398 = !{i64 2148346046, i64 2148346051, i64 2148346064, i64 2148346108, i64 2148346142, i64 2148346163}
!399 = !{!"branch_weights", i32 2000, i32 1}
!400 = !{i64 2155155844}
!401 = !{i64 2155174309}
!402 = !{i64 2155179378}
!403 = !{!"branch_weights", i32 1, i32 2000}
!404 = !{i64 2154469886, i64 2154470378, i64 2154469923, i64 2154469979, i64 2154470013, i64 2154470037, i64 2154470078, i64 2154470099, i64 2154470127, i64 2154470161}
!405 = !{i64 2155146818}
!406 = !{i64 2155149194}
!407 = !{i64 2155184620}
!408 = !{i32 0, i32 33}
!409 = !{i64 2155039282}
!410 = !{i64 2155198563}
!411 = !{i64 2155075445}
!412 = !{i64 2155075287}
!413 = !{i64 2155103520}
