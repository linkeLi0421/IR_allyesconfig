; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-bcm-kona.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-bcm-kona.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }

@__initcall__kmod_sdhci_bcm_kona__308_334_sdhci_bcm_kona_driver_init6 = internal global ptr @sdhci_bcm_kona_driver_init, section ".initcall6.init", align 4
@sdhci_bcm_kona_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_bcm_kona_probe, ptr @sdhci_pltfm_unregister, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_bcm_kona_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_bcm_kona_driver_exit = internal global ptr @sdhci_bcm_kona_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description309 = internal constant [67 x i8] c"sdhci_bcm_kona.description=SDHCI driver for Broadcom Kona platform\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [31 x i8] c"sdhci_bcm_kona.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [52 x i8] c"sdhci_bcm_kona.file=drivers/mmc/host/sdhci-bcm-kona\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [30 x i8] c"sdhci_bcm_kona.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdhci-kona\00", [21 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bcm,kona-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@sdhci_pltfm_data_kona = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_bcm_kona_ops, i32 34608004, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdhci_bcm_kona\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdhci_bcm_kona_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mmc/host/sdhci-bcm-kona.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: inited. IOADDR=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&kona_dev->write_lock\00", [42 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 241, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Missing max-freq for SDHCI cfg\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe._entry_ptr = internal global ptr @sdhci_bcm_kona_probe._entry, section ".printk_index", align 4
@sdhci_bcm_kona_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 249, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get core clock\0A\00", [38 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe._entry_ptr.11 = internal global ptr @sdhci_bcm_kona_probe._entry.9, section ".printk_index", align 4
@sdhci_bcm_kona_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 256, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set rate core clock\0A\00", [33 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe._entry_ptr.14 = internal global ptr @sdhci_bcm_kona_probe._entry.12, section ".printk_index", align 4
@sdhci_bcm_kona_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 262, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable core clock\0A\00", [35 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe._entry_ptr.17 = internal global ptr @sdhci_bcm_kona_probe._entry.15, section ".printk_index", align 4
@sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.18, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"non-removable=%c\0A\00", [46 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cd_gpio %c, wp_gpio %c\0A\00", [40 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.20, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"is_8bit=%c\0A\00", [20 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 293, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to emulate card insertion\0A\00", [62 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe._entry_ptr.23 = internal global ptr @sdhci_bcm_kona_probe._entry.21, section ".printk_index", align 4
@sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.24, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"initialized properly\0A\00", [42 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 320, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Probing of sdhci-pltfm failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_probe._entry_ptr.27 = internal global ptr @sdhci_bcm_kona_probe._entry.25, section ".printk_index", align 4
@sdhci_bcm_kona_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr @sdhci_bcm_kona_init_74_clocks, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr @sdhci_bcm_kona_card_event, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdhci_bcm_kona_card_event.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdhci_bcm_kona_card_event\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"card inserted\0A\00", [17 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_card_event.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"card removed\0A\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sdhci_bcm_kona_sd_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Error: sd host is stuck in reset!!!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdhci_bcm_kona_sd_reset\00", [40 x i8] zeroinitializer }, align 32
@sdhci_bcm_kona_sd_reset._entry_ptr = internal global ptr @sdhci_bcm_kona_sd_reset._entry, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"sdhci_bcm_kona_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 324, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 326, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"sdhci_bcm_kona_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 207, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"sdhci_pltfm_data_kona\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 198, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 229, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 234, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 241, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 249, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 256, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 262, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 266, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 268, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 275, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 292, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 305, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 320, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"sdhci_bcm_kona_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 187, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 165, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 169, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [37 x i8] c"../drivers/mmc/host/sdhci-bcm-kona.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 73, i32 4 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_sdhci_bcm_kona_driver_exit, ptr @__initcall__kmod_sdhci_bcm_kona__308_334_sdhci_bcm_kona_driver_init6, ptr @sdhci_bcm_kona_driver_exit, ptr @sdhci_bcm_kona_probe._entry, ptr @sdhci_bcm_kona_probe._entry.12, ptr @sdhci_bcm_kona_probe._entry.15, ptr @sdhci_bcm_kona_probe._entry.21, ptr @sdhci_bcm_kona_probe._entry.25, ptr @sdhci_bcm_kona_probe._entry.9, ptr @sdhci_bcm_kona_probe._entry_ptr, ptr @sdhci_bcm_kona_probe._entry_ptr.11, ptr @sdhci_bcm_kona_probe._entry_ptr.14, ptr @sdhci_bcm_kona_probe._entry_ptr.17, ptr @sdhci_bcm_kona_probe._entry_ptr.23, ptr @sdhci_bcm_kona_probe._entry_ptr.27, ptr @sdhci_bcm_kona_sd_reset._entry, ptr @sdhci_bcm_kona_sd_reset._entry_ptr, ptr @sdhci_bcm_kona_driver, ptr @.str, ptr @sdhci_bcm_kona_of_match, ptr @sdhci_pltfm_data_kona, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sdhci_bcm_kona_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @sdhci_bcm_kona_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pltfm_data_kona to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_bcm_kona_sd_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_bcm_kona_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_bcm_kona_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_bcm_kona_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_bcm_kona_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_bcm_kona_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull @sdhci_pltfm_data_kona, i32 noundef 92) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_bcm_kona_probe, %if.then7)) #5
          to label %do.end [label %if.then7], !srcloc !88

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug303, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %2) #5
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 81
  %private.i230 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 21
  tail call void @__mutex_init(ptr noundef %private.i230, ptr noundef nonnull @.str.5, ptr noundef nonnull @sdhci_bcm_kona_probe.__key) #5
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %3 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmc, align 8
  %call14 = tail call i32 @mmc_of_parse(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.end.err_pltfm_free_crit_edge

do.end.err_pltfm_free_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pltfm_free

if.end17:                                         ; preds = %do.end
  %5 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmc, align 8
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #8
  br label %err_pltfm_free

if.end25:                                         ; preds = %if.end17
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call26, ptr %private.i, align 128
  %cmp.i231 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 128
  %12 = ptrtoint ptr %11 to i32
  br label %err_pltfm_free

if.end35:                                         ; preds = %if.end25
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 8
  %f_max38 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %f_max38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_max38, align 8
  %call39 = tail call i32 @clk_set_rate(ptr noundef %call26, i32 noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %err_pltfm_free

if.end45:                                         ; preds = %if.end35
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i, align 128
  %call.i = tail call i32 @clk_prepare(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.do.end52_crit_edge

if.end45.do.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52

if.end.i:                                         ; preds = %if.end45
  %call1.i = tail call i32 @clk_enable(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body54, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %18) #5
  br label %do.end52

do.end52:                                         ; preds = %if.then3.i, %if.end45.do.end52_crit_edge
  %retval.0.i232.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end45.do.end52_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  br label %err_pltfm_free

do.body54:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_bcm_kona_probe, %if.then66)) #5
          to label %do.body73 [label %if.then66], !srcloc !88

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps.i, align 32
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool69.not.not = icmp eq i32 %23, 0
  %cond = select i1 %tobool69.not.not, i32 78, i32 89
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug304, ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %cond) #5
  br label %do.body73

do.body73:                                        ; preds = %if.then66, %do.body54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_bcm_kona_probe, %if.then85)) #5
          to label %do.end95 [label %if.then85], !srcloc !88

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc, align 8
  %call87 = tail call i32 @mmc_gpio_get_cd(ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call87)
  %cmp.not = icmp eq i32 %call87, -38
  %cond88 = select i1 %cmp.not, i32 78, i32 89
  %26 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmc, align 8
  %call90 = tail call i32 @mmc_gpio_get_ro(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, -38
  %cond92 = select i1 %cmp91.not, i32 78, i32 89
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug305, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %cond88, i32 noundef %cond92) #5
  br label %do.end95

do.end95:                                         ; preds = %if.then85, %do.body73
  %28 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc, align 8
  %caps.i233 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %caps.i233 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps.i233, align 32
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool98.not.not = icmp eq i32 %32, 0
  br i1 %tobool98.not.not, label %do.end95.do.body101_crit_edge, label %if.then99

do.end95.do.body101_crit_edge:                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body101

if.then99:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #7
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 1
  %33 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quirks, align 4
  %or = or i32 %34, 32768
  store i32 %or, ptr %quirks, align 4
  br label %do.body101

do.body101:                                       ; preds = %if.then99, %do.end95.do.body101_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_bcm_kona_probe, %if.then113)) #5
          to label %do.end119 [label %if.then113], !srcloc !88

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %caps, align 32
  %and = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool115.not = icmp eq i32 %and, 0
  %cond116 = select i1 %tobool115.not, i32 78, i32 89
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug306, ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %cond116) #5
  br label %do.end119

do.end119:                                        ; preds = %if.then113, %do.body101
  %call120 = tail call fastcc i32 @sdhci_bcm_kona_sd_reset(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %do.end119.err_clk_disable_crit_edge

do.end119.err_clk_disable_crit_edge:              ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk_disable

if.end123:                                        ; preds = %do.end119
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 9
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !89

if.then.i.i:                                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %42(ptr noundef %call, i32 noundef 32776) #5
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %43 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 32776
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !90
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %46, %if.else.i.i ]
  %or.i = or i32 %retval.0.i.i, 1
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i10.i = icmp eq ptr %50, null
  br i1 %tobool.not.i10.i, label %do.body.i.i, label %if.then.i11.i, !prof !89

if.then.i11.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %50(ptr noundef %call, i32 noundef %or.i, i32 noundef 32776) #5
  br label %sdhci_writel.exit.i

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %ioaddr.i12.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %52 = ptrtoint ptr %ioaddr.i12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i12.i, align 16
  %add.ptr.i13.i = getelementptr i8, ptr %53, i32 32776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %51) #5, !srcloc !93
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i.i, %if.then.i11.i
  %54 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool.not.i15.i = icmp eq ptr %57, null
  br i1 %tobool.not.i15.i, label %if.else.i20.i, label %if.then.i17.i, !prof !89

if.then.i17.i:                                    ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i16.i = tail call i32 %57(ptr noundef %call, i32 noundef 32768) #5
  br label %sdhci_readl.exit22.i

if.else.i20.i:                                    ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i18.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %58 = ptrtoint ptr %ioaddr.i18.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioaddr.i18.i, align 16
  %add.ptr.i19.i = getelementptr i8, ptr %59, i32 32768
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #5, !srcloc !90
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  br label %sdhci_readl.exit22.i

sdhci_readl.exit22.i:                             ; preds = %if.else.i20.i, %if.then.i17.i
  %retval.0.i21.i = phi i32 [ %call.i16.i, %if.then.i17.i ], [ %61, %if.else.i20.i ]
  %or2.i = or i32 %retval.0.i21.i, 1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #5
  %62 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i.i, align 4
  %write_l.i24.i = getelementptr inbounds %struct.sdhci_ops, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %write_l.i24.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_l.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %65, null
  br i1 %tobool.not.i25.i, label %do.body.i29.i, label %if.then.i26.i, !prof !89

if.then.i26.i:                                    ; preds = %sdhci_readl.exit22.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %65(ptr noundef %call, i32 noundef %or2.i, i32 noundef 32768) #5
  br label %sdhci_bcm_kona_sd_init.exit

do.body.i29.i:                                    ; preds = %sdhci_readl.exit22.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %66 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #5
  %ioaddr.i27.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %67 = ptrtoint ptr %ioaddr.i27.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr.i27.i, align 16
  %add.ptr.i28.i = getelementptr i8, ptr %68, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %66) #5, !srcloc !93
  br label %sdhci_bcm_kona_sd_init.exit

sdhci_bcm_kona_sd_init.exit:                      ; preds = %do.body.i29.i, %if.then.i26.i
  %call124 = tail call i32 @sdhci_add_host(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %err_reset

if.end127:                                        ; preds = %sdhci_bcm_kona_sd_init.exit
  %69 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmc, align 8
  %caps.i236 = getelementptr inbounds %struct.mmc_host, ptr %70, i32 0, i32 16
  %71 = ptrtoint ptr %caps.i236 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %caps.i236, align 32
  %73 = and i32 %72, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool130.not.not = icmp eq i32 %73, 0
  br i1 %tobool130.not.not, label %if.end127.if.end139_crit_edge, label %if.then131

if.end127.if.end139_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end139

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @sdhci_bcm_kona_sd_card_emulate(ptr noundef %call, i32 noundef 1)
  br label %if.end139

if.end139:                                        ; preds = %if.then131, %if.end127.if.end139_crit_edge
  %74 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmc, align 8
  %call141 = tail call i32 @mmc_gpio_get_cd(ptr noundef %75) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp sgt i32 %call141, 0
  br i1 %cmp142, label %if.then143, label %if.end139.do.body146_crit_edge

if.end139.do.body146_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body146

if.then143:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @sdhci_bcm_kona_sd_card_emulate(ptr noundef %call, i32 noundef 1)
  br label %do.body146

do.body146:                                       ; preds = %if.then143, %if.end139.do.body146_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_bcm_kona_probe, %if.then158)) #5
          to label %cleanup [label %if.then158], !srcloc !88

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug307, ptr noundef %dev1, ptr noundef nonnull @.str.24) #5
  br label %cleanup

err_reset:                                        ; preds = %sdhci_bcm_kona_sd_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call162 = tail call fastcc i32 @sdhci_bcm_kona_sd_reset(ptr noundef %call)
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_reset, %do.end119.err_clk_disable_crit_edge
  %ret.1 = phi i32 [ %call120, %do.end119.err_clk_disable_crit_edge ], [ %call124, %err_reset ]
  %76 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %77) #5
  tail call void @clk_unprepare(ptr noundef %77) #5
  br label %err_pltfm_free

err_pltfm_free:                                   ; preds = %err_clk_disable, %do.end52, %do.end44, %do.end32, %do.end23, %do.end.err_pltfm_free_crit_edge
  %ret.2 = phi i32 [ %call14, %do.end.err_pltfm_free_crit_edge ], [ %12, %do.end32 ], [ %call39, %do.end44 ], [ %retval.0.i232.ph, %do.end52 ], [ %ret.1, %err_clk_disable ], [ -6, %do.end23 ]
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %ret.2) #8
  br label %cleanup

cleanup:                                          ; preds = %err_pltfm_free, %if.then158, %do.body146, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.2, %err_pltfm_free ], [ 0, %if.then158 ], [ 0, %do.body146 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_bcm_kona_sd_reset(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 10
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !89

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %4(ptr noundef %host, i32 noundef 32768) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %6, i32 32768
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %8, %if.else.i ]
  %or = or i32 %retval.0.i, 2
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i15 = icmp eq ptr %12, null
  br i1 %tobool.not.i15, label %do.body.i, label %if.then.i16, !prof !89

if.then.i16:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %12(ptr noundef %host, i32 noundef %or, i32 noundef 32768) #5
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %ioaddr.i17 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i17, align 16
  %add.ptr.i18 = getelementptr i8, ptr %15, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %13) #5, !srcloc !93
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i16
  %ioaddr.i23 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %sdhci_writel.exit
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i20 = icmp eq ptr %19, null
  br i1 %tobool.not.i20, label %if.else.i25, label %if.then.i22, !prof !89

if.then.i22:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call.i21 = tail call i32 %19(ptr noundef %host, i32 noundef 32768) #5
  br label %sdhci_readl.exit27

if.else.i25:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %ioaddr.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i23, align 16
  %add.ptr.i24 = getelementptr i8, ptr %21, i32 32768
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #5, !srcloc !90
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  br label %sdhci_readl.exit27

sdhci_readl.exit27:                               ; preds = %if.else.i25, %if.then.i22
  %retval.0.i26 = phi i32 [ %call.i21, %if.then.i22 ], [ %23, %if.else.i25 ]
  %and = and i32 %retval.0.i26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %sdhci_readl.exit27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %24
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %cleanup

while.end:                                        ; preds = %sdhci_readl.exit27
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool.not.i29 = icmp eq ptr %28, null
  br i1 %tobool.not.i29, label %if.else.i34, label %if.then.i31, !prof !89

if.then.i31:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i30 = tail call i32 %28(ptr noundef %host, i32 noundef 32768) #5
  br label %sdhci_readl.exit36

if.else.i34:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %ioaddr.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i23, align 16
  %add.ptr.i33 = getelementptr i8, ptr %30, i32 32768
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #5, !srcloc !90
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  br label %sdhci_readl.exit36

sdhci_readl.exit36:                               ; preds = %if.else.i34, %if.then.i31
  %retval.0.i35 = phi i32 [ %call.i30, %if.then.i31 ], [ %32, %if.else.i34 ]
  %and5 = and i32 %retval.0.i35, -3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #5
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %write_l.i38 = getelementptr inbounds %struct.sdhci_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %write_l.i38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_l.i38, align 4
  %tobool.not.i39 = icmp eq ptr %36, null
  br i1 %tobool.not.i39, label %do.body.i43, label %if.then.i40, !prof !89

if.then.i40:                                      ; preds = %sdhci_readl.exit36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %36(ptr noundef %host, i32 noundef %and5, i32 noundef 32768) #5
  br label %cleanup

do.body.i43:                                      ; preds = %sdhci_readl.exit36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %and5) #5
  %38 = ptrtoint ptr %ioaddr.i23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr.i23, align 16
  %add.ptr.i42 = getelementptr i8, ptr %39, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %37) #5, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %do.body.i43, %if.then.i40, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ 0, %if.then.i40 ], [ 0, %do.body.i43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_bcm_kona_sd_card_emulate(ptr noundef %host, i32 noundef %insert) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  tail call void @mutex_lock_nested(ptr noundef %private.i1, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 4294960) #5
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !89

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %4(ptr noundef %host, i32 noundef 32772) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %6, i32 32772
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !90
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %8, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %insert)
  %tobool.not = icmp eq i32 %insert, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sdhci_readl.exit
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %9 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmc, align 8
  %call3 = tail call i32 @mmc_gpio_get_ro(ptr noundef %10) #5
  %and = and i32 %retval.0.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  %cond = select i1 %tobool5.not, i32 0, i32 2
  %or = or i32 %cond, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp15 = icmp slt i32 %call3, 0
  %val.0 = select i1 %cmp15, i32 %retval.0.i, i32 %or
  %or6 = or i32 %val.0, 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i3 = icmp eq ptr %14, null
  br i1 %tobool.not.i3, label %do.body.i, label %if.then.i4, !prof !89

if.then.i4:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %14(ptr noundef %host, i32 noundef %or6, i32 noundef 32772) #5
  br label %if.end8

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or6) #5
  %ioaddr.i5 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i5, align 16
  %add.ptr.i6 = getelementptr i8, ptr %17, i32 32772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %15) #5, !srcloc !93
  br label %if.end8

if.else:                                          ; preds = %sdhci_readl.exit
  %and7 = and i32 %retval.0.i, -2
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %write_l.i8 = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %write_l.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_l.i8, align 4
  %tobool.not.i9 = icmp eq ptr %21, null
  br i1 %tobool.not.i9, label %do.body.i13, label %if.then.i10, !prof !89

if.then.i10:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %21(ptr noundef %host, i32 noundef %and7, i32 noundef 32772) #5
  br label %if.end8

do.body.i13:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %and7) #5
  %ioaddr.i11 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr.i11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i11, align 16
  %add.ptr.i12 = getelementptr i8, ptr %24, i32 32772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %22) #5, !srcloc !93
  br label %if.end8

if.end8:                                          ; preds = %do.body.i13, %if.then.i10, %do.body.i, %if.then.i4
  tail call void @mutex_unlock(ptr noundef %private.i1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_bcm_kona_init_74_clocks(ptr nocapture noundef readnone %host, i8 noundef zeroext %power_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %power_mode)
  %cmp.not = icmp eq i8 %power_mode, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 158913520) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_bcm_kona_card_event(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %call = tail call i32 @mmc_gpio_get_cd(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_bcm_kona_card_event.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_bcm_kona_card_event, %if.then4)) #5
          to label %if.end25 [label %if.then4], !srcloc !88

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_bcm_kona_card_event.__UNIQUE_ID_ddebug301, ptr noundef %5, ptr noundef nonnull @.str.29) #5
  br label %if.end25

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_bcm_kona_card_event.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_bcm_kona_card_event, %if.then19)) #5
          to label %if.end25 [label %if.then19], !srcloc !88

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_bcm_kona_card_event.__UNIQUE_ID_ddebug302, ptr noundef %9, ptr noundef nonnull @.str.30) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %do.body7, %if.then4, %do.body
  %.sink = phi i32 [ 1, %do.body ], [ 1, %if.then4 ], [ 0, %do.body7 ], [ 0, %if.then19 ]
  tail call fastcc void @sdhci_bcm_kona_sd_card_emulate(ptr noundef %host, i32 noundef %.sink)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_sdhci_bcm_kona__308_334_sdhci_bcm_kona_driver_init6, !1, !"__initcall__kmod_sdhci_bcm_kona__308_334_sdhci_bcm_kona_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 334, i32 1}
!2 = !{ptr @__exitcall_sdhci_bcm_kona_driver_exit, !1, !"__exitcall_sdhci_bcm_kona_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description309, !4, !"__UNIQUE_ID_description309", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 336, i32 1}
!5 = !{ptr @__UNIQUE_ID_author310, !6, !"__UNIQUE_ID_author310", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 337, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 338, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 326, i32 11}
!12 = !{ptr @sdhci_bcm_kona_driver, !13, !"sdhci_bcm_kona_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 324, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 229, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug303, !15, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!20 = !{ptr @sdhci_bcm_kona_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 234, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 241, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sdhci_bcm_kona_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @sdhci_bcm_kona_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 249, i32 3}
!31 = !{ptr @sdhci_bcm_kona_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sdhci_bcm_kona_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 256, i32 3}
!35 = !{ptr @sdhci_bcm_kona_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sdhci_bcm_kona_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 262, i32 3}
!39 = !{ptr @sdhci_bcm_kona_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sdhci_bcm_kona_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 266, i32 2}
!43 = !{ptr @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug304, !42, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 268, i32 2}
!46 = !{ptr @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug305, !45, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 275, i32 2}
!49 = !{ptr @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug306, !48, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 292, i32 4}
!52 = !{ptr @sdhci_bcm_kona_probe._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @sdhci_bcm_kona_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 305, i32 2}
!56 = !{ptr @sdhci_bcm_kona_probe.__UNIQUE_ID_ddebug307, !55, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 320, i32 2}
!59 = !{ptr @sdhci_bcm_kona_probe._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sdhci_bcm_kona_probe._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @sdhci_pltfm_data_kona, !62, !"sdhci_pltfm_data_kona", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 198, i32 38}
!63 = !{ptr @sdhci_bcm_kona_ops, !64, !"sdhci_bcm_kona_ops", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 187, i32 31}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 165, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sdhci_bcm_kona_card_event.__UNIQUE_ID_ddebug301, !66, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 169, i32 3}
!71 = !{ptr @sdhci_bcm_kona_card_event.__UNIQUE_ID_ddebug302, !70, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 73, i32 4}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sdhci_bcm_kona_sd_reset._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sdhci_bcm_kona_sd_reset._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @sdhci_bcm_kona_of_match, !78, !"sdhci_bcm_kona_of_match", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/sdhci-bcm-kona.c", i32 207, i32 34}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2148698924, i64 2148698929, i64 2148698942, i64 2148698986, i64 2148699020, i64 2148699041}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 6099776}
!91 = !{i64 2155333003}
!92 = !{i64 2155331033}
!93 = !{i64 6099358}
