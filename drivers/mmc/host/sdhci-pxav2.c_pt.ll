; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-pxav2.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-pxav2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.sdhci_pxa_platdata = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }

@__initcall__kmod_sdhci_pxav2__271_237_sdhci_pxav2_driver_init6 = internal global ptr @sdhci_pxav2_driver_init, section ".initcall6.init", align 4
@sdhci_pxav2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_pxav2_probe, ptr @sdhci_pltfm_unregister, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_pxav2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_pxav2_driver_exit = internal global ptr @sdhci_pxav2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description272 = internal constant [47 x i8] c"sdhci_pxav2.description=SDHCI driver for pxav2\00", section ".modinfo", align 1
@__UNIQUE_ID_author273 = internal constant [46 x i8] c"sdhci_pxav2.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_file274 = internal constant [46 x i8] c"sdhci_pxav2.file=drivers/mmc/host/sdhci-pxav2\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [27 x i8] c"sdhci_pxav2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci-pxav2\00", [20 x i8] zeroinitializer }, align 32
@sdhci_pxav2_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxav2-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PXA-SDHCLK\00", [21 x i8] zeroinitializer }, align 32
@sdhci_pxav2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 173, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get io clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdhci_pxav2_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mmc/host/sdhci-pxav2.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_pxav2_probe._entry_ptr = internal global ptr @sdhci_pxav2_probe._entry, section ".printk_index", align 4
@sdhci_pxav2_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable io clock\0A\00", [37 x i8] zeroinitializer }, align 32
@sdhci_pxav2_probe._entry_ptr.9 = internal global ptr @sdhci_pxav2_probe._entry.7, section ".printk_index", align 4
@pxav2_sdhci_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @pxav2_mmc_set_bus_width, ptr null, ptr null, ptr @pxav2_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"non-removable\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus-width\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mrvl,clk-delay-cycles\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"sdhci_pxav2_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 226, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 228, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"sdhci_pxav2_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 113, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 171, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 173, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 180, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"pxav2_sdhci_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 104, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 132, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 135, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [34 x i8] c"../drivers/mmc/host/sdhci-pxav2.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 139, i32 27 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__exitcall_sdhci_pxav2_driver_exit, ptr @__initcall__kmod_sdhci_pxav2__271_237_sdhci_pxav2_driver_init6, ptr @sdhci_pxav2_driver_exit, ptr @sdhci_pxav2_probe._entry, ptr @sdhci_pxav2_probe._entry.7, ptr @sdhci_pxav2_probe._entry_ptr, ptr @sdhci_pxav2_probe._entry_ptr.9, ptr @sdhci_pxav2_driver, ptr @.str, ptr @sdhci_pxav2_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @pxav2_sdhci_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pxav2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pxav2_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pxav2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_pxav2_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxav2_sdhci_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pxav2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_pxav2_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_pxav2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_pxav2_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_pxav2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bus_width.i = alloca i32, align 4
  %clk_delay_cycles.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef null, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %cmp.i106 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %3 = ptrtoint ptr %call6 to i32
  br label %free

if.end10:                                         ; preds = %if.end
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 81
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %private.i, align 128
  %call.i = tail call i32 @clk_prepare(ptr noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.do.end16_crit_edge

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call i32 @clk_enable(ptr noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end18, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call6) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i, %if.end10.do.end16_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end10.do.end16_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %free

if.end18:                                         ; preds = %if.end.i
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 33558592, ptr %quirks, align 4
  %call20 = tail call ptr @of_match_device(ptr noundef nonnull @sdhci_pxav2_of_match, ptr noundef %dev) #6
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end18.if.end24_crit_edge, label %if.then22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_width.i) #6
  %8 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %bus_width.i, align 4, !annotation !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_delay_cycles.i) #6
  %9 = ptrtoint ptr %clk_delay_cycles.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %clk_delay_cycles.i, align 4, !annotation !47
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #6
  %tobool.not.i107 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i107, label %if.then22.pxav2_get_mmc_pdata.exit_crit_edge, label %if.end.i110

if.then22.pxav2_get_mmc_pdata.exit_crit_edge:     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxav2_get_mmc_pdata.exit

if.end.i110:                                      ; preds = %if.then22
  %call1.i108 = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool2.not.i109 = icmp eq ptr %call1.i108, null
  br i1 %tobool2.not.i109, label %if.end.i110.if.end4.i_crit_edge, label %if.then3.i111

if.end.i110.if.end4.i_crit_edge:                  ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then3.i111:                                    ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i.i, align 4
  %or.i = or i32 %11, 2
  store i32 %or.i, ptr %call.i.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i111, %if.end.i110.if.end4.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef nonnull %bus_width.i, i32 noundef 1, i32 noundef 0) #6
  %12 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp.i112 = icmp eq i32 %13, 8
  br i1 %cmp.i112, label %if.then6.i, label %if.end4.i.if.end9.i_crit_edge

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i.i, align 4
  %or8.i = or i32 %15, 4
  store i32 %or8.i, ptr %call.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end9.i_crit_edge
  %call.i.i26.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull %clk_delay_cycles.i, i32 noundef 1, i32 noundef 0) #6
  %16 = ptrtoint ptr %clk_delay_cycles.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clk_delay_cycles.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp11.not.i = icmp eq i32 %17, 0
  br i1 %cmp11.not.i, label %if.end9.i.pxav2_get_mmc_pdata.exit_crit_edge, label %if.then12.i

if.end9.i.pxav2_get_mmc_pdata.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pxav2_get_mmc_pdata.exit

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %clk_delay_sel.i = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %call.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %clk_delay_sel.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %clk_delay_sel.i, align 4
  %clk_delay_cycles13.i = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %clk_delay_cycles13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %clk_delay_cycles13.i, align 4
  br label %pxav2_get_mmc_pdata.exit

pxav2_get_mmc_pdata.exit:                         ; preds = %if.then12.i, %if.end9.i.pxav2_get_mmc_pdata.exit_crit_edge, %if.then22.pxav2_get_mmc_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_delay_cycles.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_width.i) #6
  br label %if.end24

if.end24:                                         ; preds = %pxav2_get_mmc_pdata.exit, %if.end18.if.end24_crit_edge
  %pdata.0 = phi ptr [ %call.i.i, %pxav2_get_mmc_pdata.exit ], [ %1, %if.end18.if.end24_crit_edge ]
  %tobool25.not = icmp eq ptr %pdata.0, null
  br i1 %tobool25.not, label %if.end24.if.end61_crit_edge, label %if.then26

if.end24.if.end61_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then26:                                        ; preds = %if.end24
  %20 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdata.0, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.then26.if.end31_crit_edge, label %if.then28

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quirks, align 4
  %or = or i32 %23, 32768
  store i32 %or, ptr %quirks, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %24 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caps, align 32
  %or30 = or i32 %27, 256
  store i32 %or30, ptr %caps, align 32
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then26.if.end31_crit_edge
  %28 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pdata.0, align 4
  %and33 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end39_crit_edge, label %if.then35

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %mmc36 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %30 = ptrtoint ptr %mmc36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc36, align 8
  %caps37 = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %caps37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %caps37, align 32
  %or38 = or i32 %33, 64
  store i32 %or38, ptr %caps37, align 32
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end31.if.end39_crit_edge
  %quirks40 = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %pdata.0, i32 0, i32 7
  %34 = ptrtoint ptr %quirks40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %quirks40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool41.not = icmp eq i32 %35, 0
  br i1 %tobool41.not, label %if.end39.if.end46_crit_edge, label %if.then42

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks, align 4
  %or45 = or i32 %37, %35
  store i32 %or45, ptr %quirks, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end39.if.end46_crit_edge
  %host_caps = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %pdata.0, i32 0, i32 5
  %38 = ptrtoint ptr %host_caps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %host_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool47.not = icmp eq i32 %39, 0
  br i1 %tobool47.not, label %if.end46.if.end53_crit_edge, label %if.then48

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %mmc50 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %40 = ptrtoint ptr %mmc50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmc50, align 8
  %caps51 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %caps51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %caps51, align 32
  %or52 = or i32 %43, %39
  store i32 %or52, ptr %caps51, align 32
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end46.if.end53_crit_edge
  %pm_caps = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %pdata.0, i32 0, i32 9
  %44 = ptrtoint ptr %pm_caps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pm_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool54.not = icmp eq i32 %45, 0
  br i1 %tobool54.not, label %if.end53.if.end61_crit_edge, label %if.then55

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %mmc57 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %46 = ptrtoint ptr %mmc57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmc57, align 8
  %pm_caps58 = getelementptr inbounds %struct.mmc_host, ptr %47, i32 0, i32 19
  %48 = ptrtoint ptr %pm_caps58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pm_caps58, align 4
  %or59 = or i32 %49, %45
  store i32 %or59, ptr %pm_caps58, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.end53.if.end61_crit_edge, %if.end24.if.end61_crit_edge
  %ops = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 9
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @pxav2_sdhci_ops, ptr %ops, align 4
  %call62 = call i32 @sdhci_add_host(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %disable_clk

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

disable_clk:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_disable(ptr noundef %call6) #6
  call void @clk_unprepare(ptr noundef %call6) #6
  br label %free

free:                                             ; preds = %disable_clk, %do.end16, %do.end
  %ret.0 = phi i32 [ %3, %do.end ], [ %retval.0.i.ph, %do.end16 ], [ %call62, %disable_clk ]
  call void @sdhci_pltfm_free(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end61.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.0, %free ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxav2_mmc_set_bus_width(ptr nocapture noundef readonly %host, i32 noundef %width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %3 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr, align 16
  %add.ptr6 = getelementptr i8, ptr %4, i32 234
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #6, !srcloc !50
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %width)
  %cmp = icmp eq i32 %width, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = and i8 %2, -3
  %8 = or i16 %6, 4352
  br label %do.body

if.else:                                          ; preds = %entry
  %9 = and i16 %6, -4353
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %width)
  %cmp16 = icmp eq i32 %width, 2
  br i1 %cmp16, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = or i8 %2, 2
  br label %do.body

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %11 = and i8 %2, -3
  br label %do.body

do.body:                                          ; preds = %if.else22, %if.then18, %if.then
  %tmp.0 = phi i16 [ %8, %if.then ], [ %9, %if.then18 ], [ %9, %if.else22 ]
  %ctrl.0 = phi i8 [ %7, %if.then ], [ %10, %if.then18 ], [ %11, %if.else22 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %12 = tail call i16 @llvm.bswap.i16(i16 %tmp.0)
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 16
  %add.ptr28 = getelementptr i8, ptr %14, i32 234
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28, i16 %12) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr, align 16
  %add.ptr33 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33, i8 %ctrl.0) #6, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxav2_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %platform_data = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mask)
  %cmp = icmp eq i8 %mask, 1
  br i1 %cmp, label %if.then, label %entry.if.end61_crit_edge

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %clk_delay_sel = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %clk_delay_sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_delay_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then5, label %land.lhs.true.land.lhs.true23_crit_edge

land.lhs.true.land.lhs.true23_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true23

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 16
  %add.ptr6 = getelementptr i8, ptr %9, i32 230
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %clk_delay_cycles = getelementptr inbounds %struct.sdhci_pxa_platdata, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %clk_delay_cycles to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_delay_cycles, align 4
  %.tr = trunc i32 %12 to i16
  %13 = shl i16 %.tr, 10
  %14 = and i16 %13, -4096
  %15 = and i16 %10, -244
  %16 = or i16 %15, 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %18 = or i16 %17, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 16
  %add.ptr21 = getelementptr i8, ptr %21, i32 230
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21, i16 %19) #6, !srcloc !53
  br label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.then5, %land.lhs.true.land.lhs.true23_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %5, align 4
  %and24 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true23.if.else_crit_edge, label %if.then26

land.lhs.true23.if.else_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr29 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %24 = ptrtoint ptr %ioaddr29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr29, align 16
  %add.ptr30 = getelementptr i8, ptr %25, i32 224
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr30) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %27 = and i16 %26, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %ioaddr29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr29, align 16
  %add.ptr41 = getelementptr i8, ptr %29, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41, i16 %27) #6, !srcloc !53
  br label %if.end61

if.else:                                          ; preds = %land.lhs.true23.if.else_crit_edge, %if.then.if.else_crit_edge
  %ioaddr44 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %30 = ptrtoint ptr %ioaddr44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr44, align 16
  %add.ptr45 = getelementptr i8, ptr %31, i32 224
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %33 = or i16 %32, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %ioaddr44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr44, align 16
  %add.ptr59 = getelementptr i8, ptr %35, i32 224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr59, i16 %33) #6, !srcloc !53
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then26, %entry.if.end61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_sdhci_pxav2__271_237_sdhci_pxav2_driver_init6, !1, !"__initcall__kmod_sdhci_pxav2__271_237_sdhci_pxav2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 237, i32 1}
!2 = !{ptr @__exitcall_sdhci_pxav2_driver_exit, !1, !"__exitcall_sdhci_pxav2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description272, !4, !"__UNIQUE_ID_description272", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 239, i32 1}
!5 = !{ptr @__UNIQUE_ID_author273, !6, !"__UNIQUE_ID_author273", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 240, i32 1}
!7 = !{ptr @__UNIQUE_ID_file274, !8, !"__UNIQUE_ID_file274", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 241, i32 1}
!9 = !{ptr @__UNIQUE_ID_license275, !8, !"__UNIQUE_ID_license275", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 228, i32 11}
!12 = !{ptr @sdhci_pxav2_driver, !13, !"sdhci_pxav2_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 226, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 171, i32 26}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 173, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sdhci_pxav2_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sdhci_pxav2_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 180, i32 3}
!26 = !{ptr @sdhci_pxav2_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sdhci_pxav2_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 132, i32 27}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 135, i32 27}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 139, i32 27}
!34 = !{ptr @pxav2_sdhci_ops, !35, !"pxav2_sdhci_ops", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 104, i32 31}
!36 = !{ptr @sdhci_pxav2_of_match, !37, !"sdhci_pxav2_of_match", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/sdhci-pxav2.c", i32 113, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{i64 4820304}
!49 = !{i64 2154756612}
!50 = !{i64 4819686}
!51 = !{i64 2154757111}
!52 = !{i64 2154757379}
!53 = !{i64 4819486}
!54 = !{i64 2154757778}
!55 = !{i64 4819909}
!56 = !{i64 2154753916}
!57 = !{i64 2154754165}
!58 = !{i64 2154754848}
!59 = !{i64 2154755145}
!60 = !{i64 2154755821}
!61 = !{i64 2154756194}
