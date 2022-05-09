; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/s3cmci.c_pt.bc'
source_filename = "../drivers/mmc/host/s3cmci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s3cmci_reg = type { i16, ptr }
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
%struct.s3c24xx_mci_pdata = type { i8, i32, ptr, [6 x ptr] }
%struct.s3cmci_host = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, ptr, i32, i32, [301 x i8], [301 x i8], ptr, i32, i32, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_s3cmci__320_1773_s3cmci_driver_init6 = internal global ptr @s3cmci_driver_init, section ".initcall6.init", align 4
@s3cmci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3cmci_probe, ptr @s3cmci_remove, ptr @s3cmci_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @s3cmci_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s3cmci_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s3cmci_driver_exit = internal global ptr @s3cmci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [60 x i8] c"s3cmci.description=Samsung S3C MMC/SD Card Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [36 x i8] c"s3cmci.file=drivers/mmc/host/s3cmci\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [22 x i8] c"s3cmci.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [79 x i8] c"s3cmci.author=Thomas Kleffel <tk@maintech.de>, Ben Dooks <ben-linux@fluff.org>\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s3c-sdi\00", [24 x i8] zeroinitializer }, align 32
@s3cmci_dt_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-sdi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2412-sdi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-sdi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@s3cmci_driver_ids = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2410-sdi\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c2412-sdi\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"s3c2440-sdi\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@s3cmci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&host->complete_lock\00", [43 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1553, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to get io memory region resource.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3cmci_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/host/s3cmci.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry_ptr = internal global ptr @s3cmci_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@s3cmci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1563, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to request io memory region.\0A\00", [59 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry_ptr.9 = internal global ptr @s3cmci_probe._entry.7, section ".printk_index", align 4
@s3cmci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to ioremap() io memory region.\0A\00", [57 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry_ptr.12 = internal global ptr @s3cmci_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s3c-mci\00", [24 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1582, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request mci interrupt.\0A\00", [62 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry_ptr.16 = internal global ptr @s3cmci_probe._entry.14, section ".printk_index", align 4
@s3cmci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot get DMA channel.\0A\00", [39 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry_ptr.20 = internal global ptr @s3cmci_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdi\00", [28 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1602, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to find clock source.\0A\00", [34 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry_ptr.24 = internal global ptr @s3cmci_probe._entry.22, section ".printk_index", align 4
@s3cmci_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1610, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable clock source.\0A\00", [32 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry_ptr.27 = internal global ptr @s3cmci_probe._entry.25, section ".printk_index", align 4
@s3cmci_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @s3cmci_request, ptr null, ptr @s3cmci_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr @s3cmci_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@s3cmci_probe.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.3, ptr @.str.4, ptr @.str.29, i8 1, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s3cmci\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"probe: mode:%s mapped mci_base:%p irq:%u irq_cd:%u dma:%p.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2440\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@s3cmci_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 1643, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register cpufreq\0A\00", [36 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry_ptr.34 = internal global ptr @s3cmci_probe._entry.32, section ".printk_index", align 4
@s3cmci_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 1649, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add mmc host.\0A\00", [39 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry_ptr.37 = internal global ptr @s3cmci_probe._entry.35, section ".printk_index", align 4
@s3cmci_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 1658, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - using %s, %s SDIO IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3cmci_probe._entry_ptr.41 = internal global ptr @s3cmci_probe._entry.38, section ".printk_index", align 4
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pio\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hw\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sw\00", [29 x i8] zeroinitializer }, align 32
@s3cmci_probe_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 1446, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"need platform data\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3cmci_probe_pdata\00", [45 x i8] zeroinitializer }, align 32
@s3cmci_probe_pdata._entry_ptr = internal global ptr @s3cmci_probe_pdata._entry, section ".printk_index", align 4
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@s3cmci_probe_pdata._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.47, ptr @.str.4, i32 1454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get gpio %d\0A\00", [41 x i8] zeroinitializer }, align 32
@s3cmci_probe_pdata._entry_ptr.51 = internal global ptr @s3cmci_probe_pdata._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cd\00", [29 x i8] zeroinitializer }, align 32
@s3cmci_probe_pdata._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.4, i32 1472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error requesting GPIO for CD %d\0A\00", [63 x i8] zeroinitializer }, align 32
@s3cmci_probe_pdata._entry_ptr.55 = internal global ptr @s3cmci_probe_pdata._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wp\00", [29 x i8] zeroinitializer }, align 32
@s3cmci_probe_pdata._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.4, i32 1479, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error requesting GPIO for WP %d\0A\00", [63 x i8] zeroinitializer }, align 32
@s3cmci_probe_pdata._entry_ptr.59 = internal global ptr @s3cmci_probe_pdata._entry.57, section ".printk_index", align 4
@pio_tasklet.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pio_tasklet\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unfinished %s - pio_count:[%u] pio_bytes:[%u]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@get_data_buffer.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.64, ptr @.str.4, ptr @.str.65, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_data_buffer\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no more buffers (%i/%i)\0A\00", [39 x i8] zeroinitializer }, align 32
@dbg_dumpcmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CMD[OK] %s R0:0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dbg_dumpcmd\00", [20 x i8] zeroinitializer }, align 32
@dbg_dumpcmd._entry_ptr = internal global ptr @dbg_dumpcmd._entry, section ".printk_index", align 4
@dbg_dumpcmd._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 210, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dbg_dumpcmd._entry_ptr.69 = internal global ptr @dbg_dumpcmd._entry.68, section ".printk_index", align 4
@dbg_dumpcmd.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.67, ptr @.str.4, ptr @.str.66, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dbg_dumpcmd._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.4, i32 213, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CMD[ERR %i] %s Status:%s\0A\00", [38 x i8] zeroinitializer }, align 32
@dbg_dumpcmd._entry_ptr.72 = internal global ptr @dbg_dumpcmd._entry.70, section ".printk_index", align 4
@dbg_dumpcmd._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.4, i32 213, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dbg_dumpcmd._entry_ptr.74 = internal global ptr @dbg_dumpcmd._entry.73, section ".printk_index", align 4
@dbg_dumpcmd.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.67, ptr @.str.4, ptr @.str.71, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dbg_dumpcmd._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.67, ptr @.str.4, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAT[OK] %s\0A\00", [20 x i8] zeroinitializer }, align 32
@dbg_dumpcmd._entry_ptr.77 = internal global ptr @dbg_dumpcmd._entry.75, section ".printk_index", align 4
@dbg_dumpcmd._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.67, ptr @.str.4, i32 220, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dbg_dumpcmd._entry_ptr.79 = internal global ptr @dbg_dumpcmd._entry.78, section ".printk_index", align 4
@dbg_dumpcmd.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.67, ptr @.str.4, ptr @.str.76, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dbg_dumpcmd._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.67, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAT[ERR %i] %s DCNT:0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@dbg_dumpcmd._entry_ptr.82 = internal global ptr @dbg_dumpcmd._entry.80, section ".printk_index", align 4
@dbg_dumpcmd._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.67, ptr @.str.4, i32 224, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dbg_dumpcmd._entry_ptr.84 = internal global ptr @dbg_dumpcmd._entry.83, section ".printk_index", align 4
@dbg_dumpcmd.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.67, ptr @.str.4, ptr @.str.81, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@s3cmci_send_request.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.85, ptr @.str.4, ptr @.str.86, i8 1, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s3cmci_send_request\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setup data error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"#%u%s op:%i arg:0x%08x flags:0x08%x retries:%u\00", [49 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (STOP)\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"#%u bsize:%u blocks:%u bytes:%u\00", [32 x i8] zeroinitializer }, align 32
@s3cmci_setup_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: can't do non-word sized block transfers (blksz %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3cmci_setup_data\00", [46 x i8] zeroinitializer }, align 32
@s3cmci_setup_data._entry_ptr = internal global ptr @s3cmci_setup_data._entry, section ".printk_index", align 4
@s3cmci_setup_data.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.92, ptr @.str.4, ptr @.str.93, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mci_setup_data() transfer stillin progress.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DRF\00", [28 x i8] zeroinitializer }, align 32
@dbg_dumpregs.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.95, ptr @.str.4, ptr @.str.96, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dbg_dumpregs\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s  CON:[%08x]  PRE:[%08x]  TMR:[%08x]\0A\00", [56 x i8] zeroinitializer }, align 32
@dbg_dumpregs.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.95, ptr @.str.4, ptr @.str.97, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s CCON:[%08x] CARG:[%08x] CSTA:[%08x]\0A\00", [56 x i8] zeroinitializer }, align 32
@dbg_dumpregs.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.95, ptr @.str.4, ptr @.str.98, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s DCON:[%08x] FSTA:[%08x] DSTA:[%08x] DCNT:[%08x]\0A\00", [44 x i8] zeroinitializer }, align 32
@dbg_dumpregs.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.95, ptr @.str.4, ptr @.str.99, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s   R0:[%08x]   R1:[%08x]   R2:[%08x]   R3:[%08x]\0A\00", [44 x i8] zeroinitializer }, align 32
@s3cmci_check_sdio_irq.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.100, ptr @.str.4, ptr @.str.101, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3cmci_check_sdio_irq\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: signalling irq\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nothing to complete\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no active mrq\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no active cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pio tx\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pio rx\00", [25 x i8] zeroinitializer }, align 32
@s3cmci_irq.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.107, ptr @.str.4, ptr @.str.108, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s3cmci_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CMDSTAT: error CMDTIMEOUT\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: command timeout\00", [41 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ok: command sent\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ok: command response received\00", [34 x i8] zeroinitializer }, align 32
@s3cmci_irq.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.107, ptr @.str.4, ptr @.str.112, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIFO failure\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error: 2440 fifo failure\00", [39 x i8] zeroinitializer }, align 32
@s3cmci_irq.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.107, ptr @.str.4, ptr @.str.112, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error:  fifo failure\00", [43 x i8] zeroinitializer }, align 32
@s3cmci_irq.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.107, ptr @.str.4, ptr @.str.115, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad data crc (outgoing)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: bad data crc (outgoing)\00", [33 x i8] zeroinitializer }, align 32
@s3cmci_irq.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.107, ptr @.str.4, ptr @.str.117, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad data crc (incoming)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: bad data crc (incoming)\00", [33 x i8] zeroinitializer }, align 32
@s3cmci_irq.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.107, ptr @.str.4, ptr @.str.119, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"data timeout\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error: data timeout\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ok: data transfer completed\00", [36 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc request\00", [20 x i8] zeroinitializer }, align 32
@s3cmci_request.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.123, ptr @.str.4, ptr @.str.124, i8 1, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3cmci_request\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: no medium present\0A\00", [41 x i8] zeroinitializer }, align 32
@s3cmci_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.4, i32 1227, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"running at %lukHz (requested: %ukHz).\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3cmci_set_ios\00", [17 x i8] zeroinitializer }, align 32
@s3cmci_set_ios._entry_ptr = internal global ptr @s3cmci_set_ios._entry, section ".printk_index", align 4
@s3cmci_set_ios._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.4, i32 1229, ptr @.str.40, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powered down.\0A\00", [17 x i8] zeroinitializer }, align 32
@s3cmci_set_ios._entry_ptr.129 = internal global ptr @s3cmci_set_ios._entry.127, section ".printk_index", align 4
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@s3cmci_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @s3cmci_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@s3cmci_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @s3cmci_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Register base = 0x%p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Clock rate = %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Prescale = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"is2440 = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IRQ = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQ enabled = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ disabled = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQ state = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CD IRQ = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Do DMA = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDIIMSK at %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDIDATA at %d\0A\00", [17 x i8] zeroinitializer }, align 32
@debug_regs = internal constant { [16 x %struct.s3cmci_reg], [32 x i8] } { [16 x %struct.s3cmci_reg] [%struct.s3cmci_reg { i16 0, ptr @.str.146 }, %struct.s3cmci_reg { i16 4, ptr @.str.147 }, %struct.s3cmci_reg { i16 8, ptr @.str.148 }, %struct.s3cmci_reg { i16 12, ptr @.str.149 }, %struct.s3cmci_reg { i16 16, ptr @.str.150 }, %struct.s3cmci_reg { i16 20, ptr @.str.151 }, %struct.s3cmci_reg { i16 24, ptr @.str.152 }, %struct.s3cmci_reg { i16 28, ptr @.str.153 }, %struct.s3cmci_reg { i16 32, ptr @.str.154 }, %struct.s3cmci_reg { i16 36, ptr @.str.155 }, %struct.s3cmci_reg { i16 40, ptr @.str.156 }, %struct.s3cmci_reg { i16 44, ptr @.str.157 }, %struct.s3cmci_reg { i16 48, ptr @.str.158 }, %struct.s3cmci_reg { i16 52, ptr @.str.159 }, %struct.s3cmci_reg { i16 56, ptr @.str.160 }, %struct.s3cmci_reg zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDI%s\09=0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SDIIMSK\09=0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CON\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PRE\00", [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CMDARG\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CMDCON\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CMDSTAT\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RSP0\00", [27 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RSP1\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RSP2\00", [27 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RSP3\00", [27 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TIMER\00", [26 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BSIZE\00", [26 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCON\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCNT\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSTA\00", [27 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FSTA\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@___asan_gen_.162 = private unnamed_addr constant [14 x i8] c"s3cmci_driver\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1761, i32 31 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1763, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"s3cmci_dt_match\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1728, i32 34 }
@___asan_gen_.171 = private unnamed_addr constant [18 x i8] c"s3cmci_driver_ids\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1745, i32 40 }
@___asan_gen_.174 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1534, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1552, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1563, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1570, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1581, i32 57 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1582, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1595, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1600, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1602, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1610, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [11 x i8] c"s3cmci_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1283, i32 34 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1636, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1643, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1649, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1656, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1446, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1451, i32 52 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1454, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1469, i32 34 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1471, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1476, i32 40 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1478, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 558, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 323, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 209, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 212, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 220, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 222, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1119, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 185, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 186, i32 24 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 191, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 957, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 966, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 973, i32 23 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 166, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 169, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 172, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 176, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 305, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 630, i32 18 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 636, i32 18 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 644, i32 18 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 655, i32 19 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 666, i32 19 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 671, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 673, i32 18 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 679, i32 19 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 708, i32 19 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 727, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 729, i32 19 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 736, i32 19 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 742, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 744, i32 18 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 749, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 751, i32 18 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 756, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 758, i32 18 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 764, i32 19 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1153, i32 17 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1158, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1226, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1229, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1421, i32 22 }
@___asan_gen_.516 = private unnamed_addr constant [18 x i8] c"s3cmci_state_fops\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1369, i32 1 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1422, i32 22 }
@___asan_gen_.522 = private unnamed_addr constant [17 x i8] c"s3cmci_regs_fops\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1411, i32 1 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1353, i32 18 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1354, i32 18 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1355, i32 18 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1356, i32 18 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1357, i32 18 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1358, i32 18 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1359, i32 18 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1360, i32 18 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1361, i32 18 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1362, i32 18 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1363, i32 18 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1364, i32 18 }
@___asan_gen_.561 = private unnamed_addr constant [11 x i8] c"debug_regs\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1378, i32 32 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1403, i32 19 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1406, i32 18 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1379, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1380, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1381, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1382, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1383, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1384, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1385, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1386, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1387, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1388, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1389, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1390, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1391, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1392, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.613 = private constant [29 x i8] c"../drivers/mmc/host/s3cmci.c\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1393, i32 2 }
@llvm.compiler.used = appending global [183 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_s3cmci_driver_exit, ptr @__initcall__kmod_s3cmci__320_1773_s3cmci_driver_init6, ptr @dbg_dumpcmd._entry, ptr @dbg_dumpcmd._entry.68, ptr @dbg_dumpcmd._entry.70, ptr @dbg_dumpcmd._entry.73, ptr @dbg_dumpcmd._entry.75, ptr @dbg_dumpcmd._entry.78, ptr @dbg_dumpcmd._entry.80, ptr @dbg_dumpcmd._entry.83, ptr @dbg_dumpcmd._entry_ptr, ptr @dbg_dumpcmd._entry_ptr.69, ptr @dbg_dumpcmd._entry_ptr.72, ptr @dbg_dumpcmd._entry_ptr.74, ptr @dbg_dumpcmd._entry_ptr.77, ptr @dbg_dumpcmd._entry_ptr.79, ptr @dbg_dumpcmd._entry_ptr.82, ptr @dbg_dumpcmd._entry_ptr.84, ptr @s3cmci_driver_exit, ptr @s3cmci_probe._entry, ptr @s3cmci_probe._entry.10, ptr @s3cmci_probe._entry.14, ptr @s3cmci_probe._entry.18, ptr @s3cmci_probe._entry.22, ptr @s3cmci_probe._entry.25, ptr @s3cmci_probe._entry.32, ptr @s3cmci_probe._entry.35, ptr @s3cmci_probe._entry.38, ptr @s3cmci_probe._entry.7, ptr @s3cmci_probe._entry_ptr, ptr @s3cmci_probe._entry_ptr.12, ptr @s3cmci_probe._entry_ptr.16, ptr @s3cmci_probe._entry_ptr.20, ptr @s3cmci_probe._entry_ptr.24, ptr @s3cmci_probe._entry_ptr.27, ptr @s3cmci_probe._entry_ptr.34, ptr @s3cmci_probe._entry_ptr.37, ptr @s3cmci_probe._entry_ptr.41, ptr @s3cmci_probe._entry_ptr.9, ptr @s3cmci_probe_pdata._entry, ptr @s3cmci_probe_pdata._entry.49, ptr @s3cmci_probe_pdata._entry.53, ptr @s3cmci_probe_pdata._entry.57, ptr @s3cmci_probe_pdata._entry_ptr, ptr @s3cmci_probe_pdata._entry_ptr.51, ptr @s3cmci_probe_pdata._entry_ptr.55, ptr @s3cmci_probe_pdata._entry_ptr.59, ptr @s3cmci_set_ios._entry, ptr @s3cmci_set_ios._entry.127, ptr @s3cmci_set_ios._entry_ptr, ptr @s3cmci_set_ios._entry_ptr.129, ptr @s3cmci_setup_data._entry, ptr @s3cmci_setup_data._entry_ptr, ptr @s3cmci_driver, ptr @.str, ptr @s3cmci_dt_match, ptr @s3cmci_driver_ids, ptr @s3cmci_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @s3cmci_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.71, ptr @.str.76, ptr @.str.81, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @s3cmci_state_fops, ptr @.str.131, ptr @s3cmci_regs_fops, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @debug_regs, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_driver_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe_pdata._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe_pdata._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_probe_pdata._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_dumpcmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_dumpcmd._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_dumpcmd._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_dumpcmd._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_dumpcmd._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_dumpcmd._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_dumpcmd._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_dumpcmd._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_setup_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_set_ios._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3cmci_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_regs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3cmci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3cmci_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3cmci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3cmci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3cmci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @mmc_alloc_host(i32 noundef 800, ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %mmc2 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1
  %0 = ptrtoint ptr %mmc2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %mmc2, align 4
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %private.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %call.i = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %4 = ptrtoint ptr %call.i to i32
  %is2440.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %5 = ptrtoint ptr %is2440.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %is2440.i, align 4
  %call3.i = tail call i32 @mmc_of_parse(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.probe_free_host_crit_edge

if.then6.probe_free_host_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_free_host

if.end.i:                                         ; preds = %if.then6
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #8
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.probe_free_host_crit_edge, label %if.end8.i

if.end.i.probe_free_host_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_free_host

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %platform_data.i, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %7 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data.i, align 4
  %is2440.i292 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %11 = ptrtoint ptr %is2440.i292 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %is2440.i292, align 4
  %platform_data.i294 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %platform_data.i294 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data.i294, align 8
  %tobool.not.i295 = icmp eq ptr %13, null
  br i1 %tobool.not.i295, label %do.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.else
  %call.i296 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 3) #8
  %arrayidx.i = getelementptr %struct.s3c24xx_mci_pdata, ptr %13, i32 0, i32 3, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i296, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i296, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.preheader.i.do.end11.i_crit_edge, label %for.inc.i

for.body.preheader.i.do.end11.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #11
  br label %probe_free_host

do.end11.i:                                       ; preds = %for.inc.4.i.do.end11.i_crit_edge, %for.inc.3.i.do.end11.i_crit_edge, %for.inc.2.i.do.end11.i_crit_edge, %for.inc.1.i.do.end11.i_crit_edge, %for.inc.i.do.end11.i_crit_edge, %for.body.preheader.i.do.end11.i_crit_edge
  %i.087.lcssa.i = phi i32 [ 0, %for.body.preheader.i.do.end11.i_crit_edge ], [ 1, %for.inc.i.do.end11.i_crit_edge ], [ 2, %for.inc.1.i.do.end11.i_crit_edge ], [ 3, %for.inc.2.i.do.end11.i_crit_edge ], [ 4, %for.inc.3.i.do.end11.i_crit_edge ], [ 5, %for.inc.4.i.do.end11.i_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %for.body.preheader.i.do.end11.i_crit_edge ], [ %arrayidx.1.i, %for.inc.i.do.end11.i_crit_edge ], [ %arrayidx.2.i, %for.inc.1.i.do.end11.i_crit_edge ], [ %arrayidx.3.i, %for.inc.2.i.do.end11.i_crit_edge ], [ %arrayidx.4.i, %for.inc.3.i.do.end11.i_crit_edge ], [ %arrayidx.5.i, %for.inc.4.i.do.end11.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %i.087.lcssa.i) #11
  %15 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.lcssa.i, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %if.end9

for.inc.i:                                        ; preds = %for.body.preheader.i
  %call.1.i = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef 1, i32 noundef 3) #8
  %arrayidx.1.i = getelementptr %struct.s3c24xx_mci_pdata, ptr %13, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.1.i, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.do.end11.i_crit_edge, label %for.inc.1.i

for.inc.i.do.end11.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef 2, i32 noundef 3) #8
  %arrayidx.2.i = getelementptr %struct.s3c24xx_mci_pdata, ptr %13, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.2.i, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.inc.1.i.do.end11.i_crit_edge, label %for.inc.2.i

for.inc.1.i.do.end11.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef 3, i32 noundef 3) #8
  %arrayidx.3.i = getelementptr %struct.s3c24xx_mci_pdata, ptr %13, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.3.i, ptr %arrayidx.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %for.inc.2.i.do.end11.i_crit_edge, label %for.inc.3.i

for.inc.2.i.do.end11.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef 4, i32 noundef 3) #8
  %arrayidx.4.i = getelementptr %struct.s3c24xx_mci_pdata, ptr %13, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.4.i, ptr %arrayidx.4.i, align 4
  %cmp.i.4.i = icmp ugt ptr %call.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %for.inc.3.i.do.end11.i_crit_edge, label %for.inc.4.i

for.inc.3.i.do.end11.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef 5, i32 noundef 3) #8
  %arrayidx.5.i = getelementptr %struct.s3c24xx_mci_pdata, ptr %13, i32 0, i32 3, i32 5
  %22 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.5.i, ptr %arrayidx.5.i, align 4
  %cmp.i.5.i = icmp ugt ptr %call.5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5.i, label %for.inc.4.i.do.end11.i_crit_edge, label %for.inc.5.i

for.inc.4.i.do.end11.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool17.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool17.not.i, label %for.inc.5.i.if.end19.i_crit_edge, label %if.then18.i

for.inc.5.i.if.end19.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then18.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 17
  %24 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %caps2.i, align 4
  %or.i = or i32 %25, 262144
  store i32 %or.i, ptr %caps2.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %for.inc.5.i.if.end19.i_crit_edge
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load20.i = load i8, ptr %13, align 4
  %27 = and i8 %bf.load20.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool23.not.i = icmp eq i8 %27, 0
  br i1 %tobool23.not.i, label %if.end19.i.if.end26.i_crit_edge, label %if.then24.i

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 16
  %28 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %caps.i, align 32
  %or25.i = or i32 %29, 32
  store i32 %or25.i, ptr %caps.i, align 32
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end19.i.if.end26.i_crit_edge
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load27.i = load i8, ptr %13, align 4
  %31 = and i8 %bf.load27.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not.i = icmp eq i8 %31, 0
  br i1 %tobool31.not.i, label %if.end26.i.if.end35.i_crit_edge, label %if.then32.i

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %caps233.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 17
  %32 = ptrtoint ptr %caps233.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %caps233.i, align 4
  %or34.i = or i32 %33, 2048
  store i32 %or34.i, ptr %caps233.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end26.i.if.end35.i_crit_edge
  %call36.i = tail call i32 @mmc_gpiod_request_cd(ptr noundef nonnull %call, ptr noundef nonnull @.str.52, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call36.i)
  %cmp37.not.i = icmp eq i32 %call36.i, -2
  br i1 %cmp37.not.i, label %if.end43.i, label %do.end41.i

do.end41.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call36.i) #11
  br label %if.end9

if.end43.i:                                       ; preds = %if.end35.i
  %34 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmc2, align 4
  %call45.i = tail call i32 @mmc_gpiod_request_ro(ptr noundef %35, ptr noundef nonnull @.str.56, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call45.i)
  %cmp46.not.i = icmp eq i32 %call45.i, -2
  br i1 %cmp46.not.i, label %if.end43.i.if.end12_crit_edge, label %do.end50.i

if.end43.i.if.end12_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end50.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call45.i) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end50.i, %do.end41.i, %do.end11.i
  %ret.0 = phi i32 [ %17, %do.end11.i ], [ %call36.i, %do.end41.i ], [ %call45.i, %do.end50.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool10.not = icmp eq i32 %ret.0, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.end9.probe_free_host_crit_edge

if.end9.probe_free_host_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_free_host

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %if.end43.i.if.end12_crit_edge, %if.end8.i
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %36 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.s3cmci_host, ptr %private.i, i32 0, i32 1
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %pdata, align 4
  %complete_lock = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %complete_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @s3cmci_probe.__key, i16 noundef signext 3) #8
  %pio_tasklet = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 16
  tail call void @tasklet_setup(ptr noundef %pio_tasklet, ptr noundef nonnull @pio_tasklet) #8
  %is2440 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %39 = ptrtoint ptr %is2440 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %is2440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool15.not = icmp eq i32 %40, 0
  %.sink318 = select i1 %tobool15.not, i32 64, i32 60
  %.sink317 = select i1 %tobool15.not, i32 60, i32 64
  %.sink = select i1 %tobool15.not, i32 2, i32 1
  %41 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink318, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink317, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %45, align 4
  %complete_what = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  %47 = ptrtoint ptr %complete_what to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %complete_what, align 4
  %pio_active = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 2
  %48 = ptrtoint ptr %pio_active to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %pio_active, align 4
  %call22 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %mem = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call22, ptr %mem, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %probe_free_host

if.end30:                                         ; preds = %if.end12
  %50 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call22, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call22, i32 0, i32 1
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %51
  %add.i = add i32 %sub.i, %53
  %54 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev, align 8
  %call34 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %51, i32 noundef %add.i, ptr noundef %55, i32 noundef 0) #8
  %56 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call34, ptr %mem, align 4
  %tobool37.not = icmp eq ptr %call34, null
  br i1 %tobool37.not, label %do.end41, label %if.end43

do.end41:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %probe_free_host

if.end43:                                         ; preds = %if.end30
  %57 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call34, align 4
  %end.i298 = getelementptr inbounds %struct.resource, ptr %call34, i32 0, i32 1
  %59 = ptrtoint ptr %end.i298 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %end.i298, align 4
  %sub.i299 = sub i32 1, %58
  %add.i300 = add i32 %sub.i299, %60
  %call48 = tail call ptr @ioremap(i32 noundef %58, i32 noundef %add.i300) #8
  %base = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 2
  %61 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call48, ptr %base, align 4
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %probe_free_mem_region

if.end56:                                         ; preds = %if.end43
  %call57 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 3
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call57, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call57)
  %cmp = icmp slt i32 %call57, 1
  br i1 %cmp, label %if.end56.probe_iounmap_crit_edge, label %if.end60

if.end56.probe_iounmap_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_iounmap

if.end60:                                         ; preds = %if.end56
  %call.i301 = tail call i32 @request_threaded_irq(i32 noundef %call57, ptr noundef nonnull @s3cmci_irq, ptr noundef null, i32 noundef 524288, ptr noundef nonnull @.str.13, ptr noundef %private.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %tobool63.not = icmp eq i32 %call.i301, 0
  br i1 %tobool63.not, label %if.end69, label %do.end67

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  br label %probe_iounmap

if.end69:                                         ; preds = %if.end60
  %irq_state = getelementptr inbounds %struct.s3cmci_host, ptr %private.i, i32 0, i32 18
  %63 = ptrtoint ptr %irq_state to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %irq_state, align 2
  %call85 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  %clk = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call85, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end91, label %if.end96

do.end91:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  %65 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk, align 4
  %67 = ptrtoint ptr %66 to i32
  store ptr null, ptr %clk, align 4
  br label %probe_free_dma

if.end96:                                         ; preds = %if.end69
  %call98 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end105, label %do.end103

do.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  br label %clk_free

if.end105:                                        ; preds = %if.end96
  %68 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk, align 4
  %call107 = tail call i32 @clk_get_rate(ptr noundef %69) #8
  %clk_rate = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 6
  %70 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call107, ptr %clk_rate, align 4
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 3
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @s3cmci_ops, ptr %ops, align 4
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 8
  %72 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3145728, ptr %ocr_avail, align 64
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 16
  %73 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 9, ptr %caps, align 32
  %74 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %45, align 4
  %mul = shl i32 %75, 8
  %div = udiv i32 %call107, %mul
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 5
  %76 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div, ptr %f_min, align 4
  %div112 = udiv i32 %call107, %75
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 6
  %77 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div112, ptr %f_max, align 8
  %78 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdata, align 4
  %ocr_avail114 = getelementptr inbounds %struct.s3c24xx_mci_pdata, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %ocr_avail114 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ocr_avail114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool115.not = icmp eq i32 %81, 0
  br i1 %tobool115.not, label %if.end105.if.end120_crit_edge, label %if.then116

if.end105.if.end120_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then116:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %ocr_avail, align 64
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.end105.if.end120_crit_edge
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %83 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4095, ptr %max_blk_count, align 128
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %84 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4095, ptr %max_blk_size, align 4
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %85 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2096640, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %86 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2096640, ptr %max_seg_size, align 16
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 21
  %87 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 128, ptr %max_segs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_probe.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_probe, %if.then128)) #8
          to label %do.end140 [label %if.then128], !srcloc !324

if.then128:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %private.i, align 4
  %dev130 = getelementptr inbounds %struct.platform_device, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %is2440 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %is2440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool132.not = icmp eq i32 %91, 0
  %cond = select i1 %tobool132.not, ptr @.str.31, ptr @.str.30
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %94 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq, align 4
  %irq_cd = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 4
  %96 = ptrtoint ptr %irq_cd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %irq_cd, align 4
  %dma135 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 5
  %98 = ptrtoint ptr %dma135 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dma135, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3cmci_probe.__UNIQUE_ID_ddebug319, ptr noundef %dev130, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond, ptr noundef %93, i32 noundef %95, i32 noundef %97, ptr noundef %99) #8
  br label %do.end140

do.end140:                                        ; preds = %if.then128, %if.end120
  %call149 = tail call i32 @mmc_add_host(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end156, label %do.end154

do.end154:                                        ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #11
  %100 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %101) #8
  tail call void @clk_unprepare(ptr noundef %101) #8
  br label %clk_free

if.end156:                                        ; preds = %do.end140
  tail call fastcc void @s3cmci_debugfs_attach(ptr noundef %private.i)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %102 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call, ptr %driver_data.i.i, align 4
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 1, i32 3
  %103 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i302 = icmp eq ptr %104, null
  br i1 %tobool.not.i302, label %if.end.i303, label %if.end156.dev_name.exit_crit_edge

if.end156.dev_name.exit_crit_edge:                ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i303:                                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 1
  %105 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i303, %if.end156.dev_name.exit_crit_edge
  %retval.0.i304 = phi ptr [ %106, %if.end.i303 ], [ %104, %if.end156.dev_name.exit_crit_edge ]
  %107 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %caps, align 32
  %and = and i32 %108, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool165.not = icmp eq i32 %and, 0
  %cond166 = select i1 %tobool165.not, ptr @.str.45, ptr @.str.44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i304, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond166) #11
  br label %cleanup

clk_free:                                         ; preds = %do.end154, %do.end103
  %ret.2 = phi i32 [ %call98, %do.end103 ], [ %call149, %do.end154 ]
  %109 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %110) #8
  br label %probe_free_dma

probe_free_dma:                                   ; preds = %clk_free, %do.end91
  %ret.3 = phi i32 [ %67, %do.end91 ], [ %ret.2, %clk_free ]
  %111 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %irq, align 4
  %call174 = tail call ptr @free_irq(i32 noundef %112, ptr noundef %private.i) #8
  br label %probe_iounmap

probe_iounmap:                                    ; preds = %probe_free_dma, %do.end67, %if.end56.probe_iounmap_crit_edge
  %ret.5 = phi i32 [ -2, %do.end67 ], [ %ret.3, %probe_free_dma ], [ -22, %if.end56.probe_iounmap_crit_edge ]
  %113 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %114) #8
  br label %probe_free_mem_region

probe_free_mem_region:                            ; preds = %probe_iounmap, %do.end54
  %ret.6 = phi i32 [ %ret.5, %probe_iounmap ], [ -22, %do.end54 ]
  %115 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mem, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %end.i305 = getelementptr inbounds %struct.resource, ptr %116, i32 0, i32 1
  %119 = ptrtoint ptr %end.i305 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %end.i305, align 4
  %sub.i306 = sub i32 1, %118
  %add.i307 = add i32 %sub.i306, %120
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %118, i32 noundef %add.i307) #8
  br label %probe_free_host

probe_free_host:                                  ; preds = %probe_free_mem_region, %do.end41, %do.end28, %if.end9.probe_free_host_crit_edge, %do.end.i, %if.end.i.probe_free_host_crit_edge, %if.then6.probe_free_host_crit_edge
  %ret.7 = phi i32 [ %ret.0, %if.end9.probe_free_host_crit_edge ], [ %ret.6, %probe_free_mem_region ], [ -2, %do.end41 ], [ -2, %do.end28 ], [ -6, %do.end.i ], [ -12, %if.end.i.probe_free_host_crit_edge ], [ %call3.i, %if.then6.probe_free_host_crit_edge ]
  tail call void @mmc_free_host(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %probe_free_host, %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_name.exit ], [ %ret.7, %probe_free_host ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3cmci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %irq_cd.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_cd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_cd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %entry.s3cmci_shutdown.exit_crit_edge

entry.s3cmci_shutdown.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_shutdown.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %private.i) #8
  br label %s3cmci_shutdown.exit

s3cmci_shutdown.exit:                             ; preds = %if.then.i, %entry.s3cmci_shutdown.exit_crit_edge
  %debug_root.i.i = getelementptr inbounds %struct.s3cmci_host, ptr %private.i, i32 0, i32 37
  %4 = ptrtoint ptr %debug_root.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debug_root.i.i, align 4
  tail call void @debugfs_remove(ptr noundef %5) #8
  tail call void @mmc_remove_host(ptr noundef %1) #8
  %clk.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_put(ptr noundef %9) #8
  %pio_tasklet = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 16
  %count.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #8, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !326
  tail call void @tasklet_unlock_wait(ptr noundef %pio_tasklet) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !327
  %irq = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %private.i) #8
  %base = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %14) #8
  %mem = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %18
  %add.i = add i32 %sub.i, %20
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %18, i32 noundef %add.i) #8
  tail call void @mmc_free_host(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3cmci_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %irq_cd = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_cd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_cd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %private.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %debug_root.i = getelementptr inbounds %struct.s3cmci_host, ptr %private.i, i32 0, i32 37
  %4 = ptrtoint ptr %debug_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debug_root.i, align 4
  tail call void @debugfs_remove(ptr noundef %5) #8
  tail call void @mmc_remove_host(ptr noundef %1) #8
  %clk = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pio_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -772
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !328
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.end11.i_crit_edge

entry.do.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i, %entry.do.end11.i_crit_edge
  %irq_disabled.i = getelementptr i8, ptr %t, i32 -708
  %1 = ptrtoint ptr %irq_disabled.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %irq_disabled.i, align 4
  %irq_state.i = getelementptr i8, ptr %t, i32 -706
  %2 = ptrtoint ptr %irq_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_state.i, align 2, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool16.not.i = icmp eq i8 %3, 0
  br i1 %tobool16.not.i, label %do.end11.i.do.body21.i_crit_edge, label %if.then18.i

do.end11.i.do.body21.i_crit_edge:                 ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

if.then18.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %irq_state.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %irq_state.i, align 2
  %irq.i = getelementptr i8, ptr %t, i32 -748
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %6) #8
  br label %do.body21.i

do.body21.i:                                      ; preds = %if.then18.i, %do.end11.i.do.body21.i_crit_edge
  br i1 %tobool.not.i, label %if.then30.i, label %do.body21.i.do.body32.i_crit_edge

do.body21.i.do.body32.i_crit_edge:                ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.i

if.then30.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body32.i

do.body32.i:                                      ; preds = %if.then30.i, %do.body21.i.do.body32.i_crit_edge
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !330
  %and.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool40.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool40.not.i, label %if.then44.i, label %do.body32.i.s3cmci_disable_irq.exit_crit_edge, !prof !331

do.body32.i.s3cmci_disable_irq.exit_crit_edge:    ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_disable_irq.exit

if.then44.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %s3cmci_disable_irq.exit

s3cmci_disable_irq.exit:                          ; preds = %if.then44.i, %do.body32.i.s3cmci_disable_irq.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !332
  %pio_active = getelementptr i8, ptr %t, i32 -624
  %8 = ptrtoint ptr %pio_active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pio_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then, label %s3cmci_disable_irq.exit.if.end_crit_edge

s3cmci_disable_irq.exit.if.end_crit_edge:         ; preds = %s3cmci_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %s3cmci_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @do_pio_write(ptr noundef %add.ptr)
  %10 = ptrtoint ptr %pio_active to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %pio_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %s3cmci_disable_irq.exit.if.end_crit_edge
  %11 = phi i32 [ %.pr, %if.then ], [ %9, %s3cmci_disable_irq.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp2 = icmp eq i32 %11, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @do_pio_read(ptr noundef %add.ptr)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %complete_what = getelementptr i8, ptr %t, i32 -648
  %12 = ptrtoint ptr %complete_what to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %complete_what, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp5 = icmp eq i32 %13, 1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %base.i = getelementptr i8, ptr %t, i32 -752
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %sdiimsk.i = getelementptr i8, ptr %t, i32 -716
  %16 = ptrtoint ptr %sdiimsk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sdiimsk.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %and.i = and i32 %18, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %21 = ptrtoint ptr %sdiimsk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdiimsk.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %and.i) #8, !srcloc !336
  %23 = ptrtoint ptr %pio_active to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pio_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp8.not = icmp eq i32 %24, 0
  br i1 %cmp8.not, label %if.then6.if.end25_crit_edge, label %do.body10

if.then6.if.end25_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.body10:                                        ; preds = %if.then6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pio_tasklet.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pio_tasklet, %if.then14)) #8
          to label %do.end19 [label %if.then14], !srcloc !324

if.then14:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pio_active to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pio_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp16 = icmp eq i32 %28, 1
  %cond = select i1 %cmp16, ptr @.str.62, ptr @.str.63
  %pio_count = getelementptr i8, ptr %t, i32 -632
  %29 = ptrtoint ptr %pio_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pio_count, align 4
  %pio_bytes = getelementptr i8, ptr %t, i32 -636
  %31 = ptrtoint ptr %pio_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pio_bytes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pio_tasklet.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond, i32 noundef %30, i32 noundef %32) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then14, %do.body10
  %mrq = getelementptr i8, ptr %t, i32 -700
  %33 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mrq, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %tobool20.not = icmp eq ptr %36, null
  br i1 %tobool20.not, label %do.end19.if.end25_crit_edge, label %if.then21

do.end19.if.end25_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then21:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.mmc_data, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -22, ptr %error, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %do.end19.if.end25_crit_edge, %if.then6.if.end25_crit_edge
  tail call fastcc void @s3cmci_enable_irq(ptr noundef %add.ptr, i1 noundef zeroext false)
  tail call fastcc void @finalize_request(ptr noundef %add.ptr)
  br label %if.end26

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @s3cmci_enable_irq(ptr noundef %add.ptr, i1 noundef zeroext true)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3cmci_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !333
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !337
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %sdiimsk = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 14
  %6 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdiimsk, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !338
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %9 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %do.body16, label %if.then11

if.then11:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !339
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 131072) #8, !srcloc !336
  %mmc = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 2
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %17(ptr noundef %13, i32 noundef 0) #8
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 49
  %18 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 47
  %19 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then11.cleanup_crit_edge, label %if.then.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %20) #8
  br label %cleanup

do.body16:                                        ; preds = %entry
  %complete_lock = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 22
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %complete_lock) #8
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #8, !srcloc !333
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !340
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr34 = getelementptr i8, ptr %26, i32 48
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !341
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %29, i32 56
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #8, !srcloc !333
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !342
  %complete_what = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 23
  %32 = ptrtoint ptr %complete_what to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %complete_what, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %switch = icmp ult i32 %33, 2
  br i1 %switch, label %if.then50, label %if.end51

if.then50:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 33
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.102, ptr %status, align 4
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %37 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sdiimsk, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 %38
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %and.i = and i32 %39, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %42 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sdiimsk, align 4
  %add.ptr4.i = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %and.i) #8, !srcloc !336
  br label %do.end330

if.end51:                                         ; preds = %do.body16
  %mrq = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 20
  %44 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mrq, align 4
  %tobool52.not = icmp eq ptr %45, null
  br i1 %tobool52.not, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %status54 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 33
  %46 = ptrtoint ptr %status54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.103, ptr %status54, align 4
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %49 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sdiimsk, align 4
  %add.ptr.i446 = getelementptr i8, ptr %48, i32 %50
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i446) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %and.i447 = and i32 %51, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %54 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sdiimsk, align 4
  %add.ptr4.i448 = getelementptr i8, ptr %53, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i448, i32 %and.i447) #8, !srcloc !336
  br label %do.end330

if.end55:                                         ; preds = %if.end51
  %cmd_is_stop = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 21
  %56 = ptrtoint ptr %cmd_is_stop to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cmd_is_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool56.not = icmp eq i32 %57, 0
  %stop = getelementptr inbounds %struct.mmc_request, ptr %45, i32 0, i32 3
  %cmd59 = getelementptr inbounds %struct.mmc_request, ptr %45, i32 0, i32 1
  %cond.in = select i1 %tobool56.not, ptr %cmd59, ptr %stop
  %58 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %58)
  %cond = load ptr, ptr %cond.in, align 4
  %tobool60.not = icmp eq ptr %cond, null
  br i1 %tobool60.not, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %status62 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 33
  %59 = ptrtoint ptr %status62 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.104, ptr %status62, align 4
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %62 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sdiimsk, align 4
  %add.ptr.i451 = getelementptr i8, ptr %61, i32 %63
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i451) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %and.i452 = and i32 %64, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  tail call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %67 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sdiimsk, align 4
  %add.ptr4.i453 = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i453, i32 %and.i452) #8, !srcloc !336
  br label %do.end330

if.end63:                                         ; preds = %if.end55
  %pio_active = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 29
  %69 = ptrtoint ptr %pio_active to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pio_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp66 = icmp ne i32 %70, 2
  %and68 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %or.cond427 = select i1 %cmp66, i1 true, i1 %tobool69.not
  br i1 %or.cond427, label %if.end63.if.end73_crit_edge, label %if.then70

if.end63.if.end73_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then70:                                        ; preds = %if.end63
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %73 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sdiimsk, align 4
  %add.ptr.i456 = getelementptr i8, ptr %72, i32 %74
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i456) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !343
  %76 = and i32 %75, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !344
  tail call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %79 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sdiimsk, align 4
  %add.ptr4.i458 = getelementptr i8, ptr %78, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i458, i32 %76) #8, !srcloc !336
  %state.i = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 36, i32 1
  %call.i459 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i459)
  %tobool.not.i460 = icmp eq i32 %call.i459, 0
  br i1 %tobool.not.i460, label %if.then.i461, label %if.then70.tasklet_schedule.exit_crit_edge

if.then70.tasklet_schedule.exit_crit_edge:        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %tasklet_schedule.exit

if.then.i461:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %pio_tasklet = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 36
  tail call void @__tasklet_schedule(ptr noundef %pio_tasklet) #8
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i461, %if.then70.tasklet_schedule.exit_crit_edge
  %status72 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 33
  %81 = ptrtoint ptr %status72 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.105, ptr %status72, align 4
  br label %if.end73

if.end73:                                         ; preds = %tasklet_schedule.exit, %if.end63.if.end73_crit_edge
  %82 = ptrtoint ptr %pio_active to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pio_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp75 = icmp ne i32 %83, 1
  %and78 = and i32 %31, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %or.cond428 = select i1 %cmp75, i1 true, i1 %tobool79.not
  br i1 %or.cond428, label %if.end73.if.end85_crit_edge, label %if.then80

if.end73.if.end85_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then80:                                        ; preds = %if.end73
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %86 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sdiimsk, align 4
  %add.ptr.i464 = getelementptr i8, ptr %85, i32 %87
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i464) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !343
  %89 = and i32 %88, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !344
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %92 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sdiimsk, align 4
  %add.ptr4.i466 = getelementptr i8, ptr %91, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i466, i32 %89) #8, !srcloc !336
  %state.i467 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 36, i32 1
  %call.i468 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i467) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i468)
  %tobool.not.i469 = icmp eq i32 %call.i468, 0
  br i1 %tobool.not.i469, label %if.then.i470, label %if.then80.tasklet_schedule.exit471_crit_edge

if.then80.tasklet_schedule.exit471_crit_edge:     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %tasklet_schedule.exit471

if.then.i470:                                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %pio_tasklet82 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 36
  tail call void @__tasklet_schedule(ptr noundef %pio_tasklet82) #8
  br label %tasklet_schedule.exit471

tasklet_schedule.exit471:                         ; preds = %if.then.i470, %if.then80.tasklet_schedule.exit471_crit_edge
  %status83 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 33
  %94 = ptrtoint ptr %status83 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.106, ptr %status83, align 4
  br label %if.end85

if.end85:                                         ; preds = %tasklet_schedule.exit471, %if.end73.if.end85_crit_edge
  %and86 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end103, label %do.body90

do.body90:                                        ; preds = %if.end85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_irq.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_irq, %if.then96)) #8
          to label %do.end101 [label %if.then96], !srcloc !324

if.then96:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3cmci_irq.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.108) #8
  br label %do.end101

do.end101:                                        ; preds = %if.then96, %do.body90
  %error = getelementptr inbounds %struct.mmc_command, ptr %cond, i32 0, i32 5
  %97 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -110, ptr %error, align 4
  br label %fail_transfer

if.end103:                                        ; preds = %if.end85
  %and104 = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end113_crit_edge, label %if.then106

if.end103.if.end113_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then106:                                       ; preds = %if.end103
  %98 = ptrtoint ptr %complete_what to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %complete_what, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp108 = icmp eq i32 %99, 2
  br i1 %cmp108, label %if.then110, label %if.then106.if.end113_crit_edge

if.then106.if.end113_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then110:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  %status111 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 33
  %100 = ptrtoint ptr %status111 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @.str.110, ptr %status111, align 4
  br label %close_transfer

if.end113:                                        ; preds = %if.then106.if.end113_crit_edge, %if.end103.if.end113_crit_edge
  %mci_cclear.0 = phi i32 [ 0, %if.end103.if.end113_crit_edge ], [ 2048, %if.then106.if.end113_crit_edge ]
  %and114 = and i32 %24, 4096
  %101 = or i32 %and114, %mci_cclear.0
  %and133 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end113.if.end149_crit_edge, label %if.then135

if.end113.if.end149_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then135:                                       ; preds = %if.end113
  %102 = ptrtoint ptr %complete_what to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %complete_what, align 4
  %104 = zext i32 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values)
  switch i32 %103, label %if.then135.if.end147_crit_edge [
    i32 3, label %if.then139
    i32 5, label %if.then145
  ]

if.then135.if.end147_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then139:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  %status140 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 33
  %105 = ptrtoint ptr %status140 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.111, ptr %status140, align 4
  br label %close_transfer

if.then145:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %complete_what to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 4, ptr %complete_what, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.then135.if.end147_crit_edge
  %or148 = or i32 %101, 512
  br label %if.end149

if.end149:                                        ; preds = %if.end147, %if.end113.if.end149_crit_edge
  %mci_cclear.2 = phi i32 [ %or148, %if.end147 ], [ %101, %if.end113.if.end149_crit_edge ]
  %data = getelementptr inbounds %struct.mmc_command, ptr %cond, i32 0, i32 7
  %107 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data, align 4
  %tobool150.not = icmp eq ptr %108, null
  br i1 %tobool150.not, label %if.end149.do.body315_crit_edge, label %if.end152

if.end149.do.body315_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body315

if.end152:                                        ; preds = %if.end149
  %is2440 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 13
  %109 = ptrtoint ptr %is2440 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %is2440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool153.not = icmp eq i32 %110, 0
  br i1 %tobool153.not, label %if.else184, label %if.then154

if.then154:                                       ; preds = %if.end152
  %and155 = and i32 %31, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.then154.if.end213_crit_edge, label %do.body159

if.then154.if.end213_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end213

do.body159:                                       ; preds = %if.then154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_irq.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_irq, %if.then171)) #8
          to label %do.end178 [label %if.then171], !srcloc !324

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_id, align 4
  %dev173 = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3cmci_irq.__UNIQUE_ID_ddebug305, ptr noundef %dev173, ptr noundef nonnull @.str.112) #8
  br label %do.end178

do.end178:                                        ; preds = %if.then171, %do.body159
  %113 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mrq, align 4
  %data180 = getelementptr inbounds %struct.mmc_request, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %data180 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data180, align 4
  %error181 = getelementptr inbounds %struct.mmc_data, ptr %116, i32 0, i32 5
  %117 = ptrtoint ptr %error181 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -84, ptr %error181, align 4
  br label %fail_transfer

if.else184:                                       ; preds = %if.end152
  %and185 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.else184.if.end213_crit_edge, label %do.body189

if.else184.if.end213_crit_edge:                   ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end213

do.body189:                                       ; preds = %if.else184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_irq.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_irq, %if.then201)) #8
          to label %do.end208 [label %if.then201], !srcloc !324

if.then201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_id, align 4
  %dev203 = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3cmci_irq.__UNIQUE_ID_ddebug306, ptr noundef %dev203, ptr noundef nonnull @.str.112) #8
  br label %do.end208

do.end208:                                        ; preds = %if.then201, %do.body189
  %120 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data, align 4
  %error210 = getelementptr inbounds %struct.mmc_data, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %error210 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -84, ptr %error210, align 4
  br label %fail_transfer

if.end213:                                        ; preds = %if.else184.if.end213_crit_edge, %if.then154.if.end213_crit_edge
  %and214 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %if.end241, label %do.body218

do.body218:                                       ; preds = %if.end213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_irq.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_irq, %if.then230)) #8
          to label %do.end237 [label %if.then230], !srcloc !324

if.then230:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev_id, align 4
  %dev232 = getelementptr inbounds %struct.platform_device, ptr %124, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3cmci_irq.__UNIQUE_ID_ddebug307, ptr noundef %dev232, ptr noundef nonnull @.str.115) #8
  br label %do.end237

do.end237:                                        ; preds = %if.then230, %do.body218
  %125 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data, align 4
  %error239 = getelementptr inbounds %struct.mmc_data, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %error239 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -84, ptr %error239, align 4
  br label %fail_transfer

if.end241:                                        ; preds = %if.end213
  %and242 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %if.end269, label %do.body246

do.body246:                                       ; preds = %if.end241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_irq.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_irq, %if.then258)) #8
          to label %do.end265 [label %if.then258], !srcloc !324

if.then258:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev_id, align 4
  %dev260 = getelementptr inbounds %struct.platform_device, ptr %129, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3cmci_irq.__UNIQUE_ID_ddebug308, ptr noundef %dev260, ptr noundef nonnull @.str.117) #8
  br label %do.end265

do.end265:                                        ; preds = %if.then258, %do.body246
  %130 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %data, align 4
  %error267 = getelementptr inbounds %struct.mmc_data, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %error267 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -84, ptr %error267, align 4
  br label %fail_transfer

if.end269:                                        ; preds = %if.end241
  %and270 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %if.end297, label %do.body274

do.body274:                                       ; preds = %if.end269
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_irq.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_irq, %if.then286)) #8
          to label %do.end293 [label %if.then286], !srcloc !324

if.then286:                                       ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev_id, align 4
  %dev288 = getelementptr inbounds %struct.platform_device, ptr %134, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3cmci_irq.__UNIQUE_ID_ddebug309, ptr noundef %dev288, ptr noundef nonnull @.str.119) #8
  br label %do.end293

do.end293:                                        ; preds = %if.then286, %do.body274
  %135 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data, align 4
  %error295 = getelementptr inbounds %struct.mmc_data, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %error295 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -110, ptr %error295, align 4
  br label %fail_transfer

if.end297:                                        ; preds = %if.end269
  %and298 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %if.end297.do.body315_crit_edge, label %if.then300

if.end297.do.body315_crit_edge:                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body315

if.then300:                                       ; preds = %if.end297
  %138 = ptrtoint ptr %complete_what to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %complete_what, align 4
  %140 = zext i32 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %139, label %if.then300.do.body315_crit_edge [
    i32 4, label %if.then304
    i32 5, label %if.then310
  ]

if.then300.do.body315_crit_edge:                  ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body315

if.then304:                                       ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #10
  %status305 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 33
  %141 = ptrtoint ptr %status305 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @.str.121, ptr %status305, align 4
  br label %close_transfer

if.then310:                                       ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %complete_what to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 3, ptr %complete_what, align 4
  br label %do.body315

do.body315:                                       ; preds = %if.then310, %if.then300.do.body315_crit_edge, %if.end297.do.body315_crit_edge, %if.end149.do.body315_crit_edge
  %mci_dclear.0 = phi i32 [ 0, %if.end297.do.body315_crit_edge ], [ 0, %if.end149.do.body315_crit_edge ], [ 268435456, %if.then300.do.body315_crit_edge ], [ 268435456, %if.then310 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !345
  tail call void @arm_heavy_mb() #8
  %143 = tail call i32 @llvm.bswap.i32(i32 %mci_cclear.2)
  %144 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base, align 4
  %add.ptr319 = getelementptr i8, ptr %145, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319, i32 %143) #8, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !346
  tail call void @arm_heavy_mb() #8
  %146 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base, align 4
  %add.ptr324 = getelementptr i8, ptr %147, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr324, i32 %mci_dclear.0) #8, !srcloc !336
  br label %do.end330

fail_transfer:                                    ; preds = %do.end293, %do.end265, %do.end237, %do.end208, %do.end178, %do.end101
  %.str.120.sink = phi ptr [ @.str.120, %do.end293 ], [ @.str.118, %do.end265 ], [ @.str.116, %do.end237 ], [ @.str.114, %do.end208 ], [ @.str.113, %do.end178 ], [ @.str.109, %do.end101 ]
  %status296 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 33
  %148 = ptrtoint ptr %status296 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %.str.120.sink, ptr %status296, align 4
  %149 = ptrtoint ptr %pio_active to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %pio_active, align 4
  br label %close_transfer

close_transfer:                                   ; preds = %fail_transfer, %if.then304, %if.then139, %if.then110
  %150 = ptrtoint ptr %complete_what to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %complete_what, align 4
  %151 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base, align 4
  %153 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %sdiimsk, align 4
  %add.ptr.i474 = getelementptr i8, ptr %152, i32 %154
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i474) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %and.i475 = and i32 %155, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  tail call void @arm_heavy_mb() #8
  %156 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base, align 4
  %158 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %sdiimsk, align 4
  %add.ptr4.i476 = getelementptr i8, ptr %157, i32 %159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i476, i32 %and.i475) #8, !srcloc !336
  %state.i477 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 36, i32 1
  %call.i478 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i477) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i478)
  %tobool.not.i479 = icmp eq i32 %call.i478, 0
  br i1 %tobool.not.i479, label %if.then.i480, label %close_transfer.do.end330_crit_edge

close_transfer.do.end330_crit_edge:               ; preds = %close_transfer
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end330

if.then.i480:                                     ; preds = %close_transfer
  call void @__sanitizer_cov_trace_pc() #10
  %pio_tasklet327 = getelementptr inbounds %struct.s3cmci_host, ptr %dev_id, i32 0, i32 36
  tail call void @__tasklet_schedule(ptr noundef %pio_tasklet327) #8
  br label %do.end330

do.end330:                                        ; preds = %if.then.i480, %close_transfer.do.end330_crit_edge, %do.body315, %if.then61, %if.then53, %if.then50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %complete_lock, i32 noundef %call19) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end330, %if.then.i, %if.then11.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3cmci_debugfs_attach(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef null) #8
  %debug_root = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 37
  %6 = ptrtoint ptr %debug_root to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %debug_root, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.130, i16 noundef zeroext 292, ptr noundef %call2, ptr noundef %host, ptr noundef nonnull @s3cmci_state_fops) #8
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.131, i16 noundef zeroext 292, ptr noundef %call2, ptr noundef %host, ptr noundef nonnull @s3cmci_regs_fops) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_cd(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_ro(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_pio_write(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %sdidata = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 15
  %2 = ptrtoint ptr %sdidata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdidata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr.i67 = getelementptr i8, ptr %1, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #8, !srcloc !333
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !347
  %and.i68 = and i32 %5, 127
  %sub.i69 = sub nsw i32 63, %and.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i69)
  %cmp70 = icmp ugt i32 %sub.i69, 3
  br i1 %cmp70, label %while.body.lr.ph, label %entry.while.end25_crit_edge

entry.while.end25_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end25

while.body.lr.ph:                                 ; preds = %entry
  %pio_bytes = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 26
  %pio_ptr = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 28
  %pio_active.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 29
  %mrq.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 20
  %pio_sgptr.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 25
  %pio_count = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 27
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %sub.i71 = phi i32 [ %sub.i69, %while.body.lr.ph ], [ %sub.i, %while.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %pio_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pio_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %while.body.if.end8_crit_edge

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %while.body
  %8 = ptrtoint ptr %pio_active.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pio_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.do.end_crit_edge, label %if.end.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %10 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mrq.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i.do.end_crit_edge, label %lor.lhs.false.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %if.end4.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %pio_sgptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pio_sgptr.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp7.not.i = icmp ult i32 %15, %17
  br i1 %cmp7.not.i, label %if.end21.i, label %do.body9.i

do.body9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_data_buffer.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_pio_write, %if.then13.i)) #8
          to label %do.end [label %if.then13.i], !srcloc !324

if.then13.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %pio_sgptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pio_sgptr.i, align 4
  %22 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mrq.i, align 4
  %data16.i = getelementptr inbounds %struct.mmc_request, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %data16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data16.i, align 4
  %sg_len17.i = getelementptr inbounds %struct.mmc_data, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %sg_len17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_len17.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_data_buffer.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.65, i32 noundef %21, i32 noundef %27) #8
  br label %do.end

if.end21.i:                                       ; preds = %if.end4.i
  %sg24.i = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 12
  %28 = ptrtoint ptr %sg24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sg24.i, align 4
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %29, i32 %15
  %length.i = getelementptr %struct.scatterlist, ptr %29, i32 %15, i32 2
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i, align 4
  %32 = ptrtoint ptr %pio_bytes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pio_bytes, align 4
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %get_data_buffer.exit.thread55, label %do.body2.i.i.i, !prof !348

do.body2.i.i.i:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !349
  unreachable

get_data_buffer.exit.thread55:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i.i = and i32 %34, -4
  %35 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %35) #8
  %offset.i.i = getelementptr %struct.scatterlist, ptr %29, i32 %15, i32 1
  %36 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %37
  %38 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i.i, ptr %pio_ptr, align 4
  %39 = ptrtoint ptr %pio_sgptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pio_sgptr.i, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %pio_sgptr.i, align 4
  br label %if.end8

do.end:                                           ; preds = %if.then13.i, %do.body9.i, %lor.lhs.false.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.then.do.end_crit_edge
  %41 = ptrtoint ptr %pio_active.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %pio_active.i, align 4
  br label %cleanup

if.end8:                                          ; preds = %get_data_buffer.exit.thread55, %while.body.if.end8_crit_edge
  %42 = ptrtoint ptr %pio_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pio_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i71, i32 %43)
  %cmp10.not = icmp ult i32 %sub.i71, %43
  %sub = and i32 %sub.i71, -4
  %fifo.0 = select i1 %cmp10.not, i32 %sub, i32 %43
  %sub15 = sub i32 %43, %fifo.0
  %44 = ptrtoint ptr %pio_bytes to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub15, ptr %pio_bytes, align 4
  %45 = ptrtoint ptr %pio_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pio_count, align 4
  %add = add i32 %46, %fifo.0
  store i32 %add, ptr %pio_count, align 4
  %add16 = add i32 %fifo.0, 3
  %47 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pio_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add16)
  %tobool19.not63 = icmp ult i32 %add16, 4
  br i1 %tobool19.not63, label %if.end8.while.end_crit_edge, label %do.body21.preheader

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body21.preheader:                              ; preds = %if.end8
  %shr = lshr i32 %add16, 2
  br label %do.body21

do.body21:                                        ; preds = %do.body21.do.body21_crit_edge, %do.body21.preheader
  %ptr.065 = phi ptr [ %incdec.ptr, %do.body21.do.body21_crit_edge ], [ %48, %do.body21.preheader ]
  %fifo.164 = phi i32 [ %dec, %do.body21.do.body21_crit_edge ], [ %shr, %do.body21.preheader ]
  %dec = add nsw i32 %fifo.164, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !350
  tail call void @arm_heavy_mb() #8
  %incdec.ptr = getelementptr i32, ptr %ptr.065, i32 1
  %49 = ptrtoint ptr %ptr.065 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ptr.065, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %51) #8, !srcloc !336
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %do.body21.while.end_crit_edge, label %do.body21.do.body21_crit_edge

do.body21.do.body21_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

do.body21.while.end_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.body21.while.end_crit_edge, %if.end8.while.end_crit_edge
  %ptr.0.lcssa = phi ptr [ %48, %if.end8.while.end_crit_edge ], [ %incdec.ptr, %do.body21.while.end_crit_edge ]
  %52 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %ptr.0.lcssa, ptr %pio_ptr, align 4
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 56
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !333
  %56 = lshr i32 %55, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !347
  %and.i = and i32 %56, 127
  %sub.i = sub nsw i32 63, %and.i
  %cmp = icmp ugt i32 %sub.i, 3
  br i1 %cmp, label %while.end.while.body_crit_edge, label %while.end.while.end25_crit_edge

while.end.while.end25_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end25

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end25:                                      ; preds = %while.end.while.end25_crit_edge, %entry.while.end25_crit_edge
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %sdiimsk.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 14
  %59 = ptrtoint ptr %sdiimsk.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sdiimsk.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %58, i32 %60
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  %62 = or i32 %61, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  tail call void @arm_heavy_mb() #8
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %65 = ptrtoint ptr %sdiimsk.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sdiimsk.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %64, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %62) #8, !srcloc !336
  br label %cleanup

cleanup:                                          ; preds = %while.end25, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_pio_read(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !353
  tail call void @arm_heavy_mb() #8
  %prescaler = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 12
  %0 = ptrtoint ptr %prescaler to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prescaler, align 4
  %conv = zext i8 %1 to i32
  %2 = shl nuw i32 %conv, 24
  %base = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 5
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !336
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %sdidata = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 15
  %7 = ptrtoint ptr %sdidata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sdidata, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 %8
  %add.ptr.i164 = getelementptr i8, ptr %6, i32 56
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #8, !srcloc !333
  %10 = lshr i32 %9, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !354
  %and.i165 = and i32 %10, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i165)
  %tobool.not166 = icmp eq i32 %and.i165, 0
  br i1 %tobool.not166, label %entry.while.end51_crit_edge, label %while.body.lr.ph

entry.while.end51_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end51

while.body.lr.ph:                                 ; preds = %entry
  %pio_bytes = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 26
  %pio_ptr = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 28
  %pio_active.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 29
  %mrq.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 20
  %pio_sgptr.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 25
  %pio_count = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 27
  br label %while.body

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %while.body.lr.ph
  %and.i167 = phi i32 [ %and.i165, %while.body.lr.ph ], [ %and.i, %if.end50.while.body_crit_edge ]
  %11 = phi i32 [ %10, %while.body.lr.ph ], [ %70, %if.end50.while.body_crit_edge ]
  %12 = ptrtoint ptr %pio_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pio_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %if.then, label %while.body.do.end17_crit_edge

while.body.do.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

if.then:                                          ; preds = %while.body
  %14 = ptrtoint ptr %pio_active.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pio_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.then.if.then7_crit_edge, label %if.end.i

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end.i:                                         ; preds = %if.then
  %16 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mrq.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i.if.then7_crit_edge, label %lor.lhs.false.i

if.end.i.if.then7_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false.i:                                  ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.mmc_request, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then7_crit_edge, label %if.end4.i

lor.lhs.false.i.if.then7_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %pio_sgptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pio_sgptr.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %19, i32 0, i32 10
  %22 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp7.not.i = icmp ult i32 %21, %23
  br i1 %cmp7.not.i, label %if.end21.i, label %do.body9.i

do.body9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_data_buffer.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_pio_read, %if.then13.i)) #8
          to label %if.then7 [label %if.then13.i], !srcloc !324

if.then13.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %pio_sgptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pio_sgptr.i, align 4
  %28 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mrq.i, align 4
  %data16.i = getelementptr inbounds %struct.mmc_request, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %data16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data16.i, align 4
  %sg_len17.i = getelementptr inbounds %struct.mmc_data, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %sg_len17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sg_len17.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_data_buffer.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.65, i32 noundef %27, i32 noundef %33) #8
  br label %if.then7

if.end21.i:                                       ; preds = %if.end4.i
  %sg24.i = getelementptr inbounds %struct.mmc_data, ptr %19, i32 0, i32 12
  %34 = ptrtoint ptr %sg24.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sg24.i, align 4
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %35, i32 %21
  %length.i = getelementptr %struct.scatterlist, ptr %35, i32 %21, i32 2
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length.i, align 4
  %38 = ptrtoint ptr %pio_bytes to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %pio_bytes, align 4
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %get_data_buffer.exit.thread143, label %do.body2.i.i.i, !prof !348

do.body2.i.i.i:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !349
  unreachable

get_data_buffer.exit.thread143:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i.i = and i32 %40, -4
  %41 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %41) #8
  %offset.i.i = getelementptr %struct.scatterlist, ptr %35, i32 %21, i32 1
  %42 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %43
  %44 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i.i, ptr %pio_ptr, align 4
  %45 = ptrtoint ptr %pio_sgptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pio_sgptr.i, align 4
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %pio_sgptr.i, align 4
  br label %do.end17

if.then7:                                         ; preds = %if.then13.i, %do.body9.i, %lor.lhs.false.i.if.then7_crit_edge, %if.end.i.if.then7_crit_edge, %if.then.if.then7_crit_edge
  %47 = ptrtoint ptr %pio_active.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %pio_active.i, align 4
  %complete_what = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 23
  %48 = ptrtoint ptr %complete_what to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %complete_what, align 4
  br label %cleanup

do.end17:                                         ; preds = %get_data_buffer.exit.thread143, %while.body.do.end17_crit_edge
  %49 = ptrtoint ptr %pio_bytes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pio_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i167, i32 %50)
  %cmp.not = icmp ult i32 %and.i167, %50
  %sub = and i32 %11, 124
  %fifo.0 = select i1 %cmp.not, i32 %sub, i32 %50
  %sub24 = sub i32 %50, %fifo.0
  %51 = ptrtoint ptr %pio_bytes to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub24, ptr %pio_bytes, align 4
  %52 = ptrtoint ptr %pio_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pio_count, align 4
  %add = add i32 %53, %fifo.0
  store i32 %add, ptr %pio_count, align 4
  %54 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pio_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fifo.0)
  %tobool27.not156 = icmp ult i32 %fifo.0, 4
  br i1 %tobool27.not156, label %do.end17.while.end_crit_edge, label %while.body28.preheader

do.end17.while.end_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body28.preheader:                           ; preds = %do.end17
  %shr = lshr i32 %fifo.0, 2
  br label %while.body28

while.body28:                                     ; preds = %while.body28.while.body28_crit_edge, %while.body28.preheader
  %ptr.0158 = phi ptr [ %incdec.ptr, %while.body28.while.body28_crit_edge ], [ %55, %while.body28.preheader ]
  %fifo_words.0157 = phi i32 [ %dec, %while.body28.while.body28_crit_edge ], [ %shr, %while.body28.preheader ]
  %dec = add nsw i32 %fifo_words.0157, -1
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !333
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !355
  %incdec.ptr = getelementptr i32, ptr %ptr.0158, i32 1
  %58 = ptrtoint ptr %ptr.0158 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %ptr.0158, align 4
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %while.body28.while.end_crit_edge, label %while.body28.while.body28_crit_edge

while.body28.while.body28_crit_edge:              ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body28

while.body28.while.end_crit_edge:                 ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body28.while.end_crit_edge, %do.end17.while.end_crit_edge
  %ptr.0.lcssa = phi ptr [ %55, %do.end17.while.end_crit_edge ], [ %incdec.ptr, %while.body28.while.end_crit_edge ]
  %59 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ptr.0.lcssa, ptr %pio_ptr, align 4
  %and32 = and i32 %fifo.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %while.end.if.end50_crit_edge, label %if.then34

while.end.if.end50_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then34:                                        ; preds = %while.end
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !356
  %61 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pio_ptr, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %60)
  %conv46 = trunc i32 %63 to i8
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv46, ptr %62, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and32)
  %tobool44.not = icmp eq i32 %and32, 1
  br i1 %tobool44.not, label %if.then34.if.end50_crit_edge, label %while.body45.1

if.then34.if.end50_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

while.body45.1:                                   ; preds = %if.then34
  %shr48 = lshr i32 %63, 8
  %incdec.ptr47 = getelementptr i8, ptr %62, i32 1
  %conv46.1 = trunc i32 %shr48 to i8
  %65 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv46.1, ptr %incdec.ptr47, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and32)
  %tobool44.not.1 = icmp eq i32 %and32, 2
  br i1 %tobool44.not.1, label %while.body45.1.if.end50_crit_edge, label %while.body45.2

while.body45.1.if.end50_crit_edge:                ; preds = %while.body45.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

while.body45.2:                                   ; preds = %while.body45.1
  call void @__sanitizer_cov_trace_pc() #10
  %shr48.1 = lshr i32 %63, 16
  %incdec.ptr47.1 = getelementptr i8, ptr %62, i32 2
  %conv46.2 = trunc i32 %shr48.1 to i8
  %66 = ptrtoint ptr %incdec.ptr47.1 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv46.2, ptr %incdec.ptr47.1, align 1
  br label %if.end50

if.end50:                                         ; preds = %while.body45.2, %while.body45.1.if.end50_crit_edge, %if.then34.if.end50_crit_edge, %while.end.if.end50_crit_edge
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %68, i32 56
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !333
  %70 = lshr i32 %69, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !354
  %and.i = and i32 %70, 127
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end50.while.end51_crit_edge, label %if.end50.while.body_crit_edge

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end50.while.end51_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end51

while.end51:                                      ; preds = %if.end50.while.end51_crit_edge, %entry.while.end51_crit_edge
  %pio_bytes52 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 26
  %71 = ptrtoint ptr %pio_bytes52 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pio_bytes52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool53.not = icmp eq i32 %72, 0
  br i1 %tobool53.not, label %if.then54, label %while.end51.if.end66_crit_edge

while.end51.if.end66_crit_edge:                   ; preds = %while.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then54:                                        ; preds = %while.end51
  %pio_ptr56 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 28
  %pio_active.i107 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 29
  %73 = ptrtoint ptr %pio_active.i107 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pio_active.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i108 = icmp eq i32 %74, 0
  br i1 %cmp.i108, label %if.then54.do.end62_crit_edge, label %if.end.i111

if.then54.do.end62_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end62

if.end.i111:                                      ; preds = %if.then54
  %mrq.i109 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 20
  %75 = ptrtoint ptr %mrq.i109 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mrq.i109, align 4
  %tobool.not.i110 = icmp eq ptr %76, null
  br i1 %tobool.not.i110, label %if.end.i111.do.end62_crit_edge, label %lor.lhs.false.i114

if.end.i111.do.end62_crit_edge:                   ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end62

lor.lhs.false.i114:                               ; preds = %if.end.i111
  %data.i112 = getelementptr inbounds %struct.mmc_request, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %data.i112 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i112, align 4
  %tobool2.not.i113 = icmp eq ptr %78, null
  br i1 %tobool2.not.i113, label %lor.lhs.false.i114.do.end62_crit_edge, label %if.end4.i118

lor.lhs.false.i114.do.end62_crit_edge:            ; preds = %lor.lhs.false.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end62

if.end4.i118:                                     ; preds = %lor.lhs.false.i114
  %pio_sgptr.i115 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 25
  %79 = ptrtoint ptr %pio_sgptr.i115 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pio_sgptr.i115, align 4
  %sg_len.i116 = getelementptr inbounds %struct.mmc_data, ptr %78, i32 0, i32 10
  %81 = ptrtoint ptr %sg_len.i116 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sg_len.i116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp7.not.i117 = icmp ult i32 %80, %82
  br i1 %cmp7.not.i117, label %if.end21.i129, label %do.body9.i119

do.body9.i119:                                    ; preds = %if.end4.i118
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_data_buffer.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_pio_read, %if.then13.i123)) #8
          to label %do.end62 [label %if.then13.i123], !srcloc !324

if.then13.i123:                                   ; preds = %do.body9.i119
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %host, align 4
  %dev.i120 = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %pio_sgptr.i115 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pio_sgptr.i115, align 4
  %87 = ptrtoint ptr %mrq.i109 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mrq.i109, align 4
  %data16.i121 = getelementptr inbounds %struct.mmc_request, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %data16.i121 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data16.i121, align 4
  %sg_len17.i122 = getelementptr inbounds %struct.mmc_data, ptr %90, i32 0, i32 10
  %91 = ptrtoint ptr %sg_len17.i122 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sg_len17.i122, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_data_buffer.__UNIQUE_ID_ddebug294, ptr noundef %dev.i120, ptr noundef nonnull @.str.65, i32 noundef %86, i32 noundef %92) #8
  br label %do.end62

if.end21.i129:                                    ; preds = %if.end4.i118
  %sg24.i124 = getelementptr inbounds %struct.mmc_data, ptr %78, i32 0, i32 12
  %93 = ptrtoint ptr %sg24.i124 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sg24.i124, align 4
  %arrayidx.i125 = getelementptr %struct.scatterlist, ptr %94, i32 %80
  %length.i126 = getelementptr %struct.scatterlist, ptr %94, i32 %80, i32 2
  %95 = ptrtoint ptr %length.i126 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %length.i126, align 4
  %97 = ptrtoint ptr %pio_bytes52 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %pio_bytes52, align 4
  %98 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i125, align 4
  %and.i.i.i.i127 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i127)
  %tobool.i.not.i.i.i128 = icmp eq i32 %and.i.i.i.i127, 0
  br i1 %tobool.i.not.i.i.i128, label %get_data_buffer.exit138.thread148, label %do.body2.i.i.i130, !prof !348

do.body2.i.i.i130:                                ; preds = %if.end21.i129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !349
  unreachable

get_data_buffer.exit138.thread148:                ; preds = %if.end21.i129
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i.i131 = and i32 %99, -4
  %100 = inttoptr i32 %and.i.i.i131 to ptr
  %call1.i.i132 = tail call ptr @page_address(ptr noundef %100) #8
  %offset.i.i133 = getelementptr %struct.scatterlist, ptr %94, i32 %80, i32 1
  %101 = ptrtoint ptr %offset.i.i133 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offset.i.i133, align 4
  %add.ptr.i.i134 = getelementptr i8, ptr %call1.i.i132, i32 %102
  %103 = ptrtoint ptr %pio_ptr56 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %add.ptr.i.i134, ptr %pio_ptr56, align 4
  %104 = ptrtoint ptr %pio_sgptr.i115 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pio_sgptr.i115, align 4
  %inc.i135 = add i32 %105, 1
  store i32 %inc.i135, ptr %pio_sgptr.i115, align 4
  br label %if.end66

do.end62:                                         ; preds = %if.then13.i123, %do.body9.i119, %lor.lhs.false.i114.do.end62_crit_edge, %if.end.i111.do.end62_crit_edge, %if.then54.do.end62_crit_edge
  %106 = ptrtoint ptr %pio_active.i107 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %pio_active.i107, align 4
  %complete_what64 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 23
  %107 = ptrtoint ptr %complete_what64 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %complete_what64, align 4
  br label %cleanup

if.end66:                                         ; preds = %get_data_buffer.exit138.thread148, %while.end51.if.end66_crit_edge
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 4
  %sdiimsk.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 14
  %110 = ptrtoint ptr %sdiimsk.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sdiimsk.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %109, i32 %111
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  %113 = or i32 %112, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  tail call void @arm_heavy_mb() #8
  %114 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base, align 4
  %116 = ptrtoint ptr %sdiimsk.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sdiimsk.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %115, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %113) #8, !srcloc !336
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end62, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3cmci_enable_irq(ptr nocapture noundef %host, i1 noundef zeroext %more) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %more to i8
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !328
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %irq_enabled = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 17
  %1 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %irq_enabled, align 1
  %irq_disabled = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 16
  %2 = ptrtoint ptr %irq_disabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %irq_disabled, align 4
  %conv15 = zext i1 %more to i32
  %sdio_irqen = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 19
  %3 = ptrtoint ptr %sdio_irqen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sdio_irqen, align 4
  %or = or i32 %4, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool16 = icmp ne i32 %or, 0
  %irq_state = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 18
  %5 = ptrtoint ptr %irq_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %irq_state, align 2, !range !329
  %7 = zext i1 %tobool16 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %7)
  %cmp22.not = icmp eq i8 %6, %7
  br i1 %cmp22.not, label %do.end11.do.body33_crit_edge, label %if.then24

do.end11.do.body33_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

if.then24:                                        ; preds = %do.end11
  %8 = ptrtoint ptr %irq_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %irq_state, align 2
  %irq = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  br i1 %tobool16, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @enable_irq(i32 noundef %10) #8
  br label %do.body33

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq(i32 noundef %10) #8
  br label %do.body33

do.body33:                                        ; preds = %if.else, %if.then29, %do.end11.do.body33_crit_edge
  br i1 %tobool.not, label %if.then42, label %do.body33.do.body44_crit_edge

do.body33.do.body44_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

if.then42:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body44

do.body44:                                        ; preds = %if.then42, %do.body33.do.body44_crit_edge
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !330
  %and.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool52.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool52.not, label %if.then56, label %do.body44.do.end59_crit_edge, !prof !331

do.body44.do.end59_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body44.do.end59_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !332
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finalize_request(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 20
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %complete_what = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 23
  %2 = ptrtoint ptr %complete_what to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %complete_what, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp ne i32 %3, 1
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %cmd_is_stop = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 21
  %4 = ptrtoint ptr %cmd_is_stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_is_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  %stop = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %cmd5 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %cond.in = select i1 %tobool4.not, ptr %cmd5, ptr %stop
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load ptr, ptr %cond.in, align 4
  %data = getelementptr inbounds %struct.mmc_command, ptr %cond, i32 0, i32 7
  %base = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 5
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !333
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !357
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cond, i32 0, i32 2
  %11 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %resp, align 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !333
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  %arrayidx28 = getelementptr %struct.mmc_command, ptr %cond, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx28, align 4
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %18, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !333
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !359
  %arrayidx37 = getelementptr %struct.mmc_command, ptr %cond, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx37, align 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #8, !srcloc !333
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !360
  %arrayidx46 = getelementptr %struct.mmc_command, ptr %cond, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !361
  tail call void @arm_heavy_mb() #8
  %prescaler = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 12
  %27 = ptrtoint ptr %prescaler to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %prescaler, align 4
  %conv = zext i8 %28 to i32
  %29 = shl nuw i32 %conv, 24
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr51 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %29) #8, !srcloc !336
  %error52 = getelementptr inbounds %struct.mmc_command, ptr %cond, i32 0, i32 5
  %32 = ptrtoint ptr %error52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool53.not = icmp ne i32 %33, 0
  %spec.select = zext i1 %tobool53.not to i32
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %tobool57.not = icmp eq ptr %35, null
  br i1 %tobool57.not, label %if.end3.if.end63_crit_edge, label %land.lhs.true58

if.end3.if.end63_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true58:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %error60 = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %error60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool61.not = icmp eq i32 %37, 0
  %spec.select213 = select i1 %tobool61.not, i32 %spec.select, i32 1
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true58, %if.end3.if.end63_crit_edge
  %debug_as_failure.1 = phi i32 [ %spec.select, %if.end3.if.end63_crit_edge ], [ %spec.select213, %land.lhs.true58 ]
  tail call fastcc void @dbg_dumpcmd(ptr noundef %host, ptr noundef %cond, i32 noundef %debug_as_failure.1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !362
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #8, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !363
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr73 = getelementptr i8, ptr %41, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 4194304) #8, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !364
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr78 = getelementptr i8, ptr %43, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 0) #8, !srcloc !336
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %sdiimsk.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 14
  %46 = ptrtoint ptr %sdiimsk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sdiimsk.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 %47
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %and.i = and i32 %48, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %51 = ptrtoint ptr %sdiimsk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sdiimsk.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %50, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %and.i) #8, !srcloc !336
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %tobool80.not = icmp eq ptr %54, null
  br i1 %tobool80.not, label %if.end63.if.end100_crit_edge, label %land.lhs.true81

if.end63.if.end100_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

land.lhs.true81:                                  ; preds = %if.end63
  %55 = ptrtoint ptr %error52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %error52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool83.not = icmp eq i32 %56, 0
  br i1 %tobool83.not, label %land.lhs.true81.land.lhs.true91_crit_edge, label %if.end88

land.lhs.true81.land.lhs.true91_crit_edge:        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true91

if.end88:                                         ; preds = %land.lhs.true81
  %error87 = getelementptr inbounds %struct.mmc_data, ptr %54, i32 0, i32 5
  %57 = ptrtoint ptr %error87 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %error87, align 4
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load ptr, ptr %data, align 4
  %tobool90.not = icmp eq ptr %.pr, null
  br i1 %tobool90.not, label %if.end88.if.end100_crit_edge, label %if.end88.land.lhs.true91_crit_edge

if.end88.land.lhs.true91_crit_edge:               ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true91

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

land.lhs.true91:                                  ; preds = %if.end88.land.lhs.true91_crit_edge, %land.lhs.true81.land.lhs.true91_crit_edge
  %59 = phi ptr [ %.pr, %if.end88.land.lhs.true91_crit_edge ], [ %54, %land.lhs.true81.land.lhs.true91_crit_edge ]
  %stop93 = getelementptr inbounds %struct.mmc_data, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %stop93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %stop93, align 4
  %tobool94.not = icmp eq ptr %61, null
  br i1 %tobool94.not, label %land.lhs.true91.if.end100_crit_edge, label %land.lhs.true95

land.lhs.true91.if.end100_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

land.lhs.true95:                                  ; preds = %land.lhs.true91
  %62 = ptrtoint ptr %cmd_is_stop to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cmd_is_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool97.not = icmp eq i32 %63, 0
  br i1 %tobool97.not, label %if.then98, label %land.lhs.true95.if.end100_crit_edge

land.lhs.true95.if.end100_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then98:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %cmd_is_stop to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %cmd_is_stop, align 4
  %mmc = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 2
  %65 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmc, align 4
  tail call fastcc void @s3cmci_send_request(ptr noundef %66)
  br label %cleanup

if.end100:                                        ; preds = %land.lhs.true95.if.end100_crit_edge, %land.lhs.true91.if.end100_crit_edge, %if.end88.if.end100_crit_edge, %if.end63.if.end100_crit_edge
  %data101 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %data101 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data101, align 4
  %tobool102.not = icmp eq ptr %68, null
  br i1 %tobool102.not, label %if.end100.request_done_crit_edge, label %if.end104

if.end100.request_done_crit_edge:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %request_done

if.end104:                                        ; preds = %if.end100
  %error106 = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %error106 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %error106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp107 = icmp eq i32 %70, 0
  br i1 %cmp107, label %if.then109, label %if.end104.if.end115_crit_edge

if.end104.if.end115_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 2
  %73 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %blksz, align 4
  %mul = mul i32 %74, %72
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %if.end104.if.end115_crit_edge
  %.sink = phi i32 [ %mul, %if.then109 ], [ 0, %if.end104.if.end115_crit_edge ]
  %75 = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 7
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %.sink, ptr %75, align 4
  %77 = ptrtoint ptr %data101 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data101, align 4
  %error117 = getelementptr inbounds %struct.mmc_data, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %error117 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %error117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp118.not = icmp eq i32 %80, 0
  br i1 %cmp118.not, label %if.end115.request_done_crit_edge, label %if.then120

if.end115.request_done_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %request_done

if.then120:                                       ; preds = %if.end115
  %is2440 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 13
  %81 = ptrtoint ptr %is2440 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %is2440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool125.not = icmp eq i32 %82, 0
  br i1 %tobool125.not, label %if.else132, label %do.body127

do.body127:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !365
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 4
  %add.ptr131 = getelementptr i8, ptr %84, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 12583168) #8, !srcloc !336
  br label %request_done

if.else132:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !366
  %88 = or i32 %87, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !367
  tail call void @arm_heavy_mb() #8
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #8, !srcloc !336
  br label %request_done

request_done:                                     ; preds = %if.else132, %do.body127, %if.end115.request_done_crit_edge, %if.end100.request_done_crit_edge
  %91 = ptrtoint ptr %complete_what to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %complete_what, align 4
  %92 = ptrtoint ptr %mrq1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %mrq1, align 4
  %sdio_irqen.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 19
  %93 = ptrtoint ptr %sdio_irqen.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sdio_irqen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i, label %request_done.s3cmci_check_sdio_irq.exit_crit_edge, label %if.then.i

request_done.s3cmci_check_sdio_irq.exit_crit_edge: ; preds = %request_done
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_check_sdio_irq.exit

if.then.i:                                        ; preds = %request_done
  %pdata.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 1
  %95 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdata.i, align 4
  %arrayidx.i = getelementptr %struct.s3c24xx_mci_pdata, ptr %96, i32 0, i32 3, i32 3
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %98, null
  br i1 %tobool1.not.i, label %if.then.i.s3cmci_check_sdio_irq.exit_crit_edge, label %land.lhs.true.i

if.then.i.s3cmci_check_sdio_irq.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_check_sdio_irq.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %98) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %land.lhs.true.i.s3cmci_check_sdio_irq.exit_crit_edge

land.lhs.true.i.s3cmci_check_sdio_irq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_check_sdio_irq.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_check_sdio_irq.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@finalize_request, %if.then10.i)) #8
          to label %do.end.i [label %if.then10.i], !srcloc !324

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3cmci_check_sdio_irq.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  %mmc.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 2
  %99 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmc.i, align 4
  %ops.i.i = getelementptr inbounds %struct.mmc_host, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i.i, align 4
  %enable_sdio_irq.i.i = getelementptr inbounds %struct.mmc_host_ops, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %enable_sdio_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %enable_sdio_irq.i.i, align 4
  tail call void %104(ptr noundef %100, i32 noundef 0) #8
  %sdio_irq_pending.i.i = getelementptr inbounds %struct.mmc_host, ptr %100, i32 0, i32 49
  %105 = ptrtoint ptr %sdio_irq_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %sdio_irq_pending.i.i, align 4
  %sdio_irq_thread.i.i = getelementptr inbounds %struct.mmc_host, ptr %100, i32 0, i32 47
  %106 = ptrtoint ptr %sdio_irq_thread.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sdio_irq_thread.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %107, null
  br i1 %tobool.not.i.i, label %do.end.i.s3cmci_check_sdio_irq.exit_crit_edge, label %if.then.i.i

do.end.i.s3cmci_check_sdio_irq.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_check_sdio_irq.exit

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @wake_up_process(ptr noundef nonnull %107) #8
  br label %s3cmci_check_sdio_irq.exit

s3cmci_check_sdio_irq.exit:                       ; preds = %if.then.i.i, %do.end.i.s3cmci_check_sdio_irq.exit_crit_edge, %land.lhs.true.i.s3cmci_check_sdio_irq.exit_crit_edge, %if.then.i.s3cmci_check_sdio_irq.exit_crit_edge, %request_done.s3cmci_check_sdio_irq.exit_crit_edge
  %mmc149 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 2
  %108 = ptrtoint ptr %mmc149 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmc149, align 4
  tail call void @mmc_request_done(ptr noundef %109, ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %s3cmci_check_sdio_irq.exit, %if.then98, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbg_dumpcmd(ptr noundef %host, ptr noundef readonly %cmd, i32 noundef %fail) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fail)
  %tobool.not = icmp eq i32 %fail, 0
  %cond = select i1 %tobool.not, i32 2, i32 128
  %tobool1.not = icmp eq ptr %cmd, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %and = and i32 %cond, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %do.body42

do.body:                                          ; preds = %if.end
  br i1 %tobool3.not, label %if.else18, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %dbgmsg_cmd = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 31
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef %dbgmsg_cmd, i32 noundef %5) #11
  br label %if.end98

if.else18:                                        ; preds = %do.body
  %and19 = and i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else18.if.end98_crit_edge, label %do.body22

if.else18.if.end98_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

do.body22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_dumpcmd.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_dumpcmd, %if.then26)) #8
          to label %if.end98 [label %if.then26], !srcloc !324

if.then26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %dbgmsg_cmd29 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 31
  %resp31 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %resp31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resp31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_dumpcmd.__UNIQUE_ID_ddebug289, ptr noundef %dev28, ptr noundef nonnull @.str.66, ptr noundef %dbgmsg_cmd29, i32 noundef %9) #8
  br label %if.end98

do.body42:                                        ; preds = %if.end
  br i1 %tobool3.not, label %if.else67, label %do.end48

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %dev50 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %dbgmsg_cmd52 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 31
  %status = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 33
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %status, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.71, i32 noundef %1, ptr noundef %dbgmsg_cmd52, ptr noundef %13) #11
  br label %if.end98

if.else67:                                        ; preds = %do.body42
  %and68 = and i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else67.if.end98_crit_edge, label %do.body71

if.else67.if.end98_crit_edge:                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

do.body71:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_dumpcmd.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_dumpcmd, %if.then83)) #8
          to label %if.end98 [label %if.then83], !srcloc !324

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %dev85 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  %dbgmsg_cmd87 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 31
  %status89 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 33
  %18 = ptrtoint ptr %status89 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %status89, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_dumpcmd.__UNIQUE_ID_ddebug290, ptr noundef %dev85, ptr noundef nonnull @.str.71, i32 noundef %17, ptr noundef %dbgmsg_cmd87, ptr noundef %19) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then83, %do.body71, %if.else67.if.end98_crit_edge, %do.end48, %if.then26, %do.body22, %if.else18.if.end98_crit_edge, %do.end
  %data = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %tobool99.not = icmp eq ptr %21, null
  br i1 %tobool99.not, label %if.end98.cleanup_crit_edge, label %if.end101

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end101:                                        ; preds = %if.end98
  %error103 = getelementptr inbounds %struct.mmc_data, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %error103 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp104 = icmp eq i32 %23, 0
  %and107 = and i32 %cond, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %cmp104, label %do.body106, label %do.body157

do.body106:                                       ; preds = %if.end101
  br i1 %tobool108.not, label %if.else127, label %do.end112

do.end112:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host, align 4
  %dev114 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %dbgmsg_dat = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev114, ptr noundef nonnull @.str.76, ptr noundef %dbgmsg_dat) #11
  br label %cleanup

if.else127:                                       ; preds = %do.body106
  %and128 = and i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.else127.cleanup_crit_edge, label %do.body131

if.else127.cleanup_crit_edge:                     ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body131:                                       ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_dumpcmd.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_dumpcmd, %if.then143)) #8
          to label %cleanup [label %if.then143], !srcloc !324

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %dev145 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %dbgmsg_dat146 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_dumpcmd.__UNIQUE_ID_ddebug291, ptr noundef %dev145, ptr noundef nonnull @.str.76, ptr noundef %dbgmsg_dat146) #8
  br label %cleanup

do.body157:                                       ; preds = %if.end101
  br i1 %tobool108.not, label %if.else193, label %do.end163

do.end163:                                        ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host, align 4
  %dev165 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %dbgmsg_dat168 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 32
  %base = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 5
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 48
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !333
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev165, ptr noundef nonnull @.str.81, i32 noundef %23, ptr noundef %dbgmsg_dat168, i32 noundef %33) #11
  br label %cleanup

if.else193:                                       ; preds = %do.body157
  %and194 = and i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.else193.cleanup_crit_edge, label %do.body197

if.else193.cleanup_crit_edge:                     ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body197:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_dumpcmd.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_dumpcmd, %if.then209)) #8
          to label %cleanup [label %if.then209], !srcloc !324

if.then209:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host, align 4
  %dev211 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %error213 = getelementptr inbounds %struct.mmc_data, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %error213 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error213, align 4
  %dbgmsg_dat214 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 32
  %base218 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 5
  %40 = ptrtoint ptr %base218 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base218, align 4
  %add.ptr219 = getelementptr i8, ptr %41, i32 48
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219) #8, !srcloc !333
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_dumpcmd.__UNIQUE_ID_ddebug292, ptr noundef %dev211, ptr noundef nonnull @.str.81, i32 noundef %39, ptr noundef %dbgmsg_dat214, i32 noundef %43) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then209, %do.body197, %if.else193.cleanup_crit_edge, %do.end163, %if.then143, %do.body131, %if.else127.cleanup_crit_edge, %do.end112, %if.end98.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3cmci_send_request(ptr noundef %mmc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %mrq1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %cmd_is_stop = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %cmd_is_stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_is_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %stop = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %cmd2 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %cond.in = select i1 %tobool.not, ptr %cmd2, ptr %stop
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load ptr, ptr %cond.in, align 4
  %ccnt = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 14
  %5 = ptrtoint ptr %ccnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %ccnt, align 4
  %dbgmsg_cmd.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 4
  %cond.i = select i1 %tobool.not, ptr @.str.31, ptr @.str.89
  %7 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cond, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cond, i32 0, i32 1
  %9 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arg.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cond, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %retries.i = getelementptr inbounds %struct.mmc_command, ptr %cond, i32 0, i32 4
  %13 = ptrtoint ptr %retries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %retries.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dbgmsg_cmd.i, i32 noundef 300, ptr noundef nonnull @.str.88, i32 noundef %inc, ptr noundef nonnull %cond.i, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #8
  %data.i = getelementptr inbounds %struct.mmc_command, ptr %cond, i32 0, i32 7
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  %dbgmsg_dat10.i = getelementptr inbounds %struct.s3cmci_host, ptr %private.i, i32 0, i32 32
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dcnt.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 15
  %17 = ptrtoint ptr %dcnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dcnt.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blksz.i, align 4
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blocks.i, align 4
  %mul.i = mul i32 %22, %20
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dbgmsg_dat10.i, i32 noundef 300, ptr noundef nonnull @.str.90, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %mul.i) #8
  br label %prepare_dbgmsg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dbgmsg_dat10.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %dbgmsg_dat10.i, align 1
  br label %prepare_dbgmsg.exit

prepare_dbgmsg.exit:                              ; preds = %if.else.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !370
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #8, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !371
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %27, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1) #8, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !372
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -1) #8, !srcloc !336
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %tobool14.not = icmp eq ptr %31, null
  br i1 %tobool14.not, label %prepare_dbgmsg.exit.if.end68_crit_edge, label %if.then

prepare_dbgmsg.exit.if.end68_crit_edge:           ; preds = %prepare_dbgmsg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then:                                          ; preds = %prepare_dbgmsg.exit
  %call16 = tail call fastcc i32 @s3cmci_setup_data(ptr noundef %private.i, ptr noundef nonnull %31)
  %dcnt = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 15
  %32 = ptrtoint ptr %dcnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dcnt, align 4
  %inc17 = add i32 %33, 1
  store i32 %inc17, ptr %dcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end33, label %do.body21

do.body21:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_send_request.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_send_request, %if.then26)) #8
          to label %do.end30 [label %if.then26], !srcloc !324

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3cmci_send_request.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.86, i32 noundef %call16) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body21
  %error = getelementptr inbounds %struct.mmc_command, ptr %cond, i32 0, i32 5
  %36 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call16, ptr %error, align 4
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %error32 = getelementptr inbounds %struct.mmc_data, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %error32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call16, ptr %error32, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %1) #8
  br label %cleanup69

if.end33:                                         ; preds = %if.then
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %flags.i112 = getelementptr inbounds %struct.mmc_data, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %flags.i112 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i112, align 4
  %and2.i = and i32 %43, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 768
  br i1 %cmp.i, label %do.body5.i, label %do.end10.i, !prof !331

do.body5.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/s3cmci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1036, 0\0A.popsection", ""() #8, !srcloc !373
  unreachable

do.end10.i:                                       ; preds = %if.end33
  %and.i = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i113 = icmp eq i32 %and.i, 0
  %pio_sgptr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %pio_sgptr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %pio_sgptr.i, align 4
  %pio_bytes.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %45 = ptrtoint ptr %pio_bytes.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %pio_bytes.i, align 4
  %pio_count.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %46 = ptrtoint ptr %pio_count.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %pio_count.i, align 4
  %cond12.i = select i1 %tobool.not.i113, i32 1, i32 2
  %pio_active.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 2
  %47 = ptrtoint ptr %pio_active.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond12.i, ptr %pio_active.i, align 4
  br i1 %tobool.not.i113, label %if.else.i114, label %if.then14.i

if.then14.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @do_pio_write(ptr noundef %private.i) #8
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %sdiimsk.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %50 = ptrtoint ptr %sdiimsk.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sdiimsk.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %51
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  %53 = or i32 %52, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %56 = ptrtoint ptr %sdiimsk.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sdiimsk.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %55, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %53) #8, !srcloc !336
  br label %if.end68

if.else.i114:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %sdiimsk.i2.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %60 = ptrtoint ptr %sdiimsk.i2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sdiimsk.i2.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %59, i32 %61
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  %63 = or i32 %62, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %66 = ptrtoint ptr %sdiimsk.i2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sdiimsk.i2.i, align 4
  %add.ptr4.i5.i = getelementptr i8, ptr %65, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i5.i, i32 %63) #8, !srcloc !336
  br label %if.end68

if.end68:                                         ; preds = %if.else.i114, %if.then14.i, %prepare_dbgmsg.exit.if.end68_crit_edge
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %sdiimsk.i.i116 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %70 = ptrtoint ptr %sdiimsk.i.i116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sdiimsk.i.i116, align 4
  %add.ptr.i.i117 = getelementptr i8, ptr %69, i32 %71
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i117) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  %73 = or i32 %72, 12845824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  tail call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %76 = ptrtoint ptr %sdiimsk.i.i116 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sdiimsk.i.i116, align 4
  %add.ptr4.i.i118 = getelementptr i8, ptr %75, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i118, i32 %73) #8, !srcloc !336
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  %tobool.not.i120 = icmp eq ptr %79, null
  br i1 %tobool.not.i120, label %if.else.i125, label %if.then.i121

if.then.i121:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %complete_what.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  %80 = ptrtoint ptr %complete_what.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 5, ptr %complete_what.i, align 4
  br label %s3cmci_send_command.exit

if.else.i125:                                     ; preds = %if.end68
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i, align 4
  %and.i123 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %tobool1.not.i124 = icmp eq i32 %and.i123, 0
  %complete_what5.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  br i1 %tobool1.not.i124, label %if.else4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i125
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %complete_what5.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %complete_what5.i, align 4
  br label %s3cmci_send_command.exit

if.else4.i:                                       ; preds = %if.else.i125
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %complete_what5.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %complete_what5.i, align 4
  br label %s3cmci_send_command.exit

s3cmci_send_command.exit:                         ; preds = %if.else4.i, %if.then2.i, %if.then.i121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  tail call void @arm_heavy_mb() #8
  %85 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arg.i, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #8
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %89, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %87) #8, !srcloc !336
  %90 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cond, align 4
  %and7.i = and i32 %91, 63
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i, align 4
  %and9.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %spec.select.v.i = select i1 %tobool10.not.i, i32 320, i32 832
  %and15.i = shl i32 %93, 9
  %94 = and i32 %and15.i, 1024
  %spec.select.i = or i32 %94, %and7.i
  %95 = or i32 %spec.select.i, %spec.select.v.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !375
  tail call void @arm_heavy_mb() #8
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr24.i = getelementptr i8, ptr %98, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %96) #8, !srcloc !336
  tail call fastcc void @s3cmci_enable_irq(ptr noundef %private.i, i1 noundef zeroext true)
  br label %cleanup69

cleanup69:                                        ; preds = %s3cmci_send_command.exit, %do.end30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3cmci_setup_data(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blksz, align 4
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1
  br i1 %cmp1, label %do.end, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef %1) #11
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %base = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %do.body22.while.cond_crit_edge, %if.end4
  %stoptries.0 = phi i32 [ 3, %if.end4 ], [ %dec, %do.body22.while.cond_crit_edge ]
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !376
  %7 = and i32 %6, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.end, label %do.body10

do.body10:                                        ; preds = %while.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_setup_data.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_setup_data, %if.then16)) #8
          to label %do.body22 [label %if.then16], !srcloc !324

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3cmci_setup_data.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.93) #8
  br label %do.body22

do.body22:                                        ; preds = %if.then16, %do.body10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !377
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 4194304) #8, !srcloc !336
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !378
  %15 = or i32 %14, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !379
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !336
  %dec = add nsw i32 %stoptries.0, -1
  %cmp27 = icmp eq i32 %stoptries.0, 0
  br i1 %cmp27, label %if.then28, label %do.body22.while.cond_crit_edge

do.body22.while.cond_crit_edge:                   ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dbg_dumpregs(ptr noundef %host)
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %blocks30 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %blocks30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks30, align 4
  %and31 = and i32 %19, 4095
  %bus_width = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 30
  %20 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp35 = icmp eq i32 %21, 2
  %or37 = or i32 %and31, 65536
  %dcon.1 = select i1 %cmp35, i32 %or37, i32 %and31
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and40 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %dcon.2.v = select i1 %tobool41.not, i32 131072, i32 1191936
  %dcon.2 = or i32 %dcon.2.v, %dcon.1
  %and47 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %or51 = or i32 %dcon.2, 532480
  %dcon.3 = select i1 %tobool48.not, i32 %dcon.2, i32 %or51
  %is2440 = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 13
  %24 = ptrtoint ptr %is2440 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %is2440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool53.not = icmp eq i32 %25, 0
  %or56 = or i32 %dcon.3, 8404992
  %dcon.4 = select i1 %tobool53.not, i32 %dcon.3, i32 %or56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !380
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %dcon.4)
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr62 = getelementptr i8, ptr %28, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %26) #8, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !381
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blksz, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %33, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %31) #8, !srcloc !336
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %sdiimsk.i = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 14
  %36 = ptrtoint ptr %sdiimsk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sdiimsk.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %37
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  %39 = or i32 %38, -2146762752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %42 = ptrtoint ptr %sdiimsk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sdiimsk.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %39) #8, !srcloc !336
  %44 = ptrtoint ptr %is2440 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %is2440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool71.not = icmp eq i32 %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr82 = getelementptr i8, ptr %47, i32 36
  br i1 %tobool71.not, label %do.body78, label %do.body73

do.body73:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 -33024) #8, !srcloc !336
  br label %cleanup

do.body78:                                        ; preds = %while.end
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 -65536) #8, !srcloc !336
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and84 = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body78.cleanup_crit_edge, label %do.body87

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body87:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !382
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr91 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 -16777216) #8, !srcloc !336
  br label %cleanup

cleanup:                                          ; preds = %do.body87, %do.body78.cleanup_crit_edge, %do.body73, %if.then28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then28 ], [ 0, %do.body78.cleanup_crit_edge ], [ 0, %do.body87 ], [ 0, %do.body73 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbg_dumpregs(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.s3cmci_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !383
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !384
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !333
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !385
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #8, !srcloc !333
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !386
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #8, !srcloc !333
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !387
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %19, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !333
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %23, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #8, !srcloc !333
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !389
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %27, i32 28
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #8, !srcloc !333
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !390
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr54 = getelementptr i8, ptr %31, i32 32
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #8, !srcloc !333
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !391
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %35, i32 36
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !392
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %38, i32 44
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #8, !srcloc !333
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !393
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr75 = getelementptr i8, ptr %42, i32 48
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #8, !srcloc !333
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !394
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr82 = getelementptr i8, ptr %46, i32 52
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #8, !srcloc !333
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !395
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr89 = getelementptr i8, ptr %50, i32 56
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #8, !srcloc !333
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !396
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_dumpregs.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_dumpregs, %if.then)) #8
          to label %do.body101 [label %if.then], !srcloc !324

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %36)
  %54 = tail call i32 @llvm.bswap.i32(i32 %5)
  %55 = tail call i32 @llvm.bswap.i32(i32 %2)
  %56 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_dumpregs.__UNIQUE_ID_ddebug285, ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94, i32 noundef %55, i32 noundef %54, i32 noundef %53) #8
  br label %do.body101

do.body101:                                       ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_dumpregs.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_dumpregs, %if.then113)) #8
          to label %do.body122 [label %if.then113], !srcloc !324

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %host, align 4
  %dev115 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_dumpregs.__UNIQUE_ID_ddebug286, ptr noundef %dev115, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.94, i32 noundef %13, i32 noundef %9, i32 noundef %17) #8
  br label %do.body122

do.body122:                                       ; preds = %if.then113, %do.body101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_dumpregs.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_dumpregs, %if.then134)) #8
          to label %do.body143 [label %if.then134], !srcloc !324

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %host, align 4
  %dev136 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_dumpregs.__UNIQUE_ID_ddebug287, ptr noundef %dev136, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.94, i32 noundef %40, i32 noundef %52, i32 noundef %48, i32 noundef %44) #8
  br label %do.body143

do.body143:                                       ; preds = %if.then134, %do.body122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_dumpregs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_dumpregs, %if.then155)) #8
          to label %do.end162 [label %if.then155], !srcloc !324

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host, align 4
  %dev157 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_dumpregs.__UNIQUE_ID_ddebug288, ptr noundef %dev157, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94, i32 noundef %21, i32 noundef %25, i32 noundef %29, i32 noundef %33) #8
  br label %do.end162

do.end162:                                        ; preds = %if.then155, %do.body143
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3cmci_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %status = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 13
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.122, ptr %status, align 4
  %cmd_is_stop = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %1 = ptrtoint ptr %cmd_is_stop to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cmd_is_stop, align 4
  %mrq1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %mrq1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mrq, ptr %mrq1, align 4
  %call2 = tail call i32 @mmc_gpio_get_cd(ptr noundef %mmc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %do.body3, label %if.else

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_request.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_request, %if.then7)) #8
          to label %do.end9 [label %if.then7], !srcloc !324

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3cmci_request.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %do.body3
  %5 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrq1, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -123, ptr %error, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #8
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @s3cmci_send_request(ptr noundef %mmc)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %do.end9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3cmci_set_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !333
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !397
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %4 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_mode, align 2
  %.off = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %is2440 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %6 = ptrtoint ptr %is2440 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is2440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %or7 = or i32 %3, 256
  %or = or i32 %3, 2
  %or7.sink = select i1 %switch, i32 %3, i32 %or7
  %.sink = select i1 %switch, i32 %or, i32 %3
  %spec.select71 = select i1 %tobool.not, i32 %.sink, i32 %or7.sink
  %pdata = getelementptr inbounds %struct.s3cmci_host, ptr %private.i, i32 0, i32 1
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 4
  %set_power = getelementptr inbounds %struct.s3c24xx_mci_pdata, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_power, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %entry.if.end14_crit_edge, label %if.then10

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %12 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdd, align 4
  tail call void %11(i8 noundef zeroext %5, i16 noundef zeroext %13) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %entry.if.end14_crit_edge
  %clk_rate.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %clk_div.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %real_rate.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end14
  %mci_psc.0.i = phi i32 [ 0, %if.end14 ], [ %add.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %mci_psc.0.i)
  %exitcond.not.i = icmp eq i32 %mci_psc.0.i, 255
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %14 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_rate.i, align 4
  %16 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clk_div.i, align 4
  %add.i = add nuw nsw i32 %mci_psc.0.i, 1
  %mul.i = mul i32 %17, %add.i
  %div.i = udiv i32 %15, %mul.i
  %18 = ptrtoint ptr %real_rate.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i, ptr %real_rate.i, align 4
  %19 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ios, align 4
  %cmp2.not.i = icmp ugt i32 %div.i, %20
  br i1 %cmp2.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %21 = tail call i32 @llvm.umin.i32(i32 %mci_psc.0.i, i32 255) #8
  %conv.i = trunc i32 %21 to i8
  %prescaler.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prescaler.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %prescaler.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !398
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %prescaler.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %prescaler.i, align 4
  %conv7.i = zext i8 %24 to i32
  %25 = shl nuw i32 %conv7.i, 24
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #8, !srcloc !336
  %28 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp9.i = icmp eq i32 %29, 0
  br i1 %cmp9.i, label %if.then11.i, label %for.end.i.s3cmci_set_clk.exit_crit_edge

for.end.i.s3cmci_set_clk.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_set_clk.exit

if.then11.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %real_rate.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %real_rate.i, align 4
  br label %s3cmci_set_clk.exit

s3cmci_set_clk.exit:                              ; preds = %if.then11.i, %for.end.i.s3cmci_set_clk.exit_crit_edge
  %31 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool15.not = icmp ne i32 %32, 0
  %and = and i32 %spec.select71, -2
  %masksel = zext i1 %tobool15.not to i32
  %mci_con.1 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !399
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %mci_con.1)
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #8, !srcloc !336
  %36 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %power_mode, align 2
  %.off72 = add i8 %37, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off72)
  %switch73 = icmp ult i8 %.off72, 2
  %38 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  br i1 %switch73, label %do.end32, label %do.end41

do.end32:                                         ; preds = %s3cmci_set_clk.exit
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %real_rate.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %real_rate.i, align 4
  %div = udiv i32 %41, 1000
  %42 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ios, align 4
  %div34 = udiv i32 %43, 1000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %div, i32 noundef %div34) #11
  br label %if.end46

do.end41:                                         ; preds = %s3cmci_set_clk.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.128) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end41, %do.end32
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %44 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bus_width, align 1
  %conv47 = zext i8 %45 to i32
  %bus_width48 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 3
  %46 = ptrtoint ptr %bus_width48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv47, ptr %bus_width48, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3cmci_enable_sdio_irq(ptr nocapture noundef %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !328
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  %sdio_irqen = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %sdio_irqen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %enable, ptr %sdio_irqen, align 4
  br i1 %tobool.not, label %if.then53, label %do.end11.do.body55_crit_edge

do.end11.do.body55_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.then53:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body55

do.body55:                                        ; preds = %if.then53, %do.end11.do.body55_crit_edge
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !330
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool63.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool63.not, label %if.then67, label %do.body55.do.end70_crit_edge, !prof !331

do.body55.do.end70_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %do.body55.do.end70_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !332
  %6 = ptrtoint ptr %sdio_irqen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdio_irqen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end70.s3cmci_check_sdio_irq.exit_crit_edge, label %if.then.i

do.end70.s3cmci_check_sdio_irq.exit_crit_edge:    ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_check_sdio_irq.exit

if.then.i:                                        ; preds = %do.end70
  %pdata.i = getelementptr inbounds %struct.s3cmci_host, ptr %private.i, i32 0, i32 1
  %8 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata.i, align 4
  %arrayidx.i = getelementptr %struct.s3c24xx_mci_pdata, ptr %9, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.then.i.s3cmci_check_sdio_irq.exit_crit_edge, label %land.lhs.true.i

if.then.i.s3cmci_check_sdio_irq.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_check_sdio_irq.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %land.lhs.true.i.s3cmci_check_sdio_irq.exit_crit_edge

land.lhs.true.i.s3cmci_check_sdio_irq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_check_sdio_irq.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3cmci_check_sdio_irq.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3cmci_enable_sdio_irq, %if.then10.i)) #8
          to label %do.end.i [label %if.then10.i], !srcloc !324

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3cmci_check_sdio_irq.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %12 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc.i, align 4
  %ops.i.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %enable_sdio_irq.i.i = getelementptr inbounds %struct.mmc_host_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %enable_sdio_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable_sdio_irq.i.i, align 4
  tail call void %17(ptr noundef %13, i32 noundef 0) #8
  %sdio_irq_pending.i.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 49
  %18 = ptrtoint ptr %sdio_irq_pending.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %sdio_irq_pending.i.i, align 4
  %sdio_irq_thread.i.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 47
  %19 = ptrtoint ptr %sdio_irq_thread.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdio_irq_thread.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %do.end.i.s3cmci_check_sdio_irq.exit_crit_edge, label %if.then.i.i

do.end.i.s3cmci_check_sdio_irq.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s3cmci_check_sdio_irq.exit

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @wake_up_process(ptr noundef nonnull %20) #8
  br label %s3cmci_check_sdio_irq.exit

s3cmci_check_sdio_irq.exit:                       ; preds = %if.then.i.i, %do.end.i.s3cmci_check_sdio_irq.exit_crit_edge, %land.lhs.true.i.s3cmci_check_sdio_irq.exit_crit_edge, %if.then.i.s3cmci_check_sdio_irq.exit_crit_edge, %do.end70.s3cmci_check_sdio_irq.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3cmci_state_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @s3cmci_state_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3cmci_state_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %base = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.132, ptr noundef %3) #8
  %clk_rate = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_rate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.133, i32 noundef %5) #8
  %prescaler = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %prescaler to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prescaler, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.134, i32 noundef %conv) #8
  %is2440 = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %is2440 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %is2440, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.135, i32 noundef %9) #8
  %irq = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.136, i32 noundef %11) #8
  %irq_enabled = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %irq_enabled, align 1, !range !329
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.137, i32 noundef %14) #8
  %irq_disabled = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %irq_disabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %irq_disabled, align 4, !range !329
  %17 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.138, i32 noundef %17) #8
  %irq_state = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %irq_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %irq_state, align 2, !range !329
  %20 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.139, i32 noundef %20) #8
  %irq_cd = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %irq_cd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_cd, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.140, i32 noundef %22) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.141, i32 noundef 0) #8
  %sdiimsk = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sdiimsk, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.142, i32 noundef %24) #8
  %sdidata = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %sdidata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sdidata, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.143, i32 noundef %26) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3cmci_regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @s3cmci_regs_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3cmci_regs_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %base = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %2 = phi ptr [ @.str.146, %entry ], [ %10, %for.body.for.body_crit_edge ]
  %rptr.017 = phi ptr [ @debug_regs, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %5 = ptrtoint ptr %rptr.017 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rptr.017, align 4
  %conv = zext i16 %6 to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !333
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !401
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.144, ptr noundef nonnull %2, i32 noundef %8) #8
  %incdec.ptr = getelementptr %struct.s3cmci_reg, ptr %rptr.017, i32 1
  %name = getelementptr %struct.s3cmci_reg, ptr %rptr.017, i32 1, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %sdiimsk = getelementptr inbounds %struct.s3cmci_host, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %sdiimsk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sdiimsk, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !333
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !402
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.145, i32 noundef %16) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !75, !76, !77, !78, !80, !81, !82, !83, !85, !87, !88, !89, !91, !93, !94, !95, !97, !99, !100, !101, !103, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !118, !119, !121, !122, !123, !124, !125, !126, !128, !129, !130, !131, !132, !133, !135, !136, !137, !138, !139, !140, !142, !143, !144, !146, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !163, !165, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !180, !182, !184, !186, !188, !190, !192, !193, !194, !196, !198, !200, !202, !203, !205, !207, !209, !211, !212, !214, !216, !217, !219, !221, !222, !224, !226, !228, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313}
!llvm.module.flags = !{!315, !316, !317, !318, !319, !320, !321, !322}
!llvm.ident = !{!323}

!0 = !{ptr @__initcall__kmod_s3cmci__320_1773_s3cmci_driver_init6, !1, !"__initcall__kmod_s3cmci__320_1773_s3cmci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/s3cmci.c", i32 1773, i32 1}
!2 = !{ptr @__exitcall_s3cmci_driver_exit, !1, !"__exitcall_s3cmci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/s3cmci.c", i32 1775, i32 1}
!5 = !{ptr @__UNIQUE_ID_file322, !6, !"__UNIQUE_ID_file322", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/s3cmci.c", i32 1776, i32 1}
!7 = !{ptr @__UNIQUE_ID_license323, !6, !"__UNIQUE_ID_license323", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author324, !9, !"__UNIQUE_ID_author324", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/s3cmci.c", i32 1777, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/s3cmci.c", i32 1763, i32 11}
!12 = !{ptr @s3cmci_driver, !13, !"s3cmci_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/s3cmci.c", i32 1761, i32 31}
!14 = !{ptr @s3cmci_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/s3cmci.c", i32 1534, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mmc/host/s3cmci.c", i32 1552, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @s3cmci_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @s3cmci_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/s3cmci.c", i32 1563, i32 3}
!27 = !{ptr @s3cmci_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @s3cmci_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/s3cmci.c", i32 1570, i32 3}
!31 = !{ptr @s3cmci_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @s3cmci_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/s3cmci.c", i32 1581, i32 57}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/s3cmci.c", i32 1582, i32 3}
!37 = !{ptr @s3cmci_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @s3cmci_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/s3cmci.c", i32 1592, i32 44}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/s3cmci.c", i32 1595, i32 4}
!43 = !{ptr @s3cmci_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @s3cmci_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/s3cmci.c", i32 1600, i32 34}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/s3cmci.c", i32 1602, i32 3}
!49 = !{ptr @s3cmci_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @s3cmci_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/s3cmci.c", i32 1610, i32 3}
!53 = !{ptr @s3cmci_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @s3cmci_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/s3cmci.c", i32 1636, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @s3cmci_probe.__UNIQUE_ID_ddebug319, !56, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!59 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/s3cmci.c", i32 1643, i32 3}
!63 = !{ptr @s3cmci_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @s3cmci_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/s3cmci.c", i32 1649, i32 3}
!67 = !{ptr @s3cmci_probe._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @s3cmci_probe._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/s3cmci.c", i32 1656, i32 2}
!71 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @s3cmci_probe._entry.38, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @s3cmci_probe._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.45, !70, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mmc/host/s3cmci.c", i32 1446, i32 3}
!80 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @s3cmci_probe_pdata._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @s3cmci_probe_pdata._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/s3cmci.c", i32 1451, i32 52}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/s3cmci.c", i32 1454, i32 4}
!87 = !{ptr @s3cmci_probe_pdata._entry.49, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @s3cmci_probe_pdata._entry_ptr.51, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mmc/host/s3cmci.c", i32 1469, i32 34}
!91 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mmc/host/s3cmci.c", i32 1471, i32 3}
!93 = !{ptr @s3cmci_probe_pdata._entry.53, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @s3cmci_probe_pdata._entry_ptr.55, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/host/s3cmci.c", i32 1476, i32 40}
!97 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/s3cmci.c", i32 1478, i32 3}
!99 = !{ptr @s3cmci_probe_pdata._entry.57, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @s3cmci_probe_pdata._entry_ptr.59, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/s3cmci.c", i32 558, i32 4}
!103 = !{ptr @.str.61, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pio_tasklet.__UNIQUE_ID_ddebug302, !102, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!105 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.63, !102, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.64, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mmc/host/s3cmci.c", i32 323, i32 3}
!109 = !{ptr @.str.65, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @get_data_buffer.__UNIQUE_ID_ddebug294, !108, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!111 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/s3cmci.c", i32 209, i32 3}
!113 = !{ptr @.str.67, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @dbg_dumpcmd._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @dbg_dumpcmd._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @dbg_dumpcmd._entry.68, !112, !"_entry", i1 false, i1 false}
!117 = !{ptr @dbg_dumpcmd._entry_ptr.69, !112, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @dbg_dumpcmd.__UNIQUE_ID_ddebug289, !112, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!119 = !{ptr @.str.71, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mmc/host/s3cmci.c", i32 212, i32 3}
!121 = !{ptr @dbg_dumpcmd._entry.70, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @dbg_dumpcmd._entry_ptr.72, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @dbg_dumpcmd._entry.73, !120, !"_entry", i1 false, i1 false}
!124 = !{ptr @dbg_dumpcmd._entry_ptr.74, !120, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @dbg_dumpcmd.__UNIQUE_ID_ddebug290, !120, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!126 = !{ptr @.str.76, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/s3cmci.c", i32 220, i32 3}
!128 = !{ptr @dbg_dumpcmd._entry.75, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @dbg_dumpcmd._entry_ptr.77, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @dbg_dumpcmd._entry.78, !127, !"_entry", i1 false, i1 false}
!131 = !{ptr @dbg_dumpcmd._entry_ptr.79, !127, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @dbg_dumpcmd.__UNIQUE_ID_ddebug291, !127, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!133 = !{ptr @.str.81, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/s3cmci.c", i32 222, i32 3}
!135 = !{ptr @dbg_dumpcmd._entry.80, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @dbg_dumpcmd._entry_ptr.82, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @dbg_dumpcmd._entry.83, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @dbg_dumpcmd._entry_ptr.84, !134, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @dbg_dumpcmd.__UNIQUE_ID_ddebug292, !134, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!140 = !{ptr @.str.85, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mmc/host/s3cmci.c", i32 1119, i32 4}
!142 = !{ptr @.str.86, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @s3cmci_send_request.__UNIQUE_ID_ddebug314, !141, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!144 = distinct !{null, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mmc/host/s3cmci.c", i32 1133, i32 4}
!146 = distinct !{null, !145, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!147 = !{ptr @.str.88, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mmc/host/s3cmci.c", i32 185, i32 4}
!149 = !{ptr @.str.89, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mmc/host/s3cmci.c", i32 186, i32 24}
!151 = !{ptr @.str.90, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mmc/host/s3cmci.c", i32 191, i32 5}
!153 = !{ptr @.str.91, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mmc/host/s3cmci.c", i32 957, i32 4}
!155 = !{ptr @.str.92, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @s3cmci_setup_data._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @s3cmci_setup_data._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.93, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mmc/host/s3cmci.c", i32 966, i32 3}
!160 = !{ptr @s3cmci_setup_data.__UNIQUE_ID_ddebug313, !159, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!161 = !{ptr @.str.94, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mmc/host/s3cmci.c", i32 973, i32 23}
!163 = !{ptr @.str.95, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mmc/host/s3cmci.c", i32 166, i32 2}
!165 = !{ptr @.str.96, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @dbg_dumpregs.__UNIQUE_ID_ddebug285, !164, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!167 = !{ptr @.str.97, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mmc/host/s3cmci.c", i32 169, i32 2}
!169 = !{ptr @dbg_dumpregs.__UNIQUE_ID_ddebug286, !168, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!170 = !{ptr @.str.98, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mmc/host/s3cmci.c", i32 172, i32 2}
!172 = !{ptr @dbg_dumpregs.__UNIQUE_ID_ddebug287, !171, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!173 = !{ptr @.str.99, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mmc/host/s3cmci.c", i32 176, i32 2}
!175 = !{ptr @dbg_dumpregs.__UNIQUE_ID_ddebug288, !174, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!176 = !{ptr @.str.100, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mmc/host/s3cmci.c", i32 305, i32 4}
!178 = !{ptr @.str.101, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @s3cmci_check_sdio_irq.__UNIQUE_ID_ddebug293, !177, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!180 = !{ptr @.str.102, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mmc/host/s3cmci.c", i32 630, i32 18}
!182 = !{ptr @.str.103, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mmc/host/s3cmci.c", i32 636, i32 18}
!184 = !{ptr @.str.104, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mmc/host/s3cmci.c", i32 644, i32 18}
!186 = !{ptr @.str.105, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mmc/host/s3cmci.c", i32 655, i32 19}
!188 = !{ptr @.str.106, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mmc/host/s3cmci.c", i32 666, i32 19}
!190 = !{ptr @.str.107, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mmc/host/s3cmci.c", i32 671, i32 3}
!192 = !{ptr @.str.108, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @s3cmci_irq.__UNIQUE_ID_ddebug303, !191, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!194 = !{ptr @.str.109, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mmc/host/s3cmci.c", i32 673, i32 18}
!196 = !{ptr @.str.110, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mmc/host/s3cmci.c", i32 679, i32 19}
!198 = !{ptr @.str.111, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mmc/host/s3cmci.c", i32 708, i32 19}
!200 = !{ptr @.str.112, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mmc/host/s3cmci.c", i32 727, i32 4}
!202 = !{ptr @s3cmci_irq.__UNIQUE_ID_ddebug305, !201, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!203 = !{ptr @.str.113, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mmc/host/s3cmci.c", i32 729, i32 19}
!205 = !{ptr @s3cmci_irq.__UNIQUE_ID_ddebug306, !206, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!206 = !{!"../drivers/mmc/host/s3cmci.c", i32 734, i32 4}
!207 = !{ptr @.str.114, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/mmc/host/s3cmci.c", i32 736, i32 19}
!209 = !{ptr @.str.115, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mmc/host/s3cmci.c", i32 742, i32 3}
!211 = !{ptr @s3cmci_irq.__UNIQUE_ID_ddebug307, !210, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!212 = !{ptr @.str.116, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mmc/host/s3cmci.c", i32 744, i32 18}
!214 = !{ptr @.str.117, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mmc/host/s3cmci.c", i32 749, i32 3}
!216 = !{ptr @s3cmci_irq.__UNIQUE_ID_ddebug308, !215, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!217 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mmc/host/s3cmci.c", i32 751, i32 18}
!219 = !{ptr @.str.119, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mmc/host/s3cmci.c", i32 756, i32 3}
!221 = !{ptr @s3cmci_irq.__UNIQUE_ID_ddebug309, !220, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!222 = !{ptr @.str.120, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/mmc/host/s3cmci.c", i32 758, i32 18}
!224 = !{ptr @.str.121, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mmc/host/s3cmci.c", i32 764, i32 19}
!226 = !{ptr @s3cmci_ops, !227, !"s3cmci_ops", i1 false, i1 false}
!227 = !{!"../drivers/mmc/host/s3cmci.c", i32 1283, i32 34}
!228 = !{ptr @.str.122, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/mmc/host/s3cmci.c", i32 1153, i32 17}
!230 = !{ptr @.str.123, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mmc/host/s3cmci.c", i32 1158, i32 3}
!232 = !{ptr @.str.124, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @s3cmci_request.__UNIQUE_ID_ddebug316, !231, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!234 = !{ptr @.str.125, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/mmc/host/s3cmci.c", i32 1226, i32 3}
!236 = !{ptr @.str.126, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @s3cmci_set_ios._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @s3cmci_set_ios._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.128, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/mmc/host/s3cmci.c", i32 1229, i32 3}
!241 = !{ptr @s3cmci_set_ios._entry.127, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @s3cmci_set_ios._entry_ptr.129, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.130, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mmc/host/s3cmci.c", i32 1421, i32 22}
!245 = !{ptr @.str.131, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mmc/host/s3cmci.c", i32 1422, i32 22}
!247 = !{ptr @s3cmci_state_fops, !248, !"s3cmci_state_fops", i1 false, i1 false}
!248 = !{!"../drivers/mmc/host/s3cmci.c", i32 1369, i32 1}
!249 = !{ptr @.str.132, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/mmc/host/s3cmci.c", i32 1353, i32 18}
!251 = !{ptr @.str.133, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mmc/host/s3cmci.c", i32 1354, i32 18}
!253 = !{ptr @.str.134, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/mmc/host/s3cmci.c", i32 1355, i32 18}
!255 = !{ptr @.str.135, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mmc/host/s3cmci.c", i32 1356, i32 18}
!257 = !{ptr @.str.136, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/mmc/host/s3cmci.c", i32 1357, i32 18}
!259 = !{ptr @.str.137, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/mmc/host/s3cmci.c", i32 1358, i32 18}
!261 = !{ptr @.str.138, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/mmc/host/s3cmci.c", i32 1359, i32 18}
!263 = !{ptr @.str.139, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mmc/host/s3cmci.c", i32 1360, i32 18}
!265 = !{ptr @.str.140, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mmc/host/s3cmci.c", i32 1361, i32 18}
!267 = !{ptr @.str.141, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/mmc/host/s3cmci.c", i32 1362, i32 18}
!269 = !{ptr @.str.142, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/mmc/host/s3cmci.c", i32 1363, i32 18}
!271 = !{ptr @.str.143, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/mmc/host/s3cmci.c", i32 1364, i32 18}
!273 = !{ptr @s3cmci_regs_fops, !274, !"s3cmci_regs_fops", i1 false, i1 false}
!274 = !{!"../drivers/mmc/host/s3cmci.c", i32 1411, i32 1}
!275 = !{ptr @.str.144, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/mmc/host/s3cmci.c", i32 1403, i32 19}
!277 = !{ptr @.str.145, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/mmc/host/s3cmci.c", i32 1406, i32 18}
!279 = !{ptr @.str.146, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/mmc/host/s3cmci.c", i32 1379, i32 2}
!281 = !{ptr @.str.147, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/mmc/host/s3cmci.c", i32 1380, i32 2}
!283 = !{ptr @.str.148, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/mmc/host/s3cmci.c", i32 1381, i32 2}
!285 = !{ptr @.str.149, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/mmc/host/s3cmci.c", i32 1382, i32 2}
!287 = !{ptr @.str.150, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/mmc/host/s3cmci.c", i32 1383, i32 2}
!289 = !{ptr @.str.151, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mmc/host/s3cmci.c", i32 1384, i32 2}
!291 = !{ptr @.str.152, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/mmc/host/s3cmci.c", i32 1385, i32 2}
!293 = !{ptr @.str.153, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/mmc/host/s3cmci.c", i32 1386, i32 2}
!295 = !{ptr @.str.154, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mmc/host/s3cmci.c", i32 1387, i32 2}
!297 = !{ptr @.str.155, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mmc/host/s3cmci.c", i32 1388, i32 2}
!299 = !{ptr @.str.156, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/mmc/host/s3cmci.c", i32 1389, i32 2}
!301 = !{ptr @.str.157, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mmc/host/s3cmci.c", i32 1390, i32 2}
!303 = !{ptr @.str.158, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/mmc/host/s3cmci.c", i32 1391, i32 2}
!305 = !{ptr @.str.159, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/mmc/host/s3cmci.c", i32 1392, i32 2}
!307 = !{ptr @.str.160, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/mmc/host/s3cmci.c", i32 1393, i32 2}
!309 = !{ptr @debug_regs, !310, !"debug_regs", i1 false, i1 false}
!310 = !{!"../drivers/mmc/host/s3cmci.c", i32 1378, i32 32}
!311 = !{ptr @s3cmci_dt_match, !312, !"s3cmci_dt_match", i1 false, i1 false}
!312 = !{!"../drivers/mmc/host/s3cmci.c", i32 1728, i32 34}
!313 = !{ptr @s3cmci_driver_ids, !314, !"s3cmci_driver_ids", i1 false, i1 false}
!314 = !{!"../drivers/mmc/host/s3cmci.c", i32 1745, i32 40}
!315 = !{i32 1, !"wchar_size", i32 2}
!316 = !{i32 1, !"min_enum_size", i32 4}
!317 = !{i32 8, !"branch-target-enforcement", i32 0}
!318 = !{i32 8, !"sign-return-address", i32 0}
!319 = !{i32 8, !"sign-return-address-all", i32 0}
!320 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!321 = !{i32 7, !"uwtable", i32 1}
!322 = !{i32 7, !"frame-pointer", i32 2}
!323 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!324 = !{i64 2148995534, i64 2148995539, i64 2148995552, i64 2148995596, i64 2148995630, i64 2148995651}
!325 = !{i64 2148382157, i64 2148382183, i64 2148382212, i64 2148382246, i64 2148382277, i64 2148382300}
!326 = !{i64 2154980667}
!327 = !{i64 2154981309}
!328 = !{i64 785857, i64 785918}
!329 = !{i8 0, i8 2}
!330 = !{i64 788589}
!331 = !{!"branch_weights", i32 1, i32 2000}
!332 = !{i64 788874}
!333 = !{i64 6309653}
!334 = !{i64 2155056386}
!335 = !{i64 2155056620}
!336 = !{i64 6309235}
!337 = !{i64 2155130052}
!338 = !{i64 2155130574}
!339 = !{i64 2155130832}
!340 = !{i64 2155131907}
!341 = !{i64 2155132408}
!342 = !{i64 2155132909}
!343 = !{i64 2155055272}
!344 = !{i64 2155055499}
!345 = !{i64 2155174155}
!346 = !{i64 2155174583}
!347 = !{i64 2155073170}
!348 = !{!"branch_weights", i32 2000, i32 1}
!349 = !{i64 2153870919, i64 2153871411, i64 2153870956, i64 2153871012, i64 2153871046, i64 2153871070, i64 2153871111, i64 2153871132, i64 2153871160, i64 2153871194}
!350 = !{i64 2155120287}
!351 = !{i64 2155054158}
!352 = !{i64 2155054385}
!353 = !{i64 2155076214}
!354 = !{i64 2155072493}
!355 = !{i64 2155100295}
!356 = !{i64 2155100745}
!357 = !{i64 2155202021}
!358 = !{i64 2155202522}
!359 = !{i64 2155203023}
!360 = !{i64 2155203524}
!361 = !{i64 2155203759}
!362 = !{i64 2155204193}
!363 = !{i64 2155204603}
!364 = !{i64 2155205019}
!365 = !{i64 2155205451}
!366 = !{i64 2155206183}
!367 = !{i64 2155206419}
!368 = !{i64 2155046335}
!369 = !{i64 2155051954}
!370 = !{i64 2155224986}
!371 = !{i64 2155225414}
!372 = !{i64 2155225842}
!373 = !{i64 2155220434, i64 2155220925, i64 2155220471, i64 2155220527, i64 2155220561, i64 2155220585, i64 2155220626, i64 2155220647, i64 2155220675, i64 2155220709}
!374 = !{i64 2155206907}
!375 = !{i64 2155207385}
!376 = !{i64 2155209907}
!377 = !{i64 2155216669}
!378 = !{i64 2155258024}
!379 = !{i64 2155258256}
!380 = !{i64 2155217355}
!381 = !{i64 2155217766}
!382 = !{i64 2155219166}
!383 = !{i64 2154986488}
!384 = !{i64 2154986989}
!385 = !{i64 2154987490}
!386 = !{i64 2154987991}
!387 = !{i64 2154988492}
!388 = !{i64 2154988993}
!389 = !{i64 2154989494}
!390 = !{i64 2154989995}
!391 = !{i64 2154990496}
!392 = !{i64 2154990997}
!393 = !{i64 2154991498}
!394 = !{i64 2154991999}
!395 = !{i64 2154992500}
!396 = !{i64 2154993001}
!397 = !{i64 2155244685}
!398 = !{i64 2155243971}
!399 = !{i64 2155244954}
!400 = !{i64 2155259541}
!401 = !{i64 2155263309}
!402 = !{i64 2155263831}
