; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-brcmstb.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-brcmstb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmstb_match_priv = type { ptr, ptr, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.sdhci_brcmstb_priv = type { ptr, i8 }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%union.cqhci_crypto_capabilities = type { i32 }

@__initcall__kmod_sdhci_brcmstb__276_333_sdhci_brcmstb_driver_init6 = internal global ptr @sdhci_brcmstb_driver_init, section ".initcall6.init", align 4
@sdhci_brcmstb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_brcmstb_probe, ptr @sdhci_pltfm_unregister, ptr @sdhci_brcmstb_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_brcm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_brcmstb_driver_exit = internal global ptr @sdhci_brcmstb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description277 = internal constant [65 x i8] c"sdhci_brcmstb.description=SDHCI driver for Broadcom BRCMSTB SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [30 x i8] c"sdhci_brcmstb.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_file279 = internal constant [50 x i8] c"sdhci_brcmstb.file=drivers/mmc/host/sdhci-brcmstb\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [29 x i8] c"sdhci_brcmstb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-brcmstb\00", [18 x i8] zeroinitializer }, align 32
@sdhci_brcm_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7425-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_priv_7425 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_priv_7445 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7216-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @match_priv_7216 }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@sdhci_brcmstb_probe.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci_brcmstb\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdhci_brcmstb_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mmc/host/sdhci-brcmstb.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Probe found match for %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get clock from Device Tree\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"supports-cqe\00", [19 x i8] zeroinitializer }, align 32
@sdhci_brcmstb_add_host.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sdhci_brcmstb_add_host\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CQE is enabled\0A\00", [16 x i8] zeroinitializer }, align 32
@sdhci_brcmstb_cqhci_ops = internal constant { %struct.cqhci_host_ops, [60 x i8] } { %struct.cqhci_host_ops { ptr @sdhci_brcmstb_dumpregs, ptr null, ptr null, ptr @sdhci_brcmstb_cqe_enable, ptr @sdhci_cqe_disable, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sdhci_brcmstb_add_host.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Using 64 bit DMA\0A\00", [46 x i8] zeroinitializer }, align 32
@match_priv_7425 = internal global { %struct.brcmstb_match_priv, [20 x i8] } { %struct.brcmstb_match_priv { ptr null, ptr @sdhci_brcmstb_ops, i32 3 }, [20 x i8] zeroinitializer }, align 32
@match_priv_7445 = internal global { %struct.brcmstb_match_priv, [20 x i8] } { %struct.brcmstb_match_priv { ptr null, ptr @sdhci_brcmstb_ops, i32 2 }, [20 x i8] zeroinitializer }, align 32
@match_priv_7216 = internal constant { %struct.brcmstb_match_priv, [20 x i8] } { %struct.brcmstb_match_priv { ptr @sdhci_brcmstb_hs400es, ptr @sdhci_brcmstb_ops_7216, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sdhci_brcmstb_ops = internal global { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_brcmstb_ops_7216 = internal global { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_brcmstb_set_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_brcmstb_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_brcmstb_hs400es.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdhci_brcmstb_hs400es\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): Setting HS400-Enhanced-Strobe mode\0A\00", [54 x i8] zeroinitializer }, align 32
@sdhci_brcmstb_set_uhs_signaling.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sdhci_brcmstb_set_uhs_signaling\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Setting UHS signaling for %d timing\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"sdhci_brcmstb_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 321, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 323, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"sdhci_brcm_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 152, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 235, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 240, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 247, i32 44 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 182, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [24 x i8] c"sdhci_brcmstb_cqhci_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 116, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 200, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"match_priv_7425\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 136, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"match_priv_7445\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 142, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"match_priv_7216\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 147, i32 40 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"sdhci_brcmstb_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 122, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"sdhci_brcmstb_ops_7216\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 129, i32 25 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 43, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [36 x i8] c"../drivers/mmc/host/sdhci-brcmstb.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 73, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file279, ptr @__UNIQUE_ID_license280, ptr @__exitcall_sdhci_brcmstb_driver_exit, ptr @__initcall__kmod_sdhci_brcmstb__276_333_sdhci_brcmstb_driver_init6, ptr @sdhci_brcmstb_driver_exit, ptr @sdhci_brcmstb_driver, ptr @.str, ptr @sdhci_brcm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sdhci_brcmstb_cqhci_ops, ptr @.str.9, ptr @match_priv_7425, ptr @match_priv_7445, ptr @match_priv_7216, ptr @sdhci_brcmstb_ops, ptr @sdhci_brcmstb_ops_7216, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_brcmstb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_brcm_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_brcmstb_cqhci_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_priv_7425 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_priv_7445 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_priv_7216 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_brcmstb_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_brcmstb_ops_7216 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_brcmstb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_brcmstb_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_brcmstb_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_brcmstb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %brcmstb_pdata = alloca %struct.sdhci_pltfm_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %brcmstb_pdata) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @sdhci_brcm_of_match, ptr noundef %1) #5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_brcmstb_probe.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_brcmstb_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_brcmstb_probe.__UNIQUE_ID_ddebug275, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %compatible) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call6 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %call6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end16, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call6) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end.i
  %5 = getelementptr inbounds i8, ptr %brcmstb_pdata, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 4
  %call.i127 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  br i1 %call.i127, label %if.then19, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %ops = getelementptr inbounds %struct.brcmstb_match_priv, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %irq = getelementptr inbounds %struct.sdhci_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sdhci_brcmstb_cqhci_irq, ptr %irq, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %ops21 = getelementptr inbounds %struct.brcmstb_match_priv, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %ops21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops21, align 4
  %12 = ptrtoint ptr %brcmstb_pdata to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %brcmstb_pdata, align 4
  %call23 = call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull %brcmstb_pdata, i32 noundef 8) #5
  %cmp.i128 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call23 to i32
  br label %err_clk

if.end27:                                         ; preds = %if.end20
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 0, i32 81
  %private.i129 = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 1, i32 11, i32 21
  %has_cqe31 = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 1, i32 11, i32 22
  %frombool32 = zext i1 %call.i127 to i8
  %14 = ptrtoint ptr %has_cqe31 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool32, ptr %has_cqe31, align 4
  %call33 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #5
  %call35 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call33) #5
  %15 = ptrtoint ptr %private.i129 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call35, ptr %private.i129, align 4
  %cmp.i130 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call35 to i32
  br label %err

if.end41:                                         ; preds = %if.end27
  call void @sdhci_get_property(ptr noundef %pdev) #5
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 0, i32 10
  %17 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc, align 8
  %call42 = call i32 @mmc_of_parse(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.err_crit_edge

if.end41.err_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end45:                                         ; preds = %if.end41
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %tobool46.not = icmp eq ptr %20, null
  br i1 %tobool46.not, label %if.end45.if.end51_crit_edge, label %land.lhs.true

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end45
  %21 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %caps2, align 4
  %and = and i32 %24, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %land.lhs.true.if.end51_crit_edge, label %if.then49

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %hs400_enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 0, i32 11, i32 18
  %25 = ptrtoint ptr %hs400_enhanced_strobe to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %20, ptr %hs400_enhanced_strobe, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %land.lhs.true.if.end51_crit_edge, %if.end45.if.end51_crit_edge
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 0, i32 9
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool.not.i131 = icmp eq ptr %29, null
  br i1 %tobool.not.i131, label %if.else.i, label %if.then.i, !prof !63

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %call.i132 = call i32 %29(ptr noundef %call23, i32 noundef 64) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 0, i32 4
  %30 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %31, i32 64
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  %33 = call i32 @llvm.bswap.i32(i32 %32) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i133 = phi i32 [ %call.i132, %if.then.i ], [ %33, %if.else.i ]
  %caps = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 0, i32 56
  %34 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i133, ptr %caps, align 8
  %flags = getelementptr inbounds %struct.brcmstb_match_priv, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and53 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %sdhci_readl.exit.if.end58_crit_edge, label %if.then55

sdhci_readl.exit.if.end58_crit_edge:              ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then55:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and57 = and i32 %retval.0.i133, -268435457
  %37 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and57, ptr %caps, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %sdhci_readl.exit.if.end58_crit_edge
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool.not.i135 = icmp eq ptr %41, null
  br i1 %tobool.not.i135, label %if.else.i140, label %if.then.i137, !prof !63

if.then.i137:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %call.i136 = call i32 %41(ptr noundef %call23, i32 noundef 68) #5
  br label %sdhci_readl.exit142

if.else.i140:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i138 = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 0, i32 4
  %42 = ptrtoint ptr %ioaddr.i138 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i138, align 16
  %add.ptr.i139 = getelementptr i8, ptr %43, i32 68
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #5, !srcloc !64
  %45 = call i32 @llvm.bswap.i32(i32 %44) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  br label %sdhci_readl.exit142

sdhci_readl.exit142:                              ; preds = %if.else.i140, %if.then.i137
  %retval.0.i141 = phi i32 [ %call.i136, %if.then.i137 ], [ %45, %if.else.i140 ]
  %caps1 = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 0, i32 57
  %and61 = and i32 %retval.0.i141, -8
  %46 = ptrtoint ptr %caps1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and61, ptr %caps1, align 4
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %call23, i32 0, i32 1
  %47 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %quirks, align 4
  %or = or i32 %48, 134217728
  store i32 %or, ptr %quirks, align 4
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %and63 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %sdhci_readl.exit142.if.end68_crit_edge, label %if.then65

sdhci_readl.exit142.if.end68_crit_edge:           ; preds = %sdhci_readl.exit142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then65:                                        ; preds = %sdhci_readl.exit142
  call void @__sanitizer_cov_trace_pc() #7
  %or67 = or i32 %48, 134221824
  %51 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or67, ptr %quirks, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %sdhci_readl.exit142.if.end68_crit_edge
  %call69 = call fastcc i32 @sdhci_brcmstb_add_host(ptr noundef %call23, ptr noundef %private.i129)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.err_crit_edge

if.end68.err_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end72:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call6, ptr %private.i, align 128
  br label %cleanup

err:                                              ; preds = %if.end68.err_crit_edge, %if.end41.err_crit_edge, %if.then38
  %res.0 = phi i32 [ %16, %if.then38 ], [ %call42, %if.end41.err_crit_edge ], [ %call69, %if.end68.err_crit_edge ]
  call void @sdhci_pltfm_free(ptr noundef %pdev) #5
  br label %err_clk

err_clk:                                          ; preds = %err, %if.then25
  %res.1 = phi i32 [ %13, %if.then25 ], [ %res.0, %err ]
  call void @clk_disable(ptr noundef %call6) #5
  call void @clk_unprepare(ptr noundef %call6) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end72, %if.then3.i, %if.end12.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %call11, %if.then8 ], [ %res.1, %err_clk ], [ 0, %if.end72 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %brcmstb_pdata) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @sdhci_pltfm_suspend(ptr noundef %dev) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_brcmstb_cqhci_irq(ptr noundef %host, i32 noundef %intmask) #2 align 64 {
entry:
  %cmd_error = alloca i32, align 4
  %data_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_error) #5
  %0 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_error, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_error) #5
  %1 = ptrtoint ptr %data_error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data_error, align 4
  %call = call zeroext i1 @sdhci_cqe_irq(ptr noundef %host, i32 noundef %intmask, ptr noundef nonnull %cmd_error, ptr noundef nonnull %data_error) #5
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %4 = ptrtoint ptr %cmd_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_error, align 4
  %6 = ptrtoint ptr %data_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_error, align 4
  %call1 = call i32 @cqhci_irq(ptr noundef %3, i32 noundef %intmask, i32 noundef %5, i32 noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %intmask, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_error) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_error) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_brcmstb_add_host(ptr noundef %host, ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %has_cqe = getelementptr inbounds %struct.sdhci_brcmstb_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %has_cqe to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_cqe, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @sdhci_add_host(ptr noundef %host) #5
  br label %cleanup52

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_brcmstb_add_host.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_brcmstb_add_host, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !62

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_brcmstb_add_host.__UNIQUE_ID_ddebug273, ptr noundef %5, ptr noundef nonnull @.str.8) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %mmc7 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %6 = ptrtoint ptr %mmc7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc7, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps2, align 4
  %or = or i32 %9, 25165824
  store i32 %or, ptr %caps2, align 4
  %call8 = tail call i32 @sdhci_setup_host(ptr noundef %host) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup52_crit_edge

do.end.cleanup52_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

if.end11:                                         ; preds = %do.end
  %10 = ptrtoint ptr %mmc7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc7, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 248, i32 noundef 3520) #5
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %15, i32 512
  %mmio = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %mmio, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sdhci_brcmstb_cqhci_ops, ptr %call.i, align 4
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 16
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18 = icmp ne i32 %and, 0
  br i1 %tobool18, label %do.body22, label %if.end17.if.end41_crit_edge

if.end17.if.end41_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

do.body22:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_brcmstb_add_host.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_brcmstb_add_host, %if.then34)) #5
          to label %do.end39 [label %if.then34], !srcloc !62

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %mmc7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmc7, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_brcmstb_add_host.__UNIQUE_ID_ddebug274, ptr noundef %23, ptr noundef nonnull @.str.9) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %do.body22
  %caps = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %caps, align 4
  %or40 = or i32 %25, 1
  store i32 %or40, ptr %caps, align 4
  br label %if.end41

if.end41:                                         ; preds = %do.end39, %if.end17.if.end41_crit_edge
  %26 = ptrtoint ptr %mmc7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmc7, align 8
  %call44 = tail call i32 @cqhci_init(ptr noundef nonnull %call.i, ptr noundef %27, i1 noundef zeroext %tobool18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %call48 = tail call i32 @__sdhci_add_host(ptr noundef %host) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.cleanup52_crit_edge, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47.cleanup52_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

cleanup:                                          ; preds = %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %ret.0 = phi i32 [ %call44, %if.end41.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  tail call void @sdhci_cleanup_host(ptr noundef %host) #5
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup, %if.end47.cleanup52_crit_edge, %do.end.cleanup52_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ %call, %if.then ], [ %call8, %do.end.cleanup52_crit_edge ], [ 0, %if.end47.cleanup52_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_dumpregs(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void @sdhci_dumpregs(ptr noundef %private.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_cqe_enable(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !63

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %3(ptr noundef %private.i, i32 noundef 36) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !64
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %and25 = and i32 %retval.0.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not26 = icmp eq i32 %and25, 0
  br i1 %tobool.not26, label %sdhci_readl.exit.while.end_crit_edge, label %while.body.lr.ph

sdhci_readl.exit.while.end_crit_edge:             ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %sdhci_readl.exit
  %ioaddr.i11 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %sdhci_readl.exit24.while.body_crit_edge, %while.body.lr.ph
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i8 = icmp eq ptr %11, null
  br i1 %tobool.not.i8, label %if.else.i13, label %if.then.i10, !prof !63

if.then.i10:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i9 = tail call i32 %11(ptr noundef %private.i, i32 noundef 32) #5
  br label %sdhci_readl.exit15

if.else.i13:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %ioaddr.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i11, align 16
  %add.ptr.i12 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  br label %sdhci_readl.exit15

sdhci_readl.exit15:                               ; preds = %if.else.i13, %if.then.i10
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i17 = icmp eq ptr %18, null
  br i1 %tobool.not.i17, label %if.else.i22, label %if.then.i19, !prof !63

if.then.i19:                                      ; preds = %sdhci_readl.exit15
  call void @__sanitizer_cov_trace_pc() #7
  %call.i18 = tail call i32 %18(ptr noundef %private.i, i32 noundef 36) #5
  br label %sdhci_readl.exit24

if.else.i22:                                      ; preds = %sdhci_readl.exit15
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %ioaddr.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i11, align 16
  %add.ptr.i21 = getelementptr i8, ptr %20, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #5, !srcloc !64
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  br label %sdhci_readl.exit24

sdhci_readl.exit24:                               ; preds = %if.else.i22, %if.then.i19
  %retval.0.i23 = phi i32 [ %call.i18, %if.then.i19 ], [ %22, %if.else.i22 ]
  %and = and i32 %retval.0.i23, 2048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sdhci_readl.exit24.while.end_crit_edge, label %sdhci_readl.exit24.while.body_crit_edge

sdhci_readl.exit24.while.body_crit_edge:          ; preds = %sdhci_readl.exit24
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

sdhci_readl.exit24.while.end_crit_edge:           ; preds = %sdhci_readl.exit24
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %sdhci_readl.exit24.while.end_crit_edge, %sdhci_readl.exit.while.end_crit_edge
  tail call void @sdhci_cqe_enable(ptr noundef %mmc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_hs400es(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_brcmstb_hs400es.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_brcmstb_hs400es, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_brcmstb_hs400es.__UNIQUE_ID_ddebug271, ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 10
  %5 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enhanced_strobe, align 1, !range !66
  %7 = and i32 %4, -16777217
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = zext i8 %6 to i32
  %reg.0 = or i32 %8, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 16
  %add.ptr14 = getelementptr i8, ptr %12, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %10) #5, !srcloc !69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %actual_clock, align 8
  %3 = load ptr, ptr %mmc, align 8
  %actual_clock2 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 58
  %call = tail call zeroext i16 @sdhci_calc_clk(ptr noundef %host, i32 noundef %clock, ptr noundef %actual_clock2) #5
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !63

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %7(ptr noundef %host, i16 noundef zeroext %call, i32 noundef 44) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %8 = tail call i16 @llvm.bswap.i16(i16 %call) #5
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %10, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %8) #5, !srcloc !71
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %sdhci_writew.exit.cleanup_crit_edge, label %if.end

sdhci_writew.exit.cleanup_crit_edge:              ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sdhci_enable_clk(ptr noundef %host, i16 noundef zeroext %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sdhci_writew.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_brcmstb_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_brcmstb_set_uhs_signaling.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_brcmstb_set_uhs_signaling, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_brcmstb_set_uhs_signaling.__UNIQUE_ID_ddebug272, ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %timing) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !63

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call zeroext i16 %7(ptr noundef %host, i32 noundef 62) #5
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %9, i32 62
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !72
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i79 = phi i16 [ %call.i, %if.then.i ], [ %11, %if.else.i ]
  %12 = and i16 %retval.0.i79, -8
  %13 = zext i32 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %timing, label %sdhci_readw.exit.if.end59_crit_edge [
    i32 9, label %sdhci_readw.exit.if.then8_crit_edge
    i32 6, label %sdhci_readw.exit.if.then8_crit_edge86
    i32 10, label %if.then50
    i32 2, label %sdhci_readw.exit.if.then26_crit_edge
    i32 1, label %sdhci_readw.exit.if.then26_crit_edge87
    i32 4, label %sdhci_readw.exit.if.then26_crit_edge88
    i32 5, label %if.then33
    i32 7, label %sdhci_readw.exit.if.then43_crit_edge
    i32 8, label %sdhci_readw.exit.if.then43_crit_edge89
  ]

sdhci_readw.exit.if.then43_crit_edge89:           ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

sdhci_readw.exit.if.then43_crit_edge:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

sdhci_readw.exit.if.then26_crit_edge88:           ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

sdhci_readw.exit.if.then26_crit_edge87:           ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

sdhci_readw.exit.if.then26_crit_edge:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

sdhci_readw.exit.if.then8_crit_edge86:            ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

sdhci_readw.exit.if.then8_crit_edge:              ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

sdhci_readw.exit.if.end59_crit_edge:              ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then8:                                         ; preds = %sdhci_readw.exit.if.then8_crit_edge, %sdhci_readw.exit.if.then8_crit_edge86
  %14 = or i16 %12, 3
  br label %if.end59

if.then26:                                        ; preds = %sdhci_readw.exit.if.then26_crit_edge, %sdhci_readw.exit.if.then26_crit_edge87, %sdhci_readw.exit.if.then26_crit_edge88
  %15 = or i16 %12, 1
  br label %if.end59

if.then33:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %16 = or i16 %12, 2
  br label %if.end59

if.then43:                                        ; preds = %sdhci_readw.exit.if.then43_crit_edge, %sdhci_readw.exit.if.then43_crit_edge89
  %17 = or i16 %12, 4
  br label %if.end59

if.then50:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %18 = or i16 %12, 5
  br label %if.end59

if.end59:                                         ; preds = %if.then50, %if.then43, %if.then33, %if.then26, %if.then8, %sdhci_readw.exit.if.end59_crit_edge
  %ctrl_2.0 = phi i16 [ %14, %if.then8 ], [ %15, %if.then26 ], [ %16, %if.then33 ], [ %17, %if.then43 ], [ %18, %if.then50 ], [ %12, %sdhci_readw.exit.if.end59_crit_edge ]
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i81 = icmp eq ptr %22, null
  br i1 %tobool.not.i81, label %do.body.i, label %if.then.i82, !prof !63

if.then.i82:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %22(ptr noundef %host, i16 noundef zeroext %ctrl_2.0, i32 noundef 62) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %23 = tail call i16 @llvm.bswap.i16(i16 %ctrl_2.0) #5
  %ioaddr.i83 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %24 = ptrtoint ptr %ioaddr.i83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i83, align 16
  %add.ptr.i84 = getelementptr i8, ptr %25, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i84, i16 %23) #5, !srcloc !71
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sdhci_calc_clk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_sdhci_brcmstb__276_333_sdhci_brcmstb_driver_init6, !1, !"__initcall__kmod_sdhci_brcmstb__276_333_sdhci_brcmstb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 333, i32 1}
!2 = !{ptr @__exitcall_sdhci_brcmstb_driver_exit, !1, !"__exitcall_sdhci_brcmstb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description277, !4, !"__UNIQUE_ID_description277", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 335, i32 1}
!5 = !{ptr @__UNIQUE_ID_author278, !6, !"__UNIQUE_ID_author278", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 336, i32 1}
!7 = !{ptr @__UNIQUE_ID_file279, !8, !"__UNIQUE_ID_file279", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 337, i32 1}
!9 = !{ptr @__UNIQUE_ID_license280, !8, !"__UNIQUE_ID_license280", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 323, i32 11}
!12 = !{ptr @sdhci_brcmstb_driver, !13, !"sdhci_brcmstb_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 321, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 235, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sdhci_brcmstb_probe.__UNIQUE_ID_ddebug275, !15, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 240, i32 10}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 247, i32 44}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 182, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sdhci_brcmstb_add_host.__UNIQUE_ID_ddebug273, !25, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 200, i32 3}
!30 = !{ptr @sdhci_brcmstb_add_host.__UNIQUE_ID_ddebug274, !29, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!31 = !{ptr @sdhci_brcmstb_cqhci_ops, !32, !"sdhci_brcmstb_cqhci_ops", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 116, i32 36}
!33 = !{ptr @sdhci_brcm_of_match, !34, !"sdhci_brcm_of_match", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 152, i32 34}
!35 = !{ptr @match_priv_7425, !36, !"match_priv_7425", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 136, i32 34}
!37 = !{ptr @sdhci_brcmstb_ops, !38, !"sdhci_brcmstb_ops", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 122, i32 25}
!39 = !{ptr @match_priv_7445, !40, !"match_priv_7445", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 142, i32 34}
!41 = !{ptr @match_priv_7216, !42, !"match_priv_7216", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 147, i32 40}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 43, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sdhci_brcmstb_hs400es.__UNIQUE_ID_ddebug271, !44, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!47 = !{ptr @sdhci_brcmstb_ops_7216, !48, !"sdhci_brcmstb_ops_7216", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 129, i32 25}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/sdhci-brcmstb.c", i32 73, i32 2}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sdhci_brcmstb_set_uhs_signaling.__UNIQUE_ID_ddebug272, !50, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148158941, i64 2148158946, i64 2148158959, i64 2148159003, i64 2148159037, i64 2148159058}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 692202}
!65 = !{i64 2154712454}
!66 = !{i8 0, i8 2}
!67 = !{i64 2154726689}
!68 = !{i64 2154726918}
!69 = !{i64 691784}
!70 = !{i64 2154711090}
!71 = !{i64 691164}
!72 = !{i64 691364}
!73 = !{i64 2154713158}
