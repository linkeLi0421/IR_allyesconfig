; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/omap_hsmmc.c_pt.bc'
source_filename = "../drivers/mmc/host/omap_hsmmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_mmc_of_data = type { i32, i8 }
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
%struct.omap_hsmmc_platform_data = type { ptr, i32, i8, i16, i32, i32, i8, i32, ptr, ptr, i32 }
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
%struct.omap_hsmmc_host = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, i32, %struct.spinlock, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.omap_hsmmc_next, ptr }
%struct.omap_hsmmc_next = type { i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_omap_hsmmc__317_2134_omap_hsmmc_driver_init6 = internal global ptr @omap_hsmmc_driver_init, section ".initcall6.init", align 4
@omap_hsmmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_hsmmc_probe, ptr @omap_hsmmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @omap_mmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_hsmmc_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_hsmmc_driver_exit = internal global ptr @omap_hsmmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description318 = internal constant [62 x i8] c"omap_hsmmc.description=OMAP High Speed Multimedia Card driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [44 x i8] c"omap_hsmmc.file=drivers/mmc/host/omap_hsmmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [23 x i8] c"omap_hsmmc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias321 = internal constant [37 x i8] c"omap_hsmmc.alias=platform:omap_hsmmc\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [40 x i8] c"omap_hsmmc.author=Texas Instruments Inc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap_hsmmc\00", [21 x i8] zeroinitializer }, align 32
@omap_mmc_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-hsmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-pre-es3-hsmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_pre_es3_mmc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-hsmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-hsmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_mmc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am33xx-hsmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_mmc_of_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@omap_hsmmc_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_hsmmc_suspend, ptr @omap_hsmmc_resume, ptr @omap_hsmmc_suspend, ptr @omap_hsmmc_resume, ptr @omap_hsmmc_suspend, ptr @omap_hsmmc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_hsmmc_runtime_suspend, ptr @omap_hsmmc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1789, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Platform Data is missing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_hsmmc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mmc/host/omap_hsmmc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry_ptr = internal global ptr @omap_hsmmc_probe._entry, section ".printk_index", align 4
@omap_hsmmc_ops = internal global { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr @omap_hsmmc_post_req, ptr @omap_hsmmc_pre_req, ptr @omap_hsmmc_request, ptr null, ptr @omap_hsmmc_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr @omap_hsmmc_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&host->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1850, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"multiblock reads disabled due to 35xx erratum 2.1.1.128; MMC read performance may suffer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry_ptr.11 = internal global ptr @omap_hsmmc_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmchsdb_fck\00", [20 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1869, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable debounce clk\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry_ptr.16 = internal global ptr @omap_hsmmc_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1897, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RX DMA channel request failed\0A\00", [33 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry_ptr.20 = internal global ptr @omap_hsmmc_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1904, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TX DMA channel request failed\0A\00", [33 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry_ptr.24 = internal global ptr @omap_hsmmc_probe._entry.22, section ".printk_index", align 4
@omap_hsmmc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1924, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to grab HSMMC IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_hsmmc_probe._entry_ptr.27 = internal global ptr @omap_hsmmc_probe._entry.25, section ".printk_index", align 4
@dev_attr_slot_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @omap_hsmmc_show_slot_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,dual-volt\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,non-removable\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,needs-special-reset\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti,needs-special-hs-handling\00", [35 x i8] zeroinitializer }, align 32
@omap_hsmmc_pre_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1202, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[%s] invalid cookie: data->host_cookie %d host->next_data.cookie %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"omap_hsmmc_pre_dma_transfer\00", [36 x i8] zeroinitializer }, align 32
@omap_hsmmc_pre_dma_transfer._entry_ptr = internal global ptr @omap_hsmmc_pre_dma_transfer._entry, section ".printk_index", align 4
@omap_hsmmc_prepare_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MMC start dma failure\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_hsmmc_prepare_data\00", [40 x i8] zeroinitializer }, align 32
@omap_hsmmc_prepare_data._entry_ptr = internal global ptr @omap_hsmmc_prepare_data._entry, section ".printk_index", align 4
@omap_hsmmc_setup_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"prep_slave_sg() failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_hsmmc_setup_dma_transfer\00", [34 x i8] zeroinitializer }, align 32
@omap_hsmmc_setup_dma_transfer._entry_ptr = internal global ptr @omap_hsmmc_setup_dma_transfer._entry, section ".printk_index", align 4
@omap_hsmmc_set_ios.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 1, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_hsmmc_set_ios\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Switch operation failed\0A\00", [39 x i8] zeroinitializer }, align 32
@omap_hsmmc_set_pbias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pbias reg enable fail\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_hsmmc_set_pbias\00", [43 x i8] zeroinitializer }, align 32
@omap_hsmmc_set_pbias._entry_ptr = internal global ptr @omap_hsmmc_set_pbias._entry, section ".printk_index", align 4
@omap_hsmmc_set_pbias._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pbias reg disable fail\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_hsmmc_set_pbias._entry_ptr.44 = internal global ptr @omap_hsmmc_set_pbias._entry.42, section ".printk_index", align 4
@omap_hsmmc_enable_supply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vmmc_aux reg enable failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_hsmmc_enable_supply\00", [39 x i8] zeroinitializer }, align 32
@omap_hsmmc_enable_supply._entry_ptr = internal global ptr @omap_hsmmc_enable_supply._entry, section ".printk_index", align 4
@omap_hsmmc_disable_supply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vmmc_aux reg disable failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_hsmmc_disable_supply\00", [38 x i8] zeroinitializer }, align 32
@omap_hsmmc_disable_supply._entry_ptr = internal global ptr @omap_hsmmc_disable_supply._entry, section ".printk_index", align 4
@omap_hsmmc_disable_supply._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vmmc_aux re-enable failed\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_hsmmc_disable_supply._entry_ptr.51 = internal global ptr @omap_hsmmc_disable_supply._entry.49, section ".printk_index", align 4
@omap_hsmmc_switch_opcond._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 1154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to switch operating voltage\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_hsmmc_switch_opcond\00", [39 x i8] zeroinitializer }, align 32
@omap_hsmmc_switch_opcond._entry_ptr = internal global ptr @omap_hsmmc_switch_opcond._entry, section ".printk_index", align 4
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@omap_hsmmc_stop_clock.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_hsmmc_stop_clock\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MMC Clock is not stopped\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_hsmmc_do_irq.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_hsmmc_do_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AC12 err: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@omap_hsmmc_dbg_report_irq.omap_hsmmc_status_bits = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.61, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @.str.61, ptr @.str.61, ptr @.str.61, ptr @.str.61, ptr @.str.61, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.61, ptr @.str.74, ptr @.str.61, ptr @.str.61, ptr @.str.61, ptr @.str.75, ptr @.str.76, ptr @.str.61, ptr @.str.61], [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CC\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TC\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BGE\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"---\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BWR\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BRR\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CIRQ\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OBI\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ERRI\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CTO\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCRC\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CEB\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CIE\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DTO\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCRC\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DEB\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACE\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CERR\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BADA\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MMC IRQ 0x%x :\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap_hsmmc_reset_controller_fsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 997, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Timeout waiting on controller reset in %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"omap_hsmmc_reset_controller_fsm\00", [32 x i8] zeroinitializer }, align 32
@omap_hsmmc_reset_controller_fsm._entry_ptr = internal global ptr @omap_hsmmc_reset_controller_fsm._entry, section ".printk_index", align 4
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vmmc_aux\00", [23 x i8] zeroinitializer }, align 32
@omap_hsmmc_reg_get.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_hsmmc_reg_get\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to get vmmc_aux regulator %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pbias\00", [26 x i8] zeroinitializer }, align 32
@omap_hsmmc_reg_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.82, ptr @.str.3, i32 442, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"SD card detect fail? enable CONFIG_REGULATOR_PBIAS\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_hsmmc_reg_get._entry_ptr = internal global ptr @omap_hsmmc_reg_get._entry, section ".printk_index", align 4
@omap_hsmmc_reg_get.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.3, ptr @.str.86, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to get pbias regulator %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_hsmmc_disable_boot_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fail to disable boot enabled vmmc reg\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"omap_hsmmc_disable_boot_regulators\00", [61 x i8] zeroinitializer }, align 32
@omap_hsmmc_disable_boot_regulators._entry_ptr = internal global ptr @omap_hsmmc_disable_boot_regulators._entry, section ".printk_index", align 4
@omap_hsmmc_disable_boot_regulators._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fail to disable boot enabled vmmc_aux reg\0A\00", [53 x i8] zeroinitializer }, align 32
@omap_hsmmc_disable_boot_regulators._entry_ptr.91 = internal global ptr @omap_hsmmc_disable_boot_regulators._entry.89, section ".printk_index", align 4
@omap_hsmmc_disable_boot_regulators._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to disable boot enabled pbias reg\0A\00", [54 x i8] zeroinitializer }, align 32
@omap_hsmmc_disable_boot_regulators._entry_ptr.94 = internal global ptr @omap_hsmmc_disable_boot_regulators._entry.92, section ".printk_index", align 4
@omap_hsmmc_configure_wake_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 1552, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to request wake IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_hsmmc_configure_wake_irq\00", [34 x i8] zeroinitializer }, align 32
@omap_hsmmc_configure_wake_irq._entry_ptr = internal global ptr @omap_hsmmc_configure_wake_irq._entry, section ".printk_index", align 4
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@omap_hsmmc_configure_wake_irq._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.96, ptr @.str.3, i32 1568, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missing idle pinctrl state\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_hsmmc_configure_wake_irq._entry_ptr.100 = internal global ptr @omap_hsmmc_configure_wake_irq._entry.98, section ".printk_index", align 4
@omap_hsmmc_configure_wake_irq._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.96, ptr @.str.3, i32 1583, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no SDIO IRQ support, falling back to polling\0A\00", [50 x i8] zeroinitializer }, align 32
@omap_hsmmc_configure_wake_irq._entry_ptr.103 = internal global ptr @omap_hsmmc_configure_wake_irq._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slot_name\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@mmc_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mmc_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmc%d:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdio irq mode\09%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interrupt\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"polling\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdio irq \09%s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx_loss:\09%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0Aregs:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CON:\09\090x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PSTATE:\09\090x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HCTL:\09\090x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SYSCTL:\09\090x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IE:\09\090x%08x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ISE:\09\090x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CAPA:\09\090x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@omap3_pre_es3_mmc_of_data = internal constant { %struct.omap_mmc_of_data, [24 x i8] } { %struct.omap_mmc_of_data { i32 0, i8 2 }, [24 x i8] zeroinitializer }, align 32
@omap4_mmc_of_data = internal constant { %struct.omap_mmc_of_data, [24 x i8] } { %struct.omap_mmc_of_data { i32 256, i8 0 }, [24 x i8] zeroinitializer }, align 32
@am33xx_mmc_of_data = internal constant { %struct.omap_mmc_of_data, [24 x i8] } { %struct.omap_mmc_of_data { i32 256, i8 4 }, [24 x i8] zeroinitializer }, align 32
@omap_hsmmc_runtime_suspend.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.3, ptr @.str.124, i8 2, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_hsmmc_runtime_suspend\00", [37 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@omap_hsmmc_runtime_suspend.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.3, ptr @.str.125, i8 2, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pending sdio irq, abort suspend\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_hsmmc_runtime_resume.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.3, ptr @.str.127, i8 2, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_hsmmc_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabled\0A\00", [23 x i8] zeroinitializer }, align 32
@omap_hsmmc_context_restore.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.3, ptr @.str.129, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_hsmmc_context_restore\00", [37 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"context is restored: restore count %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"omap_hsmmc_driver\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 2123, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 2127, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"omap_mmc_of_match\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1703, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"omap_hsmmc_dev_pm_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 2118, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1789, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"omap_hsmmc_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1621, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1840, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1842, i32 40 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1850, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1862, i32 41 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1869, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1895, i32 47 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1897, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1902, i32 47 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1904, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1924, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [19 x i8] c"dev_attr_slot_name\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1739, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1742, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1747, i32 27 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1750, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1200, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1378, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1278, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1489, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 291, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 300, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 232, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 256, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 274, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1154, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 477, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1052, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant [23 x i8] c"omap_hsmmc_status_bits\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 935, i32 21 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 936, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 936, i32 11 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 936, i32 19 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 936, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 936, i32 33 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 936, i32 41 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 937, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 937, i32 11 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 937, i32 57 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 938, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 938, i32 11 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 938, i32 19 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 938, i32 26 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 938, i32 33 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 938, i32 41 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 938, i32 49 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 939, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 939, i32 33 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 939, i32 41 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 945, i32 21 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 950, i32 23 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 995, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 427, i32 9 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 432, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 437, i32 55 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 441, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 445, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 393, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 399, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 406, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1552, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1567, i32 38 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1568, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1583, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 750, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 747, i32 22 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1677, i32 23 }
@___asan_gen_.478 = private unnamed_addr constant [14 x i8] c"mmc_regs_fops\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1672, i32 1 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1638, i32 16 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1639, i32 16 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1640, i32 39 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1640, i32 53 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1643, i32 17 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1644, i32 49 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1645, i32 9 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1647, i32 16 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1650, i32 14 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1651, i32 16 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1653, i32 16 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1655, i32 16 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1657, i32 16 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1659, i32 16 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1661, i32 16 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1663, i32 16 }
@___asan_gen_.529 = private unnamed_addr constant [26 x i8] c"omap3_pre_es3_mmc_of_data\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1690, i32 38 }
@___asan_gen_.532 = private unnamed_addr constant [18 x i8] c"omap4_mmc_of_data\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1695, i32 38 }
@___asan_gen_.535 = private unnamed_addr constant [19 x i8] c"am33xx_mmc_of_data\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1698, i32 38 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 2057, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 2072, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 2098, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.557 = private constant [33 x i8] c"../drivers/mmc/host/omap_hsmmc.c\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 687, i32 2 }
@llvm.compiler.used = appending global [173 x ptr] [ptr @__UNIQUE_ID_alias321, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__exitcall_omap_hsmmc_driver_exit, ptr @__initcall__kmod_omap_hsmmc__317_2134_omap_hsmmc_driver_init6, ptr @omap_hsmmc_configure_wake_irq._entry, ptr @omap_hsmmc_configure_wake_irq._entry.101, ptr @omap_hsmmc_configure_wake_irq._entry.98, ptr @omap_hsmmc_configure_wake_irq._entry_ptr, ptr @omap_hsmmc_configure_wake_irq._entry_ptr.100, ptr @omap_hsmmc_configure_wake_irq._entry_ptr.103, ptr @omap_hsmmc_disable_boot_regulators._entry, ptr @omap_hsmmc_disable_boot_regulators._entry.89, ptr @omap_hsmmc_disable_boot_regulators._entry.92, ptr @omap_hsmmc_disable_boot_regulators._entry_ptr, ptr @omap_hsmmc_disable_boot_regulators._entry_ptr.91, ptr @omap_hsmmc_disable_boot_regulators._entry_ptr.94, ptr @omap_hsmmc_disable_supply._entry, ptr @omap_hsmmc_disable_supply._entry.49, ptr @omap_hsmmc_disable_supply._entry_ptr, ptr @omap_hsmmc_disable_supply._entry_ptr.51, ptr @omap_hsmmc_driver_exit, ptr @omap_hsmmc_enable_supply._entry, ptr @omap_hsmmc_enable_supply._entry_ptr, ptr @omap_hsmmc_pre_dma_transfer._entry, ptr @omap_hsmmc_pre_dma_transfer._entry_ptr, ptr @omap_hsmmc_prepare_data._entry, ptr @omap_hsmmc_prepare_data._entry_ptr, ptr @omap_hsmmc_probe._entry, ptr @omap_hsmmc_probe._entry.13, ptr @omap_hsmmc_probe._entry.18, ptr @omap_hsmmc_probe._entry.22, ptr @omap_hsmmc_probe._entry.25, ptr @omap_hsmmc_probe._entry.8, ptr @omap_hsmmc_probe._entry_ptr, ptr @omap_hsmmc_probe._entry_ptr.11, ptr @omap_hsmmc_probe._entry_ptr.16, ptr @omap_hsmmc_probe._entry_ptr.20, ptr @omap_hsmmc_probe._entry_ptr.24, ptr @omap_hsmmc_probe._entry_ptr.27, ptr @omap_hsmmc_reg_get._entry, ptr @omap_hsmmc_reg_get._entry_ptr, ptr @omap_hsmmc_reset_controller_fsm._entry, ptr @omap_hsmmc_reset_controller_fsm._entry_ptr, ptr @omap_hsmmc_set_pbias._entry, ptr @omap_hsmmc_set_pbias._entry.42, ptr @omap_hsmmc_set_pbias._entry_ptr, ptr @omap_hsmmc_set_pbias._entry_ptr.44, ptr @omap_hsmmc_setup_dma_transfer._entry, ptr @omap_hsmmc_setup_dma_transfer._entry_ptr, ptr @omap_hsmmc_switch_opcond._entry, ptr @omap_hsmmc_switch_opcond._entry_ptr, ptr @omap_hsmmc_driver, ptr @.str, ptr @omap_mmc_of_match, ptr @omap_hsmmc_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @omap_hsmmc_ops, ptr @omap_hsmmc_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @dev_attr_slot_name, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @omap_hsmmc_dbg_report_irq.omap_hsmmc_status_bits, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @mmc_regs_fops, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @omap3_pre_es3_mmc_of_data, ptr @omap4_mmc_of_data, ptr @am33xx_mmc_of_data, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mmc_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_slot_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_pre_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_prepare_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_setup_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_set_pbias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_set_pbias._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_enable_supply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_disable_supply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_disable_supply._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_switch_opcond._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_dbg_report_irq.omap_hsmmc_status_bits to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_reset_controller_fsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_reg_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_disable_boot_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_disable_boot_regulators._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_disable_boot_regulators._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_configure_wake_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_configure_wake_irq._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hsmmc_configure_wake_irq._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pre_es3_mmc_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_mmc_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_mmc_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_hsmmc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_hsmmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_hsmmc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @omap_mmc_of_match, ptr noundef %dev) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.if.then5_crit_edge, label %if.end.i

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %name.i = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %name7.i = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %call.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %name7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name7.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %land.lhs.true.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %call9.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef null) #10
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then11.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %controller_flags.i = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %call.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %controller_flags.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %controller_flags.i, align 4
  %11 = or i8 %10, 1
  store i8 %11, ptr %controller_flags.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end13.i_crit_edge
  %call14.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.29, ptr noundef null) #10
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.if.end20.i_crit_edge, label %if.then16.i

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %nonremovable.i = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %call.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %nonremovable.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %nonremovable.i, align 4
  %bf.set19.i = or i8 %bf.load.i, -64
  store i8 %bf.set19.i, ptr %nonremovable.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end20.i_crit_edge
  %call21.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef null) #10
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.end20.i.if.end25.i_crit_edge, label %if.then23.i

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %features.i = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %call.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features.i, align 4
  %or24.i = or i32 %14, 2
  store i32 %or24.i, ptr %features.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end25.i_crit_edge
  %call26.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef null) #10
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end25.i.of_get_hsmmc_pdata.exit_crit_edge, label %if.then28.i

if.end25.i.of_get_hsmmc_pdata.exit_crit_edge:     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_hsmmc_pdata.exit

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %features29.i = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %call.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %features29.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %features29.i, align 4
  %or30.i = or i32 %16, 4
  store i32 %or30.i, ptr %features29.i, align 4
  br label %of_get_hsmmc_pdata.exit

of_get_hsmmc_pdata.exit:                          ; preds = %if.then28.i, %if.end25.i.of_get_hsmmc_pdata.exit_crit_edge
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %of_get_hsmmc_pdata.exit.if.then5_crit_edge, label %if.end

of_get_hsmmc_pdata.exit.if.then5_crit_edge:       ; preds = %of_get_hsmmc_pdata.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %of_get_hsmmc_pdata.exit.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %retval.0.i431 = phi ptr [ %call.i.i, %of_get_hsmmc_pdata.exit.if.then5_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.if.then5_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i431 to i32
  br label %cleanup

if.end:                                           ; preds = %of_get_hsmmc_pdata.exit
  %data7 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data7, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %if.end.if.end21_crit_edge, label %if.then9

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %conv = trunc i32 %21 to i16
  %reg_offset11 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %call.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %reg_offset11 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %reg_offset11, align 2
  %controller_flags = getelementptr inbounds %struct.omap_mmc_of_data, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %controller_flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %controller_flags, align 4
  %controller_flags13 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %call.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %controller_flags13 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %controller_flags13, align 4
  %or397 = or i8 %26, %24
  store i8 %or397, ptr %controller_flags13, align 4
  br label %if.end21

if.end17:                                         ; preds = %entry
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end17.if.end21_crit_edge, %if.then9, %if.end.if.end21_crit_edge
  %pdata.0434 = phi ptr [ %1, %if.end17.if.end21_crit_edge ], [ %call.i.i, %if.then9 ], [ %call.i.i, %if.end.if.end21_crit_edge ]
  %call22 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %cmp24 = icmp eq ptr %call22, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp26 = icmp slt i32 %call23, 0
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp26
  br i1 %or.cond, label %if.end21.cleanup_crit_edge, label %if.end29

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %call31 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call22) #10
  %cmp.i398 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i398, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %call37 = tail call ptr @mmc_alloc_host(i32 noundef 184, ptr noundef %dev) #10
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %call41 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.err1_crit_edge

if.end40.err1_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1

if.end44:                                         ; preds = %if.end40
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 70
  %mmc46 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %private.i, i32 0, i32 1
  %28 = ptrtoint ptr %mmc46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call37, ptr %mmc46, align 4
  %pdata47 = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 9, i32 1
  %29 = ptrtoint ptr %pdata47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pdata.0434, ptr %pdata47, align 4
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %private.i, align 4
  %use_dma = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %use_dma to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %use_dma, align 4
  %dma_ch = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %dma_ch, align 4
  %irq50 = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  %33 = ptrtoint ptr %irq50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call23, ptr %irq50, align 4
  %34 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call22, align 4
  %reg_offset51 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %pdata.0434, i32 0, i32 3
  %36 = ptrtoint ptr %reg_offset51 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %reg_offset51, align 2
  %conv52 = zext i16 %37 to i32
  %add = add i32 %35, %conv52
  %mapbase = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %38 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add, ptr %mapbase, align 4
  %39 = load i16, ptr %reg_offset51, align 2
  %conv54 = zext i16 %39 to i32
  %add.ptr = getelementptr i8, ptr %call31, i32 %conv54
  %base55 = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 6
  %40 = ptrtoint ptr %base55 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %base55, align 4
  %power_mode = getelementptr inbounds %struct.omap_hsmmc_host, ptr %private.i, i32 0, i32 16
  %41 = ptrtoint ptr %power_mode to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %power_mode, align 1
  %cookie = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 9
  %42 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %cookie, align 4
  %pbias_enabled = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 5
  %43 = ptrtoint ptr %pbias_enabled to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %pbias_enabled, align 4
  %vqmmc_enabled = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 7
  %44 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %vqmmc_enabled, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 8
  %tobool57.not = icmp eq ptr %47, null
  br i1 %tobool57.not, label %if.end44.if.end62_crit_edge, label %if.then58

if.end44.if.end62_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then58:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %call61 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %47, i32 noundef 1) #10
  %wake_irq = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %48 = ptrtoint ptr %wake_irq to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call61, ptr %wake_irq, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end44.if.end62_crit_edge
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 3
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @omap_hsmmc_ops, ptr %ops, align 4
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 5
  %50 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 400000, ptr %f_min, align 4
  %max_freq = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %pdata.0434, i32 0, i32 1
  %51 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp63.not = icmp eq i32 %52, 0
  %f_max67 = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 6
  br i1 %cmp63.not, label %if.else, label %if.end62.do.body74.sink.split_crit_edge

if.end62.do.body74.sink.split_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body74.sink.split

if.else:                                          ; preds = %if.end62
  %53 = ptrtoint ptr %f_max67 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_max67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp68 = icmp eq i32 %54, 0
  br i1 %cmp68, label %if.else.do.body74.sink.split_crit_edge, label %if.else.do.body74_crit_edge

if.else.do.body74_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body74

if.else.do.body74.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body74.sink.split

do.body74.sink.split:                             ; preds = %if.else.do.body74.sink.split_crit_edge, %if.end62.do.body74.sink.split_crit_edge
  %.sink = phi i32 [ %52, %if.end62.do.body74.sink.split_crit_edge ], [ 52000000, %if.else.do.body74.sink.split_crit_edge ]
  %55 = ptrtoint ptr %f_max67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink, ptr %f_max67, align 8
  br label %do.body74

do.body74:                                        ; preds = %do.body74.sink.split, %if.else.do.body74_crit_edge
  %irq_lock = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @omap_hsmmc_probe.__key, i16 noundef signext 3) #10
  %call79 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %fclk = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call79, ptr %fclk, align 4
  %cmp.i399 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i399, label %if.then82, label %if.end86

if.then82:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %call79 to i32
  %58 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %fclk, align 4
  br label %err1

if.end86:                                         ; preds = %do.body74
  %59 = ptrtoint ptr %pdata47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdata47, align 4
  %controller_flags88 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %controller_flags88 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %controller_flags88, align 4
  %63 = and i8 %62, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool90.not = icmp eq i8 %63, 0
  br i1 %tobool90.not, label %if.end86.if.end96_crit_edge, label %do.end94

if.end86.if.end96_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.end94:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  store ptr @omap_hsmmc_multi_io_quirk, ptr getelementptr inbounds (%struct.mmc_host_ops, ptr @omap_hsmmc_ops, i32 0, i32 22), align 4
  br label %if.end96

if.end96:                                         ; preds = %do.end94, %if.end86.if.end96_crit_edge
  %call98 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #10
  %64 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %private.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %65) #10
  %66 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %private.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %67, i32 noundef 4) #10
  %68 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %private.i, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %69, i32 noundef 100) #10
  %70 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %private.i, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %71, i1 noundef zeroext true) #10
  tail call fastcc void @omap_hsmmc_context_save(ptr noundef %private.i)
  %call105 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  %dbclk = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 3
  %72 = ptrtoint ptr %dbclk to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call105, ptr %dbclk, align 4
  %cmp.i400 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i400, label %if.end96.if.end122.sink.split_crit_edge, label %if.else110

if.end96.if.end122.sink.split_crit_edge:          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122.sink.split

if.else110:                                       ; preds = %if.end96
  %call112 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call105)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113.not = icmp eq i32 %call112, 0
  br i1 %cmp113.not, label %if.else110.if.end122_crit_edge, label %do.end118

if.else110.if.end122_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

do.end118:                                        ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %mmc46 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc46, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.14) #13
  br label %if.end122.sink.split

if.end122.sink.split:                             ; preds = %do.end118, %if.end96.if.end122.sink.split_crit_edge
  %77 = ptrtoint ptr %dbclk to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %dbclk, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end122.sink.split, %if.else110.if.end122_crit_edge
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 21
  %78 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 64, ptr %max_segs, align 4
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 24
  %79 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 512, ptr %max_blk_size, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 25
  %80 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 65535, ptr %max_blk_count, align 128
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 23
  %81 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 33553920, ptr %max_req_size, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 16
  %82 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %caps, align 32
  %or125 = or i32 %83, 1073742342
  store i32 %or125, ptr %caps, align 32
  %84 = ptrtoint ptr %pdata47 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata47, align 4
  %caps127 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %caps127 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %caps127, align 4
  %or129 = or i32 %87, %or125
  %and131 = lshr i32 %or129, 6
  %88 = and i32 %and131, 1
  %89 = or i32 %88, %or129
  store i32 %89, ptr %caps, align 32
  %nonremovable = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %85, i32 0, i32 6
  %90 = ptrtoint ptr %nonremovable to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load = load i8, ptr %nonremovable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool138.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool138.not, label %if.end122.if.end142_crit_edge, label %if.then139

if.end122.if.end142_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

if.then139:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %or141 = or i32 %89, 256
  %91 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or141, ptr %caps, align 32
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.end122.if.end142_crit_edge
  %92 = ptrtoint ptr %pdata47 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdata47, align 4
  %pm_caps = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %pm_caps to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pm_caps, align 4
  %pm_caps144 = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 19
  %96 = ptrtoint ptr %pm_caps144 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pm_caps144, align 4
  %or145 = or i32 %97, %95
  store i32 %or145, ptr %pm_caps144, align 4
  tail call fastcc void @omap_hsmmc_conf_bus_power(ptr noundef %private.i)
  %call147 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  %rx_chan = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 1
  %98 = ptrtoint ptr %rx_chan to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call147, ptr %rx_chan, align 4
  %cmp.i401 = icmp ugt ptr %call147, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i401, label %do.end153, label %if.end158

do.end153:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %mmc46 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmc46, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.19) #13
  %103 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_chan, align 4
  %105 = ptrtoint ptr %104 to i32
  br label %err_irq

if.end158:                                        ; preds = %if.end142
  %call160 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  %tx_chan = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 8
  %106 = ptrtoint ptr %tx_chan to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call160, ptr %tx_chan, align 4
  %cmp.i402 = icmp ugt ptr %call160, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i402, label %do.end166, label %if.end171

do.end166:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %mmc46 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmc46, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.23) #13
  %111 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tx_chan, align 4
  %113 = ptrtoint ptr %112 to i32
  br label %err_irq

if.end171:                                        ; preds = %if.end158
  %114 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %max_req_size, align 8
  %116 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rx_chan, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %dev174 = getelementptr inbounds %struct.dma_device, ptr %119, i32 0, i32 15
  %120 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev174, align 4
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %121, i32 0, i32 22
  %122 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i403 = icmp eq ptr %123, null
  br i1 %tobool.not.i403, label %if.end171.if.end.i405_crit_edge, label %land.lhs.true.i404

if.end171.if.end.i405_crit_edge:                  ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i405

land.lhs.true.i404:                               ; preds = %if.end171
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool2.not.i = icmp eq i32 %125, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i404.if.end.i405_crit_edge, label %land.lhs.true.i404.dma_get_max_seg_size.exit_crit_edge

land.lhs.true.i404.dma_get_max_seg_size.exit_crit_edge: ; preds = %land.lhs.true.i404
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_get_max_seg_size.exit

land.lhs.true.i404.if.end.i405_crit_edge:         ; preds = %land.lhs.true.i404
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i405

if.end.i405:                                      ; preds = %land.lhs.true.i404.if.end.i405_crit_edge, %if.end171.if.end.i405_crit_edge
  br label %dma_get_max_seg_size.exit

dma_get_max_seg_size.exit:                        ; preds = %if.end.i405, %land.lhs.true.i404.dma_get_max_seg_size.exit_crit_edge
  %retval.0.i406 = phi i32 [ 65536, %if.end.i405 ], [ %125, %land.lhs.true.i404.dma_get_max_seg_size.exit_crit_edge ]
  %126 = tail call i32 @llvm.umin.i32(i32 %115, i32 %retval.0.i406)
  %127 = ptrtoint ptr %call160 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call160, align 4
  %dev180 = getelementptr inbounds %struct.dma_device, ptr %128, i32 0, i32 15
  %129 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev180, align 4
  %dma_parms.i407 = getelementptr inbounds %struct.device, ptr %130, i32 0, i32 22
  %131 = ptrtoint ptr %dma_parms.i407 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dma_parms.i407, align 4
  %tobool.not.i408 = icmp eq ptr %132, null
  br i1 %tobool.not.i408, label %dma_get_max_seg_size.exit.if.end.i411_crit_edge, label %land.lhs.true.i410

dma_get_max_seg_size.exit.if.end.i411_crit_edge:  ; preds = %dma_get_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i411

land.lhs.true.i410:                               ; preds = %dma_get_max_seg_size.exit
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool2.not.i409 = icmp eq i32 %134, 0
  br i1 %tobool2.not.i409, label %land.lhs.true.i410.if.end.i411_crit_edge, label %land.lhs.true.i410.dma_get_max_seg_size.exit413_crit_edge

land.lhs.true.i410.dma_get_max_seg_size.exit413_crit_edge: ; preds = %land.lhs.true.i410
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_get_max_seg_size.exit413

land.lhs.true.i410.if.end.i411_crit_edge:         ; preds = %land.lhs.true.i410
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i411

if.end.i411:                                      ; preds = %land.lhs.true.i410.if.end.i411_crit_edge, %dma_get_max_seg_size.exit.if.end.i411_crit_edge
  br label %dma_get_max_seg_size.exit413

dma_get_max_seg_size.exit413:                     ; preds = %if.end.i411, %land.lhs.true.i410.dma_get_max_seg_size.exit413_crit_edge
  %retval.0.i412 = phi i32 [ 65536, %if.end.i411 ], [ %134, %land.lhs.true.i410.dma_get_max_seg_size.exit413_crit_edge ]
  %135 = tail call i32 @llvm.umin.i32(i32 %126, i32 %retval.0.i412)
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 20
  %136 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %max_seg_size, align 16
  %137 = ptrtoint ptr %irq50 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %irq50, align 4
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 1, i32 3
  %139 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i414 = icmp eq ptr %140, null
  br i1 %tobool.not.i414, label %if.end.i415, label %dma_get_max_seg_size.exit413.dev_name.exit_crit_edge

dma_get_max_seg_size.exit413.dev_name.exit_crit_edge: ; preds = %dma_get_max_seg_size.exit413
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i415:                                      ; preds = %dma_get_max_seg_size.exit413
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i415, %dma_get_max_seg_size.exit413.dev_name.exit_crit_edge
  %retval.0.i416 = phi ptr [ %142, %if.end.i415 ], [ %140, %dma_get_max_seg_size.exit413.dev_name.exit_crit_edge ]
  %call.i417 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %138, ptr noundef nonnull @omap_hsmmc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i416, ptr noundef %private.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i417)
  %tobool193.not = icmp eq i32 %call.i417, 0
  br i1 %tobool193.not, label %if.end200, label %do.end197

do.end197:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %mmc46 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mmc46, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.26) #13
  br label %err_irq

if.end200:                                        ; preds = %dev_name.exit
  %call201 = tail call fastcc i32 @omap_hsmmc_reg_get(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end204, label %if.end200.err_irq_crit_edge

if.end200.err_irq_crit_edge:                      ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_irq

if.end204:                                        ; preds = %if.end200
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 8
  %147 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ocr_avail, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool205.not = icmp eq i32 %148, 0
  br i1 %tobool205.not, label %if.then206, label %if.end204.if.end209_crit_edge

if.end204.if.end209_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

if.then206:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #12
  %149 = ptrtoint ptr %pdata47 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdata47, align 4
  %ocr_mask = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %150, i32 0, i32 10
  %151 = ptrtoint ptr %ocr_mask to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ocr_mask, align 4
  %153 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %ocr_avail, align 64
  br label %if.end209

if.end209:                                        ; preds = %if.then206, %if.end204.if.end209_crit_edge
  tail call fastcc void @omap_hsmmc_disable_irq(ptr noundef %private.i)
  %call210 = tail call fastcc i32 @omap_hsmmc_configure_wake_irq(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.then212, label %if.end209.if.end215_crit_edge

if.end209.if.end215_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end215

if.then212:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  %154 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %caps, align 32
  %or214 = or i32 %155, 8
  store i32 %or214, ptr %caps, align 32
  br label %if.end215

if.end215:                                        ; preds = %if.then212, %if.end209.if.end215_crit_edge
  %call216 = tail call i32 @mmc_add_host(ptr noundef nonnull %call37) #10
  %156 = ptrtoint ptr %pdata47 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pdata47, align 4
  %name = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %157, i32 0, i32 9
  %158 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %name, align 4
  %cmp218.not = icmp eq ptr %159, null
  br i1 %cmp218.not, label %if.end215.if.end227_crit_edge, label %if.then220

if.end215.if.end227_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227

if.then220:                                       ; preds = %if.end215
  %call222 = tail call i32 @device_create_file(ptr noundef %class_dev, ptr noundef nonnull @dev_attr_slot_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %err_slot_name, label %if.then220.if.end227_crit_edge

if.then220.if.end227_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227

if.end227:                                        ; preds = %if.then220.if.end227_crit_edge, %if.end215.if.end227_crit_edge
  %debugfs_root.i = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 0, i32 55
  %160 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %debugfs_root.i, align 8
  %tobool.not.i418 = icmp eq ptr %161, null
  br i1 %tobool.not.i418, label %if.end227.omap_hsmmc_debugfs.exit_crit_edge, label %if.then.i

if.end227.omap_hsmmc_debugfs.exit_crit_edge:      ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_hsmmc_debugfs.exit

if.then.i:                                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  %call.i419 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.106, i16 noundef zeroext 256, ptr noundef nonnull %161, ptr noundef nonnull %call37, ptr noundef nonnull @mmc_regs_fops) #10
  br label %omap_hsmmc_debugfs.exit

omap_hsmmc_debugfs.exit:                          ; preds = %if.then.i, %if.end227.omap_hsmmc_debugfs.exit_crit_edge
  %162 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %private.i, align 4
  %call.i421 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %163, i32 0, i32 12, i32 22
  %164 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store volatile i64 %call.i421, ptr %last_busy.i, align 8
  %165 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %private.i, align 4
  %call.i422 = tail call i32 @__pm_runtime_suspend(ptr noundef %166, i32 noundef 13) #10
  br label %cleanup

err_slot_name:                                    ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mmc_remove_host(ptr noundef nonnull %call37) #10
  br label %err_irq

err_irq:                                          ; preds = %err_slot_name, %if.end200.err_irq_crit_edge, %do.end197, %do.end166, %do.end153
  %ret.0 = phi i32 [ %105, %do.end153 ], [ %113, %do.end166 ], [ %call.i417, %do.end197 ], [ %call201, %if.end200.err_irq_crit_edge ], [ %call222, %err_slot_name ]
  %call232 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #10
  %tx_chan233 = getelementptr inbounds %struct.mmc_host, ptr %call37, i32 1, i32 1, i32 0, i32 8
  %167 = ptrtoint ptr %tx_chan233 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tx_chan233, align 4
  %tobool.not.i423 = icmp eq ptr %168, null
  %cmp.i424 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i423, %cmp.i424
  br i1 %spec.select.i, label %err_irq.if.end237_crit_edge, label %if.then235

err_irq.if.end237_crit_edge:                      ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237

if.then235:                                       ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %168) #10
  br label %if.end237

if.end237:                                        ; preds = %if.then235, %err_irq.if.end237_crit_edge
  %169 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rx_chan, align 4
  %tobool.not.i425 = icmp eq ptr %170, null
  %cmp.i426 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  %spec.select.i427 = or i1 %tobool.not.i425, %cmp.i426
  br i1 %spec.select.i427, label %if.end237.if.end242_crit_edge, label %if.then240

if.end237.if.end242_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end242

if.then240:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %170) #10
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %if.end237.if.end242_crit_edge
  %171 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %private.i, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %172, i1 noundef zeroext false) #10
  %173 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %private.i, align 4
  %call.i428 = tail call i32 @__pm_runtime_idle(ptr noundef %174, i32 noundef 4) #10
  %175 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %private.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %176, i1 noundef zeroext true) #10
  %177 = ptrtoint ptr %dbclk to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dbclk, align 4
  tail call void @clk_disable(ptr noundef %178) #10
  tail call void @clk_unprepare(ptr noundef %178) #10
  br label %err1

err1:                                             ; preds = %if.end242, %if.then82, %if.end40.err1_crit_edge
  %ret.1 = phi i32 [ %call41, %if.end40.err1_crit_edge ], [ %57, %if.then82 ], [ %ret.0, %if.end242 ]
  tail call void @mmc_free_host(ptr noundef nonnull %call37) #10
  br label %cleanup

cleanup:                                          ; preds = %err1, %omap_hsmmc_debugfs.exit, %if.end35.cleanup_crit_edge, %if.then33, %if.end21.cleanup_crit_edge, %do.end, %if.then5
  %retval.0 = phi i32 [ %17, %if.then5 ], [ -6, %do.end ], [ %27, %if.then33 ], [ 0, %omap_hsmmc_debugfs.exit ], [ -6, %if.end21.cleanup_crit_edge ], [ %ret.1, %err1 ], [ -12, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 4
  tail call void @mmc_remove_host(ptr noundef %5) #10
  %tx_chan = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_chan, align 4
  tail call void @dma_release_channel(ptr noundef %7) #10
  %rx_chan = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_chan, align 4
  tail call void @dma_release_channel(ptr noundef %9) #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %11) #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %13, i1 noundef zeroext false) #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i20 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %17, i1 noundef zeroext true) #10
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call8 = tail call i32 @device_init_wakeup(ptr noundef %dev7, i1 noundef zeroext false) #10
  %dbclk = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %dbclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dbclk, align 4
  tail call void @clk_disable(ptr noundef %19) #10
  tail call void @clk_unprepare(ptr noundef %19) #10
  %20 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmc, align 4
  tail call void @mmc_free_host(ptr noundef %21) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_hsmmc_multi_io_quirk(ptr nocapture noundef readnone %card, i32 noundef %direction, i32 noundef %blk_size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %direction)
  %cmp = icmp eq i32 %direction, 512
  %.blk_size = select i1 %cmp, i32 1, i32 %blk_size
  ret i32 %.blk_size
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_context_save(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  %con = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 18
  %3 = ptrtoint ptr %con to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %con, align 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 296
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !289
  %hctl = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 19
  %7 = ptrtoint ptr %hctl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %hctl, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 300
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !289
  %sysctl = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 20
  %11 = ptrtoint ptr %sysctl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sysctl, align 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 320
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !289
  %capa = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 21
  %15 = ptrtoint ptr %capa to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %capa, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_conf_bus_power(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 35
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %controller_flags = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %controller_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %controller_flags, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %. = select i1 %tobool.not, i32 2560, i32 3072
  %.16 = select i1 %tobool.not, i32 67108864, i32 100663296
  %base = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 296
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  %and1 = and i32 %7, -3585
  %or = or i32 %and1, %.
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #10, !srcloc !290
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 320
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !289
  %or7 = or i32 %12, %.16
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %or7) #10, !srcloc !290
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 296
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !289
  %or.i = or i32 %17, 256
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %or.i) #10, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %20 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp15.not.i = icmp eq i32 %20, 0
  br i1 %cmp15.not.i, label %entry.set_sd_bus_power.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.set_sd_bus_power.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_sd_bus_power.exit

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %do.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %22, i32 296
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !289
  %and.i = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %for.body.i.set_sd_bus_power.exit_crit_edge

for.body.i.set_sd_bus_power.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_sd_bus_power.exit

do.end.i:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !291
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !292
  %inc.i = add nuw i32 %i.016.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %24 = load i32, ptr @loops_per_jiffy, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.set_sd_bus_power.exit_crit_edge

do.end.i.set_sd_bus_power.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_sd_bus_power.exit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

set_sd_bus_power.exit:                            ; preds = %do.end.i.set_sd_bus_power.exit_crit_edge, %for.body.i.set_sd_bus_power.exit_crit_edge, %entry.set_sd_bus_power.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.omap_hsmmc_host, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 304
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  %and15 = and i32 %2, 830406963
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not16 = icmp eq i32 %and15, 0
  br i1 %tobool.not16, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %req_in_progress = getelementptr inbounds %struct.omap_hsmmc_host, ptr %dev_id, i32 0, i32 31
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %dev_id, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.body.lr.ph
  %status.017 = phi i32 [ %2, %while.body.lr.ph ], [ %16, %if.end5.while.body_crit_edge ]
  %3 = ptrtoint ptr %req_in_progress to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %req_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @omap_hsmmc_do_irq(ptr noundef %dev_id, i32 noundef %status.017)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %and2 = and i32 %status.017, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %5 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmc, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %10(ptr noundef %6, i32 noundef 0) #10
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 49
  %11 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 47
  %12 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then4.if.end5_crit_edge, label %if.then.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %13) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %if.then4.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %15, i32 304
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !289
  %and = and i32 %16, 830406963
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_hsmmc_reg_get(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %call = tail call i32 @mmc_regulator_get_supply(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54, i32 1
  %2 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqmmc, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %call4 = tail call ptr @devm_regulator_get_optional(ptr noundef %5, ptr noundef nonnull @.str.81) #10
  %6 = ptrtoint ptr %vqmmc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %vqmmc, align 4
  %cmp.i104 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then10, label %if.then3.if.end29_crit_edge

if.then3.if.end29_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then10:                                        ; preds = %if.then3
  %cmp.not = icmp eq ptr %call4, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.then10.do.body_crit_edge, label %land.lhs.true

if.then10.do.body_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.then10
  %7 = ptrtoint ptr %call4 to i32
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.then10.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hsmmc_reg_get.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hsmmc_reg_get, %if.then22)) #10
          to label %if.end29 [label %if.then22], !srcloc !293

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %14 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vqmmc, align 4
  %16 = ptrtoint ptr %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hsmmc_reg_get.__UNIQUE_ID_ddebug304, ptr noundef %13, ptr noundef nonnull @.str.83, i32 noundef %16) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %do.body, %if.then3.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %call31 = tail call ptr @devm_regulator_get_optional(ptr noundef %18, ptr noundef nonnull @.str.84) #10
  %pbias = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 7
  %19 = ptrtoint ptr %pbias to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call31, ptr %pbias, align 4
  %cmp.i105 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then34, label %if.end29.if.end67_crit_edge

if.end29.if.end67_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then34:                                        ; preds = %if.end29
  %20 = ptrtoint ptr %call31 to i32
  %cmp37.not = icmp eq ptr %call31, inttoptr (i32 -19 to ptr)
  br i1 %cmp37.not, label %if.then34.do.body48_crit_edge, label %land.lhs.true38

if.then34.do.body48_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body48

land.lhs.true38:                                  ; preds = %if.then34
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 4
  %of_node40 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node40, align 8
  %tobool41.not = icmp eq ptr %24, null
  br i1 %tobool41.not, label %land.lhs.true38.do.body48_crit_edge, label %do.end45

land.lhs.true38.do.body48_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body48

do.end45:                                         ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.85) #13
  br label %cleanup

do.body48:                                        ; preds = %land.lhs.true38.do.body48_crit_edge, %if.then34.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hsmmc_reg_get.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hsmmc_reg_get, %if.then60)) #10
          to label %if.end67 [label %if.then60], !srcloc !293

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host, align 4
  %27 = ptrtoint ptr %pbias to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pbias, align 4
  %29 = ptrtoint ptr %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hsmmc_reg_get.__UNIQUE_ID_ddebug305, ptr noundef %26, ptr noundef nonnull @.str.86, i32 noundef %29) #10
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %do.body48, %if.end29.if.end67_crit_edge
  %pdata = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 35
  %30 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata, align 4
  %no_regulator_off_init = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %no_regulator_off_init to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %no_regulator_off_init, align 4
  %33 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool68.not = icmp eq i8 %33, 0
  br i1 %tobool68.not, label %if.end70, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end70:                                         ; preds = %if.end67
  %34 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmc1, align 4
  %supply.i = getelementptr inbounds %struct.mmc_host, ptr %35, i32 0, i32 54
  %36 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %supply.i, align 16
  %cmp.i.i.i = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end70.if.end.i_crit_edge, label %if.end.i.i

if.end70.if.end.i_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end70
  %call1.i.i = tail call i32 @regulator_is_enabled(ptr noundef %37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %call3.i.i = tail call i32 @regulator_enable(ptr noundef %37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.then2.i.i.cleanup.sink.split.i_crit_edge

if.then2.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end6.i.i:                                      ; preds = %if.then2.i.i
  %call7.i.i = tail call i32 @regulator_disable(ptr noundef %37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end.i_crit_edge, label %if.end6.i.i.cleanup.sink.split.i_crit_edge

if.end6.i.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end6.i.i.if.end.i_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end6.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %if.end70.if.end.i_crit_edge
  %vqmmc.i = getelementptr inbounds %struct.mmc_host, ptr %35, i32 0, i32 54, i32 1
  %38 = ptrtoint ptr %vqmmc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vqmmc.i, align 4
  %cmp.i.i30.i = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i30.i, label %if.end.i.if.end10.i_crit_edge, label %if.end.i33.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end.i33.i:                                     ; preds = %if.end.i
  %call1.i31.i = tail call i32 @regulator_is_enabled(ptr noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31.i)
  %tobool.not.i32.i = icmp eq i32 %call1.i31.i, 0
  br i1 %tobool.not.i32.i, label %if.end.i33.i.if.end10.i_crit_edge, label %if.then2.i36.i

if.end.i33.i.if.end10.i_crit_edge:                ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then2.i36.i:                                   ; preds = %if.end.i33.i
  %call3.i34.i = tail call i32 @regulator_enable(ptr noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i34.i)
  %tobool4.not.i35.i = icmp eq i32 %call3.i34.i, 0
  br i1 %tobool4.not.i35.i, label %if.end6.i39.i, label %if.then2.i36.i.cleanup.sink.split.i_crit_edge

if.then2.i36.i.cleanup.sink.split.i_crit_edge:    ; preds = %if.then2.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end6.i39.i:                                    ; preds = %if.then2.i36.i
  %call7.i37.i = tail call i32 @regulator_disable(ptr noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i37.i)
  %tobool8.not.i38.i = icmp eq i32 %call7.i37.i, 0
  br i1 %tobool8.not.i38.i, label %if.end6.i39.i.if.end10.i_crit_edge, label %if.end6.i39.i.cleanup.sink.split.i_crit_edge

if.end6.i39.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.end6.i39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end6.i39.i.if.end10.i_crit_edge:               ; preds = %if.end6.i39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end6.i39.i.if.end10.i_crit_edge, %if.end.i33.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %40 = ptrtoint ptr %pbias to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pbias, align 4
  %cmp.i.i43.i = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i43.i, label %if.end10.i.cleanup_crit_edge, label %if.end.i46.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i46.i:                                     ; preds = %if.end10.i
  %call1.i44.i = tail call i32 @regulator_is_enabled(ptr noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call1.i44.i, 0
  br i1 %tobool.not.i45.i, label %if.end.i46.i.cleanup_crit_edge, label %if.then2.i49.i

if.end.i46.i.cleanup_crit_edge:                   ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i49.i:                                   ; preds = %if.end.i46.i
  %call3.i47.i = tail call i32 @regulator_enable(ptr noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i47.i)
  %tobool4.not.i48.i = icmp eq i32 %call3.i47.i, 0
  br i1 %tobool4.not.i48.i, label %if.end6.i52.i, label %if.then2.i49.i.cleanup.sink.split.i_crit_edge

if.then2.i49.i.cleanup.sink.split.i_crit_edge:    ; preds = %if.then2.i49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end6.i52.i:                                    ; preds = %if.then2.i49.i
  %call7.i50.i = tail call i32 @regulator_disable(ptr noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i50.i)
  %tobool8.not.i51.i = icmp eq i32 %call7.i50.i, 0
  br i1 %tobool8.not.i51.i, label %if.end6.i52.i.cleanup_crit_edge, label %if.end6.i52.i.cleanup.sink.split.i_crit_edge

if.end6.i52.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.end6.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end6.i52.i.cleanup_crit_edge:                  ; preds = %if.end6.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %if.end6.i52.i.cleanup.sink.split.i_crit_edge, %if.then2.i49.i.cleanup.sink.split.i_crit_edge, %if.end6.i39.i.cleanup.sink.split.i_crit_edge, %if.then2.i36.i.cleanup.sink.split.i_crit_edge, %if.end6.i.i.cleanup.sink.split.i_crit_edge, %if.then2.i.i.cleanup.sink.split.i_crit_edge
  %.str.93.sink.i = phi ptr [ @.str.87, %if.end6.i.i.cleanup.sink.split.i_crit_edge ], [ @.str.87, %if.then2.i.i.cleanup.sink.split.i_crit_edge ], [ @.str.90, %if.end6.i39.i.cleanup.sink.split.i_crit_edge ], [ @.str.90, %if.then2.i36.i.cleanup.sink.split.i_crit_edge ], [ @.str.93, %if.end6.i52.i.cleanup.sink.split.i_crit_edge ], [ @.str.93, %if.then2.i49.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call7.i.i, %if.end6.i.i.cleanup.sink.split.i_crit_edge ], [ %call3.i.i, %if.then2.i.i.cleanup.sink.split.i_crit_edge ], [ %call7.i37.i, %if.end6.i39.i.cleanup.sink.split.i_crit_edge ], [ %call3.i34.i, %if.then2.i36.i.cleanup.sink.split.i_crit_edge ], [ %call7.i50.i, %if.end6.i52.i.cleanup.sink.split.i_crit_edge ], [ %call3.i47.i, %if.then2.i49.i.cleanup.sink.split.i_crit_edge ]
  %42 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull %.str.93.sink.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end6.i52.i.cleanup_crit_edge, %if.end.i46.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %do.end45, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %do.end45 ], [ %call, %entry.cleanup_crit_edge ], [ %7, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ 0, %if.end10.i.cleanup_crit_edge ], [ 0, %if.end6.i52.i.cleanup_crit_edge ], [ 0, %if.end.i46.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_disable_irq(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %flags5 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 33
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags5, align 4
  %and = shl i32 %1, 7
  %2 = and i32 %and, 256
  %base = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !290
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %2) #10, !srcloc !290
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %8, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 -1) #10, !srcloc !290
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_hsmmc_configure_wake_irq(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup33_crit_edge, label %lor.lhs.false

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

lor.lhs.false:                                    ; preds = %entry
  %wake_irq = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 23
  %4 = ptrtoint ptr %wake_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wake_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup33_crit_edge, label %if.end

lor.lhs.false.cleanup33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %1, i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.95) #13
  br label %do.end30

if.end6:                                          ; preds = %if.end
  %pdata = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 35
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 4
  %controller_flags = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %controller_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %controller_flags, align 4
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.end6.if.end23_crit_edge, label %if.then8

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then8:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %call10 = tail call ptr @devm_pinctrl_get(ptr noundef %16) #10
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call10 to i32
  br label %err_free_irq

if.end14:                                         ; preds = %if.then8
  %call15 = tail call ptr @pinctrl_lookup_state(ptr noundef %call10, ptr noundef nonnull @.str.97) #10
  %cmp.i51 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %do.end20, label %cleanup

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.99) #13
  tail call void @devm_pinctrl_put(ptr noundef %call10) #10
  br label %err_free_irq

cleanup:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_pinctrl_put(ptr noundef %call10) #10
  br label %if.end23

if.end23:                                         ; preds = %cleanup, %if.end6.if.end23_crit_edge
  %base = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 296
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  %or = or i32 %22, 16777216
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %24, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %or) #10, !srcloc !290
  br label %cleanup33

err_free_irq:                                     ; preds = %do.end20, %if.then12
  %ret.0.ph = phi i32 [ -22, %do.end20 ], [ %17, %if.then12 ]
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %26) #10
  br label %do.end30

do.end30:                                         ; preds = %err_free_irq, %do.end
  %ret.1 = phi i32 [ %call, %do.end ], [ %ret.0.ph, %err_free_irq ]
  %27 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.102) #13
  %29 = ptrtoint ptr %wake_irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wake_irq, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %do.end30, %if.end23, %lor.lhs.false.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end30 ], [ 0, %if.end23 ], [ -19, %lor.lhs.false.cleanup33_crit_edge ], [ -19, %entry.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_hsmmc_post_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %use_dma = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %tx_chan.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %rx_chan.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %cond.in.i = select i1 %tobool.not.i, ptr %rx_chan.i, ptr %tx_chan.i
  %8 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %9 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cond.i, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sg_len, align 4
  %cond.i15 = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %12, ptr noundef %14, i32 noundef %16, i32 noundef %cond.i15, i32 noundef 0) #10
  %17 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %host_cookie, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_hsmmc_pre_req(ptr noundef %mmc, ptr nocapture noundef readonly %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %host_cookie, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %use_dma = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %tx_chan.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %rx_chan.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %cond.in.i = select i1 %tobool.not.i, ptr %rx_chan.i, ptr %tx_chan.i
  %9 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %next_data = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 8
  %tobool.not.i22 = icmp eq ptr %next_data, null
  br i1 %tobool.not.i22, label %lor.lhs.false.i, label %if.then4.if.end20.i_crit_edge

if.then4.if.end20.i_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

lor.lhs.false.i:                                  ; preds = %if.then4
  %10 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_cookie, align 4
  %cookie11.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9
  %12 = ptrtoint ptr %cookie11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cookie11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp12.not.i = icmp eq i32 %11, %13
  br i1 %cmp12.not.i, label %if.end20.thread.i, label %lor.lhs.false.i.if.end20.i_crit_edge

lor.lhs.false.i.if.end20.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %lor.lhs.false.i.if.end20.i_crit_edge, %if.then4.if.end20.i_crit_edge
  %14 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cond.i, align 4
  %dev14.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev14.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg_len.i, align 4
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call15.i = tail call i32 @dma_map_sg_attrs(ptr noundef %17, ptr noundef %19, i32 noundef %21, i32 noundef %cond.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp21.i = icmp eq i32 %call15.i, 0
  br i1 %cmp21.i, label %if.end20.i.if.then10_crit_edge, label %if.end23.i

if.end20.i.if.then10_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.end20.thread.i:                                ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 0)
  %24 = load i32, ptr null, align 2147483648
  store i32 0, ptr null, align 2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2159.i = icmp eq i32 %24, 0
  br i1 %cmp2159.i, label %if.end20.thread.i.if.then10_crit_edge, label %if.end20.thread.i.if.else31.i_crit_edge

if.end20.thread.i.if.else31.i_crit_edge:          ; preds = %if.end20.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else31.i

if.end20.thread.i.if.then10_crit_edge:            ; preds = %if.end20.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.end23.i:                                       ; preds = %if.end20.i
  br i1 %tobool.not.i22, label %if.end23.i.if.else31.i_crit_edge, label %if.then25.i

if.end23.i.if.else31.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else31.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %next_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call15.i, ptr %next_data, align 4
  %cookie27.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9
  %26 = ptrtoint ptr %cookie27.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cookie27.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %cookie27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp28.i = icmp slt i32 %inc.i, 0
  %spec.select.i = select i1 %cmp28.i, i32 1, i32 %inc.i
  %28 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select.i, ptr %host_cookie, align 4
  br label %cleanup

if.else31.i:                                      ; preds = %if.end23.i.if.else31.i_crit_edge, %if.end20.thread.i.if.else31.i_crit_edge
  %dma_len.06062.i = phi i32 [ %call15.i, %if.end23.i.if.else31.i_crit_edge ], [ %24, %if.end20.thread.i.if.else31.i_crit_edge ]
  %dma_len32.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %29 = ptrtoint ptr %dma_len32.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dma_len.06062.i, ptr %dma_len32.i, align 4
  br label %cleanup

if.then10:                                        ; preds = %if.end20.thread.i.if.then10_crit_edge, %if.end20.i.if.then10_crit_edge
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %host_cookie12 = getelementptr inbounds %struct.mmc_data, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %host_cookie12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %host_cookie12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.else31.i, %if.then25.i, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_hsmmc_request(ptr noundef %mmc, ptr noundef %req) #2 align 64 {
entry:
  %cfg.i.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %req_in_progress = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 5
  %0 = ptrtoint ptr %req_in_progress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body9, label %do.body3, !prof !294

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap_hsmmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1426, 0\0A.popsection", ""() #10, !srcloc !295
  unreachable

do.body9:                                         ; preds = %entry
  %dma_ch = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %do.end25, label %do.body17, !prof !294

do.body17:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap_hsmmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1427, 0\0A.popsection", ""() #10, !srcloc !296
  unreachable

do.end25:                                         ; preds = %do.body9
  %reqs_blocked = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 4
  %4 = ptrtoint ptr %reqs_blocked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reqs_blocked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool26.not = icmp eq i32 %5, 0
  br i1 %tobool26.not, label %do.end25.if.end29_crit_edge, label %if.then27

do.end25.if.end29_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %reqs_blocked to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reqs_blocked, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.end25.if.end29_crit_edge
  %mrq = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %7 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mrq, align 4
  %cmp30.not = icmp eq ptr %8, null
  br i1 %cmp30.not, label %if.end29.if.end52_crit_edge, label %do.end46, !prof !294

if.end29.if.end52_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.end46:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1430, i32 noundef 9, ptr noundef null) #10
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %if.end29.if.end52_crit_edge
  %9 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %req, ptr %mrq, align 4
  %fclk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fclk, align 4
  %call60 = tail call i32 @clk_get_rate(ptr noundef %11) #10
  %clk_rate = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 6
  %12 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call60, ptr %clk_rate, align 4
  %data.i = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %data1.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %data1.i, align 4
  %16 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp eq ptr %16, null
  br i1 %cmp.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %if.end52
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !290
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end70_crit_edge, label %if.then3.i

if.then.i.if.end70_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then3.i:                                       ; preds = %if.then.i
  %busy_timeout.i = getelementptr inbounds %struct.mmc_command, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %busy_timeout.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %busy_timeout.i, align 4
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 300
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !289
  %28 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clk_rate, align 4
  %and.i.i = lshr i32 %27, 6
  %shr.i.i = and i32 %and.i.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.i, 0
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 1, i32 %shr.i.i
  %div.i.i = udiv i32 %29, %spec.store.select.i.i
  %div1.i.i = udiv i32 1000000000, %div.i.i
  %mul.i = mul i32 %24, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool5.not.i = icmp eq i32 %mul.i, 0
  %narrow.i = select i1 %tobool5.not.i, i32 100000000, i32 %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i, i32 %narrow.i)
  %tobool190.not.i.i = icmp ugt i32 %div1.i.i, %narrow.i
  br i1 %tobool190.not.i.i, label %if.then3.i.set_data_timeout.exit.i_crit_edge, label %while.cond.preheader.i.i

if.then3.i.set_data_timeout.exit.i_crit_edge:     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_data_timeout.exit.i

while.cond.preheader.i.i:                         ; preds = %if.then3.i
  %div180.i.i = udiv i32 %narrow.i, %div1.i.i
  %conv181.i.i = zext i32 %div180.i.i to i64
  %and192339.i.i = and i64 %conv181.i.i, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and192339.i.i)
  %cmp193340.i.i = icmp eq i64 %and192339.i.i, 0
  br i1 %cmp193340.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.while.end.thread.i.i_crit_edge

while.cond.preheader.i.i.while.end.thread.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread.i.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %dto.0342.i.i = phi i32 [ %add195.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %timeout.1341.i.i = phi i64 [ %shl196.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %conv181.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %add195.i.i = add i32 %dto.0342.i.i, 1
  %shl196.i.i = shl i64 %timeout.1341.i.i, 1
  %30 = and i64 %timeout.1341.i.i, 1073741824
  %cmp193.i.i = icmp eq i64 %30, 0
  br i1 %cmp193.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub197.i.i = sub i32 30, %dto.0342.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add195.i.i)
  %tobool201.not.i.i = icmp eq i32 %add195.i.i, 31
  %add203.i.i = sub i32 31, %dto.0342.i.i
  %spec.select.i.i = select i1 %tobool201.not.i.i, i32 0, i32 %sub197.i.i
  %spec.select353.i.i = select i1 %tobool201.not.i.i, i32 0, i32 %add203.i.i
  br label %while.end.thread.i.i

while.end.thread.i.i:                             ; preds = %while.end.i.i, %while.cond.preheader.i.i.while.end.thread.i.i_crit_edge
  %tobool199.not352.in.in.i.i = phi i64 [ %shl196.i.i, %while.end.i.i ], [ %conv181.i.i, %while.cond.preheader.i.i.while.end.thread.i.i_crit_edge ]
  %sub197351.i.i = phi i32 [ %spec.select.i.i, %while.end.i.i ], [ 31, %while.cond.preheader.i.i.while.end.thread.i.i_crit_edge ]
  %31 = phi i32 [ %spec.select353.i.i, %while.end.i.i ], [ 32, %while.cond.preheader.i.i.while.end.thread.i.i_crit_edge ]
  %tobool199.not352.in.i.i = and i64 %tobool199.not352.in.in.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tobool199.not352.in.i.i)
  %tobool199.not352.i.i = icmp eq i64 %tobool199.not352.in.i.i, 0
  %dto.1.i.i = select i1 %tobool199.not352.i.i, i32 %sub197351.i.i, i32 %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %dto.1.i.i)
  %cmp205.i.i = icmp ugt i32 %dto.1.i.i, 12
  %sub208.i.i = add i32 %dto.1.i.i, -13
  %32 = tail call i32 @llvm.umin.i32(i32 %sub208.i.i, i32 14) #10
  %.op.i.i = shl nuw nsw i32 %32, 16
  %phi.bo.i.i = select i1 %cmp205.i.i, i32 %.op.i.i, i32 0
  br label %set_data_timeout.exit.i

set_data_timeout.exit.i:                          ; preds = %while.end.thread.i.i, %if.then3.i.set_data_timeout.exit.i_crit_edge
  %dto.3.i.i = phi i32 [ %phi.bo.i.i, %while.end.thread.i.i ], [ 0, %if.then3.i.set_data_timeout.exit.i_crit_edge ]
  %and216.i.i = and i32 %27, -983041
  %or218.i.i = or i32 %dto.3.i.i, %and216.i.i
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr220.i.i = getelementptr i8, ptr %34, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr220.i.i, i32 %or218.i.i) #10, !srcloc !290
  br label %if.end70

if.end8.i:                                        ; preds = %if.end52
  %use_dma.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %use_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool9.not.i = icmp eq i32 %36, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end70_crit_edge, label %if.then10.i

if.end8.i.if.end70_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then10.i:                                      ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i.i) #10
  %37 = getelementptr inbounds i8, ptr %cfg.i.i, i32 36
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16777215, ptr %37, align 4, !annotation !297
  %39 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %cfg.i.i, align 4
  %src_addr.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 1
  %mapbase.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %40 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mapbase.i.i, align 4
  %add.i28.i = add i32 %41, 288
  %42 = ptrtoint ptr %src_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i28.i, ptr %src_addr.i.i, align 4
  %dst_addr.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %dst_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i28.i, ptr %dst_addr.i.i, align 4
  %src_addr_width.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %src_addr_width.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %src_addr_width.i.i, align 4
  %dst_addr_width.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %dst_addr_width.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %dst_addr_width.i.i, align 4
  %src_maxburst.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 5
  %blksz.i.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 2
  %46 = ptrtoint ptr %blksz.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blksz.i.i, align 4
  %div77.i29.i = lshr i32 %47, 2
  %48 = ptrtoint ptr %src_maxburst.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div77.i29.i, ptr %src_maxburst.i.i, align 4
  %dst_maxburst.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 6
  %49 = load i32, ptr %blksz.i.i, align 4
  %div578.i.i = lshr i32 %49, 2
  %50 = ptrtoint ptr %dst_maxburst.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div578.i.i, ptr %dst_maxburst.i.i, align 4
  %src_port_window_size.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %src_port_window_size.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %src_port_window_size.i.i, align 4
  %dst_port_window_size.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %dst_port_window_size.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %dst_port_window_size.i.i, align 4
  %peripheral_config.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 10
  %53 = ptrtoint ptr %peripheral_config.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %peripheral_config.i.i, align 4
  %peripheral_size.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i.i, i32 0, i32 11
  %54 = ptrtoint ptr %peripheral_size.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %peripheral_size.i.i, align 4
  %sg_len.i.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 10
  %55 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sg_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp95.not.i30.i = icmp eq i32 %56, 0
  br i1 %cmp95.not.i30.i, label %if.then10.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.then10.i.for.end.i.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then10.i
  %sg.i.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 12
  %57 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sg.i.i, align 4
  %59 = ptrtoint ptr %blksz.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blksz.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.096.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %56
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.096.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %length.i.i = getelementptr %struct.scatterlist, ptr %58, i32 %i.096.i.i, i32 2
  %61 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length.i.i, align 4
  %rem.i31.i = urem i32 %62, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i31.i)
  %tobool.not.i32.i = icmp eq i32 %rem.i31.i, 0
  br i1 %tobool.not.i32.i, label %for.cond.i.i, label %for.body.i.i.if.then63_crit_edge

for.body.i.i.if.then63_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %if.then10.i.for.end.i.i_crit_edge
  %63 = ptrtoint ptr %blksz.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %blksz.i.i, align 4
  %rem8.i.i = and i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem8.i.i)
  %cmp9.not.i.i = icmp eq i32 %rem8.i.i, 0
  br i1 %cmp9.not.i.i, label %do.body.i.i, label %for.end.i.i.if.then63_crit_edge

for.end.i.i.if.then63_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

do.body.i.i:                                      ; preds = %for.end.i.i
  %65 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp12.not.i.i = icmp eq i32 %66, -1
  br i1 %cmp12.not.i.i, label %do.end22.i.i, label %do.body16.i.i, !prof !294

do.body16.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap_hsmmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1262, 0\0A.popsection", ""() #10, !srcloc !298
  unreachable

do.end22.i.i:                                     ; preds = %do.body.i.i
  %flags.i.i.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 6
  %67 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i33.i = and i32 %68, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i33.i, 0
  %tx_chan.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %rx_chan.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %cond.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %rx_chan.i.i.i, ptr %tx_chan.i.i.i
  %69 = ptrtoint ptr %cond.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %cond.i.i.i = load ptr, ptr %cond.in.i.i.i, align 4
  %70 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cond.i.i.i, align 4
  %device_config.i.i.i = getelementptr inbounds %struct.dma_device, ptr %71, i32 0, i32 44
  %72 = ptrtoint ptr %device_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device_config.i.i.i, align 4
  %tobool.not.i79.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i79.i.i, label %do.end22.i.i.if.then63_crit_edge, label %dmaengine_slave_config.exit.i.i

do.end22.i.i.if.then63_crit_edge:                 ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

dmaengine_slave_config.exit.i.i:                  ; preds = %do.end22.i.i
  %call.i.i.i = call i32 %73(ptr noundef %cond.i.i.i, ptr noundef nonnull %cfg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end26.i.i, label %dmaengine_slave_config.exit.i.i.if.then63_crit_edge

dmaengine_slave_config.exit.i.i.if.then63_crit_edge: ; preds = %dmaengine_slave_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

if.end26.i.i:                                     ; preds = %dmaengine_slave_config.exit.i.i
  %host_cookie.i.i.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 13
  %74 = ptrtoint ptr %host_cookie.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %host_cookie.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool1.not.i.i34.i = icmp eq i32 %75, 0
  br i1 %tobool1.not.i.i34.i, label %if.end26.i.i.lor.lhs.false.i.i.i_crit_edge, label %land.lhs.true2.i.i.i

if.end26.i.i.lor.lhs.false.i.i.i_crit_edge:       ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i.i

land.lhs.true2.i.i.i:                             ; preds = %if.end26.i.i
  %cookie.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9
  %76 = ptrtoint ptr %cookie.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cookie.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp.not.i.i35.i = icmp eq i32 %75, %77
  br i1 %cmp.not.i.i35.i, label %land.lhs.true2.i.i.i.lor.lhs.false.i.i.i_crit_edge, label %do.end.i.i.i

land.lhs.true2.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i.i

do.end.i.i.i:                                     ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %private.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %75, i32 noundef %77) #13
  %80 = ptrtoint ptr %host_cookie.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %host_cookie.i.i.i, align 4
  br label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end.i.i.i, %land.lhs.true2.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.end26.i.i.lor.lhs.false.i.i.i_crit_edge
  %81 = ptrtoint ptr %host_cookie.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %host_cookie.i.i.i, align 4
  %cookie11.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9
  %83 = ptrtoint ptr %cookie11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cookie11.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp12.not.i.i.i = icmp eq i32 %82, %84
  br i1 %cmp12.not.i.i.i, label %if.end20.thread.i.i.i, label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %85 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cond.i.i.i, align 4
  %dev14.i.i.i = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 15
  %87 = ptrtoint ptr %dev14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev14.i.i.i, align 4
  %sg.i.i.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 12
  %89 = ptrtoint ptr %sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sg.i.i.i, align 4
  %91 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sg_len.i.i, align 4
  %93 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i.i = and i32 %94, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 2, i32 1
  %call15.i.i.i = call i32 @dma_map_sg_attrs(ptr noundef %88, ptr noundef %90, i32 noundef %92, i32 noundef %cond.i.i.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %cmp21.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %cmp21.i.i.i, label %if.end20.i.i.i.if.then63_crit_edge, label %if.end20.i.i.i.if.end30.i.i_crit_edge

if.end20.i.i.i.if.end30.i.i_crit_edge:            ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

if.end20.i.i.i.if.then63_crit_edge:               ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

if.end20.thread.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %next_data10.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 8
  %95 = ptrtoint ptr %next_data10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %next_data10.i.i.i, align 4
  store i32 0, ptr %next_data10.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp2159.i.i.i = icmp eq i32 %96, 0
  br i1 %cmp2159.i.i.i, label %if.end20.thread.i.i.i.if.then63_crit_edge, label %if.end20.thread.i.i.i.if.end30.i.i_crit_edge

if.end20.thread.i.i.i.if.end30.i.i_crit_edge:     ; preds = %if.end20.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

if.end20.thread.i.i.i.if.then63_crit_edge:        ; preds = %if.end20.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

if.end30.i.i:                                     ; preds = %if.end20.thread.i.i.i.if.end30.i.i_crit_edge, %if.end20.i.i.i.if.end30.i.i_crit_edge
  %dma_len.06062.i.i.i = phi i32 [ %96, %if.end20.thread.i.i.i.if.end30.i.i_crit_edge ], [ %call15.i.i.i, %if.end20.i.i.i.if.end30.i.i_crit_edge ]
  %dma_len32.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %97 = ptrtoint ptr %dma_len32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %dma_len.06062.i.i.i, ptr %dma_len32.i.i.i, align 4
  %sg31.i.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 12
  %98 = ptrtoint ptr %sg31.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sg31.i.i, align 4
  %100 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %sg_len.i.i, align 4
  %102 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags.i.i.i, align 4
  %and.i36.i = and i32 %103, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool33.not.i.i = icmp eq i32 %and.i36.i, 0
  %cond.i.i = select i1 %tobool33.not.i.i, i32 2, i32 1
  %tobool.not.i81.i.i = icmp eq ptr %cond.i.i.i, null
  br i1 %tobool.not.i81.i.i, label %if.end30.i.i.do.end39.i.i_crit_edge, label %lor.lhs.false.i83.i.i

if.end30.i.i.do.end39.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39.i.i

lor.lhs.false.i83.i.i:                            ; preds = %if.end30.i.i
  %104 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cond.i.i.i, align 4
  %tobool1.not.i82.i.i = icmp eq ptr %105, null
  br i1 %tobool1.not.i82.i.i, label %lor.lhs.false.i83.i.i.do.end39.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i83.i.i.do.end39.i.i_crit_edge:     ; preds = %lor.lhs.false.i83.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i83.i.i
  %device_prep_slave_sg.i.i.i = getelementptr inbounds %struct.dma_device, ptr %105, i32 0, i32 39
  %106 = ptrtoint ptr %device_prep_slave_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device_prep_slave_sg.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %107, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.do.end39.i.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i.i

lor.lhs.false2.i.i.i.do.end39.i.i_crit_edge:      ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39.i.i

dmaengine_prep_slave_sg.exit.i.i:                 ; preds = %lor.lhs.false2.i.i.i
  %call.i84.i.i = call ptr %107(ptr noundef nonnull %cond.i.i.i, ptr noundef %99, i32 noundef %101, i32 noundef %cond.i.i, i32 noundef 3, ptr noundef null) #10
  %tobool35.not.i.i = icmp eq ptr %call.i84.i.i, null
  br i1 %tobool35.not.i.i, label %dmaengine_prep_slave_sg.exit.i.i.do.end39.i.i_crit_edge, label %omap_hsmmc_setup_dma_transfer.exit.i

dmaengine_prep_slave_sg.exit.i.i.do.end39.i.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %dmaengine_prep_slave_sg.exit.i.i.do.end39.i.i_crit_edge, %lor.lhs.false2.i.i.i.do.end39.i.i_crit_edge, %lor.lhs.false.i83.i.i.do.end39.i.i_crit_edge, %if.end30.i.i.do.end39.i.i_crit_edge
  %mmc.i.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %private.i, i32 0, i32 1
  %108 = ptrtoint ptr %mmc.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmc.i.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.36) #13
  br label %if.then63

omap_hsmmc_setup_dma_transfer.exit.i:             ; preds = %dmaengine_prep_slave_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i84.i.i, i32 0, i32 6
  %112 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @omap_hsmmc_dma_callback, ptr %callback.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i84.i.i, i32 0, i32 8
  %113 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %private.i, ptr %callback_param.i.i, align 4
  %tx_submit.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i84.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %tx_submit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tx_submit.i.i.i, align 4
  %call.i86.i.i = call i32 %115(ptr noundef nonnull %call.i84.i.i) #10
  %116 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %dma_ch, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i.i) #10
  br label %if.end70

if.then63:                                        ; preds = %do.end39.i.i, %if.end20.thread.i.i.i.if.then63_crit_edge, %if.end20.i.i.i.if.then63_crit_edge, %dmaengine_slave_config.exit.i.i.if.then63_crit_edge, %do.end22.i.i.if.then63_crit_edge, %for.end.i.i.if.then63_crit_edge, %for.body.i.i.if.then63_crit_edge
  %retval.2.i.ph.i = phi i32 [ -22, %if.end20.thread.i.i.i.if.then63_crit_edge ], [ -22, %if.end20.i.i.i.if.then63_crit_edge ], [ -38, %do.end22.i.i.if.then63_crit_edge ], [ %call.i.i.i, %dmaengine_slave_config.exit.i.i.if.then63_crit_edge ], [ -22, %for.end.i.i.if.then63_crit_edge ], [ -1, %do.end39.i.i ], [ -22, %for.body.i.i.if.then63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i.i) #10
  %mmc.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %private.i, i32 0, i32 1
  %117 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmc.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.34) #13
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %121 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %retval.2.i.ph.i, ptr %error, align 4
  %124 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data.i, align 4
  %tobool64.not = icmp eq ptr %125, null
  br i1 %tobool64.not, label %if.then63.if.end68_crit_edge, label %if.then65

if.then63.if.end68_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then65:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %error67 = getelementptr inbounds %struct.mmc_data, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %error67 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %retval.2.i.ph.i, ptr %error67, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.then63.if.end68_crit_edge
  %127 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %mrq, align 4
  call void @mmc_request_done(ptr noundef %mmc, ptr noundef %req) #10
  br label %cleanup

if.end70:                                         ; preds = %omap_hsmmc_setup_dma_transfer.exit.i, %if.end8.i.if.end70_crit_edge, %set_data_timeout.exit.i, %if.then.i.if.end70_crit_edge
  %128 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %req, align 4
  %tobool71.not = icmp eq ptr %129, null
  br i1 %tobool71.not, label %if.end70.if.end75_crit_edge, label %land.lhs.true

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.lhs.true:                                    ; preds = %if.end70
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 7
  %130 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags, align 4
  %and = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.then73, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then73:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @omap_hsmmc_start_command(ptr noundef %private.i, ptr noundef nonnull %129, ptr noundef null)
  br label %cleanup

if.end75:                                         ; preds = %land.lhs.true.if.end75_crit_edge, %if.end70.if.end75_crit_edge
  call fastcc void @omap_hsmmc_start_dma_transfer(ptr noundef %private.i)
  %cmd76 = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %132 = ptrtoint ptr %cmd76 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cmd76, align 4
  %134 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data.i, align 4
  call fastcc void @omap_hsmmc_start_command(ptr noundef %private.i, ptr noundef %133, ptr noundef %135)
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then73, %if.end68
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_hsmmc_set_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %0 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode, align 2
  %power_mode1 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %private.i, i32 0, i32 16
  %2 = ptrtoint ptr %power_mode1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_mode1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.then.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb9
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc i32 @omap_hsmmc_set_power(ptr noundef %private.i, i32 noundef 0)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call fastcc i32 @omap_hsmmc_set_power(ptr noundef %private.i, i32 noundef 1)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %sw.bb, %if.then.sw.epilog_crit_edge
  %do_send_init_stream.0 = phi i32 [ 0, %if.then.sw.epilog_crit_edge ], [ 1, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ]
  %5 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %power_mode, align 2
  %7 = ptrtoint ptr %power_mode1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %power_mode1, align 1
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry.if.end_crit_edge
  %do_send_init_stream.1 = phi i32 [ %do_send_init_stream.0, %sw.epilog ], [ 0, %entry.if.end_crit_edge ]
  %mmc.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %private.i, i32 0, i32 1
  %8 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc.i, align 4
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 44
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !289
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 28, i32 7
  %13 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %timing.i, align 4
  %.off.i = add i8 %14, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %and.i = and i32 %12, -524289
  %masksel.i = select i1 %switch.i, i32 524288, i32 0
  %con.0.i = or i32 %masksel.i, %and.i
  %bus_width.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 28, i32 6
  %15 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_width.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %16, label %if.end.omap_hsmmc_set_bus_width.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 2, label %sw.bb11.i
    i8 0, label %sw.bb21.i
  ]

if.end.omap_hsmmc_set_bus_width.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_hsmmc_set_bus_width.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or8.i = or i32 %con.0.i, 32
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %or8.i) #10, !srcloc !290
  br label %omap_hsmmc_set_bus_width.exit

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and12.i = and i32 %con.0.i, -33
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %and12.i) #10, !srcloc !290
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %23, i32 296
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #10, !srcloc !289
  %or18.i = or i32 %24, 2
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %26, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %or18.i) #10, !srcloc !290
  br label %omap_hsmmc_set_bus_width.exit

sw.bb21.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and22.i = and i32 %con.0.i, -33
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %28, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %and22.i) #10, !srcloc !290
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %30, i32 296
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #10, !srcloc !289
  %and28.i = and i32 %31, -3
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %33, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %and28.i) #10, !srcloc !290
  br label %omap_hsmmc_set_bus_width.exit

omap_hsmmc_set_bus_width.exit:                    ; preds = %sw.bb21.i, %sw.bb11.i, %sw.bb.i, %if.end.omap_hsmmc_set_bus_width.exit_crit_edge
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1
  %34 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata, align 4
  %controller_flags = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %controller_flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %controller_flags, align 4
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  br i1 %tobool.not, label %omap_hsmmc_set_bus_width.exit.if.end36_crit_edge, label %if.then13

omap_hsmmc_set_bus_width.exit.if.end36_crit_edge: ; preds = %omap_hsmmc_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then13:                                        ; preds = %omap_hsmmc_set_bus_width.exit
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 296
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  %and15 = and i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then13.if.end36_crit_edge, label %land.lhs.true

if.then13.if.end36_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true:                                    ; preds = %if.then13
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %42 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vdd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %43)
  %cmp18 = icmp eq i16 %43, 7
  br i1 %cmp18, label %if.then20, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then20:                                        ; preds = %land.lhs.true
  %dbclk.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %dbclk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dbclk.i, align 4
  tail call void @clk_disable(ptr noundef %45) #10
  tail call void @clk_unprepare(ptr noundef %45) #10
  %call.i = tail call fastcc i32 @omap_hsmmc_set_power(ptr noundef %private.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then20.if.end.i_crit_edge

if.then20.if.end.i_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call fastcc i32 @omap_hsmmc_set_power(ptr noundef %private.i, i32 noundef 1) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then20.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then20.if.end.i_crit_edge ], [ %call1.i, %if.then.i ]
  %46 = ptrtoint ptr %dbclk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dbclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.clk_prepare_enable.exit.i_crit_edge

if.end.i.clk_prepare_enable.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %47) #10
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %if.end.i.clk_prepare_enable.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp.not.i, label %if.end5.i, label %do.body

if.end5.i:                                        ; preds = %clk_prepare_enable.exit.i
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %49, i32 296
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #10, !srcloc !289
  %and.i57 = and i32 %50, -3585
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %52, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %and.i57) #10, !srcloc !290
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr10.i58 = getelementptr i8, ptr %54, i32 296
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i58) #10, !srcloc !289
  %or.i = or i32 %55, 2560
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %57, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %or.i) #10, !srcloc !290
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 296
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !289
  %or.i.i = or i32 %60, 256
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %62, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %or.i.i) #10, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %63 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp15.not.i.i = icmp eq i32 %63, 0
  br i1 %cmp15.not.i.i, label %if.end5.i.if.end36_crit_edge, label %if.end5.i.for.body.i.i_crit_edge

if.end5.i.for.body.i.i_crit_edge:                 ; preds = %if.end5.i
  br label %for.body.i.i

if.end5.i.if.end36_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

for.body.i.i:                                     ; preds = %do.end.i.i.for.body.i.i_crit_edge, %if.end5.i.for.body.i.i_crit_edge
  %i.016.i.i = phi i32 [ %inc.i.i, %do.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.end5.i.for.body.i.i_crit_edge ]
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %65, i32 296
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #10, !srcloc !289
  %and.i.i = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.end.i.i, label %for.body.i.i.if.end36_crit_edge

for.body.i.i.if.end36_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end.i.i:                                       ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !291
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !292
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %67 = load i32, ptr @loops_per_jiffy, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %67
  br i1 %cmp.i.i, label %do.end.i.i.for.body.i.i_crit_edge, label %do.end.i.i.if.end36_crit_edge

do.end.i.i.if.end36_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.body:                                          ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmc.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.52) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hsmmc_set_ios.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hsmmc_set_ios, %if.then31)) #10
          to label %if.end36 [label %if.then31], !srcloc !293

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmc.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hsmmc_set_ios.__UNIQUE_ID_ddebug309, ptr noundef %75, ptr noundef nonnull @.str.39) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %do.body, %do.end.i.i.if.end36_crit_edge, %for.body.i.i.if.end36_crit_edge, %if.end5.i.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.then13.if.end36_crit_edge, %omap_hsmmc_set_bus_width.exit.if.end36_crit_edge
  tail call fastcc void @omap_hsmmc_set_clock(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_send_init_stream.1)
  %tobool37.not = icmp eq i32 %do_send_init_stream.1, 0
  br i1 %tobool37.not, label %if.end36.if.end39_crit_edge, label %if.then38

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  %irq.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  %76 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %77) #10
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %79, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 830406707) #10, !srcloc !290
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %81, i32 44
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !289
  %or.i63 = or i32 %82, 2
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %84, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %or.i63) #10, !srcloc !290
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %86, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #10, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -2, %87
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp8.i = icmp slt i32 %sub.i, 0
  br i1 %cmp8.i, label %while.body.i, label %land.rhs.i.send_init_stream.exit_crit_edge

land.rhs.i.send_init_stream.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_init_stream.exit

while.body.i:                                     ; preds = %land.rhs.i
  %89 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i, align 4
  %add.ptr10.i64 = getelementptr i8, ptr %90, i32 304
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i64) #10, !srcloc !289
  %and.i65 = and i32 %91, 1
  %cmp.not.not.i = icmp eq i32 %and.i65, 0
  br i1 %cmp.not.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.send_init_stream.exit_crit_edge

while.body.i.send_init_stream.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_init_stream.exit

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

send_init_stream.exit:                            ; preds = %while.body.i.send_init_stream.exit_crit_edge, %land.rhs.i.send_init_stream.exit_crit_edge
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %93, i32 44
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #10, !srcloc !289
  %and15.i = and i32 %94, -3
  %95 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i, align 4
  %add.ptr17.i66 = getelementptr i8, ptr %96, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i66, i32 %and15.i) #10, !srcloc !290
  %97 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %98, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 -1) #10, !srcloc !290
  %99 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %100, i32 304
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #10, !srcloc !289
  %102 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %103) #10
  br label %if.end39

if.end39:                                         ; preds = %send_init_stream.exit, %if.end36.if.end39_crit_edge
  %104 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmc.i, align 4
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %107, i32 44
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #10, !srcloc !289
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %105, i32 0, i32 28, i32 3
  %109 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %bus_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp.i = icmp eq i8 %110, 1
  br i1 %cmp.i, label %if.then.i72, label %if.else.i

if.then.i72:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %or.i70 = or i32 %108, 1
  %111 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i, align 4
  %add.ptr4.i71 = getelementptr i8, ptr %112, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i71, i32 %or.i70) #10, !srcloc !290
  br label %omap_hsmmc_set_bus_mode.exit

if.else.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %and.i73 = and i32 %108, -2
  %113 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i, align 4
  %add.ptr6.i74 = getelementptr i8, ptr %114, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i74, i32 %and.i73) #10, !srcloc !290
  br label %omap_hsmmc_set_bus_mode.exit

omap_hsmmc_set_bus_mode.exit:                     ; preds = %if.else.i, %if.then.i72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_hsmmc_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %4, i32 312
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %flags13 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 7
  %6 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags13, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %7, 2
  %8 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %flags13, align 4
  %or11 = or i32 %5, 256
  %or12 = or i32 %2, 67584
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %7, -3
  %9 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %flags13, align 4
  %and14 = and i32 %5, -257
  %and15 = and i32 %2, -67585
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %irq_mask.0 = phi i32 [ %or11, %if.then ], [ %and14, %if.else ]
  %con.0 = phi i32 [ %or12, %if.then ], [ %and15, %if.else ]
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %con.0) #10, !srcloc !290
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %irq_mask.0) #10, !srcloc !290
  %req_in_progress = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 5
  %14 = ptrtoint ptr %req_in_progress to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  %brmerge = or i1 %tobool.not, %tobool20.not
  br i1 %brmerge, label %if.then22, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %irq_mask.0) #10, !srcloc !290
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end.if.end25_crit_edge
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %19, i32 308
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #10, !srcloc !289
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_start_command(ptr noundef %host, ptr noundef %cmd, ptr noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cmd, ptr %cmd1, align 4
  %use_dma.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 24
  %1 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %use_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %spec.select.i = select i1 %tobool.not.i, i32 830406707, i32 830406659
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %4)
  %cmp.i = icmp eq i32 %4, 38
  %and2.i = and i32 %spec.select.i, 829358131
  %irq_mask.1.i = select i1 %cmp.i, i32 %and2.i, i32 %spec.select.i
  %irq_lock.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 12
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #10
  %base.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #10, !srcloc !290
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %8, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %irq_mask.1.i) #10, !srcloc !290
  %flags11.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 33
  %9 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags11.i, align 4
  %and12.i = shl i32 %10, 7
  %11 = and i32 %and12.i, 256
  %12 = or i32 %11, %irq_mask.1.i
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %14, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %12) #10, !srcloc !290
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call6.i) #10
  %response_busy = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 28
  %15 = ptrtoint ptr %response_busy to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %response_busy, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %and3 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.else:                                          ; preds = %if.then
  %and7 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.if.end13_crit_edge, label %if.then9

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %response_busy to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %response_busy, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %resptype.0 = phi i32 [ 196608, %if.then9 ], [ 0, %entry.if.end13_crit_edge ], [ 65536, %if.then.if.end13_crit_edge ], [ 131072, %if.else.if.end13_crit_edge ]
  %mrq = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 2
  %19 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mrq, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop, align 4
  %cmp = icmp eq ptr %22, %cmd
  %spec.select = select i1 %cmp, i32 12582912, i32 0
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd, align 4
  %shl = shl i32 %24, 24
  %or = or i32 %shl, %resptype.0
  %or18 = or i32 %or, %spec.select
  %25 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags11.i, align 4
  %and20 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end13.if.end30_crit_edge, label %land.lhs.true

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end13
  %27 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %24, label %land.lhs.true.if.end30_crit_edge [
    i32 25, label %land.lhs.true.land.lhs.true23_crit_edge
    i32 18, label %land.lhs.true.land.lhs.true23_crit_edge81
  ]

land.lhs.true.land.lhs.true23_crit_edge81:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true23

land.lhs.true.land.lhs.true23_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true23

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true23:                                  ; preds = %land.lhs.true.land.lhs.true23_crit_edge, %land.lhs.true.land.lhs.true23_crit_edge81
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %20, align 4
  %tobool25.not = icmp eq ptr %29, null
  br i1 %tobool25.not, label %land.lhs.true23.if.end30_crit_edge, label %if.then26

land.lhs.true23.if.end30_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  %or27 = or i32 %or18, 8
  %arg = getelementptr inbounds %struct.mmc_command, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arg, align 4
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %31) #10, !srcloc !290
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %land.lhs.true23.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %if.end13.if.end30_crit_edge
  %cmdreg.0 = phi i32 [ %or27, %if.then26 ], [ %or18, %land.lhs.true23.if.end30_crit_edge ], [ %or18, %land.lhs.true.if.end30_crit_edge ], [ %or18, %if.end13.if.end30_crit_edge ]
  %tobool31.not = icmp eq ptr %data, null
  br i1 %tobool31.not, label %if.end30.if.end42_crit_edge, label %if.then32

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then32:                                        ; preds = %if.end30
  %flags34 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %34 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags34, align 4
  %and35 = and i32 %35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else39, label %if.then37

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %or38 = or i32 %cmdreg.0, 2097202
  br label %if.end42

if.else39:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %or33 = and i32 %cmdreg.0, -2097203
  %and40 = or i32 %or33, 2097186
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then37, %if.end30.if.end42_crit_edge
  %cmdreg.1 = phi i32 [ %or38, %if.then37 ], [ %and40, %if.else39 ], [ %cmdreg.0, %if.end30.if.end42_crit_edge ]
  %36 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %use_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool43.not = icmp ne i32 %37, 0
  %or45 = zext i1 %tobool43.not to i32
  %spec.select78 = or i32 %cmdreg.1, %or45
  %req_in_progress = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 31
  %38 = ptrtoint ptr %req_in_progress to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %req_in_progress, align 4
  %arg47 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %39 = ptrtoint ptr %arg47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arg47, align 4
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr49 = getelementptr i8, ptr %42, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %40) #10, !srcloc !290
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr51 = getelementptr i8, ptr %44, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %spec.select78) #10, !srcloc !290
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_start_dma_transfer(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blocks, align 4
  %shl = shl i32 %7, 16
  %or = or i32 %shl, %5
  %base = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #10, !srcloc !290
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %timeout_clks = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout_clks, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 300
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !289
  %clk_rate.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 32
  %19 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_rate.i, align 4
  %and.i = lshr i32 %18, 6
  %shr.i = and i32 %and.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 %shr.i
  %div.i = udiv i32 %20, %spec.store.select.i
  %div1.i = udiv i32 1000000000, %div.i
  %div180.i = udiv i32 %13, %div1.i
  %conv181.i = zext i32 %div180.i to i64
  %conv188.i = zext i32 %15 to i64
  %add189.i = add nuw nsw i64 %conv181.i, %conv188.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add189.i)
  %tobool190.not.i = icmp eq i64 %add189.i, 0
  br i1 %tobool190.not.i, label %if.end.set_data_timeout.exit_crit_edge, label %while.cond.preheader.i

if.end.set_data_timeout.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_data_timeout.exit

while.cond.preheader.i:                           ; preds = %if.end
  %and192339.i = and i64 %add189.i, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and192339.i)
  %cmp193340.i = icmp eq i64 %and192339.i, 0
  br i1 %cmp193340.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.thread.i_crit_edge

while.cond.preheader.i.while.end.thread.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dto.0342.i = phi i32 [ %add195.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %timeout.1341.i = phi i64 [ %shl196.i, %while.body.i.while.body.i_crit_edge ], [ %add189.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add195.i = add i32 %dto.0342.i, 1
  %shl196.i = shl i64 %timeout.1341.i, 1
  %21 = and i64 %timeout.1341.i, 1073741824
  %cmp193.i = icmp eq i64 %21, 0
  br i1 %cmp193.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub197.i = sub i32 30, %dto.0342.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add195.i)
  %tobool201.not.i = icmp eq i32 %add195.i, 31
  %add203.i = sub i32 31, %dto.0342.i
  %spec.select.i = select i1 %tobool201.not.i, i32 0, i32 %sub197.i
  %spec.select353.i = select i1 %tobool201.not.i, i32 0, i32 %add203.i
  br label %while.end.thread.i

while.end.thread.i:                               ; preds = %while.end.i, %while.cond.preheader.i.while.end.thread.i_crit_edge
  %tobool199.not352.in.in.i = phi i64 [ %shl196.i, %while.end.i ], [ %add189.i, %while.cond.preheader.i.while.end.thread.i_crit_edge ]
  %sub197351.i = phi i32 [ %spec.select.i, %while.end.i ], [ 31, %while.cond.preheader.i.while.end.thread.i_crit_edge ]
  %22 = phi i32 [ %spec.select353.i, %while.end.i ], [ 32, %while.cond.preheader.i.while.end.thread.i_crit_edge ]
  %tobool199.not352.in.i = and i64 %tobool199.not352.in.in.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tobool199.not352.in.i)
  %tobool199.not352.i = icmp eq i64 %tobool199.not352.in.i, 0
  %dto.1.i = select i1 %tobool199.not352.i, i32 %sub197351.i, i32 %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %dto.1.i)
  %cmp205.i = icmp ugt i32 %dto.1.i, 12
  %sub208.i = add i32 %dto.1.i, -13
  %23 = tail call i32 @llvm.umin.i32(i32 %sub208.i, i32 14) #10
  %.op.i = shl nuw nsw i32 %23, 16
  %phi.bo.i = select i1 %cmp205.i, i32 %.op.i, i32 0
  br label %set_data_timeout.exit

set_data_timeout.exit:                            ; preds = %while.end.thread.i, %if.end.set_data_timeout.exit_crit_edge
  %dto.3.i = phi i32 [ %phi.bo.i, %while.end.thread.i ], [ 0, %if.end.set_data_timeout.exit_crit_edge ]
  %and216.i = and i32 %18, -983041
  %or218.i = or i32 %dto.3.i, %and216.i
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr220.i = getelementptr i8, ptr %25, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr220.i, i32 %or218.i) #10, !srcloc !290
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and.i15 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i16 = icmp eq i32 %and.i15, 0
  %tx_chan.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 26
  %rx_chan.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 27
  %cond.in.i = select i1 %tobool.not.i16, ptr %rx_chan.i, ptr %tx_chan.i
  %30 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %31 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cond.i, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 50
  %33 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %34(ptr noundef %cond.i) #10
  br label %cleanup

cleanup:                                          ; preds = %set_data_timeout.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_hsmmc_dma_callback(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.omap_hsmmc_host, ptr %param, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #10
  %dma_ch = getelementptr inbounds %struct.omap_hsmmc_host, ptr %param, i32 0, i32 25
  %0 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mrq = getelementptr inbounds %struct.omap_hsmmc_host, ptr %param, i32 0, i32 2
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %rx_chan.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %param, i32 0, i32 27
  %tx_chan.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %param, i32 0, i32 26
  %cond.in.i = select i1 %tobool.not.i, ptr %rx_chan.i, ptr %tx_chan.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %11 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond.i, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %17 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_len, align 4
  %cond.i35 = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %cond.i35, i32 noundef 0) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %req_in_progress6 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %param, i32 0, i32 31
  %19 = ptrtoint ptr %req_in_progress6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %req_in_progress6, align 4
  %21 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %dma_ch, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp eq i32 %20, 0
  br i1 %tobool9.not, label %if.then10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mrq, align 4
  store ptr null, ptr %mrq, align 4
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %param, i32 0, i32 1
  %24 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc, align 4
  tail call void @mmc_request_done(ptr noundef %25, ptr noundef %23) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end5.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_hsmmc_set_power(ptr nocapture noundef %host, i32 noundef %power_on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %supply = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pbias.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 7
  %4 = ptrtoint ptr %pbias.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pbias.i, align 4
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.if.end4_crit_edge, label %if.end.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %pbias_enabled.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 8
  %6 = ptrtoint ptr %pbias_enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pbias_enabled.i, align 4, !range !299
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then13.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then13.i:                                      ; preds = %if.end.i
  %call15.i = tail call i32 @regulator_disable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end22.i, label %omap_hsmmc_set_pbias.exit

if.end22.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %pbias_enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %pbias_enabled.i, align 4
  br label %if.end4

omap_hsmmc_set_pbias.exit:                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.43) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end22.i, %if.end.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_on)
  %tobool5.not = icmp eq i32 %power_on, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %11 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %supply, align 16
  %cmp.i.i34 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i34, label %if.then6.if.end7.i_crit_edge, label %if.then.i

if.then6.if.end7.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then6
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 1
  %13 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdd.i, align 4
  %call5.i = tail call i32 @mmc_regulator_set_ocr(ptr noundef %1, ptr noundef %12, i16 noundef zeroext %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %if.then6.if.end7.i_crit_edge
  %vqmmc.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54, i32 1
  %15 = ptrtoint ptr %vqmmc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vqmmc.i, align 4
  %cmp.i44.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i, label %if.end7.i.if.end10_crit_edge, label %land.lhs.true.i

if.end7.i.if.end10_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true.i:                                  ; preds = %if.end7.i
  %vqmmc_enabled.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7
  %17 = ptrtoint ptr %vqmmc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vqmmc_enabled.i, align 4, !range !299
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not.i = icmp eq i8 %18, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %land.lhs.true.i.if.end10_crit_edge

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then11.i:                                      ; preds = %land.lhs.true.i
  %call14.i = tail call i32 @regulator_enable(ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %if.then11.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.45) #13
  %21 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %supply, align 16
  %cmp.i45.i = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45.i, label %do.end.i.cleanup_crit_edge, label %if.then23.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %vqmmc_enabled.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %vqmmc_enabled.i, align 4
  br label %if.end10

if.then23.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call26.i = tail call i32 @mmc_regulator_set_ocr(ptr noundef %1, ptr noundef %22, i16 noundef zeroext 0) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end17.i, %land.lhs.true.i.if.end10_crit_edge, %if.end7.i.if.end10_crit_edge
  %24 = ptrtoint ptr %pbias.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pbias.i, align 4
  %cmp.i.i37 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i37, label %if.end10.cleanup_crit_edge, label %if.end.i40

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i40:                                       ; preds = %if.end10
  %pbias_enabled.i38 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 8
  %26 = ptrtoint ptr %pbias_enabled.i38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pbias_enabled.i38, align 4, !range !299
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool2.not.i39 = icmp eq i8 %27, 0
  br i1 %tobool2.not.i39, label %if.then3.i, label %if.end.i40.cleanup_crit_edge

if.end.i40.cleanup_crit_edge:                     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i40
  %call5.i41 = tail call i32 @regulator_enable(ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i41)
  %tobool6.not.i = icmp eq i32 %call5.i41, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %err_set_voltage

if.end8.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %pbias_enabled.i38 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %pbias_enabled.i38, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %vqmmc.i46 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54, i32 1
  %29 = ptrtoint ptr %vqmmc.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vqmmc.i46, align 4
  %cmp.i.i47 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i47, label %if.else.if.end8.i53_crit_edge, label %land.lhs.true.i50

if.else.if.end8.i53_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i53

land.lhs.true.i50:                                ; preds = %if.else
  %vqmmc_enabled.i48 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7
  %31 = ptrtoint ptr %vqmmc_enabled.i48 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %vqmmc_enabled.i48, align 4, !range !299
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i49 = icmp eq i8 %32, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.if.end8.i53_crit_edge, label %if.then.i51

land.lhs.true.i50.if.end8.i53_crit_edge:          ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i53

if.then.i51:                                      ; preds = %land.lhs.true.i50
  %call4.i = tail call i32 @regulator_disable(ptr noundef %30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i52, label %if.then.i51.cleanup.sink.split.i_crit_edge

if.then.i51.cleanup.sink.split.i_crit_edge:       ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i52:                                       ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %vqmmc_enabled.i48 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %vqmmc_enabled.i48, align 4
  br label %if.end8.i53

if.end8.i53:                                      ; preds = %if.end.i52, %land.lhs.true.i50.if.end8.i53_crit_edge, %if.else.if.end8.i53_crit_edge
  %34 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %supply, align 16
  %cmp.i49.i = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49.i, label %if.end8.i53.cleanup_crit_edge, label %if.then11.i56

if.end8.i53.cleanup_crit_edge:                    ; preds = %if.end8.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11.i56:                                    ; preds = %if.end8.i53
  %call14.i54 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %1, ptr noundef %35, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i54)
  %tobool15.not.i55 = icmp eq i32 %call14.i54, 0
  br i1 %tobool15.not.i55, label %if.then11.i56.cleanup_crit_edge, label %err_set_ocr.i

if.then11.i56.cleanup_crit_edge:                  ; preds = %if.then11.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_set_ocr.i:                                    ; preds = %if.then11.i56
  %36 = ptrtoint ptr %vqmmc.i46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vqmmc.i46, align 4
  %cmp.i50.i = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %err_set_ocr.i.cleanup_crit_edge, label %if.then22.i

err_set_ocr.i.cleanup_crit_edge:                  ; preds = %err_set_ocr.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22.i:                                      ; preds = %err_set_ocr.i
  %call25.i = tail call i32 @regulator_enable(ptr noundef %37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then22.i.cleanup_crit_edge, label %if.then22.i.cleanup.sink.split.i_crit_edge

if.then22.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.then22.i.cleanup_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %if.then22.i.cleanup.sink.split.i_crit_edge, %if.then.i51.cleanup.sink.split.i_crit_edge
  %.str.50.sink.i = phi ptr [ @.str.47, %if.then.i51.cleanup.sink.split.i_crit_edge ], [ @.str.50, %if.then22.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call4.i, %if.then.i51.cleanup.sink.split.i_crit_edge ], [ %call14.i54, %if.then22.i.cleanup.sink.split.i_crit_edge ]
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull %.str.50.sink.i) #13
  br label %cleanup

err_set_voltage:                                  ; preds = %if.then3.i
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.40) #13
  %42 = ptrtoint ptr %vqmmc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vqmmc.i, align 4
  %cmp.i.i60 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i60, label %err_set_voltage.if.end8.i69_crit_edge, label %land.lhs.true.i63

err_set_voltage.if.end8.i69_crit_edge:            ; preds = %err_set_voltage
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i69

land.lhs.true.i63:                                ; preds = %err_set_voltage
  %vqmmc_enabled.i61 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7
  %44 = ptrtoint ptr %vqmmc_enabled.i61 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vqmmc_enabled.i61, align 4, !range !299
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i62 = icmp eq i8 %45, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i63.if.end8.i69_crit_edge, label %if.then.i66

land.lhs.true.i63.if.end8.i69_crit_edge:          ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i69

if.then.i66:                                      ; preds = %land.lhs.true.i63
  %call4.i64 = tail call i32 @regulator_disable(ptr noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i64)
  %tobool5.not.i65 = icmp eq i32 %call4.i64, 0
  br i1 %tobool5.not.i65, label %if.end.i67, label %if.then.i66.cleanup.sink.split.i80_crit_edge

if.then.i66.cleanup.sink.split.i80_crit_edge:     ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i80

if.end.i67:                                       ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %vqmmc_enabled.i61 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %vqmmc_enabled.i61, align 4
  br label %if.end8.i69

if.end8.i69:                                      ; preds = %if.end.i67, %land.lhs.true.i63.if.end8.i69_crit_edge, %err_set_voltage.if.end8.i69_crit_edge
  %47 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %supply, align 16
  %cmp.i49.i68 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49.i68, label %if.end8.i69.cleanup_crit_edge, label %if.then11.i72

if.end8.i69.cleanup_crit_edge:                    ; preds = %if.end8.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11.i72:                                    ; preds = %if.end8.i69
  %call14.i70 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %1, ptr noundef %48, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i70)
  %tobool15.not.i71 = icmp eq i32 %call14.i70, 0
  br i1 %tobool15.not.i71, label %if.then11.i72.cleanup_crit_edge, label %err_set_ocr.i74

if.then11.i72.cleanup_crit_edge:                  ; preds = %if.then11.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_set_ocr.i74:                                  ; preds = %if.then11.i72
  %49 = ptrtoint ptr %vqmmc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vqmmc.i, align 4
  %cmp.i50.i73 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i73, label %err_set_ocr.i74.cleanup_crit_edge, label %if.then22.i77

err_set_ocr.i74.cleanup_crit_edge:                ; preds = %err_set_ocr.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22.i77:                                    ; preds = %err_set_ocr.i74
  %call25.i75 = tail call i32 @regulator_enable(ptr noundef %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i75)
  %tobool26.not.i76 = icmp eq i32 %call25.i75, 0
  br i1 %tobool26.not.i76, label %if.then22.i77.cleanup_crit_edge, label %if.then22.i77.cleanup.sink.split.i80_crit_edge

if.then22.i77.cleanup.sink.split.i80_crit_edge:   ; preds = %if.then22.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i80

if.then22.i77.cleanup_crit_edge:                  ; preds = %if.then22.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split.i80:                           ; preds = %if.then22.i77.cleanup.sink.split.i80_crit_edge, %if.then.i66.cleanup.sink.split.i80_crit_edge
  %.str.50.sink.i78 = phi ptr [ @.str.47, %if.then.i66.cleanup.sink.split.i80_crit_edge ], [ @.str.50, %if.then22.i77.cleanup.sink.split.i80_crit_edge ]
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull %.str.50.sink.i78) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i80, %if.then22.i77.cleanup_crit_edge, %err_set_ocr.i74.cleanup_crit_edge, %if.then11.i72.cleanup_crit_edge, %if.end8.i69.cleanup_crit_edge, %cleanup.sink.split.i, %if.then22.i.cleanup_crit_edge, %err_set_ocr.i.cleanup_crit_edge, %if.then11.i56.cleanup_crit_edge, %if.end8.i53.cleanup_crit_edge, %if.end8.i, %if.end.i40.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then23.i, %do.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %omap_hsmmc_set_pbias.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call15.i, %omap_hsmmc_set_pbias.exit ], [ %call5.i, %if.then.i.cleanup_crit_edge ], [ %call14.i, %if.then23.i ], [ %call14.i, %do.end.i.cleanup_crit_edge ], [ 0, %if.then11.i56.cleanup_crit_edge ], [ 0, %if.end8.i53.cleanup_crit_edge ], [ %call5.i41, %if.end8.i69.cleanup_crit_edge ], [ %call5.i41, %if.then11.i72.cleanup_crit_edge ], [ %call5.i41, %err_set_ocr.i74.cleanup_crit_edge ], [ %call5.i41, %if.then22.i77.cleanup_crit_edge ], [ %call5.i41, %cleanup.sink.split.i80 ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end.i40.cleanup_crit_edge ], [ 0, %if.end8.i ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call14.i54, %err_set_ocr.i.cleanup_crit_edge ], [ %call14.i54, %if.then22.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_set_clock(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %ios1 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28
  %base.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 300
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !289
  %and.i = and i32 %4, -5
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %6, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %and.i) #10, !srcloc !290
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %8, i32 300
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !289
  %and6.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp.not.i = icmp eq i32 %and6.i, 0
  br i1 %cmp.not.i, label %entry.omap_hsmmc_stop_clock.exit_crit_edge, label %do.body.i

entry.omap_hsmmc_stop_clock.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_hsmmc_stop_clock.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hsmmc_stop_clock.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hsmmc_set_clock, %if.then10.i)) #10
          to label %omap_hsmmc_stop_clock.exit [label %if.then10.i], !srcloc !293

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hsmmc_stop_clock.__UNIQUE_ID_ddebug306, ptr noundef %13, ptr noundef nonnull @.str.55) #10
  br label %omap_hsmmc_stop_clock.exit

omap_hsmmc_stop_clock.exit:                       ; preds = %if.then10.i, %do.body.i, %entry.omap_hsmmc_stop_clock.exit_crit_edge
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 300
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  %and = and i32 %16, -1048513
  %17 = ptrtoint ptr %ios1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ios1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %omap_hsmmc_stop_clock.exit.calc_divisor.exit_crit_edge, label %if.then.i

omap_hsmmc_stop_clock.exit.calc_divisor.exit_crit_edge: ; preds = %omap_hsmmc_stop_clock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_divisor.exit

if.then.i:                                        ; preds = %omap_hsmmc_stop_clock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %fclk.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 5
  %19 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fclk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %20) #10
  %21 = ptrtoint ptr %ios1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ios1, align 4
  %add.i = add i32 %call.i, -1
  %sub.i = add i32 %add.i, %22
  %div.i = udiv i32 %sub.i, %22
  %conv.i = trunc i32 %div.i to i16
  %conv3.i = and i32 %div.i, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp.not.i78 = icmp eq i32 %conv3.i, 0
  %spec.store.select.i = select i1 %cmp.not.i78, i16 %conv.i, i16 1023
  br label %calc_divisor.exit

calc_divisor.exit:                                ; preds = %if.then.i, %omap_hsmmc_stop_clock.exit.calc_divisor.exit_crit_edge
  %dsor.0.i = phi i16 [ %spec.store.select.i, %if.then.i ], [ 0, %omap_hsmmc_stop_clock.exit.calc_divisor.exit_crit_edge ]
  %conv = zext i16 %dsor.0.i to i32
  %shl = shl nuw nsw i32 %conv, 6
  %or = or i32 %and, %shl
  %or3 = or i32 %or, 917504
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr5 = getelementptr i8, ptr %24, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or3) #10, !srcloc !290
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr7 = getelementptr i8, ptr %26, i32 300
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !289
  %or9 = or i32 %27, 1
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr11 = getelementptr i8, ptr %29, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %or9) #10, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr1482 = getelementptr i8, ptr %32, i32 300
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1482) #10, !srcloc !289
  %and1683 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1683)
  %cmp.not.not84 = icmp eq i32 %and1683, 0
  br i1 %cmp.not.not84, label %land.rhs.lr.ph, label %calc_divisor.exit.while.end_crit_edge

calc_divisor.exit.while.end_crit_edge:            ; preds = %calc_divisor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %calc_divisor.exit
  %add.neg = sub i32 -2, %30
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %land.rhs.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp18 = icmp slt i32 %sub, 0
  br i1 %cmp18, label %do.end, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !300
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !301
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr14 = getelementptr i8, ptr %36, i32 300
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #10, !srcloc !289
  %and16 = and i32 %37, 2
  %cmp.not.not = icmp eq i32 %and16, 0
  br i1 %cmp.not.not, label %do.end.land.rhs_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.end:                                        ; preds = %do.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %calc_divisor.exit.while.end_crit_edge
  %pdata = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 35
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata, align 4
  %features = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %features, align 4
  %and26 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool.not = icmp eq i32 %and26, 0
  br i1 %tobool.not, label %while.end.if.end55_crit_edge, label %land.lhs.true

while.end.if.end55_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true:                                    ; preds = %while.end
  %timing = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %42 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %timing, align 4
  %.off = add i8 %43, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true35

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true35:                                  ; preds = %land.lhs.true
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr37 = getelementptr i8, ptr %45, i32 320
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #10, !srcloc !289
  %and39 = and i32 %46, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp40.not = icmp eq i32 %and39, 0
  br i1 %cmp40.not, label %land.lhs.true35.if.end55_crit_edge, label %if.then

land.lhs.true35.if.end55_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then:                                          ; preds = %land.lhs.true35
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr43 = getelementptr i8, ptr %48, i32 296
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #10, !srcloc !289
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dsor.0.i)
  %tobool45.not = icmp eq i16 %dsor.0.i, 0
  br i1 %tobool45.not, label %if.then.if.else_crit_edge, label %land.lhs.true46

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true46:                                  ; preds = %if.then
  %fclk = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 5
  %50 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fclk, align 4
  %call47 = tail call i32 @clk_get_rate(ptr noundef %51) #10
  %div = udiv i32 %call47, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %div)
  %cmp48 = icmp ugt i32 %div, 25000000
  br i1 %cmp48, label %if.then50, label %land.lhs.true46.if.else_crit_edge

land.lhs.true46.if.else_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then50:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  %or51 = or i32 %49, 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true46.if.else_crit_edge, %if.then.if.else_crit_edge
  %and52 = and i32 %49, -5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then50
  %regval.0 = phi i32 [ %or51, %if.then50 ], [ %and52, %if.else ]
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr54 = getelementptr i8, ptr %53, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %regval.0) #10, !srcloc !290
  br label %if.end55

if.end55:                                         ; preds = %if.end, %land.lhs.true35.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %while.end.if.end55_crit_edge
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %55, i32 300
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #10, !srcloc !289
  %or.i = or i32 %56, 4
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr2.i81 = getelementptr i8, ptr %58, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i81, i32 %or.i) #10, !srcloc !290
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_do_irq(ptr noundef %host, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  %res.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %and = and i32 %status, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end50.thread, label %if.then

if.end50.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base51121 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %base51121 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base51121, align 4
  %add.ptr52122 = getelementptr i8, ptr %3, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52122, i32 %status) #10, !srcloc !290
  br label %lor.lhs.false54

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %res.i) #10
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %res.i, ptr noundef nonnull @.str.77, i32 noundef %status) #10
  %add.ptr.i = getelementptr i8, ptr %res.i, i32 %call.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %buf.01.i = phi ptr [ %add.ptr.i, %if.then ], [ %buf.1.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.02.i
  %and.i = and i32 %shl.i, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [32 x ptr], ptr @omap_hsmmc_dbg_report_irq.omap_hsmmc_status_bits, i32 0, i32 %i.02.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.01.i, ptr noundef nonnull @.str.78, ptr noundef %5) #10
  %add.ptr2.i = getelementptr i8, ptr %buf.01.i, i32 %call1.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %buf.1.i = phi ptr [ %add.ptr2.i, %if.then.i ], [ %buf.01.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %omap_hsmmc_dbg_report_irq.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

omap_hsmmc_dbg_report_irq.exit:                   ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %res.i) #10
  %and2 = and i32 %status, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %not.tobool3.not = xor i1 %tobool3.not, true
  %spec.select = zext i1 %not.tobool3.not to i32
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data1, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false, label %omap_hsmmc_dbg_report_irq.exit.if.then8_crit_edge

omap_hsmmc_dbg_report_irq.exit.if.then8_crit_edge: ; preds = %omap_hsmmc_dbg_report_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false:                                    ; preds = %omap_hsmmc_dbg_report_irq.exit
  %response_busy = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 28
  %8 = ptrtoint ptr %response_busy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %response_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %omap_hsmmc_dbg_report_irq.exit.if.then8_crit_edge
  %lnot.ext = zext i1 %tobool3.not to i32
  %response_busy10 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 28
  %10 = ptrtoint ptr %response_busy10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %response_busy10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %lor.lhs.false.if.end11_crit_edge
  %end_trans.0 = phi i32 [ %lnot.ext, %if.then8 ], [ 0, %lor.lhs.false.if.end11_crit_edge ]
  %and12 = and i32 %status, 1114112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.end11.if.end19.sink.split_crit_edge

if.end11.if.end19.sink.split_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split

if.else:                                          ; preds = %if.end11
  %and15 = and i32 %status, 543555584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.else.if.end19.sink.split_crit_edge

if.else.if.end19.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.sink.split

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19.sink.split:                              ; preds = %if.else.if.end19.sink.split_crit_edge, %if.end11.if.end19.sink.split_crit_edge
  %.sink = phi i32 [ -110, %if.end11.if.end19.sink.split_crit_edge ], [ -84, %if.else.if.end19.sink.split_crit_edge ]
  tail call fastcc void @hsmmc_command_incomplete(ptr noundef %host, i32 noundef %.sink, i32 noundef %spec.select)
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else.if.end19_crit_edge
  %and20 = and i32 %status, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end50_crit_edge, label %if.then22

if.end19.if.end50_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then22:                                        ; preds = %if.end19
  %base = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 316
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  %and23 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.then22.do.body_crit_edge

if.then22.do.body_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.then22
  %mrq = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 2
  %14 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mrq, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %land.lhs.true.do.body_crit_edge, label %if.then26

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %and27 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %and31 = and i32 %13, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %spec.select104 = select i1 %tobool32.not, i32 0, i32 -84
  %error.0 = select i1 %tobool28.not, i32 %spec.select104, i32 -110
  %error38 = getelementptr inbounds %struct.mmc_command, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %error38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %error.0, ptr %error38, align 4
  tail call fastcc void @hsmmc_command_incomplete(ptr noundef %host, i32 noundef %error.0, i32 noundef 1)
  br label %do.body

do.body:                                          ; preds = %if.then26, %land.lhs.true.do.body_crit_edge, %if.then22.do.body_crit_edge
  %end_cmd.1 = phi i32 [ %spec.select, %if.then22.do.body_crit_edge ], [ 1, %if.then26 ], [ %spec.select, %land.lhs.true.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hsmmc_do_irq.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hsmmc_do_irq, %if.then47)) #10
          to label %if.end50 [label %if.then47], !srcloc !293

if.then47:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 1
  %19 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hsmmc_do_irq.__UNIQUE_ID_ddebug308, ptr noundef %22, ptr noundef nonnull @.str.57, i32 noundef %13) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %do.body, %if.end19.if.end50_crit_edge
  %end_cmd.2 = phi i32 [ %spec.select, %if.end19.if.end50_crit_edge ], [ %end_cmd.1, %if.then47 ], [ %end_cmd.1, %do.body ]
  %base51 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %23 = ptrtoint ptr %base51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base51, align 4
  %add.ptr52 = getelementptr i8, ptr %24, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %status) #10, !srcloc !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end_cmd.2)
  %tobool53.not = icmp eq i32 %end_cmd.2, 0
  br i1 %tobool53.not, label %if.end50.lor.lhs.false54_crit_edge, label %if.end50.if.then59_crit_edge

if.end50.if.then59_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.end50.lor.lhs.false54_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %if.end50.lor.lhs.false54_crit_edge, %if.end50.thread
  %base51128 = phi ptr [ %base51121, %if.end50.thread ], [ %base51, %if.end50.lor.lhs.false54_crit_edge ]
  %end_trans.1126 = phi i32 [ 0, %if.end50.thread ], [ %end_trans.0, %if.end50.lor.lhs.false54_crit_edge ]
  %and55 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %lor.lhs.false54.if.end61_crit_edge, label %land.lhs.true57

lor.lhs.false54.if.end61_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true57:                                  ; preds = %lor.lhs.false54
  %cmd = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 3
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd, align 4
  %tobool58.not = icmp eq ptr %26, null
  br i1 %tobool58.not, label %land.lhs.true57.if.end61_crit_edge, label %land.lhs.true57.if.then59_crit_edge

land.lhs.true57.if.then59_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

land.lhs.true57.if.end61_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then59:                                        ; preds = %land.lhs.true57.if.then59_crit_edge, %if.end50.if.then59_crit_edge
  %base51127 = phi ptr [ %base51128, %land.lhs.true57.if.then59_crit_edge ], [ %base51, %if.end50.if.then59_crit_edge ]
  %end_trans.1124 = phi i32 [ %end_trans.1126, %land.lhs.true57.if.then59_crit_edge ], [ %end_trans.0, %if.end50.if.then59_crit_edge ]
  %cmd60 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 3
  %27 = ptrtoint ptr %cmd60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd60, align 4
  %mrq.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 2
  %29 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mrq.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool.not.i105 = icmp ne ptr %32, null
  %cmp.i = icmp eq ptr %28, %32
  %or.cond129 = select i1 %tobool.not.i105, i1 %cmp.i, i1 false
  br i1 %or.cond129, label %land.lhs.true4.i, label %if.then59.if.end.i_crit_edge

if.then59.if.end.i_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %if.then59
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %28, i32 0, i32 5
  %33 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool7.not.i = icmp eq i32 %34, 0
  br i1 %tobool7.not.i, label %land.lhs.true8.i, label %land.lhs.true4.i.if.end.i_crit_edge

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true4.i
  %flags.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 33
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i106 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool9.not.i = icmp eq i32 %and.i106, 0
  br i1 %tobool9.not.i, label %if.then.i107, label %land.lhs.true8.i.if.end.i_crit_edge

land.lhs.true8.i.if.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i107:                                     ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %cmd60 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %cmd60, align 4
  tail call fastcc void @omap_hsmmc_start_dma_transfer(ptr noundef %host) #10
  %38 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mrq.i, align 4
  %cmd12.i = getelementptr inbounds %struct.mmc_request, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %cmd12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmd12.i, align 4
  %data.i = getelementptr inbounds %struct.mmc_request, ptr %39, i32 0, i32 2
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  tail call fastcc void @omap_hsmmc_start_command(ptr noundef %host, ptr noundef %41, ptr noundef %43) #10
  br label %if.end61

if.end.i:                                         ; preds = %land.lhs.true8.i.if.end.i_crit_edge, %land.lhs.true4.i.if.end.i_crit_edge, %if.then59.if.end.i_crit_edge
  %44 = ptrtoint ptr %cmd60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %cmd60, align 4
  %flags15.i = getelementptr inbounds %struct.mmc_command, ptr %28, i32 0, i32 3
  %45 = ptrtoint ptr %flags15.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags15.i, align 4
  %and16.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end.i.if.end44.i_crit_edge, label %if.then18.i

if.end.i.if.end44.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.then18.i:                                      ; preds = %if.end.i
  %and20.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %47 = ptrtoint ptr %base51127 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base51127, align 4
  %add.ptr39.i = getelementptr i8, ptr %48, i32 272
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #10
  %resp41.i = getelementptr inbounds %struct.mmc_command, ptr %28, i32 0, i32 2
  br i1 %tobool21.not.i, label %if.then18.i.if.end44.sink.split.i_crit_edge, label %if.then22.i

if.then18.i.if.end44.sink.split.i_crit_edge:      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.sink.split.i

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i108 = getelementptr %struct.mmc_command, ptr %28, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx.i108, align 4
  %51 = ptrtoint ptr %base51127 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base51127, align 4
  %add.ptr24.i = getelementptr i8, ptr %52, i32 276
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #10, !srcloc !289
  %arrayidx27.i = getelementptr %struct.mmc_command, ptr %28, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx27.i, align 4
  %55 = ptrtoint ptr %base51127 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base51127, align 4
  %add.ptr29.i = getelementptr i8, ptr %56, i32 280
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #10, !srcloc !289
  %arrayidx32.i = getelementptr %struct.mmc_command, ptr %28, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx32.i, align 4
  %59 = ptrtoint ptr %base51127 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base51127, align 4
  %add.ptr34.i = getelementptr i8, ptr %60, i32 284
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #10, !srcloc !289
  br label %if.end44.sink.split.i

if.end44.sink.split.i:                            ; preds = %if.then22.i, %if.then18.i.if.end44.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %61, %if.then22.i ], [ %49, %if.then18.i.if.end44.sink.split.i_crit_edge ]
  %62 = ptrtoint ptr %resp41.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink.i, ptr %resp41.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end44.sink.split.i, %if.end.i.if.end44.i_crit_edge
  %63 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data1, align 4
  %cmp46.i = icmp eq ptr %64, null
  br i1 %cmp46.i, label %land.lhs.true47.i, label %if.end44.i.lor.lhs.false.i_crit_edge

if.end44.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

land.lhs.true47.i:                                ; preds = %if.end44.i
  %response_busy.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 28
  %65 = ptrtoint ptr %response_busy.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %response_busy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool48.not.i = icmp eq i32 %66, 0
  br i1 %tobool48.not.i, label %land.lhs.true47.i.if.then51.i_crit_edge, label %land.lhs.true47.i.lor.lhs.false.i_crit_edge

land.lhs.true47.i.lor.lhs.false.i_crit_edge:      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

land.lhs.true47.i.if.then51.i_crit_edge:          ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true47.i.lor.lhs.false.i_crit_edge, %if.end44.i.lor.lhs.false.i_crit_edge
  %error49.i = getelementptr inbounds %struct.mmc_command, ptr %28, i32 0, i32 5
  %67 = ptrtoint ptr %error49.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %error49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool50.not.i = icmp eq i32 %68, 0
  br i1 %tobool50.not.i, label %lor.lhs.false.i.if.end61_crit_edge, label %lor.lhs.false.i.if.then51.i_crit_edge

lor.lhs.false.i.if.then51.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51.i

lor.lhs.false.i.if.end61_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then51.i:                                      ; preds = %lor.lhs.false.i.if.then51.i_crit_edge, %land.lhs.true47.i.if.then51.i_crit_edge
  %69 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mrq.i, align 4
  tail call fastcc void @omap_hsmmc_request_done(ptr noundef %host, ptr noundef %70) #10
  br label %if.end61

if.end61:                                         ; preds = %if.then51.i, %lor.lhs.false.i.if.end61_crit_edge, %if.then.i107, %land.lhs.true57.if.end61_crit_edge, %lor.lhs.false54.if.end61_crit_edge
  %end_trans.1125 = phi i32 [ %end_trans.1126, %land.lhs.true57.if.end61_crit_edge ], [ %end_trans.1126, %lor.lhs.false54.if.end61_crit_edge ], [ %end_trans.1124, %if.then.i107 ], [ %end_trans.1124, %lor.lhs.false.i.if.end61_crit_edge ], [ %end_trans.1124, %if.then51.i ]
  %and64 = and i32 %status, 2
  %71 = or i32 %end_trans.1125, %and64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %if.end61.if.end70_crit_edge, label %land.lhs.true66

if.end61.if.end70_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

land.lhs.true66:                                  ; preds = %if.end61
  %mrq67 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 2
  %73 = ptrtoint ptr %mrq67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mrq67, align 4
  %tobool68.not = icmp eq ptr %74, null
  br i1 %tobool68.not, label %land.lhs.true66.if.end70_crit_edge, label %if.then69

land.lhs.true66.if.end70_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then69:                                        ; preds = %land.lhs.true66
  %tobool.not.i109 = icmp eq ptr %1, null
  br i1 %tobool.not.i109, label %if.then.i110, label %if.end8.i

if.then.i110:                                     ; preds = %if.then69
  %cmd.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 3
  %75 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cmd.i, align 4
  %tobool2.not.i = icmp eq ptr %76, null
  br i1 %tobool2.not.i, label %if.then.i110.if.end.i115_crit_edge, label %land.lhs.true.i112

if.then.i110.if.end.i115_crit_edge:               ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115

land.lhs.true.i112:                               ; preds = %if.then.i110
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %78)
  %cmp.i111 = icmp eq i32 %78, 6
  br i1 %cmp.i111, label %land.lhs.true4.i114, label %land.lhs.true.i112.if.end.i115_crit_edge

land.lhs.true.i112.if.end.i115_crit_edge:         ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115

land.lhs.true4.i114:                              ; preds = %land.lhs.true.i112
  %response_busy.i113 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 28
  %79 = ptrtoint ptr %response_busy.i113 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %response_busy.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool5.not.i = icmp eq i32 %80, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i114.if.end.i115_crit_edge, label %if.then6.i

land.lhs.true4.i114.if.end.i115_crit_edge:        ; preds = %land.lhs.true4.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115

if.then6.i:                                       ; preds = %land.lhs.true4.i114
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %response_busy.i113 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %response_busy.i113, align 4
  br label %if.end70

if.end.i115:                                      ; preds = %land.lhs.true4.i114.if.end.i115_crit_edge, %land.lhs.true.i112.if.end.i115_crit_edge, %if.then.i110.if.end.i115_crit_edge
  tail call fastcc void @omap_hsmmc_request_done(ptr noundef %host, ptr noundef nonnull %74) #10
  br label %if.end70

if.end8.i:                                        ; preds = %if.then69
  %82 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %data1, align 4
  %error.i116 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %83 = ptrtoint ptr %error.i116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %error.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool10.not.i = icmp eq i32 %84, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %if.end13.thread.i

if.end13.i:                                       ; preds = %if.end8.i
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %85 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %blocks.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %87 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %blksz.i, align 4
  %mul.i = mul i32 %88, %86
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %89 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bytes_xfered.i, align 4
  %add.i = add i32 %90, %mul.i
  store i32 %add.i, ptr %bytes_xfered.i, align 4
  %stop.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 8
  %91 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %stop.i, align 4
  %tobool14.not.i = icmp eq ptr %92, null
  br i1 %tobool14.not.i, label %if.end13.i.if.else22.i_crit_edge, label %lor.lhs.false.i117

if.end13.i.if.else22.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22.i

if.end13.thread.i:                                ; preds = %if.end8.i
  %bytes_xfered12.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %93 = ptrtoint ptr %bytes_xfered12.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %bytes_xfered12.i, align 4
  %stop43.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 8
  %94 = ptrtoint ptr %stop43.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %stop43.i, align 4
  %tobool14.not44.i = icmp eq ptr %95, null
  br i1 %tobool14.not44.i, label %if.end13.thread.i.if.else22.i_crit_edge, label %if.end13.thread.i.if.then20.i_crit_edge

if.end13.thread.i.if.then20.i_crit_edge:          ; preds = %if.end13.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.end13.thread.i.if.else22.i_crit_edge:          ; preds = %if.end13.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22.i

lor.lhs.false.i117:                               ; preds = %if.end13.i
  %96 = ptrtoint ptr %mrq67 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mrq67, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %tobool19.not.i = icmp eq ptr %99, null
  br i1 %tobool19.not.i, label %lor.lhs.false.i117.if.then20.i_crit_edge, label %lor.lhs.false.i117.if.else22.i_crit_edge

lor.lhs.false.i117.if.else22.i_crit_edge:         ; preds = %lor.lhs.false.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22.i

lor.lhs.false.i117.if.then20.i_crit_edge:         ; preds = %lor.lhs.false.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.then20.i:                                      ; preds = %lor.lhs.false.i117.if.then20.i_crit_edge, %if.end13.thread.i.if.then20.i_crit_edge
  %100 = phi ptr [ %92, %lor.lhs.false.i117.if.then20.i_crit_edge ], [ %95, %if.end13.thread.i.if.then20.i_crit_edge ]
  tail call fastcc void @omap_hsmmc_start_command(ptr noundef %host, ptr noundef nonnull %100, ptr noundef null) #10
  br label %if.end70

if.else22.i:                                      ; preds = %lor.lhs.false.i117.if.else22.i_crit_edge, %if.end13.thread.i.if.else22.i_crit_edge, %if.end13.i.if.else22.i_crit_edge
  %mrq23.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 9
  %101 = ptrtoint ptr %mrq23.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mrq23.i, align 4
  tail call fastcc void @omap_hsmmc_request_done(ptr noundef %host, ptr noundef %102) #10
  br label %if.end70

if.end70:                                         ; preds = %if.else22.i, %if.then20.i, %if.end.i115, %if.then6.i, %land.lhs.true66.if.end70_crit_edge, %if.end61.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hsmmc_command_incomplete(ptr noundef %host, i32 noundef %err, i32 noundef %end_cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end_cmd)
  %tobool.not = icmp eq i32 %end_cmd, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 300
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !289
  %or.i = or i32 %2, 33554432
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %4, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %or.i) #10, !srcloc !290
  %pdata.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 35
  %5 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata.i, align 4
  %features.i = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features.i, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %while.cond.preheader.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

while.cond.preheader.i:                           ; preds = %if.then
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr439.i = getelementptr i8, ptr %10, i32 300
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr439.i) #10, !srcloc !289
  %and640.i = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and640.i)
  %tobool7.not41.i = icmp eq i32 %and640.i, 0
  br i1 %tobool7.not41.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.if.end.i_crit_edge

while.cond.preheader.i.if.end.i_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.042.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.042.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %14, i32 300
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !289
  %and6.i = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %i.042.i)
  %cmp.i = icmp ult i32 %i.042.i, 19999
  %or.cond.i = select i1 %tobool7.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i:                                         ; preds = %while.body.i.if.end.i_crit_edge, %while.cond.preheader.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr1043.i = getelementptr i8, ptr %17, i32 300
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1043.i) #10, !srcloc !289
  %and1244.i = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1244.i)
  %tobool13.not45.not.i = icmp eq i32 %and1244.i, 0
  br i1 %tobool13.not45.not.i, label %if.end.i.while.end19.i_crit_edge, label %if.end.i.while.body18.i_crit_edge

if.end.i.while.body18.i_crit_edge:                ; preds = %if.end.i
  br label %while.body18.i

if.end.i.while.end19.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end19.i

while.body18.i:                                   ; preds = %while.body18.i.while.body18.i_crit_edge, %if.end.i.while.body18.i_crit_edge
  %i.146.i = phi i32 [ %inc15.i, %while.body18.i.while.body18.i_crit_edge ], [ 0, %if.end.i.while.body18.i_crit_edge ]
  %inc15.i = add nuw nsw i32 %i.146.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #10
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %21, i32 300
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !289
  %and12.i = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp ne i32 %and12.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %i.146.i)
  %cmp16.i = icmp ult i32 %i.146.i, 19999
  %or.cond38.i = select i1 %tobool13.not.i, i1 %cmp16.i, i1 false
  br i1 %or.cond38.i, label %while.body18.i.while.body18.i_crit_edge, label %while.body18.i.while.end19.i_crit_edge

while.body18.i.while.end19.i_crit_edge:           ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end19.i

while.body18.i.while.body18.i_crit_edge:          ; preds = %while.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body18.i

while.end19.i:                                    ; preds = %while.body18.i.while.end19.i_crit_edge, %if.end.i.while.end19.i_crit_edge
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %24, i32 300
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #10, !srcloc !289
  %and23.i = and i32 %25, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %while.end19.i.omap_hsmmc_reset_controller_fsm.exit_crit_edge, label %do.end.i

while.end19.i.omap_hsmmc_reset_controller_fsm.exit_crit_edge: ; preds = %while.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_hsmmc_reset_controller_fsm.exit

do.end.i:                                         ; preds = %while.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %mmc.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 1
  %26 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmc.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80) #13
  br label %omap_hsmmc_reset_controller_fsm.exit

omap_hsmmc_reset_controller_fsm.exit:             ; preds = %do.end.i, %while.end19.i.omap_hsmmc_reset_controller_fsm.exit_crit_edge
  %cmd = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 3
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd, align 4
  %tobool1.not = icmp eq ptr %31, null
  br i1 %tobool1.not, label %omap_hsmmc_reset_controller_fsm.exit.if.end4_crit_edge, label %if.then2

omap_hsmmc_reset_controller_fsm.exit.if.end4_crit_edge: ; preds = %omap_hsmmc_reset_controller_fsm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %omap_hsmmc_reset_controller_fsm.exit
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.mmc_command, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %err, ptr %error, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %omap_hsmmc_reset_controller_fsm.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %data = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 4
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %tobool5.not = icmp eq ptr %34, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %base.i29 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %35 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %36, i32 300
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #10, !srcloc !289
  %or.i31 = or i32 %37, 67108864
  %38 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i29, align 4
  %add.ptr2.i32 = getelementptr i8, ptr %39, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i32, i32 %or.i31) #10, !srcloc !290
  %pdata.i33 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 35
  %40 = ptrtoint ptr %pdata.i33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdata.i33, align 4
  %features.i34 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %features.i34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %features.i34, align 4
  %and.i35 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %if.then6.if.end.i52_crit_edge, label %while.cond.preheader.i40

if.then6.if.end.i52_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i52

while.cond.preheader.i40:                         ; preds = %if.then6
  %44 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i29, align 4
  %add.ptr439.i37 = getelementptr i8, ptr %45, i32 300
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr439.i37) #10, !srcloc !289
  %and640.i38 = and i32 %46, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and640.i38)
  %tobool7.not41.i39 = icmp eq i32 %and640.i38, 0
  br i1 %tobool7.not41.i39, label %while.cond.preheader.i40.while.body.i48_crit_edge, label %while.cond.preheader.i40.if.end.i52_crit_edge

while.cond.preheader.i40.if.end.i52_crit_edge:    ; preds = %while.cond.preheader.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i52

while.cond.preheader.i40.while.body.i48_crit_edge: ; preds = %while.cond.preheader.i40
  br label %while.body.i48

while.body.i48:                                   ; preds = %while.body.i48.while.body.i48_crit_edge, %while.cond.preheader.i40.while.body.i48_crit_edge
  %i.042.i41 = phi i32 [ %inc.i42, %while.body.i48.while.body.i48_crit_edge ], [ 0, %while.cond.preheader.i40.while.body.i48_crit_edge ]
  %inc.i42 = add nuw nsw i32 %i.042.i41, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #10
  %48 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i29, align 4
  %add.ptr4.i43 = getelementptr i8, ptr %49, i32 300
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i43) #10, !srcloc !289
  %and6.i44 = and i32 %50, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i44)
  %tobool7.not.i45 = icmp eq i32 %and6.i44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %i.042.i41)
  %cmp.i46 = icmp ult i32 %i.042.i41, 19999
  %or.cond.i47 = select i1 %tobool7.not.i45, i1 %cmp.i46, i1 false
  br i1 %or.cond.i47, label %while.body.i48.while.body.i48_crit_edge, label %while.body.i48.if.end.i52_crit_edge

while.body.i48.if.end.i52_crit_edge:              ; preds = %while.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i52

while.body.i48.while.body.i48_crit_edge:          ; preds = %while.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i48

if.end.i52:                                       ; preds = %while.body.i48.if.end.i52_crit_edge, %while.cond.preheader.i40.if.end.i52_crit_edge, %if.then6.if.end.i52_crit_edge
  %51 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i29, align 4
  %add.ptr1043.i49 = getelementptr i8, ptr %52, i32 300
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1043.i49) #10, !srcloc !289
  %and1244.i50 = and i32 %53, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1244.i50)
  %tobool13.not45.not.i51 = icmp eq i32 %and1244.i50, 0
  br i1 %tobool13.not45.not.i51, label %if.end.i52.while.end19.i64_crit_edge, label %if.end.i52.while.body18.i60_crit_edge

if.end.i52.while.body18.i60_crit_edge:            ; preds = %if.end.i52
  br label %while.body18.i60

if.end.i52.while.end19.i64_crit_edge:             ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end19.i64

while.body18.i60:                                 ; preds = %while.body18.i60.while.body18.i60_crit_edge, %if.end.i52.while.body18.i60_crit_edge
  %i.146.i53 = phi i32 [ %inc15.i54, %while.body18.i60.while.body18.i60_crit_edge ], [ 0, %if.end.i52.while.body18.i60_crit_edge ]
  %inc15.i54 = add nuw nsw i32 %i.146.i53, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #10
  %55 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i29, align 4
  %add.ptr10.i55 = getelementptr i8, ptr %56, i32 300
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i55) #10, !srcloc !289
  %and12.i56 = and i32 %57, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i56)
  %tobool13.not.i57 = icmp ne i32 %and12.i56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %i.146.i53)
  %cmp16.i58 = icmp ult i32 %i.146.i53, 19999
  %or.cond38.i59 = select i1 %tobool13.not.i57, i1 %cmp16.i58, i1 false
  br i1 %or.cond38.i59, label %while.body18.i60.while.body18.i60_crit_edge, label %while.body18.i60.while.end19.i64_crit_edge

while.body18.i60.while.end19.i64_crit_edge:       ; preds = %while.body18.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end19.i64

while.body18.i60.while.body18.i60_crit_edge:      ; preds = %while.body18.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body18.i60

while.end19.i64:                                  ; preds = %while.body18.i60.while.end19.i64_crit_edge, %if.end.i52.while.end19.i64_crit_edge
  %58 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i29, align 4
  %add.ptr21.i61 = getelementptr i8, ptr %59, i32 300
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i61) #10, !srcloc !289
  %and23.i62 = and i32 %60, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i62)
  %tobool24.not.i63 = icmp eq i32 %and23.i62, 0
  br i1 %tobool24.not.i63, label %while.end19.i64.omap_hsmmc_reset_controller_fsm.exit67_crit_edge, label %do.end.i66

while.end19.i64.omap_hsmmc_reset_controller_fsm.exit67_crit_edge: ; preds = %while.end19.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_hsmmc_reset_controller_fsm.exit67

do.end.i66:                                       ; preds = %while.end19.i64
  call void @__sanitizer_cov_trace_pc() #12
  %mmc.i65 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 1
  %61 = ptrtoint ptr %mmc.i65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmc.i65, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80) #13
  br label %omap_hsmmc_reset_controller_fsm.exit67

omap_hsmmc_reset_controller_fsm.exit67:           ; preds = %do.end.i66, %while.end19.i64.omap_hsmmc_reset_controller_fsm.exit67_crit_edge
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %err, ptr %error.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #10
  %dma_ch5.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 25
  %68 = ptrtoint ptr %dma_ch5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_ch5.i, align 4
  store i32 -1, ptr %dma_ch5.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #10
  %use_dma.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 24
  %70 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %use_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i68 = icmp eq i32 %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp8.not.i = icmp eq i32 %69, -1
  %or.cond.i69 = select i1 %tobool.not.i68, i1 true, i1 %cmp8.not.i
  br i1 %or.cond.i69, label %omap_hsmmc_reset_controller_fsm.exit67.omap_hsmmc_dma_cleanup.exit_crit_edge, label %if.then.i

omap_hsmmc_reset_controller_fsm.exit67.omap_hsmmc_dma_cleanup.exit_crit_edge: ; preds = %omap_hsmmc_reset_controller_fsm.exit67
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_hsmmc_dma_cleanup.exit

if.then.i:                                        ; preds = %omap_hsmmc_reset_controller_fsm.exit67
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %75, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %tx_chan.i.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 26
  %rx_chan.i.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 27
  %cond.in.i.i = select i1 %tobool.not.i.i, ptr %rx_chan.i.i, ptr %tx_chan.i.i
  %76 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %77 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cond.i.i, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %78, i32 0, i32 47
  %79 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i32.i = icmp eq ptr %80, null
  br i1 %tobool.not.i32.i, label %if.then.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

if.then.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 %80(ptr noundef %cond.i.i) #10
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %if.then.i.dmaengine_terminate_all.exit.i_crit_edge
  %81 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cond.i.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 4
  %85 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %86, i32 0, i32 12
  %87 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %86, i32 0, i32 10
  %89 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sg_len.i, align 4
  %flags.i33.i = getelementptr inbounds %struct.mmc_data, ptr %86, i32 0, i32 6
  %91 = ptrtoint ptr %flags.i33.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i33.i, align 4
  %and.i34.i = and i32 %92, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i)
  %tobool.not.i35.i = icmp eq i32 %and.i34.i, 0
  %cond.i36.i = select i1 %tobool.not.i35.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %84, ptr noundef %88, i32 noundef %90, i32 noundef %cond.i36.i, i32 noundef 0) #10
  %93 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data, align 4
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %94, i32 0, i32 13
  %95 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %host_cookie.i, align 4
  br label %omap_hsmmc_dma_cleanup.exit

omap_hsmmc_dma_cleanup.exit:                      ; preds = %dmaengine_terminate_all.exit.i, %omap_hsmmc_reset_controller_fsm.exit67.omap_hsmmc_dma_cleanup.exit_crit_edge
  %96 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %data, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end4
  %mrq = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 2
  %97 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mrq, align 4
  %tobool7.not = icmp eq ptr %98, null
  br i1 %tobool7.not, label %if.else.if.end16_crit_edge, label %land.lhs.true

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.else
  %cmd9 = getelementptr inbounds %struct.mmc_request, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %cmd9 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cmd9, align 4
  %tobool10.not = icmp eq ptr %100, null
  br i1 %tobool10.not, label %land.lhs.true.if.end16_crit_edge, label %if.then11

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %error14 = getelementptr inbounds %struct.mmc_command, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %error14 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %err, ptr %error14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %land.lhs.true.if.end16_crit_edge, %if.else.if.end16_crit_edge, %omap_hsmmc_dma_cleanup.exit
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_request_done(ptr noundef %host, ptr noundef %mrq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %req_in_progress = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 31
  %0 = ptrtoint ptr %req_in_progress to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %req_in_progress, align 4
  %dma_ch5 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 25
  %1 = ptrtoint ptr %dma_ch5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dma_ch5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %flags5.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 33
  %3 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags5.i, align 4
  %and.i = shl i32 %4, 7
  %5 = and i32 %and.i, 256
  %base.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #10, !srcloc !290
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %9, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %5) #10, !srcloc !290
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 -1) #10, !srcloc !290
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2.i) #10
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %use_dma = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 24
  %14 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp9.not = icmp eq i32 %2, -1
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mrq11 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 2
  %16 = ptrtoint ptr %mrq11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %mrq11, align 4
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 1
  %17 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc, align 4
  tail call void @mmc_request_done(ptr noundef %18, ptr noundef %mrq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_show_slot_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr i8, ptr %dev, i32 2092
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %name = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.105, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mmc_regs_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_regs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %index = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.107, i32 noundef %3) #10
  %caps = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.110, ptr @.str.109
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.108, ptr noundef nonnull %cond) #10
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 32
  %and2 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 7
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and4 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.113, ptr @.str.112
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.111, ptr noundef nonnull %cond6) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %context_loss = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 3
  %10 = ptrtoint ptr %context_loss to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %context_loss, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.114, i32 noundef %11) #10
  %12 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.115) #10
  %base = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 6
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 44
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.116, i32 noundef %16) #10
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %18, i32 292
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !289
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.117, i32 noundef %19) #10
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %21, i32 296
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !289
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.118, i32 noundef %22) #10
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %24, i32 300
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #10, !srcloc !289
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, i32 noundef %25) #10
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %27, i32 308
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !289
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, i32 noundef %28) #10
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %30, i32 312
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #10, !srcloc !289
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.121, i32 noundef %31) #10
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %33, i32 320
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !289
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.122, i32 noundef %34) #10
  %35 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private.i, align 4
  %call.i56 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 12, i32 22
  %37 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store volatile i64 %call.i56, ptr %last_busy.i, align 8
  %38 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private.i, align 4
  %call.i57 = tail call i32 @__pm_runtime_suspend(ptr noundef %39, i32 noundef 13) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 4
  %pm_flags = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 51
  %6 = ptrtoint ptr %pm_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pm_flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !290
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #10, !srcloc !290
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1) #10, !srcloc !290
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 296
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !289
  %and12 = and i32 %16, -257
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %18, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %and12) #10, !srcloc !290
  br label %if.end15

if.end15:                                         ; preds = %if.then4, %if.end.if.end15_crit_edge
  %dbclk = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %dbclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dbclk, align 4
  tail call void @clk_disable(ptr noundef %20) #10
  tail call void @clk_unprepare(ptr noundef %20) #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i27 = tail call i32 @__pm_runtime_idle(ptr noundef %22, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  %dbclk = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dbclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbclk, align 4
  %call.i16 = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 4
  %pm_flags = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %pm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pm_flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %clk_prepare_enable.exit.if.end6_crit_edge

clk_prepare_enable.exit.if.end6_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %clk_prepare_enable.exit
  %pdata.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 35
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %controller_flags.i = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %controller_flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %controller_flags.i, align 4
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i17 = icmp eq i8 %14, 0
  %..i = select i1 %tobool.not.i17, i32 2560, i32 3072
  %.16.i = select i1 %tobool.not.i17, i32 67108864, i32 100663296
  %base.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 296
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !289
  %and1.i = and i32 %17, -3585
  %or.i = or i32 %and1.i, %..i
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %19, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %or.i) #10, !srcloc !290
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %21, i32 320
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !289
  %or7.i = or i32 %22, %.16.i
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %24, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %or7.i) #10, !srcloc !290
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 296
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !289
  %or.i.i = or i32 %27, 256
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %29, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %or.i.i) #10, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %30 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp15.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp15.not.i.i, label %if.then5.if.end6_crit_edge, label %if.then5.for.body.i.i_crit_edge

if.then5.for.body.i.i_crit_edge:                  ; preds = %if.then5
  br label %for.body.i.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.body.i.i:                                     ; preds = %do.end.i.i.for.body.i.i_crit_edge, %if.then5.for.body.i.i_crit_edge
  %i.016.i.i = phi i32 [ %inc.i.i, %do.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.then5.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %32, i32 296
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #10, !srcloc !289
  %and.i.i = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %for.body.i.i.if.end6_crit_edge

for.body.i.i.if.end6_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end.i.i:                                       ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !291
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !292
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %34 = load i32, ptr @loops_per_jiffy, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %34
  br i1 %cmp.i.i, label %do.end.i.i.for.body.i.i_crit_edge, label %do.end.i.i.if.end6_crit_edge

do.end.i.i.if.end6_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end6:                                          ; preds = %do.end.i.i.if.end6_crit_edge, %for.body.i.i.if.end6_crit_edge, %if.then5.if.end6_crit_edge, %clk_prepare_enable.exit.if.end6_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i18 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 12, i32 22
  %37 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store volatile i64 %call.i18, ptr %last_busy.i, align 8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %39, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !289
  %con.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %con.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %con.i, align 4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 296
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !289
  %hctl.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %hctl.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %hctl.i, align 4
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 300
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !289
  %sysctl.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sysctl.i, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %15, i32 320
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #10, !srcloc !289
  %capa.i = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %capa.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %capa.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hsmmc_runtime_suspend.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hsmmc_runtime_suspend, %if.then)) #10
          to label %do.body5 [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hsmmc_runtime_suspend.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.124) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %irq_lock = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 12
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmc, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %caps, align 32
  %and = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body5.if.else_crit_edge, label %land.lhs.true

do.body5.if.else_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %do.body5
  %flags14 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 33
  %22 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags14, align 4
  %and15 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true.if.else_crit_edge, label %if.then17

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !290
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr19 = getelementptr i8, ptr %27, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #10, !srcloc !290
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr21 = getelementptr i8, ptr %29, i32 292
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #10, !srcloc !289
  %and23 = and i32 %30, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body26, label %if.end48

do.body26:                                        ; preds = %if.then17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hsmmc_runtime_suspend.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hsmmc_runtime_suspend, %if.then38)) #10
          to label %do.end41 [label %if.then38], !srcloc !293

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hsmmc_runtime_suspend.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.125) #10
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body26
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr43 = getelementptr i8, ptr %32, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 -1) #10, !srcloc !290
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr45 = getelementptr i8, ptr %34, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 256) #10, !srcloc !290
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr47 = getelementptr i8, ptr %36, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 256) #10, !srcloc !290
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %37 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  br label %abort

if.end48:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #10
  br label %abort

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.body5.if.else_crit_edge
  %call50 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #10
  br label %abort

abort:                                            ; preds = %if.else, %if.end48, %do.end41
  %ret.0 = phi i32 [ 0, %if.end48 ], [ -16, %do.end41 ], [ 0, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call8) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @omap_hsmmc_context_restore(ptr noundef %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hsmmc_runtime_resume.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hsmmc_runtime_resume, %if.then)) #10
          to label %do.body6 [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hsmmc_runtime_resume.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.127) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %irq_lock = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 12
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body6.if.else_crit_edge, label %land.lhs.true

do.body6.if.else_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %do.body6
  %flags15 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags15, align 4
  %and16 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true.if.else_crit_edge, label %if.then18

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call20 = tail call i32 @pinctrl_select_default_state(ptr noundef %9) #10
  %base = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #10, !srcloc !290
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %13, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 256) #10, !srcloc !290
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %15, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 256) #10, !srcloc !290
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.body6.if.else_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call26 = tail call i32 @pinctrl_select_default_state(ptr noundef %17) #10
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call9) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_context_restore(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %con = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 18
  %2 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %con, align 4
  %base = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 9
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp = icmp eq i32 %3, %6
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hctl2 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 19
  %7 = ptrtoint ptr %hctl2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hctl2, align 4
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 296
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !289
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp6 = icmp eq i32 %8, %11
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sysctl = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 20
  %12 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sysctl, align 4
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %15, i32 300
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !289
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %16)
  %cmp11 = icmp eq i32 %13, %16
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %capa13 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 21
  %17 = ptrtoint ptr %capa13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %capa13, align 4
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %20, i32 320
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !289
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %21)
  %cmp17 = icmp eq i32 %18, %21
  br i1 %cmp17, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.end_crit_edge

land.lhs.true12.if.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true12.if.end_crit_edge, %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %context_loss = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 29
  %22 = ptrtoint ptr %context_loss to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %context_loss, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %context_loss, align 4
  %pdata = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 35
  %24 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata, align 4
  %controller_flags = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %controller_flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %controller_flags, align 4
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.end.if.end29_crit_edge, label %if.then18

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then18:                                        ; preds = %if.end
  %power_mode = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 16
  %29 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %power_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp20.not = icmp eq i8 %30, 0
  br i1 %cmp20.not, label %if.then18.if.else_crit_edge, label %land.lhs.true22

if.then18.if.else_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true22:                                  ; preds = %if.then18
  %vdd = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 1
  %31 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vdd, align 4
  %conv23 = zext i16 %32 to i32
  %shl = shl nuw i32 1, %conv23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %shl)
  %cmp24 = icmp slt i32 %shl, 2049
  br i1 %cmp24, label %land.lhs.true22.if.end29_crit_edge, label %land.lhs.true22.if.else_crit_edge

land.lhs.true22.if.else_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true22.if.end29_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true22.if.else_crit_edge, %if.then18.if.else_crit_edge
  br label %if.end29

if.end29:                                         ; preds = %if.else, %land.lhs.true22.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %hctl.1 = phi i32 [ 3072, %if.else ], [ 2560, %land.lhs.true22.if.end29_crit_edge ], [ 2560, %if.end.if.end29_crit_edge ]
  %capa.0 = phi i32 [ 100663296, %if.else ], [ 100663296, %land.lhs.true22.if.end29_crit_edge ], [ 67108864, %if.end.if.end29_crit_edge ]
  %33 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmc, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %caps, align 32
  %and31 = shl i32 %36, 21
  %37 = and i32 %and31, 16777216
  %38 = or i32 %37, %hctl.1
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr36 = getelementptr i8, ptr %40, i32 296
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #10, !srcloc !289
  %or38 = or i32 %38, %41
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %43, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %or38) #10, !srcloc !290
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr42 = getelementptr i8, ptr %45, i32 320
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #10, !srcloc !289
  %or44 = or i32 %46, %capa.0
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr46 = getelementptr i8, ptr %48, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %or44) #10, !srcloc !290
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr48 = getelementptr i8, ptr %50, i32 296
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #10, !srcloc !289
  %or50 = or i32 %51, 256
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr52 = getelementptr i8, ptr %53, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %or50) #10, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -2, %54
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.end29
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr55 = getelementptr i8, ptr %56, i32 296
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #10, !srcloc !289
  %and57 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %cmp58.not.not = icmp eq i32 %and57, 0
  br i1 %cmp58.not.not, label %land.rhs, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %58
  %cmp60 = icmp slt i32 %sub, 0
  br i1 %cmp60, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr63 = getelementptr i8, ptr %60, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #10, !srcloc !290
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr65 = getelementptr i8, ptr %62, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #10, !srcloc !290
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr67 = getelementptr i8, ptr %64, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 -1) #10, !srcloc !290
  %power_mode68 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %host, i32 0, i32 16
  %65 = ptrtoint ptr %power_mode68 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %power_mode68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp70 = icmp eq i8 %66, 0
  br i1 %cmp70, label %while.end.do.body_crit_edge, label %if.end73

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end73:                                         ; preds = %while.end
  %67 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmc, align 4
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %70, i32 44
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !289
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 28, i32 7
  %72 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %timing.i, align 4
  %.off.i = add i8 %73, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %and.i = and i32 %71, -524289
  %masksel.i = select i1 %switch.i, i32 524288, i32 0
  %con.0.i = or i32 %masksel.i, %and.i
  %bus_width.i = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 28, i32 6
  %74 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bus_width.i, align 1
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %75, label %if.end73.omap_hsmmc_set_bus_width.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 2, label %sw.bb11.i
    i8 0, label %sw.bb21.i
  ]

if.end73.omap_hsmmc_set_bus_width.exit_crit_edge: ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_hsmmc_set_bus_width.exit

sw.bb.i:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %or8.i = or i32 %con.0.i, 32
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr10.i = getelementptr i8, ptr %78, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %or8.i) #10, !srcloc !290
  br label %omap_hsmmc_set_bus_width.exit

sw.bb11.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %and12.i = and i32 %con.0.i, -33
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr14.i = getelementptr i8, ptr %80, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %and12.i) #10, !srcloc !290
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr16.i = getelementptr i8, ptr %82, i32 296
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #10, !srcloc !289
  %or18.i = or i32 %83, 2
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr20.i = getelementptr i8, ptr %85, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %or18.i) #10, !srcloc !290
  br label %omap_hsmmc_set_bus_width.exit

sw.bb21.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %and22.i = and i32 %con.0.i, -33
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base, align 4
  %add.ptr24.i = getelementptr i8, ptr %87, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %and22.i) #10, !srcloc !290
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr26.i = getelementptr i8, ptr %89, i32 296
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #10, !srcloc !289
  %and28.i = and i32 %90, -3
  %91 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base, align 4
  %add.ptr30.i = getelementptr i8, ptr %92, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %and28.i) #10, !srcloc !290
  br label %omap_hsmmc_set_bus_width.exit

omap_hsmmc_set_bus_width.exit:                    ; preds = %sw.bb21.i, %sw.bb11.i, %sw.bb.i, %if.end73.omap_hsmmc_set_bus_width.exit_crit_edge
  tail call fastcc void @omap_hsmmc_set_clock(ptr noundef %host)
  %93 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmc, align 4
  %95 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base, align 4
  %add.ptr.i3 = getelementptr i8, ptr %96, i32 44
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #10, !srcloc !289
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %94, i32 0, i32 28, i32 3
  %98 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bus_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp.i = icmp eq i8 %99, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %omap_hsmmc_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %97, 1
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %101, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %or.i) #10, !srcloc !290
  br label %do.body

if.else.i:                                        ; preds = %omap_hsmmc_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  %and.i4 = and i32 %97, -2
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 4
  %add.ptr6.i = getelementptr i8, ptr %103, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %and.i4) #10, !srcloc !290
  br label %do.body

do.body:                                          ; preds = %if.else.i, %if.then.i, %while.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hsmmc_context_restore.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hsmmc_context_restore, %if.then78)) #10
          to label %cleanup [label %if.then78], !srcloc !293

if.then78:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmc, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 128
  %108 = ptrtoint ptr %context_loss to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %context_loss, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hsmmc_context_restore.__UNIQUE_ID_ddebug307, ptr noundef %107, ptr noundef nonnull @.str.129, i32 noundef %109) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %do.body, %land.lhs.true12.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !170, !171, !173, !175, !176, !177, !179, !181, !182, !183, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !208, !209, !210, !212, !213, !214, !216, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !268, !269, !271, !272, !274, !275, !276, !278, !279}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @__initcall__kmod_omap_hsmmc__317_2134_omap_hsmmc_driver_init6, !1, !"__initcall__kmod_omap_hsmmc__317_2134_omap_hsmmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2134, i32 1}
!2 = !{ptr @__exitcall_omap_hsmmc_driver_exit, !1, !"__exitcall_omap_hsmmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description318, !4, !"__UNIQUE_ID_description318", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2135, i32 1}
!5 = !{ptr @__UNIQUE_ID_file319, !6, !"__UNIQUE_ID_file319", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2136, i32 1}
!7 = !{ptr @__UNIQUE_ID_license320, !6, !"__UNIQUE_ID_license320", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias321, !9, !"__UNIQUE_ID_alias321", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2137, i32 1}
!10 = !{ptr @__UNIQUE_ID_author322, !11, !"__UNIQUE_ID_author322", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2138, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2127, i32 11}
!14 = !{ptr @omap_hsmmc_driver, !15, !"omap_hsmmc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2123, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1789, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @omap_hsmmc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap_hsmmc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @omap_hsmmc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1840, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1842, i32 40}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1850, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @omap_hsmmc_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap_hsmmc_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1862, i32 41}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1869, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @omap_hsmmc_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @omap_hsmmc_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1895, i32 47}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1897, i32 3}
!45 = !{ptr @omap_hsmmc_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @omap_hsmmc_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1902, i32 47}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1904, i32 3}
!51 = !{ptr @omap_hsmmc_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @omap_hsmmc_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1924, i32 3}
!55 = !{ptr @omap_hsmmc_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @omap_hsmmc_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1739, i32 27}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1742, i32 27}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1747, i32 27}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1750, i32 27}
!65 = !{ptr @omap_hsmmc_ops, !66, !"omap_hsmmc_ops", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1621, i32 28}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1200, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @omap_hsmmc_pre_dma_transfer._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @omap_hsmmc_pre_dma_transfer._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1378, i32 4}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @omap_hsmmc_prepare_data._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @omap_hsmmc_prepare_data._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1278, i32 3}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @omap_hsmmc_setup_dma_transfer._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @omap_hsmmc_setup_dma_transfer._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1489, i32 5}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @omap_hsmmc_set_ios.__UNIQUE_ID_ddebug309, !83, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 291, i32 5}
!88 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @omap_hsmmc_set_pbias._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @omap_hsmmc_set_pbias._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 300, i32 5}
!93 = !{ptr @omap_hsmmc_set_pbias._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @omap_hsmmc_set_pbias._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 232, i32 4}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @omap_hsmmc_enable_supply._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @omap_hsmmc_enable_supply._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 256, i32 4}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @omap_hsmmc_disable_supply._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @omap_hsmmc_disable_supply._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 274, i32 4}
!107 = !{ptr @omap_hsmmc_disable_supply._entry.49, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @omap_hsmmc_disable_supply._entry_ptr.51, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1154, i32 2}
!111 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @omap_hsmmc_switch_opcond._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @omap_hsmmc_switch_opcond._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 477, i32 3}
!116 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @omap_hsmmc_stop_clock.__UNIQUE_ID_ddebug306, !115, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1052, i32 4}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @omap_hsmmc_do_irq.__UNIQUE_ID_ddebug308, !119, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 936, i32 3}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 936, i32 11}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 936, i32 19}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 936, i32 26}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 936, i32 33}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 936, i32 41}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 937, i32 3}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 937, i32 11}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 937, i32 57}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 938, i32 3}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 938, i32 11}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 938, i32 19}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 938, i32 26}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 938, i32 33}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 938, i32 41}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 938, i32 49}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 939, i32 3}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 939, i32 33}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 939, i32 41}
!160 = !{ptr @omap_hsmmc_dbg_report_irq.omap_hsmmc_status_bits, !161, !"omap_hsmmc_status_bits", i1 false, i1 false}
!161 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 935, i32 21}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 945, i32 21}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 950, i32 23}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 995, i32 3}
!168 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @omap_hsmmc_reset_controller_fsm._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @omap_hsmmc_reset_controller_fsm._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 427, i32 9}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 432, i32 4}
!175 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @omap_hsmmc_reg_get.__UNIQUE_ID_ddebug304, !174, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 437, i32 55}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 441, i32 4}
!181 = !{ptr @omap_hsmmc_reg_get._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @omap_hsmmc_reg_get._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 445, i32 3}
!185 = !{ptr @omap_hsmmc_reg_get.__UNIQUE_ID_ddebug305, !184, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 393, i32 3}
!188 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @omap_hsmmc_disable_boot_regulators._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @omap_hsmmc_disable_boot_regulators._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 399, i32 3}
!193 = !{ptr @omap_hsmmc_disable_boot_regulators._entry.89, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @omap_hsmmc_disable_boot_regulators._entry_ptr.91, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 406, i32 3}
!197 = !{ptr @omap_hsmmc_disable_boot_regulators._entry.92, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @omap_hsmmc_disable_boot_regulators._entry_ptr.94, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1552, i32 3}
!201 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @omap_hsmmc_configure_wake_irq._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @omap_hsmmc_configure_wake_irq._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1567, i32 38}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1568, i32 4}
!208 = !{ptr @omap_hsmmc_configure_wake_irq._entry.98, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @omap_hsmmc_configure_wake_irq._entry_ptr.100, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1583, i32 2}
!212 = !{ptr @omap_hsmmc_configure_wake_irq._entry.101, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @omap_hsmmc_configure_wake_irq._entry_ptr.103, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 750, i32 8}
!216 = !{ptr @dev_attr_slot_name, !215, !"dev_attr_slot_name", i1 false, i1 false}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 747, i32 22}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1677, i32 23}
!221 = !{ptr @mmc_regs_fops, !222, !"mmc_regs_fops", i1 false, i1 false}
!222 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1672, i32 1}
!223 = !{ptr @.str.107, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1638, i32 16}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1639, i32 16}
!227 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1640, i32 39}
!229 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1640, i32 53}
!231 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1643, i32 17}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1644, i32 49}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1645, i32 9}
!237 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1647, i32 16}
!239 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1650, i32 14}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1651, i32 16}
!243 = !{ptr @.str.117, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1653, i32 16}
!245 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1655, i32 16}
!247 = !{ptr @.str.119, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1657, i32 16}
!249 = !{ptr @.str.120, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1659, i32 16}
!251 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1661, i32 16}
!253 = !{ptr @.str.122, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1663, i32 16}
!255 = !{ptr @omap_mmc_of_match, !256, !"omap_mmc_of_match", i1 false, i1 false}
!256 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1703, i32 34}
!257 = !{ptr @omap3_pre_es3_mmc_of_data, !258, !"omap3_pre_es3_mmc_of_data", i1 false, i1 false}
!258 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1690, i32 38}
!259 = !{ptr @omap4_mmc_of_data, !260, !"omap4_mmc_of_data", i1 false, i1 false}
!260 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1695, i32 38}
!261 = !{ptr @am33xx_mmc_of_data, !262, !"am33xx_mmc_of_data", i1 false, i1 false}
!262 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 1698, i32 38}
!263 = !{ptr @omap_hsmmc_dev_pm_ops, !264, !"omap_hsmmc_dev_pm_ops", i1 false, i1 false}
!264 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2118, i32 32}
!265 = !{ptr @.str.123, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2057, i32 2}
!267 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @omap_hsmmc_runtime_suspend.__UNIQUE_ID_ddebug314, !266, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!269 = !{ptr @.str.125, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2072, i32 4}
!271 = !{ptr @omap_hsmmc_runtime_suspend.__UNIQUE_ID_ddebug315, !270, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!272 = !{ptr @.str.126, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 2098, i32 2}
!274 = !{ptr @.str.127, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @omap_hsmmc_runtime_resume.__UNIQUE_ID_ddebug316, !273, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!276 = !{ptr @.str.128, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/mmc/host/omap_hsmmc.c", i32 687, i32 2}
!278 = !{ptr @.str.129, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @omap_hsmmc_context_restore.__UNIQUE_ID_ddebug307, !277, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{i64 6354108}
!290 = !{i64 6353690}
!291 = !{i64 2155564363}
!292 = !{i64 2155564205}
!293 = !{i64 2149005564, i64 2149005569, i64 2149005582, i64 2149005626, i64 2149005660, i64 2149005681}
!294 = !{!"branch_weights", i32 2000, i32 1}
!295 = !{i64 2155580062, i64 2155580557, i64 2155580099, i64 2155580155, i64 2155580189, i64 2155580213, i64 2155580254, i64 2155580275, i64 2155580303, i64 2155580337}
!296 = !{i64 2155581687, i64 2155582182, i64 2155581724, i64 2155581780, i64 2155581814, i64 2155581838, i64 2155581879, i64 2155581900, i64 2155581928, i64 2155581962}
!297 = !{!"auto-init"}
!298 = !{i64 2155569334, i64 2155569829, i64 2155569371, i64 2155569427, i64 2155569461, i64 2155569485, i64 2155569526, i64 2155569547, i64 2155569575, i64 2155569609}
!299 = !{i8 0, i8 2}
!300 = !{i64 2155537928}
!301 = !{i64 2155537770}
