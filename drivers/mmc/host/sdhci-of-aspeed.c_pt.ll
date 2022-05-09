; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-of-aspeed.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-of-aspeed.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aspeed_sdhci_pdata = type { i32, ptr, i32 }
%struct.aspeed_sdhci_phase_desc = type { %struct.aspeed_sdhci_tap_desc, %struct.aspeed_sdhci_tap_desc }
%struct.aspeed_sdhci_tap_desc = type { i32, i32, i8 }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_sdc = type { ptr, ptr, %struct.spinlock, ptr }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.aspeed_sdhci = type { ptr, ptr, i32, %struct.mmc_clk_phase_map, ptr }
%struct.mmc_clk_phase_map = type { [11 x %struct.mmc_clk_phase] }
%struct.mmc_clk_phase = type { i8, i16, i16 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }

@aspeed_sdc_test_suite_array = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @aspeed_sdhci_test_suite, ptr null], [24 x i8] zeroinitializer }, align 32
@aspeed_sdc_test_suites = internal global ptr @aspeed_sdc_test_suite_array, section ".kunit_test_suites", align 4
@__initcall__kmod_sdhci_of_aspeed__275_655_aspeed_sdc_init6 = internal global ptr @aspeed_sdc_init, section ".initcall6.init", align 4
@aspeed_sdc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_sdc_probe, ptr @aspeed_sdc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.52, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @aspeed_sdc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@aspeed_sdhci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_sdhci_probe, ptr @aspeed_sdhci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.58, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @aspeed_sdhci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_sdc_exit = internal global ptr @aspeed_sdc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description276 = internal constant [76 x i8] c"sdhci_of_aspeed.description=Driver for the ASPEED SD/SDIO/SDHCI Controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [60 x i8] c"sdhci_of_aspeed.author=Ryan Chen <ryan_chen@aspeedtech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [56 x i8] c"sdhci_of_aspeed.author=Andrew Jeffery <andrew@aj.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_file279 = internal constant [54 x i8] c"sdhci_of_aspeed.file=drivers/mmc/host/sdhci-of-aspeed\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [28 x i8] c"sdhci_of_aspeed.license=GPL\00", section ".modinfo", align 1
@aspeed_sdhci_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"sdhci-of-aspeed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @aspeed_sdhci_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@aspeed_sdhci_test_cases = internal global { [3 x %struct.kunit_case], [36 x i8] } { [3 x %struct.kunit_case] [%struct.kunit_case { ptr @aspeed_sdhci_phase_ddr52, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @aspeed_sdhci_phase_hs200, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aspeed_sdhci_phase_ddr52\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aspeed_sdhci_phase_hs200\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/mmc/host/sdhci-of-aspeed-test.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 0)\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 1)\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 2)\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 3)\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 4)\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 5)\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"14\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 23)\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"15\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 24)\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 25)\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"((((1UL))) << (4)) | 0\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 180)\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 181)\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"((((1UL))) << (4)) | 1\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 182)\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 183)\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"((((1UL))) << (4)) | 2\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 184)\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"((((1UL))) << (4)) | 3\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 185)\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"((((1UL))) << (4)) | 14\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 203)\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"((((1UL))) << (4)) | 15\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 204)\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 205)\00", [46 x i8] zeroinitializer }, align 32
@aspeed_sdhci_phase_to_tap.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdhci_of_aspeed\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aspeed_sdhci_phase_to_tap\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mmc/host/sdhci-of-aspeed.c\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Inverting clock to reduce phase correction from %d to %d degrees\0A\00", [62 x i8] zeroinitializer }, align 32
@aspeed_sdhci_phase_to_tap.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"Requested out of range phase tap %d for %d degrees of phase compensation at %luHz, clamping to tap %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 6)\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 7)\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 89)\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 90)\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 91)\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 96)\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"((((1UL))) << (4))\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 186)\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 187)\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 269)\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 270)\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 271)\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"aspeed_sdhci_phase_to_tap(((void *)0), rate, 276)\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sd-controller-aspeed\00", [43 x i8] zeroinitializer }, align 32
@aspeed_sdc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-sd-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-sd-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-sd-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@aspeed_sdc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&sdc->lock\00", [21 x i8] zeroinitializer }, align 32
@aspeed_sdc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.36, i32 546, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to enable SDCLK\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aspeed_sdc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_sdc_probe._entry_ptr = internal global ptr @aspeed_sdc_probe._entry, section ".printk_index", align 4
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdhci-aspeed\00", [19 x i8] zeroinitializer }, align 32
@aspeed_sdhci_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_sdhci_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_sdhci_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_sdhci_pdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@aspeed_sdhci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.36, i32 377, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Missing platform configuration data\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed_sdhci_probe\00", [45 x i8] zeroinitializer }, align 32
@aspeed_sdhci_probe._entry_ptr = internal global ptr @aspeed_sdhci_probe._entry, section ".printk_index", align 4
@aspeed_sdhci_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @aspeed_sdhci_ops, i32 33554432, i32 0 }, [20 x i8] zeroinitializer }, align 32
@aspeed_sdhci_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.36, i32 402, ptr @.str.63, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Phase control not supported for slot %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aspeed_sdhci_probe._entry_ptr.64 = internal global ptr @aspeed_sdhci_probe._entry.61, section ".printk_index", align 4
@aspeed_sdhci_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.60, ptr @.str.36, i32 408, ptr @.str.63, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Configured for slot %d\0A\00", [40 x i8] zeroinitializer }, align 32
@aspeed_sdhci_probe._entry_ptr.67 = internal global ptr @aspeed_sdhci_probe._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc-hs200-1_8v\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sd-uhs-sdr104\00", [18 x i8] zeroinitializer }, align 32
@aspeed_sdhci_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.60, ptr @.str.36, i32 429, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to enable SDIO clock\0A\00", [35 x i8] zeroinitializer }, align 32
@aspeed_sdhci_probe._entry_ptr.72 = internal global ptr @aspeed_sdhci_probe._entry.70, section ".printk_index", align 4
@aspeed_sdhci_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr @aspeed_sdhci_readl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_sdhci_get_max_clock, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr @aspeed_sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aspeed_sdhci_configure_phase.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.73, ptr @.str.36, ptr @.str.74, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aspeed_sdhci_configure_phase\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Using taps [%d, %d] for [%d, %d] degrees of phase correction at %luHz (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@ast2400_sdhci_pdata = internal constant { %struct.aspeed_sdhci_pdata, [20 x i8] } { %struct.aspeed_sdhci_pdata { i32 2, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ast2600_sdhci_pdata = internal constant { %struct.aspeed_sdhci_pdata, [20 x i8] } { %struct.aspeed_sdhci_pdata { i32 1, ptr @ast2600_sdhci_phase, i32 2 }, [20 x i8] zeroinitializer }, align 32
@ast2600_sdhci_phase = internal constant { [2 x %struct.aspeed_sdhci_phase_desc], [48 x i8] } { [2 x %struct.aspeed_sdhci_phase_desc] [%struct.aspeed_sdhci_phase_desc { %struct.aspeed_sdhci_tap_desc { i32 2031616, i32 4, i8 1 }, %struct.aspeed_sdhci_tap_desc { i32 248, i32 3, i8 3 } }, %struct.aspeed_sdhci_phase_desc { %struct.aspeed_sdhci_tap_desc { i32 65011712, i32 1024, i8 1 }, %struct.aspeed_sdhci_tap_desc { i32 63488, i32 768, i8 3 } }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.75 = private unnamed_addr constant [28 x i8] c"aspeed_sdc_test_suite_array\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 99, i32 28 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"aspeed_sdc_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 596, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"aspeed_sdhci_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 517, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"aspeed_sdhci_test_suite\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 94, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant [24 x i8] c"aspeed_sdhci_test_cases\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 88, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 89, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 90, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 10, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 12, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 14, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 16, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 18, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 20, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 22, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 24, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 26, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 29, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 31, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 33, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 35, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 37, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 39, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 41, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 43, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 45, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 176, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 189, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 57, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 59, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 61, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 63, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 65, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 67, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 70, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 74, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 76, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 78, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 80, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 82, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [43 x i8] c"../drivers/mmc/host/sdhci-of-aspeed-test.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 84, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 598, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c"aspeed_sdc_of_match\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 587, i32 34 }
@___asan_gen_.252 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 538, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 546, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 519, i32 11 }
@___asan_gen_.276 = private unnamed_addr constant [22 x i8] c"aspeed_sdhci_of_match\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 510, i32 34 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 377, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [19 x i8] c"aspeed_sdhci_pdata\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 341, i32 38 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 401, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 408, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 412, i32 32 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 413, i32 32 }
@___asan_gen_.312 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 429, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"aspeed_sdhci_ops\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 331, i32 31 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 229, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c"ast2400_sdhci_pdata\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 471, i32 40 }
@___asan_gen_.330 = private unnamed_addr constant [20 x i8] c"ast2600_sdhci_pdata\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 504, i32 40 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c"ast2600_sdhci_phase\00", align 1
@___asan_gen_.334 = private constant [38 x i8] c"../drivers/mmc/host/sdhci-of-aspeed.c\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 475, i32 45 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file279, ptr @__UNIQUE_ID_license280, ptr @__exitcall_aspeed_sdc_exit, ptr @__initcall__kmod_sdhci_of_aspeed__275_655_aspeed_sdc_init6, ptr @aspeed_sdc_exit, ptr @aspeed_sdc_probe._entry, ptr @aspeed_sdc_probe._entry_ptr, ptr @aspeed_sdc_test_suites, ptr @aspeed_sdhci_probe._entry, ptr @aspeed_sdhci_probe._entry.61, ptr @aspeed_sdhci_probe._entry.65, ptr @aspeed_sdhci_probe._entry.70, ptr @aspeed_sdhci_probe._entry_ptr, ptr @aspeed_sdhci_probe._entry_ptr.64, ptr @aspeed_sdhci_probe._entry_ptr.67, ptr @aspeed_sdhci_probe._entry_ptr.72, ptr @aspeed_sdc_test_suite_array, ptr @aspeed_sdc_driver, ptr @aspeed_sdhci_driver, ptr @aspeed_sdhci_test_suite, ptr @aspeed_sdhci_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @aspeed_sdc_of_match, ptr @aspeed_sdc_probe.__key, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @aspeed_sdhci_of_match, ptr @.str.59, ptr @.str.60, ptr @aspeed_sdhci_pdata, ptr @.str.62, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @aspeed_sdhci_ops, ptr @.str.73, ptr @.str.74, ptr @ast2400_sdhci_pdata, ptr @ast2600_sdhci_pdata, ptr @ast2600_sdhci_phase], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdc_test_suite_array to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdhci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdhci_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdhci_test_cases to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdhci_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdhci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdhci_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdhci_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdhci_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdhci_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_sdhci_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2400_sdhci_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_sdhci_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_sdhci_phase to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sdc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_sdhci_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_sdc_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_sdhci_crit_edge, label %if.end4

if.end.cleanup_sdhci_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup_sdhci

if.end4:                                          ; preds = %if.end
  %0 = load ptr, ptr @aspeed_sdc_test_suites, align 4
  %call.i = tail call i32 @__kunit_test_suites_init(ptr noundef %0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_sdc_driver) #7
  br label %cleanup_sdhci

cleanup_sdhci:                                    ; preds = %if.then7, %if.end.cleanup_sdhci_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.cleanup_sdhci_crit_edge ], [ %call.i, %if.then7 ]
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_sdhci_driver) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup_sdhci, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %cleanup_sdhci ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sdc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @aspeed_sdc_test_suites, align 4
  tail call void @__kunit_test_suites_exit(ptr noundef %0) #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_sdc_driver) #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_sdhci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sdhci_phase_ddr52(ptr noundef %test) #2 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  %__assertion100 = alloca %struct.kunit_binary_assert, align 8
  %__assertion129 = alloca %struct.kunit_binary_assert, align 8
  %__assertion158 = alloca %struct.kunit_binary_assert, align 8
  %__assertion187 = alloca %struct.kunit_binary_assert, align 8
  %__assertion216 = alloca %struct.kunit_binary_assert, align 8
  %__assertion245 = alloca %struct.kunit_binary_assert, align 8
  %__assertion274 = alloca %struct.kunit_binary_assert, align 8
  %__assertion303 = alloca %struct.kunit_binary_assert, align 8
  %__assertion332 = alloca %struct.kunit_binary_assert, align 8
  %__assertion361 = alloca %struct.kunit_binary_assert, align 8
  %__assertion390 = alloca %struct.kunit_binary_assert, align 8
  %__assertion419 = alloca %struct.kunit_binary_assert, align 8
  %__assertion448 = alloca %struct.kunit_binary_assert, align 8
  %__assertion477 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #7
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.3, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.4, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.5, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv3 = sext i32 %call to i64
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #7
  %call11 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #7
  %14 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %17 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %18 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 13, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %19 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.2, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %20 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %22 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %23 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.3, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %24 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.4, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %25 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %26 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.6, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv29 = sext i32 %call11 to i64
  %27 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp31 = icmp eq i32 %call11, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #7
  %call40 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion42) #7
  %28 = getelementptr inbounds i8, ptr %__assertion42, i32 32
  %29 = call ptr @memset(ptr %28, i32 255, i32 24)
  %30 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion42, align 8
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %31 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type45, align 4
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %32 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 15, ptr %line46, align 8
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %33 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.2, ptr %file47, align 4
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %34 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message48, align 8
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va50, align 4
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %36 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_assert_format, ptr %format51, align 8
  %operation52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 1
  %37 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.3, ptr %operation52, align 4
  %left_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 2
  %38 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.7, ptr %left_text53, align 8
  %left_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 3
  %39 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1, ptr %left_value54, align 8
  %right_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 4
  %40 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.8, ptr %right_text56, align 8
  %right_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 5
  %conv58 = sext i32 %call40 to i64
  %41 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv58, ptr %right_value57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call40)
  %cmp60 = icmp eq i32 %call40, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp60, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion42) #7
  %call69 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 3)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #7
  %42 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %43 = call ptr @memset(ptr %42, i32 255, i32 24)
  %44 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %45 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %46 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 17, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %47 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.2, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %48 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %50 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %51 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.3, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %52 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.7, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %53 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %54 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.9, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %conv87 = sext i32 %call69 to i64
  %55 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv87, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call69)
  %cmp89 = icmp eq i32 %call69, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #7
  %call98 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 4)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion100) #7
  %56 = getelementptr inbounds i8, ptr %__assertion100, i32 32
  %57 = call ptr @memset(ptr %56, i32 255, i32 24)
  %58 = ptrtoint ptr %__assertion100 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %test, ptr %__assertion100, align 8
  %type103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 1
  %59 = ptrtoint ptr %type103 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %type103, align 4
  %line104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 2
  %60 = ptrtoint ptr %line104 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 19, ptr %line104, align 8
  %file105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 3
  %61 = ptrtoint ptr %file105 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.2, ptr %file105, align 4
  %message106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4
  %62 = ptrtoint ptr %message106 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %message106, align 8
  %va108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %va108 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %va108, align 4
  %format109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 5
  %64 = ptrtoint ptr %format109 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @kunit_binary_assert_format, ptr %format109, align 8
  %operation110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 1
  %65 = ptrtoint ptr %operation110 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.3, ptr %operation110, align 4
  %left_text111 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 2
  %66 = ptrtoint ptr %left_text111 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.10, ptr %left_text111, align 8
  %left_value112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 3
  %67 = ptrtoint ptr %left_value112 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 2, ptr %left_value112, align 8
  %right_text114 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 4
  %68 = ptrtoint ptr %right_text114 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.11, ptr %right_text114, align 8
  %right_value115 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 5
  %conv116 = sext i32 %call98 to i64
  %69 = ptrtoint ptr %right_value115 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv116, ptr %right_value115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call98)
  %cmp118 = icmp eq i32 %call98, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion100, i1 noundef zeroext %cmp118, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion100) #7
  %call127 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 5)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion129) #7
  %70 = getelementptr inbounds i8, ptr %__assertion129, i32 32
  %71 = call ptr @memset(ptr %70, i32 255, i32 24)
  %72 = ptrtoint ptr %__assertion129 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %test, ptr %__assertion129, align 8
  %type132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 1
  %73 = ptrtoint ptr %type132 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %type132, align 4
  %line133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 2
  %74 = ptrtoint ptr %line133 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 21, ptr %line133, align 8
  %file134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 3
  %75 = ptrtoint ptr %file134 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.2, ptr %file134, align 4
  %message135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4
  %76 = ptrtoint ptr %message135 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %message135, align 8
  %va137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4, i32 1
  %77 = ptrtoint ptr %va137 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %va137, align 4
  %format138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 5
  %78 = ptrtoint ptr %format138 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @kunit_binary_assert_format, ptr %format138, align 8
  %operation139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 1
  %79 = ptrtoint ptr %operation139 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.3, ptr %operation139, align 4
  %left_text140 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 2
  %80 = ptrtoint ptr %left_text140 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.12, ptr %left_text140, align 8
  %left_value141 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 3
  %81 = ptrtoint ptr %left_value141 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 3, ptr %left_value141, align 8
  %right_text143 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 4
  %82 = ptrtoint ptr %right_text143 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.13, ptr %right_text143, align 8
  %right_value144 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 5
  %conv145 = sext i32 %call127 to i64
  %83 = ptrtoint ptr %right_value144 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv145, ptr %right_value144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call127)
  %cmp147 = icmp eq i32 %call127, 3
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion129, i1 noundef zeroext %cmp147, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion129) #7
  %call156 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 23)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion158) #7
  %84 = getelementptr inbounds i8, ptr %__assertion158, i32 32
  %85 = call ptr @memset(ptr %84, i32 255, i32 24)
  %86 = ptrtoint ptr %__assertion158 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %test, ptr %__assertion158, align 8
  %type161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 1
  %87 = ptrtoint ptr %type161 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %type161, align 4
  %line162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 2
  %88 = ptrtoint ptr %line162 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 23, ptr %line162, align 8
  %file163 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 3
  %89 = ptrtoint ptr %file163 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.2, ptr %file163, align 4
  %message164 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4
  %90 = ptrtoint ptr %message164 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %message164, align 8
  %va166 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4, i32 1
  %91 = ptrtoint ptr %va166 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %va166, align 4
  %format167 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 5
  %92 = ptrtoint ptr %format167 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @kunit_binary_assert_format, ptr %format167, align 8
  %operation168 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 1
  %93 = ptrtoint ptr %operation168 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.3, ptr %operation168, align 4
  %left_text169 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 2
  %94 = ptrtoint ptr %left_text169 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.14, ptr %left_text169, align 8
  %left_value170 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 3
  %95 = ptrtoint ptr %left_value170 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 14, ptr %left_value170, align 8
  %right_text172 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 4
  %96 = ptrtoint ptr %right_text172 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.15, ptr %right_text172, align 8
  %right_value173 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 5
  %conv174 = sext i32 %call156 to i64
  %97 = ptrtoint ptr %right_value173 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv174, ptr %right_value173, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call156)
  %cmp176 = icmp eq i32 %call156, 14
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion158, i1 noundef zeroext %cmp176, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion158) #7
  %call185 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 24)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion187) #7
  %98 = getelementptr inbounds i8, ptr %__assertion187, i32 32
  %99 = call ptr @memset(ptr %98, i32 255, i32 24)
  %100 = ptrtoint ptr %__assertion187 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %test, ptr %__assertion187, align 8
  %type190 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 1
  %101 = ptrtoint ptr %type190 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %type190, align 4
  %line191 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 2
  %102 = ptrtoint ptr %line191 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 25, ptr %line191, align 8
  %file192 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 3
  %103 = ptrtoint ptr %file192 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.2, ptr %file192, align 4
  %message193 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 4
  %104 = ptrtoint ptr %message193 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %message193, align 8
  %va195 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 4, i32 1
  %105 = ptrtoint ptr %va195 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %va195, align 4
  %format196 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 5
  %106 = ptrtoint ptr %format196 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @kunit_binary_assert_format, ptr %format196, align 8
  %operation197 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 1
  %107 = ptrtoint ptr %operation197 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.3, ptr %operation197, align 4
  %left_text198 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 2
  %108 = ptrtoint ptr %left_text198 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.16, ptr %left_text198, align 8
  %left_value199 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 3
  %109 = ptrtoint ptr %left_value199 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 15, ptr %left_value199, align 8
  %right_text201 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 4
  %110 = ptrtoint ptr %right_text201 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.17, ptr %right_text201, align 8
  %right_value202 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 5
  %conv203 = sext i32 %call185 to i64
  %111 = ptrtoint ptr %right_value202 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv203, ptr %right_value202, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call185)
  %cmp205 = icmp eq i32 %call185, 15
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion187, i1 noundef zeroext %cmp205, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion187) #7
  %call214 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 25)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion216) #7
  %112 = getelementptr inbounds i8, ptr %__assertion216, i32 32
  %113 = call ptr @memset(ptr %112, i32 255, i32 24)
  %114 = ptrtoint ptr %__assertion216 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %test, ptr %__assertion216, align 8
  %type219 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 1
  %115 = ptrtoint ptr %type219 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %type219, align 4
  %line220 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 2
  %116 = ptrtoint ptr %line220 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 27, ptr %line220, align 8
  %file221 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 3
  %117 = ptrtoint ptr %file221 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.2, ptr %file221, align 4
  %message222 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 4
  %118 = ptrtoint ptr %message222 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %message222, align 8
  %va224 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 4, i32 1
  %119 = ptrtoint ptr %va224 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %va224, align 4
  %format225 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 5
  %120 = ptrtoint ptr %format225 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @kunit_binary_assert_format, ptr %format225, align 8
  %operation226 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 1
  %121 = ptrtoint ptr %operation226 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.3, ptr %operation226, align 4
  %left_text227 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 2
  %122 = ptrtoint ptr %left_text227 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.16, ptr %left_text227, align 8
  %left_value228 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 3
  %123 = ptrtoint ptr %left_value228 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 15, ptr %left_value228, align 8
  %right_text230 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 4
  %124 = ptrtoint ptr %right_text230 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.18, ptr %right_text230, align 8
  %right_value231 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 5
  %conv232 = sext i32 %call214 to i64
  %125 = ptrtoint ptr %right_value231 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %conv232, ptr %right_value231, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call214)
  %cmp234 = icmp eq i32 %call214, 15
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion216, i1 noundef zeroext %cmp234, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion216) #7
  %call243 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 180)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion245) #7
  %126 = getelementptr inbounds i8, ptr %__assertion245, i32 32
  %127 = call ptr @memset(ptr %126, i32 255, i32 24)
  %128 = ptrtoint ptr %__assertion245 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %test, ptr %__assertion245, align 8
  %type248 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 1
  %129 = ptrtoint ptr %type248 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %type248, align 4
  %line249 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 2
  %130 = ptrtoint ptr %line249 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 30, ptr %line249, align 8
  %file250 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 3
  %131 = ptrtoint ptr %file250 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @.str.2, ptr %file250, align 4
  %message251 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 4
  %132 = ptrtoint ptr %message251 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %message251, align 8
  %va253 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %va253 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %va253, align 4
  %format254 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 5
  %134 = ptrtoint ptr %format254 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @kunit_binary_assert_format, ptr %format254, align 8
  %operation255 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 1
  %135 = ptrtoint ptr %operation255 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.3, ptr %operation255, align 4
  %left_text256 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 2
  %136 = ptrtoint ptr %left_text256 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.19, ptr %left_text256, align 8
  %left_value257 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 3
  %137 = ptrtoint ptr %left_value257 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 16, ptr %left_value257, align 8
  %right_text259 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 4
  %138 = ptrtoint ptr %right_text259 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @.str.20, ptr %right_text259, align 8
  %right_value260 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 5
  %conv261 = sext i32 %call243 to i64
  %139 = ptrtoint ptr %right_value260 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %conv261, ptr %right_value260, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call243)
  %cmp263 = icmp eq i32 %call243, 16
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion245, i1 noundef zeroext %cmp263, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion245) #7
  %call272 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 181)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion274) #7
  %140 = getelementptr inbounds i8, ptr %__assertion274, i32 32
  %141 = call ptr @memset(ptr %140, i32 255, i32 24)
  %142 = ptrtoint ptr %__assertion274 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %test, ptr %__assertion274, align 8
  %type277 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 1
  %143 = ptrtoint ptr %type277 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %type277, align 4
  %line278 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 2
  %144 = ptrtoint ptr %line278 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 32, ptr %line278, align 8
  %file279 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 3
  %145 = ptrtoint ptr %file279 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.2, ptr %file279, align 4
  %message280 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 4
  %146 = ptrtoint ptr %message280 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %message280, align 8
  %va282 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 4, i32 1
  %147 = ptrtoint ptr %va282 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %va282, align 4
  %format283 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 5
  %148 = ptrtoint ptr %format283 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @kunit_binary_assert_format, ptr %format283, align 8
  %operation284 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion274, i32 0, i32 1
  %149 = ptrtoint ptr %operation284 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.3, ptr %operation284, align 4
  %left_text285 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion274, i32 0, i32 2
  %150 = ptrtoint ptr %left_text285 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @.str.19, ptr %left_text285, align 8
  %left_value286 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion274, i32 0, i32 3
  %151 = ptrtoint ptr %left_value286 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 16, ptr %left_value286, align 8
  %right_text288 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion274, i32 0, i32 4
  %152 = ptrtoint ptr %right_text288 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @.str.21, ptr %right_text288, align 8
  %right_value289 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion274, i32 0, i32 5
  %conv290 = sext i32 %call272 to i64
  %153 = ptrtoint ptr %right_value289 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %conv290, ptr %right_value289, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call272)
  %cmp292 = icmp eq i32 %call272, 16
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion274, i1 noundef zeroext %cmp292, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion274) #7
  %call301 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 182)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion303) #7
  %154 = getelementptr inbounds i8, ptr %__assertion303, i32 32
  %155 = call ptr @memset(ptr %154, i32 255, i32 24)
  %156 = ptrtoint ptr %__assertion303 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %test, ptr %__assertion303, align 8
  %type306 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 1
  %157 = ptrtoint ptr %type306 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %type306, align 4
  %line307 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 2
  %158 = ptrtoint ptr %line307 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 34, ptr %line307, align 8
  %file308 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 3
  %159 = ptrtoint ptr %file308 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @.str.2, ptr %file308, align 4
  %message309 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 4
  %160 = ptrtoint ptr %message309 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %message309, align 8
  %va311 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 4, i32 1
  %161 = ptrtoint ptr %va311 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %va311, align 4
  %format312 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 5
  %162 = ptrtoint ptr %format312 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @kunit_binary_assert_format, ptr %format312, align 8
  %operation313 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion303, i32 0, i32 1
  %163 = ptrtoint ptr %operation313 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @.str.3, ptr %operation313, align 4
  %left_text314 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion303, i32 0, i32 2
  %164 = ptrtoint ptr %left_text314 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.22, ptr %left_text314, align 8
  %left_value315 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion303, i32 0, i32 3
  %165 = ptrtoint ptr %left_value315 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 17, ptr %left_value315, align 8
  %right_text317 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion303, i32 0, i32 4
  %166 = ptrtoint ptr %right_text317 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @.str.23, ptr %right_text317, align 8
  %right_value318 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion303, i32 0, i32 5
  %conv319 = sext i32 %call301 to i64
  %167 = ptrtoint ptr %right_value318 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv319, ptr %right_value318, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call301)
  %cmp321 = icmp eq i32 %call301, 17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion303, i1 noundef zeroext %cmp321, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion303) #7
  %call330 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 183)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion332) #7
  %168 = getelementptr inbounds i8, ptr %__assertion332, i32 32
  %169 = call ptr @memset(ptr %168, i32 255, i32 24)
  %170 = ptrtoint ptr %__assertion332 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %test, ptr %__assertion332, align 8
  %type335 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 1
  %171 = ptrtoint ptr %type335 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 1, ptr %type335, align 4
  %line336 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 2
  %172 = ptrtoint ptr %line336 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 36, ptr %line336, align 8
  %file337 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 3
  %173 = ptrtoint ptr %file337 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @.str.2, ptr %file337, align 4
  %message338 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 4
  %174 = ptrtoint ptr %message338 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %message338, align 8
  %va340 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 4, i32 1
  %175 = ptrtoint ptr %va340 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %va340, align 4
  %format341 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 5
  %176 = ptrtoint ptr %format341 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @kunit_binary_assert_format, ptr %format341, align 8
  %operation342 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion332, i32 0, i32 1
  %177 = ptrtoint ptr %operation342 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @.str.3, ptr %operation342, align 4
  %left_text343 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion332, i32 0, i32 2
  %178 = ptrtoint ptr %left_text343 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.22, ptr %left_text343, align 8
  %left_value344 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion332, i32 0, i32 3
  %179 = ptrtoint ptr %left_value344 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 17, ptr %left_value344, align 8
  %right_text346 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion332, i32 0, i32 4
  %180 = ptrtoint ptr %right_text346 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @.str.24, ptr %right_text346, align 8
  %right_value347 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion332, i32 0, i32 5
  %conv348 = sext i32 %call330 to i64
  %181 = ptrtoint ptr %right_value347 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %conv348, ptr %right_value347, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call330)
  %cmp350 = icmp eq i32 %call330, 17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion332, i1 noundef zeroext %cmp350, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion332) #7
  %call359 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 184)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion361) #7
  %182 = getelementptr inbounds i8, ptr %__assertion361, i32 32
  %183 = call ptr @memset(ptr %182, i32 255, i32 24)
  %184 = ptrtoint ptr %__assertion361 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %test, ptr %__assertion361, align 8
  %type364 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 1
  %185 = ptrtoint ptr %type364 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1, ptr %type364, align 4
  %line365 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 2
  %186 = ptrtoint ptr %line365 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 38, ptr %line365, align 8
  %file366 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 3
  %187 = ptrtoint ptr %file366 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @.str.2, ptr %file366, align 4
  %message367 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 4
  %188 = ptrtoint ptr %message367 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %message367, align 8
  %va369 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 4, i32 1
  %189 = ptrtoint ptr %va369 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %va369, align 4
  %format370 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 5
  %190 = ptrtoint ptr %format370 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @kunit_binary_assert_format, ptr %format370, align 8
  %operation371 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion361, i32 0, i32 1
  %191 = ptrtoint ptr %operation371 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @.str.3, ptr %operation371, align 4
  %left_text372 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion361, i32 0, i32 2
  %192 = ptrtoint ptr %left_text372 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.25, ptr %left_text372, align 8
  %left_value373 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion361, i32 0, i32 3
  %193 = ptrtoint ptr %left_value373 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 18, ptr %left_value373, align 8
  %right_text375 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion361, i32 0, i32 4
  %194 = ptrtoint ptr %right_text375 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @.str.26, ptr %right_text375, align 8
  %right_value376 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion361, i32 0, i32 5
  %conv377 = sext i32 %call359 to i64
  %195 = ptrtoint ptr %right_value376 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %conv377, ptr %right_value376, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call359)
  %cmp379 = icmp eq i32 %call359, 18
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion361, i1 noundef zeroext %cmp379, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion361) #7
  %call388 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 185)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion390) #7
  %196 = getelementptr inbounds i8, ptr %__assertion390, i32 32
  %197 = call ptr @memset(ptr %196, i32 255, i32 24)
  %198 = ptrtoint ptr %__assertion390 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %test, ptr %__assertion390, align 8
  %type393 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 1
  %199 = ptrtoint ptr %type393 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 1, ptr %type393, align 4
  %line394 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 2
  %200 = ptrtoint ptr %line394 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 40, ptr %line394, align 8
  %file395 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 3
  %201 = ptrtoint ptr %file395 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @.str.2, ptr %file395, align 4
  %message396 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 4
  %202 = ptrtoint ptr %message396 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr null, ptr %message396, align 8
  %va398 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 4, i32 1
  %203 = ptrtoint ptr %va398 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %va398, align 4
  %format399 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 5
  %204 = ptrtoint ptr %format399 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr @kunit_binary_assert_format, ptr %format399, align 8
  %operation400 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion390, i32 0, i32 1
  %205 = ptrtoint ptr %operation400 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr @.str.3, ptr %operation400, align 4
  %left_text401 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion390, i32 0, i32 2
  %206 = ptrtoint ptr %left_text401 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @.str.27, ptr %left_text401, align 8
  %left_value402 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion390, i32 0, i32 3
  %207 = ptrtoint ptr %left_value402 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 19, ptr %left_value402, align 8
  %right_text404 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion390, i32 0, i32 4
  %208 = ptrtoint ptr %right_text404 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @.str.28, ptr %right_text404, align 8
  %right_value405 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion390, i32 0, i32 5
  %conv406 = sext i32 %call388 to i64
  %209 = ptrtoint ptr %right_value405 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %conv406, ptr %right_value405, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call388)
  %cmp408 = icmp eq i32 %call388, 19
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion390, i1 noundef zeroext %cmp408, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion390) #7
  %call417 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 203)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion419) #7
  %210 = getelementptr inbounds i8, ptr %__assertion419, i32 32
  %211 = call ptr @memset(ptr %210, i32 255, i32 24)
  %212 = ptrtoint ptr %__assertion419 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %test, ptr %__assertion419, align 8
  %type422 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 1
  %213 = ptrtoint ptr %type422 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 1, ptr %type422, align 4
  %line423 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 2
  %214 = ptrtoint ptr %line423 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 42, ptr %line423, align 8
  %file424 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 3
  %215 = ptrtoint ptr %file424 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @.str.2, ptr %file424, align 4
  %message425 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 4
  %216 = ptrtoint ptr %message425 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %message425, align 8
  %va427 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 4, i32 1
  %217 = ptrtoint ptr %va427 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %va427, align 4
  %format428 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 5
  %218 = ptrtoint ptr %format428 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @kunit_binary_assert_format, ptr %format428, align 8
  %operation429 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion419, i32 0, i32 1
  %219 = ptrtoint ptr %operation429 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @.str.3, ptr %operation429, align 4
  %left_text430 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion419, i32 0, i32 2
  %220 = ptrtoint ptr %left_text430 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @.str.29, ptr %left_text430, align 8
  %left_value431 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion419, i32 0, i32 3
  %221 = ptrtoint ptr %left_value431 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 30, ptr %left_value431, align 8
  %right_text433 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion419, i32 0, i32 4
  %222 = ptrtoint ptr %right_text433 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @.str.30, ptr %right_text433, align 8
  %right_value434 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion419, i32 0, i32 5
  %conv435 = sext i32 %call417 to i64
  %223 = ptrtoint ptr %right_value434 to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %conv435, ptr %right_value434, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %call417)
  %cmp437 = icmp eq i32 %call417, 30
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion419, i1 noundef zeroext %cmp437, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion419) #7
  %call446 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 204)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion448) #7
  %224 = getelementptr inbounds i8, ptr %__assertion448, i32 32
  %225 = call ptr @memset(ptr %224, i32 255, i32 24)
  %226 = ptrtoint ptr %__assertion448 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %test, ptr %__assertion448, align 8
  %type451 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion448, i32 0, i32 1
  %227 = ptrtoint ptr %type451 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 1, ptr %type451, align 4
  %line452 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion448, i32 0, i32 2
  %228 = ptrtoint ptr %line452 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 44, ptr %line452, align 8
  %file453 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion448, i32 0, i32 3
  %229 = ptrtoint ptr %file453 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @.str.2, ptr %file453, align 4
  %message454 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion448, i32 0, i32 4
  %230 = ptrtoint ptr %message454 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %message454, align 8
  %va456 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion448, i32 0, i32 4, i32 1
  %231 = ptrtoint ptr %va456 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr null, ptr %va456, align 4
  %format457 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion448, i32 0, i32 5
  %232 = ptrtoint ptr %format457 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @kunit_binary_assert_format, ptr %format457, align 8
  %operation458 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion448, i32 0, i32 1
  %233 = ptrtoint ptr %operation458 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr @.str.3, ptr %operation458, align 4
  %left_text459 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion448, i32 0, i32 2
  %234 = ptrtoint ptr %left_text459 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @.str.31, ptr %left_text459, align 8
  %left_value460 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion448, i32 0, i32 3
  %235 = ptrtoint ptr %left_value460 to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 31, ptr %left_value460, align 8
  %right_text462 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion448, i32 0, i32 4
  %236 = ptrtoint ptr %right_text462 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @.str.32, ptr %right_text462, align 8
  %right_value463 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion448, i32 0, i32 5
  %conv464 = sext i32 %call446 to i64
  %237 = ptrtoint ptr %right_value463 to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 %conv464, ptr %right_value463, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call446)
  %cmp466 = icmp eq i32 %call446, 31
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion448, i1 noundef zeroext %cmp466, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion448) #7
  %call475 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 52000000, i32 noundef 205)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion477) #7
  %238 = getelementptr inbounds i8, ptr %__assertion477, i32 32
  %239 = call ptr @memset(ptr %238, i32 255, i32 24)
  %240 = ptrtoint ptr %__assertion477 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %test, ptr %__assertion477, align 8
  %type480 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion477, i32 0, i32 1
  %241 = ptrtoint ptr %type480 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 1, ptr %type480, align 4
  %line481 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion477, i32 0, i32 2
  %242 = ptrtoint ptr %line481 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 46, ptr %line481, align 8
  %file482 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion477, i32 0, i32 3
  %243 = ptrtoint ptr %file482 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr @.str.2, ptr %file482, align 4
  %message483 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion477, i32 0, i32 4
  %244 = ptrtoint ptr %message483 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr null, ptr %message483, align 8
  %va485 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion477, i32 0, i32 4, i32 1
  %245 = ptrtoint ptr %va485 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr null, ptr %va485, align 4
  %format486 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion477, i32 0, i32 5
  %246 = ptrtoint ptr %format486 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr @kunit_binary_assert_format, ptr %format486, align 8
  %operation487 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion477, i32 0, i32 1
  %247 = ptrtoint ptr %operation487 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr @.str.3, ptr %operation487, align 4
  %left_text488 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion477, i32 0, i32 2
  %248 = ptrtoint ptr %left_text488 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @.str.31, ptr %left_text488, align 8
  %left_value489 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion477, i32 0, i32 3
  %249 = ptrtoint ptr %left_value489 to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 31, ptr %left_value489, align 8
  %right_text491 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion477, i32 0, i32 4
  %250 = ptrtoint ptr %right_text491 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @.str.33, ptr %right_text491, align 8
  %right_value492 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion477, i32 0, i32 5
  %conv493 = sext i32 %call475 to i64
  %251 = ptrtoint ptr %right_value492 to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 %conv493, ptr %right_value492, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call475)
  %cmp495 = icmp eq i32 %call475, 31
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion477, i1 noundef zeroext %cmp495, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion477) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sdhci_phase_hs200(ptr noundef %test) #2 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  %__assertion100 = alloca %struct.kunit_binary_assert, align 8
  %__assertion129 = alloca %struct.kunit_binary_assert, align 8
  %__assertion158 = alloca %struct.kunit_binary_assert, align 8
  %__assertion187 = alloca %struct.kunit_binary_assert, align 8
  %__assertion216 = alloca %struct.kunit_binary_assert, align 8
  %__assertion245 = alloca %struct.kunit_binary_assert, align 8
  %__assertion274 = alloca %struct.kunit_binary_assert, align 8
  %__assertion303 = alloca %struct.kunit_binary_assert, align 8
  %__assertion332 = alloca %struct.kunit_binary_assert, align 8
  %__assertion361 = alloca %struct.kunit_binary_assert, align 8
  %__assertion390 = alloca %struct.kunit_binary_assert, align 8
  %__assertion419 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #7
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 54, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.3, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.4, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.5, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv3 = sext i32 %call to i64
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #7
  %call11 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 5)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #7
  %14 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %17 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %18 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 56, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %19 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.2, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %20 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %22 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %23 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.3, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %24 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.4, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %25 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %26 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.13, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv29 = sext i32 %call11 to i64
  %27 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp31 = icmp eq i32 %call11, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #7
  %call40 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 6)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion42) #7
  %28 = getelementptr inbounds i8, ptr %__assertion42, i32 32
  %29 = call ptr @memset(ptr %28, i32 255, i32 24)
  %30 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion42, align 8
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %31 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type45, align 4
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %32 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 58, ptr %line46, align 8
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %33 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.2, ptr %file47, align 4
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %34 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message48, align 8
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va50, align 4
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %36 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_assert_format, ptr %format51, align 8
  %operation52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 1
  %37 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.3, ptr %operation52, align 4
  %left_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 2
  %38 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.7, ptr %left_text53, align 8
  %left_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 3
  %39 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1, ptr %left_value54, align 8
  %right_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 4
  %40 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.39, ptr %right_text56, align 8
  %right_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 5
  %conv58 = sext i32 %call40 to i64
  %41 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv58, ptr %right_value57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call40)
  %cmp60 = icmp eq i32 %call40, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp60, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion42) #7
  %call69 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 7)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #7
  %42 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %43 = call ptr @memset(ptr %42, i32 255, i32 24)
  %44 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %45 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %46 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 60, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %47 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.2, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %48 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %50 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %51 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.3, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %52 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.7, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %53 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %54 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.40, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %conv87 = sext i32 %call69 to i64
  %55 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv87, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call69)
  %cmp89 = icmp eq i32 %call69, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #7
  %call98 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 89)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion100) #7
  %56 = getelementptr inbounds i8, ptr %__assertion100, i32 32
  %57 = call ptr @memset(ptr %56, i32 255, i32 24)
  %58 = ptrtoint ptr %__assertion100 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %test, ptr %__assertion100, align 8
  %type103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 1
  %59 = ptrtoint ptr %type103 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %type103, align 4
  %line104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 2
  %60 = ptrtoint ptr %line104 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 62, ptr %line104, align 8
  %file105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 3
  %61 = ptrtoint ptr %file105 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.2, ptr %file105, align 4
  %message106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4
  %62 = ptrtoint ptr %message106 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %message106, align 8
  %va108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %va108 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %va108, align 4
  %format109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 5
  %64 = ptrtoint ptr %format109 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @kunit_binary_assert_format, ptr %format109, align 8
  %operation110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 1
  %65 = ptrtoint ptr %operation110 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.3, ptr %operation110, align 4
  %left_text111 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 2
  %66 = ptrtoint ptr %left_text111 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.14, ptr %left_text111, align 8
  %left_value112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 3
  %67 = ptrtoint ptr %left_value112 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 14, ptr %left_value112, align 8
  %right_text114 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 4
  %68 = ptrtoint ptr %right_text114 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.41, ptr %right_text114, align 8
  %right_value115 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 5
  %conv116 = sext i32 %call98 to i64
  %69 = ptrtoint ptr %right_value115 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv116, ptr %right_value115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call98)
  %cmp118 = icmp eq i32 %call98, 14
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion100, i1 noundef zeroext %cmp118, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion100) #7
  %call127 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 90)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion129) #7
  %70 = getelementptr inbounds i8, ptr %__assertion129, i32 32
  %71 = call ptr @memset(ptr %70, i32 255, i32 24)
  %72 = ptrtoint ptr %__assertion129 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %test, ptr %__assertion129, align 8
  %type132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 1
  %73 = ptrtoint ptr %type132 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %type132, align 4
  %line133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 2
  %74 = ptrtoint ptr %line133 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 64, ptr %line133, align 8
  %file134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 3
  %75 = ptrtoint ptr %file134 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.2, ptr %file134, align 4
  %message135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4
  %76 = ptrtoint ptr %message135 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %message135, align 8
  %va137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4, i32 1
  %77 = ptrtoint ptr %va137 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %va137, align 4
  %format138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 5
  %78 = ptrtoint ptr %format138 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @kunit_binary_assert_format, ptr %format138, align 8
  %operation139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 1
  %79 = ptrtoint ptr %operation139 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.3, ptr %operation139, align 4
  %left_text140 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 2
  %80 = ptrtoint ptr %left_text140 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.16, ptr %left_text140, align 8
  %left_value141 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 3
  %81 = ptrtoint ptr %left_value141 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 15, ptr %left_value141, align 8
  %right_text143 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 4
  %82 = ptrtoint ptr %right_text143 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.42, ptr %right_text143, align 8
  %right_value144 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 5
  %conv145 = sext i32 %call127 to i64
  %83 = ptrtoint ptr %right_value144 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv145, ptr %right_value144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call127)
  %cmp147 = icmp eq i32 %call127, 15
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion129, i1 noundef zeroext %cmp147, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion129) #7
  %call156 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 91)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion158) #7
  %84 = getelementptr inbounds i8, ptr %__assertion158, i32 32
  %85 = call ptr @memset(ptr %84, i32 255, i32 24)
  %86 = ptrtoint ptr %__assertion158 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %test, ptr %__assertion158, align 8
  %type161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 1
  %87 = ptrtoint ptr %type161 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %type161, align 4
  %line162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 2
  %88 = ptrtoint ptr %line162 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 66, ptr %line162, align 8
  %file163 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 3
  %89 = ptrtoint ptr %file163 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.2, ptr %file163, align 4
  %message164 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4
  %90 = ptrtoint ptr %message164 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %message164, align 8
  %va166 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4, i32 1
  %91 = ptrtoint ptr %va166 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %va166, align 4
  %format167 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 5
  %92 = ptrtoint ptr %format167 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @kunit_binary_assert_format, ptr %format167, align 8
  %operation168 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 1
  %93 = ptrtoint ptr %operation168 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.3, ptr %operation168, align 4
  %left_text169 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 2
  %94 = ptrtoint ptr %left_text169 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.16, ptr %left_text169, align 8
  %left_value170 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 3
  %95 = ptrtoint ptr %left_value170 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 15, ptr %left_value170, align 8
  %right_text172 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 4
  %96 = ptrtoint ptr %right_text172 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.43, ptr %right_text172, align 8
  %right_value173 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 5
  %conv174 = sext i32 %call156 to i64
  %97 = ptrtoint ptr %right_value173 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv174, ptr %right_value173, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call156)
  %cmp176 = icmp eq i32 %call156, 15
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion158, i1 noundef zeroext %cmp176, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion158) #7
  %call185 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 96)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion187) #7
  %98 = getelementptr inbounds i8, ptr %__assertion187, i32 32
  %99 = call ptr @memset(ptr %98, i32 255, i32 24)
  %100 = ptrtoint ptr %__assertion187 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %test, ptr %__assertion187, align 8
  %type190 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 1
  %101 = ptrtoint ptr %type190 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %type190, align 4
  %line191 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 2
  %102 = ptrtoint ptr %line191 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 68, ptr %line191, align 8
  %file192 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 3
  %103 = ptrtoint ptr %file192 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.2, ptr %file192, align 4
  %message193 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 4
  %104 = ptrtoint ptr %message193 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %message193, align 8
  %va195 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 4, i32 1
  %105 = ptrtoint ptr %va195 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %va195, align 4
  %format196 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 5
  %106 = ptrtoint ptr %format196 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @kunit_binary_assert_format, ptr %format196, align 8
  %operation197 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 1
  %107 = ptrtoint ptr %operation197 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.3, ptr %operation197, align 4
  %left_text198 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 2
  %108 = ptrtoint ptr %left_text198 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.16, ptr %left_text198, align 8
  %left_value199 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 3
  %109 = ptrtoint ptr %left_value199 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 15, ptr %left_value199, align 8
  %right_text201 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 4
  %110 = ptrtoint ptr %right_text201 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.44, ptr %right_text201, align 8
  %right_value202 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 5
  %conv203 = sext i32 %call185 to i64
  %111 = ptrtoint ptr %right_value202 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv203, ptr %right_value202, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call185)
  %cmp205 = icmp eq i32 %call185, 15
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion187, i1 noundef zeroext %cmp205, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion187) #7
  %call214 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 180)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion216) #7
  %112 = getelementptr inbounds i8, ptr %__assertion216, i32 32
  %113 = call ptr @memset(ptr %112, i32 255, i32 24)
  %114 = ptrtoint ptr %__assertion216 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %test, ptr %__assertion216, align 8
  %type219 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 1
  %115 = ptrtoint ptr %type219 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %type219, align 4
  %line220 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 2
  %116 = ptrtoint ptr %line220 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 71, ptr %line220, align 8
  %file221 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 3
  %117 = ptrtoint ptr %file221 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.2, ptr %file221, align 4
  %message222 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 4
  %118 = ptrtoint ptr %message222 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %message222, align 8
  %va224 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 4, i32 1
  %119 = ptrtoint ptr %va224 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %va224, align 4
  %format225 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 5
  %120 = ptrtoint ptr %format225 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @kunit_binary_assert_format, ptr %format225, align 8
  %operation226 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 1
  %121 = ptrtoint ptr %operation226 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.3, ptr %operation226, align 4
  %left_text227 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 2
  %122 = ptrtoint ptr %left_text227 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.45, ptr %left_text227, align 8
  %left_value228 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 3
  %123 = ptrtoint ptr %left_value228 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 16, ptr %left_value228, align 8
  %right_text230 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 4
  %124 = ptrtoint ptr %right_text230 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.20, ptr %right_text230, align 8
  %right_value231 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 5
  %conv232 = sext i32 %call214 to i64
  %125 = ptrtoint ptr %right_value231 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %conv232, ptr %right_value231, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call214)
  %cmp234 = icmp eq i32 %call214, 16
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion216, i1 noundef zeroext %cmp234, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion216) #7
  %call243 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 185)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion245) #7
  %126 = getelementptr inbounds i8, ptr %__assertion245, i32 32
  %127 = call ptr @memset(ptr %126, i32 255, i32 24)
  %128 = ptrtoint ptr %__assertion245 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %test, ptr %__assertion245, align 8
  %type248 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 1
  %129 = ptrtoint ptr %type248 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %type248, align 4
  %line249 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 2
  %130 = ptrtoint ptr %line249 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 73, ptr %line249, align 8
  %file250 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 3
  %131 = ptrtoint ptr %file250 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @.str.2, ptr %file250, align 4
  %message251 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 4
  %132 = ptrtoint ptr %message251 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %message251, align 8
  %va253 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %va253 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %va253, align 4
  %format254 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion245, i32 0, i32 5
  %134 = ptrtoint ptr %format254 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @kunit_binary_assert_format, ptr %format254, align 8
  %operation255 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 1
  %135 = ptrtoint ptr %operation255 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.3, ptr %operation255, align 4
  %left_text256 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 2
  %136 = ptrtoint ptr %left_text256 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.45, ptr %left_text256, align 8
  %left_value257 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 3
  %137 = ptrtoint ptr %left_value257 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 16, ptr %left_value257, align 8
  %right_text259 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 4
  %138 = ptrtoint ptr %right_text259 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @.str.28, ptr %right_text259, align 8
  %right_value260 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion245, i32 0, i32 5
  %conv261 = sext i32 %call243 to i64
  %139 = ptrtoint ptr %right_value260 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %conv261, ptr %right_value260, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call243)
  %cmp263 = icmp eq i32 %call243, 16
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion245, i1 noundef zeroext %cmp263, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion245) #7
  %call272 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 186)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion274) #7
  %140 = getelementptr inbounds i8, ptr %__assertion274, i32 32
  %141 = call ptr @memset(ptr %140, i32 255, i32 24)
  %142 = ptrtoint ptr %__assertion274 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %test, ptr %__assertion274, align 8
  %type277 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 1
  %143 = ptrtoint ptr %type277 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %type277, align 4
  %line278 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 2
  %144 = ptrtoint ptr %line278 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 75, ptr %line278, align 8
  %file279 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 3
  %145 = ptrtoint ptr %file279 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.2, ptr %file279, align 4
  %message280 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 4
  %146 = ptrtoint ptr %message280 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %message280, align 8
  %va282 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 4, i32 1
  %147 = ptrtoint ptr %va282 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %va282, align 4
  %format283 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion274, i32 0, i32 5
  %148 = ptrtoint ptr %format283 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @kunit_binary_assert_format, ptr %format283, align 8
  %operation284 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion274, i32 0, i32 1
  %149 = ptrtoint ptr %operation284 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.3, ptr %operation284, align 4
  %left_text285 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion274, i32 0, i32 2
  %150 = ptrtoint ptr %left_text285 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @.str.22, ptr %left_text285, align 8
  %left_value286 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion274, i32 0, i32 3
  %151 = ptrtoint ptr %left_value286 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 17, ptr %left_value286, align 8
  %right_text288 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion274, i32 0, i32 4
  %152 = ptrtoint ptr %right_text288 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @.str.46, ptr %right_text288, align 8
  %right_value289 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion274, i32 0, i32 5
  %conv290 = sext i32 %call272 to i64
  %153 = ptrtoint ptr %right_value289 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %conv290, ptr %right_value289, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call272)
  %cmp292 = icmp eq i32 %call272, 17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion274, i1 noundef zeroext %cmp292, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion274) #7
  %call301 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 187)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion303) #7
  %154 = getelementptr inbounds i8, ptr %__assertion303, i32 32
  %155 = call ptr @memset(ptr %154, i32 255, i32 24)
  %156 = ptrtoint ptr %__assertion303 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %test, ptr %__assertion303, align 8
  %type306 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 1
  %157 = ptrtoint ptr %type306 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %type306, align 4
  %line307 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 2
  %158 = ptrtoint ptr %line307 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 77, ptr %line307, align 8
  %file308 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 3
  %159 = ptrtoint ptr %file308 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @.str.2, ptr %file308, align 4
  %message309 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 4
  %160 = ptrtoint ptr %message309 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %message309, align 8
  %va311 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 4, i32 1
  %161 = ptrtoint ptr %va311 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %va311, align 4
  %format312 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion303, i32 0, i32 5
  %162 = ptrtoint ptr %format312 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @kunit_binary_assert_format, ptr %format312, align 8
  %operation313 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion303, i32 0, i32 1
  %163 = ptrtoint ptr %operation313 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @.str.3, ptr %operation313, align 4
  %left_text314 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion303, i32 0, i32 2
  %164 = ptrtoint ptr %left_text314 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.22, ptr %left_text314, align 8
  %left_value315 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion303, i32 0, i32 3
  %165 = ptrtoint ptr %left_value315 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 17, ptr %left_value315, align 8
  %right_text317 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion303, i32 0, i32 4
  %166 = ptrtoint ptr %right_text317 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @.str.47, ptr %right_text317, align 8
  %right_value318 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion303, i32 0, i32 5
  %conv319 = sext i32 %call301 to i64
  %167 = ptrtoint ptr %right_value318 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv319, ptr %right_value318, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call301)
  %cmp321 = icmp eq i32 %call301, 17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion303, i1 noundef zeroext %cmp321, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion303) #7
  %call330 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 269)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion332) #7
  %168 = getelementptr inbounds i8, ptr %__assertion332, i32 32
  %169 = call ptr @memset(ptr %168, i32 255, i32 24)
  %170 = ptrtoint ptr %__assertion332 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %test, ptr %__assertion332, align 8
  %type335 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 1
  %171 = ptrtoint ptr %type335 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 1, ptr %type335, align 4
  %line336 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 2
  %172 = ptrtoint ptr %line336 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 79, ptr %line336, align 8
  %file337 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 3
  %173 = ptrtoint ptr %file337 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @.str.2, ptr %file337, align 4
  %message338 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 4
  %174 = ptrtoint ptr %message338 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %message338, align 8
  %va340 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 4, i32 1
  %175 = ptrtoint ptr %va340 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %va340, align 4
  %format341 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion332, i32 0, i32 5
  %176 = ptrtoint ptr %format341 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @kunit_binary_assert_format, ptr %format341, align 8
  %operation342 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion332, i32 0, i32 1
  %177 = ptrtoint ptr %operation342 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @.str.3, ptr %operation342, align 4
  %left_text343 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion332, i32 0, i32 2
  %178 = ptrtoint ptr %left_text343 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.29, ptr %left_text343, align 8
  %left_value344 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion332, i32 0, i32 3
  %179 = ptrtoint ptr %left_value344 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 30, ptr %left_value344, align 8
  %right_text346 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion332, i32 0, i32 4
  %180 = ptrtoint ptr %right_text346 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @.str.48, ptr %right_text346, align 8
  %right_value347 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion332, i32 0, i32 5
  %conv348 = sext i32 %call330 to i64
  %181 = ptrtoint ptr %right_value347 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %conv348, ptr %right_value347, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %call330)
  %cmp350 = icmp eq i32 %call330, 30
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion332, i1 noundef zeroext %cmp350, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion332) #7
  %call359 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 270)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion361) #7
  %182 = getelementptr inbounds i8, ptr %__assertion361, i32 32
  %183 = call ptr @memset(ptr %182, i32 255, i32 24)
  %184 = ptrtoint ptr %__assertion361 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %test, ptr %__assertion361, align 8
  %type364 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 1
  %185 = ptrtoint ptr %type364 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1, ptr %type364, align 4
  %line365 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 2
  %186 = ptrtoint ptr %line365 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 81, ptr %line365, align 8
  %file366 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 3
  %187 = ptrtoint ptr %file366 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @.str.2, ptr %file366, align 4
  %message367 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 4
  %188 = ptrtoint ptr %message367 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %message367, align 8
  %va369 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 4, i32 1
  %189 = ptrtoint ptr %va369 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %va369, align 4
  %format370 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion361, i32 0, i32 5
  %190 = ptrtoint ptr %format370 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @kunit_binary_assert_format, ptr %format370, align 8
  %operation371 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion361, i32 0, i32 1
  %191 = ptrtoint ptr %operation371 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @.str.3, ptr %operation371, align 4
  %left_text372 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion361, i32 0, i32 2
  %192 = ptrtoint ptr %left_text372 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @.str.31, ptr %left_text372, align 8
  %left_value373 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion361, i32 0, i32 3
  %193 = ptrtoint ptr %left_value373 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 31, ptr %left_value373, align 8
  %right_text375 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion361, i32 0, i32 4
  %194 = ptrtoint ptr %right_text375 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @.str.49, ptr %right_text375, align 8
  %right_value376 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion361, i32 0, i32 5
  %conv377 = sext i32 %call359 to i64
  %195 = ptrtoint ptr %right_value376 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %conv377, ptr %right_value376, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call359)
  %cmp379 = icmp eq i32 %call359, 31
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion361, i1 noundef zeroext %cmp379, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion361) #7
  %call388 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 271)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion390) #7
  %196 = getelementptr inbounds i8, ptr %__assertion390, i32 32
  %197 = call ptr @memset(ptr %196, i32 255, i32 24)
  %198 = ptrtoint ptr %__assertion390 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %test, ptr %__assertion390, align 8
  %type393 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 1
  %199 = ptrtoint ptr %type393 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 1, ptr %type393, align 4
  %line394 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 2
  %200 = ptrtoint ptr %line394 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 83, ptr %line394, align 8
  %file395 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 3
  %201 = ptrtoint ptr %file395 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @.str.2, ptr %file395, align 4
  %message396 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 4
  %202 = ptrtoint ptr %message396 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr null, ptr %message396, align 8
  %va398 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 4, i32 1
  %203 = ptrtoint ptr %va398 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %va398, align 4
  %format399 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion390, i32 0, i32 5
  %204 = ptrtoint ptr %format399 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr @kunit_binary_assert_format, ptr %format399, align 8
  %operation400 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion390, i32 0, i32 1
  %205 = ptrtoint ptr %operation400 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr @.str.3, ptr %operation400, align 4
  %left_text401 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion390, i32 0, i32 2
  %206 = ptrtoint ptr %left_text401 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @.str.31, ptr %left_text401, align 8
  %left_value402 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion390, i32 0, i32 3
  %207 = ptrtoint ptr %left_value402 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 31, ptr %left_value402, align 8
  %right_text404 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion390, i32 0, i32 4
  %208 = ptrtoint ptr %right_text404 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @.str.50, ptr %right_text404, align 8
  %right_value405 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion390, i32 0, i32 5
  %conv406 = sext i32 %call388 to i64
  %209 = ptrtoint ptr %right_value405 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %conv406, ptr %right_value405, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call388)
  %cmp408 = icmp eq i32 %call388, 31
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion390, i1 noundef zeroext %cmp408, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion390) #7
  %call417 = call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef null, i32 noundef 200000000, i32 noundef 276)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion419) #7
  %210 = getelementptr inbounds i8, ptr %__assertion419, i32 32
  %211 = call ptr @memset(ptr %210, i32 255, i32 24)
  %212 = ptrtoint ptr %__assertion419 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %test, ptr %__assertion419, align 8
  %type422 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 1
  %213 = ptrtoint ptr %type422 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 1, ptr %type422, align 4
  %line423 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 2
  %214 = ptrtoint ptr %line423 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 85, ptr %line423, align 8
  %file424 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 3
  %215 = ptrtoint ptr %file424 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @.str.2, ptr %file424, align 4
  %message425 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 4
  %216 = ptrtoint ptr %message425 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %message425, align 8
  %va427 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 4, i32 1
  %217 = ptrtoint ptr %va427 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %va427, align 4
  %format428 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion419, i32 0, i32 5
  %218 = ptrtoint ptr %format428 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @kunit_binary_assert_format, ptr %format428, align 8
  %operation429 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion419, i32 0, i32 1
  %219 = ptrtoint ptr %operation429 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @.str.3, ptr %operation429, align 4
  %left_text430 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion419, i32 0, i32 2
  %220 = ptrtoint ptr %left_text430 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @.str.31, ptr %left_text430, align 8
  %left_value431 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion419, i32 0, i32 3
  %221 = ptrtoint ptr %left_value431 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 31, ptr %left_value431, align 8
  %right_text433 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion419, i32 0, i32 4
  %222 = ptrtoint ptr %right_text433 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @.str.51, ptr %right_text433, align 8
  %right_value434 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion419, i32 0, i32 5
  %conv435 = sext i32 %call417 to i64
  %223 = ptrtoint ptr %right_value434 to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %conv435, ptr %right_value434, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call417)
  %cmp437 = icmp eq i32 %call417, 31
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion419, i1 noundef zeroext %cmp437, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion419) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef %dev, i32 noundef %rate_hz, i32 noundef %phase_deg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = srem i32 %phase_deg, 360
  call void @__sanitizer_cov_trace_const_cmp4(i32 179, i32 %rem)
  %cmp = icmp sgt i32 %rem, 179
  br i1 %cmp, label %if.then, label %entry.if.else162.i.i_crit_edge

entry.if.else162.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else162.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %rem, -180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_sdhci_phase_to_tap.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_sdhci_phase_to_tap, %if.then3)) #7
          to label %if.else162.i.i [label %if.then3], !srcloc !177

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_sdhci_phase_to_tap.__UNIQUE_ID_ddebug271, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %rem, i32 noundef %sub) #7
  br label %if.else162.i.i

if.else162.i.i:                                   ; preds = %if.then3, %if.then, %entry.if.else162.i.i_crit_edge
  %inverted.0 = phi i32 [ 16, %if.then3 ], [ 0, %entry.if.else162.i.i_crit_edge ], [ 16, %if.then ]
  %phase_deg.addr.0 = phi i32 [ %sub, %if.then3 ], [ %rem, %entry.if.else162.i.i_crit_edge ], [ %sub, %if.then ]
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate_hz, i64 1000000000000) #10, !srcloc !178
  %asmresult1.i.i.i = extractvalue { i64, i64 } %0, 1
  %conv7 = sext i32 %phase_deg.addr.0 to i64
  %mul = mul i64 %asmresult1.i.i.i, %conv7
  %1 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 6558842337318951686, i64 %mul) #10, !srcloc !179
  %2 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6558842337318951686, i64 %mul, i64 %1) #10, !srcloc !180
  %div158.i.i71104 = lshr i64 %2, 7
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3555998857582564167, i64 %div158.i.i71104) #10, !srcloc !179
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 3555998857582564167, i64 %div158.i.i71104, i64 %3, i32 0) #10, !srcloc !181
  %asmresult10.i.i.i94 = extractvalue { i64, i32 } %4, 0
  %div158.i.i99105 = lshr i64 %asmresult10.i.i.i94, 4
  %conv11 = trunc i64 %div158.i.i99105 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv11)
  %cmp12 = icmp ugt i32 %conv11, 15
  br i1 %cmp12, label %do.body15, label %if.else162.i.i.if.end31_crit_edge

if.else162.i.i.if.end31_crit_edge:                ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.body15:                                        ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_sdhci_phase_to_tap.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_sdhci_phase_to_tap, %if.then27)) #7
          to label %if.end31 [label %if.then27], !srcloc !177

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_sdhci_phase_to_tap.__UNIQUE_ID_ddebug272, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv11, i32 noundef %phase_deg.addr.0, i32 noundef %rate_hz, i32 noundef 15) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %do.body15, %if.else162.i.i.if.end31_crit_edge
  %tap.0 = phi i32 [ %conv11, %if.else162.i.i.if.end31_crit_edge ], [ 15, %if.then27 ], [ 15, %do.body15 ]
  %or = or i32 %tap.0, %inverted.0
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kunit_test_suites_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kunit_test_suites_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sdc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup39_crit_edge, label %do.body

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.aspeed_sdc, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.53, ptr noundef nonnull @aspeed_sdc_probe.__key, i16 noundef signext 3) #7
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup39

if.end9:                                          ; preds = %do.body
  %call.i68 = tail call i32 @clk_prepare(ptr noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.do.end16_crit_edge

if.end9.do.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end18, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call3) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i, %if.end9.do.end16_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i68, %if.end9.do.end16_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #11
  br label %cleanup39

if.end18:                                         ; preds = %if.end.i
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %res = getelementptr inbounds %struct.aspeed_sdc, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call19, ptr %res, align 4
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call19) #7
  %regs = getelementptr inbounds %struct.aspeed_sdc, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call22, ptr %regs, align 4
  %cmp.i69 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call22 to i32
  br label %err_clk

if.end28:                                         ; preds = %if.end18
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call31 = tail call ptr @of_get_next_available_child(ptr noundef %7, ptr noundef null) #7
  %cmp.not77 = icmp eq ptr %call31, null
  br i1 %cmp.not77, label %if.end28.cleanup39_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.cleanup39_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %child.078 = phi ptr [ %call37, %for.inc.for.body_crit_edge ], [ %call31, %if.end28.for.body_crit_edge ]
  %call33 = tail call ptr @of_platform_device_create(ptr noundef nonnull %child.078, ptr noundef null, ptr noundef %dev) #7
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.078) #7
  br label %err_clk

for.inc:                                          ; preds = %for.body
  %call37 = tail call ptr @of_get_next_available_child(ptr noundef %7, ptr noundef nonnull %child.078) #7
  %cmp.not = icmp eq ptr %call37, null
  br i1 %cmp.not, label %for.inc.cleanup39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

err_clk:                                          ; preds = %cleanup, %if.then25
  %ret.2 = phi i32 [ %4, %if.then25 ], [ -19, %cleanup ]
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %cleanup39

cleanup39:                                        ; preds = %err_clk, %for.inc.cleanup39_crit_edge, %if.end28.cleanup39_crit_edge, %do.end16, %if.then6, %entry.cleanup39_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %retval.0.i.ph, %do.end16 ], [ %ret.2, %err_clk ], [ -12, %entry.cleanup39_crit_edge ], [ 0, %if.end28.cleanup39_crit_edge ], [ 0, %for.inc.cleanup39_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sdc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sdhci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull @aspeed_sdhci_pdata, i32 noundef 84) #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 81
  %private.i135 = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 1, i32 11, i32 21
  %3 = ptrtoint ptr %private.i135 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %private.i135, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %parent13 = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 1, i32 11, i32 22
  %8 = ptrtoint ptr %parent13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %parent13, align 4
  %call14 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call14, null
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %lor.lhs.false.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end8
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %call14, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %10, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i.i)
  %cmp.not.i = icmp eq i32 %and.i.i, 512
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call14, align 4
  %13 = ptrtoint ptr %parent13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent13, align 4
  %res1.i = getelementptr inbounds %struct.aspeed_sdc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %res1.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %18)
  %cmp3.i = icmp ult i32 %12, %18
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %sub.i = sub i32 %12, %18
  %and.i = and i32 %sub.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %aspeed_sdhci_calculate_slot.exit, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

aspeed_sdhci_calculate_slot.exit:                 ; preds = %if.end5.i
  %div20.i = lshr i32 %sub.i, 8
  %sub13.i = add nsw i32 %div20.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 256
  br i1 %cmp, label %aspeed_sdhci_calculate_slot.exit.cleanup_crit_edge, label %if.else

aspeed_sdhci_calculate_slot.exit.cleanup_crit_edge: ; preds = %aspeed_sdhci_calculate_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %aspeed_sdhci_calculate_slot.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub13.i)
  %cmp17 = icmp ugt i32 %sub13.i, 1
  br i1 %cmp17, label %if.else.cleanup_crit_edge, label %if.end20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.else
  %19 = ptrtoint ptr %private.i135 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private.i135, align 4
  %nr_phase_descs = getelementptr inbounds %struct.aspeed_sdhci_pdata, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %nr_phase_descs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_phase_descs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13.i, i32 %22)
  %cmp22 = icmp ult i32 %sub13.i, %22
  br i1 %cmp22, label %if.then23, label %do.end29

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %phase_desc = getelementptr inbounds %struct.aspeed_sdhci_pdata, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %phase_desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phase_desc, align 4
  %arrayidx = getelementptr %struct.aspeed_sdhci_phase_desc, ptr %24, i32 %sub13.i
  br label %if.end32

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %sub13.i) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.then23
  %.sink = phi ptr [ %arrayidx, %if.then23 ], [ null, %do.end29 ]
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 1, i32 13, i32 13, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %.sink, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13.i)
  %tobool33.not = icmp eq i32 %sub13.i, 0
  %cond = select i1 %tobool33.not, i32 16777216, i32 33554432
  %width_mask = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 1, i32 11, i32 23
  %27 = ptrtoint ptr %width_mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond, ptr %width_mask, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %sub13.i) #11
  tail call void @sdhci_get_property(ptr noundef %pdev) #7
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end32.if.then40_crit_edge

if.end32.if.then40_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

lor.lhs.false:                                    ; preds = %if.end32
  %call.i136 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.69, ptr noundef null) #7
  %tobool.i137.not = icmp eq ptr %call.i136, null
  br i1 %tobool.i137.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.if.then40_crit_edge

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %if.end32.if.then40_crit_edge
  %28 = ptrtoint ptr %parent13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent13, align 4
  %conv = trunc i32 %sub13.i to i8
  tail call fastcc void @aspeed_sdc_set_slot_capability(ptr noundef %call4, ptr noundef %29, i32 noundef 26, i8 noundef zeroext %conv)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %lor.lhs.false.if.end42_crit_edge
  %call.i138 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.69, ptr noundef null) #7
  %tobool.i139.not = icmp eq ptr %call.i138, null
  br i1 %tobool.i139.not, label %if.end42.if.end47_crit_edge, label %if.then44

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %parent13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent13, align 4
  %conv46 = trunc i32 %sub13.i to i8
  tail call fastcc void @aspeed_sdc_set_slot_capability(ptr noundef %call4, ptr noundef %31, i32 noundef 33, i8 noundef zeroext %conv46)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42.if.end47_crit_edge
  %call49 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %32 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call49, ptr %private.i, align 128
  %cmp.i140 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call49 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  %call57 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #11
  br label %err_pltfm_free

if.end64:                                         ; preds = %if.end55
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 10
  %34 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmc, align 8
  %call65 = tail call i32 @mmc_of_parse(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.err_sdhci_add_crit_edge

if.end64.err_sdhci_add_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_sdhci_add

if.end68:                                         ; preds = %if.end64
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %25, align 4
  %tobool70.not = icmp eq ptr %37, null
  br i1 %tobool70.not, label %if.end68.if.end73_crit_edge, label %if.then71

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmc, align 8
  %phase_map = getelementptr inbounds %struct.aspeed_sdhci, ptr %private.i135, i32 0, i32 3
  tail call void @mmc_of_parse_clk_phase(ptr noundef %39, ptr noundef %phase_map) #7
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end68.if.end73_crit_edge
  %call74 = tail call i32 @sdhci_add_host(ptr noundef %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end73.cleanup_crit_edge, label %if.end73.err_sdhci_add_crit_edge

if.end73.err_sdhci_add_crit_edge:                 ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_sdhci_add

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_sdhci_add:                                    ; preds = %if.end73.err_sdhci_add_crit_edge, %if.end64.err_sdhci_add_crit_edge
  %ret.0 = phi i32 [ %call65, %if.end64.err_sdhci_add_crit_edge ], [ %call74, %if.end73.err_sdhci_add_crit_edge ]
  %40 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %41) #7
  tail call void @clk_unprepare(ptr noundef %41) #7
  br label %err_pltfm_free

err_pltfm_free:                                   ; preds = %err_sdhci_add, %do.end62
  %ret.1 = phi i32 [ %call57, %do.end62 ], [ %ret.0, %err_sdhci_add ]
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %err_pltfm_free, %if.end73.cleanup_crit_edge, %if.then52, %if.else.cleanup_crit_edge, %aspeed_sdhci_calculate_slot.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then6, %do.end
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %33, %if.then52 ], [ %ret.1, %err_pltfm_free ], [ -22, %do.end ], [ -1, %aspeed_sdhci_calculate_slot.exit.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sdhci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef 0) #7
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_sdc_set_slot_capability(ptr noundef %host, ptr nocapture noundef readonly %sdc, i32 noundef %capability, i8 noundef zeroext %slot) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %capability, 32
  %conv3 = shl nsw i32 %div, 2
  %mul = and i32 %conv3, 1020
  %add = add nuw nsw i32 %mul, 64
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !182

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef %add) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !183
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %conv = zext i8 %slot to i32
  %rem1 = and i32 %capability, 31
  %shl = shl nuw i32 1, %rem1
  %or = or i32 %retval.0.i, %shl
  %add9 = shl nuw nsw i32 %conv, 4
  %mul10 = add nuw nsw i32 %add9, 16
  %add13 = add nuw nsw i32 %mul10, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.aspeed_sdc, ptr %sdc, i32 0, i32 3
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #7, !srcloc !186
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_of_parse_clk_phase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sdhci_readl(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !183
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %reg)
  %cmp = icmp eq i32 %reg, 36
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge, !prof !188

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps2, align 4
  %and = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %xor = xor i32 %3, 65536
  %spec.select = select i1 %tobool3.not, i32 %3, i32 %xor
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %3, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sdhci_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %private.i53 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 128
  %call3 = tail call i32 @clk_get_rate(ptr noundef %1) #7
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !182

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %host, i16 noundef zeroext 0, i32 noundef 44) #7
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #7, !srcloc !190
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %sdhci_writew.exit.cleanup_crit_edge, label %if.end

sdhci_writew.exit.cleanup_crit_edge:              ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sdhci_writew.exit
  %max_clk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 18
  %8 = ptrtoint ptr %max_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %clock)
  %cmp4 = icmp ult i32 %9, %clock
  br i1 %cmp4, label %do.end, label %if.end.if.end28_crit_edge, !prof !188

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 254, i32 noundef 9, ptr noundef null) #7
  %10 = ptrtoint ptr %max_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_clk, align 4
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end.if.end28_crit_edge
  %clock.addr.0 = phi i32 [ %11, %do.end ], [ %clock, %if.end.if.end28_crit_edge ]
  %12 = ptrtoint ptr %private.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private.i53, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %15)
  %cmp2954 = icmp slt i32 %15, 256
  br i1 %cmp2954, label %if.end28.for.body_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %div.055 = phi i32 [ %mul, %for.inc.for.body_crit_edge ], [ %15, %if.end28.for.body_crit_edge ]
  %div30 = udiv i32 %call3, %div.055
  call void @__sanitizer_cov_trace_cmp4(i32 %div30, i32 %clock.addr.0)
  %cmp31.not = icmp ugt i32 %div30, %clock.addr.0
  br i1 %cmp31.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %mul = shl i32 %div.055, 1
  %cmp29 = icmp slt i32 %mul, 256
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end28.for.end_crit_edge
  %div.0.lcssa = phi i32 [ %15, %if.end28.for.end_crit_edge ], [ %div.055, %for.body.for.end_crit_edge ], [ %mul, %for.inc.for.end_crit_edge ]
  %bus.1 = phi i32 [ -1, %if.end28.for.end_crit_edge ], [ %div30, %for.body.for.end_crit_edge ], [ %div30, %for.inc.for.end_crit_edge ]
  %div.0.tr = trunc i32 %div.0.lcssa to i16
  %16 = shl i16 %div.0.tr, 7
  %conv = and i16 %16, -256
  tail call fastcc void @aspeed_sdhci_configure_phase(ptr noundef %host, i32 noundef %bus.1)
  tail call void @sdhci_enable_clk(ptr noundef %host, i16 noundef zeroext %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sdhci_writew.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_sdhci_get_max_clock(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef %host) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ %3, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_sdhci_set_bus_width(ptr noundef %host, i32 noundef %width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %width)
  %cmp = icmp eq i32 %width, 3
  %lock.i = getelementptr inbounds %struct.aspeed_sdc, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %regs.i = getelementptr inbounds %struct.aspeed_sdc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !183
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  %width_mask.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %6 = ptrtoint ptr %width_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width_mask.i, align 4
  %or.i = or i32 %7, %5
  %neg.i = xor i32 %7, -1
  %and.i = and i32 %5, %neg.i
  %info.0.i = select i1 %cmp, i32 %or.i, i32 %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %info.0.i) #7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !186
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %read_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read_b.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_b.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !182

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i8 %14(ptr noundef %host, i32 noundef 40) #7
  br label %sdhci_readb.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %16, i32 40
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  br label %sdhci_readb.exit

sdhci_readb.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %call.i, %if.then.i ], [ %17, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %width)
  %cmp3 = icmp eq i32 %width, 2
  %18 = and i8 %retval.0.i, -3
  %masksel = select i1 %cmp3, i8 2, i8 0
  %ctrl.0 = or i8 %18, %masksel
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %write_b.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_b.i, align 4
  %tobool.not.i15 = icmp eq ptr %22, null
  br i1 %tobool.not.i15, label %do.body.i, label %if.then.i16, !prof !182

if.then.i16:                                      ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %22(ptr noundef %host, i8 noundef zeroext %ctrl.0, i32 noundef 40) #7
  br label %sdhci_writeb.exit

do.body.i:                                        ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %ioaddr.i17 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i17, align 16
  %add.ptr.i18 = getelementptr i8, ptr %24, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18, i8 %ctrl.0) #7, !srcloc !196
  br label %sdhci_writeb.exit

sdhci_writeb.exit:                                ; preds = %do.body.i, %if.then.i16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_sdhci_configure_phase(ptr nocapture noundef readonly %host, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %phase_desc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 13, i32 1
  %4 = ptrtoint ptr %phase_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phase_desc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i32 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %phase_map = getelementptr inbounds %struct.aspeed_sdhci, ptr %private.i32, i32 0, i32 3
  %timing = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 64
  %6 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timing, align 4
  %arrayidx = getelementptr [11 x %struct.mmc_clk_phase], ptr %phase_map, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 2, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %if.end.aspeed_sdhci_phases_to_taps.exit_crit_edge, label %if.end.i

if.end.aspeed_sdhci_phases_to_taps.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_sdhci_phases_to_taps.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %in_deg.i = getelementptr [11 x %struct.mmc_clk_phase], ptr %phase_map, i32 0, i32 %7, i32 1
  %10 = ptrtoint ptr %in_deg.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %in_deg.i, align 2
  %conv.i = zext i16 %11 to i32
  %call.i = tail call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef %3, i32 noundef %rate, i32 noundef %conv.i) #7
  %conv4.i = trunc i32 %call.i to i8
  %out_deg.i = getelementptr [11 x %struct.mmc_clk_phase], ptr %phase_map, i32 0, i32 %7, i32 2
  %12 = ptrtoint ptr %out_deg.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %out_deg.i, align 2
  %conv5.i = zext i16 %13 to i32
  %call6.i = tail call fastcc i32 @aspeed_sdhci_phase_to_tap(ptr noundef %3, i32 noundef %rate, i32 noundef %conv5.i) #7
  %conv7.i = trunc i32 %call6.i to i8
  br label %aspeed_sdhci_phases_to_taps.exit

aspeed_sdhci_phases_to_taps.exit:                 ; preds = %if.end.i, %if.end.aspeed_sdhci_phases_to_taps.exit_crit_edge
  %_taps.sroa.5.0 = phi i8 [ 0, %if.end.aspeed_sdhci_phases_to_taps.exit_crit_edge ], [ %conv4.i, %if.end.i ]
  %_taps.sroa.8.0 = phi i8 [ 0, %if.end.aspeed_sdhci_phases_to_taps.exit_crit_edge ], [ %conv7.i, %if.end.i ]
  %parent2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %14 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent2, align 4
  %16 = ptrtoint ptr %phase_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phase_desc, align 4
  %lock.i = getelementptr inbounds %struct.aspeed_sdc, ptr %15, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %regs.i = getelementptr inbounds %struct.aspeed_sdc, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 244
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !183
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  %enable_mask.i.i = getelementptr inbounds %struct.aspeed_sdhci_tap_desc, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %enable_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enable_mask.i.i, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %17, align 4
  %or.i.i = or i32 %25, %23
  %neg.i.i = xor i32 %or.i.i, -1
  %and.i.i = and i32 %21, %neg.i.i
  br i1 %tobool3.not.i, label %aspeed_sdc_set_phase_tap.exit.thread.i, label %if.then.i31.i

aspeed_sdc_set_phase_tap.exit.thread.i:           ; preds = %aspeed_sdhci_phases_to_taps.exit
  call void @__sanitizer_cov_trace_pc() #9
  %out35.i = getelementptr inbounds %struct.aspeed_sdhci_phase_desc, ptr %17, i32 0, i32 1
  %enable_mask.i2036.i = getelementptr inbounds %struct.aspeed_sdhci_phase_desc, ptr %17, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %enable_mask.i2036.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enable_mask.i2036.i, align 4
  %28 = ptrtoint ptr %out35.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out35.i, align 4
  %or.i2137.i = or i32 %29, %27
  %neg.i2238.i = xor i32 %or.i2137.i, -1
  %and.i2339.i = and i32 %and.i.i, %neg.i2238.i
  br label %aspeed_sdc_set_phase_taps.exit

if.then.i31.i:                                    ; preds = %aspeed_sdhci_phases_to_taps.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %_taps.sroa.5.0 to i32
  %30 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #7, !range !199
  %shl.i.i = shl i32 %conv.i.i, %30
  %or2.i.i = or i32 %shl.i.i, %and.i.i
  %enable_value.i.i = getelementptr inbounds %struct.aspeed_sdhci_tap_desc, ptr %17, i32 0, i32 2
  %31 = ptrtoint ptr %enable_value.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enable_value.i.i, align 4
  %conv3.i.i = zext i8 %32 to i32
  %33 = tail call i32 @llvm.cttz.i32(i32 %23, i1 false) #7, !range !199
  %shl6.i.i = shl i32 %conv3.i.i, %33
  %or7.i.i = or i32 %or2.i.i, %shl6.i.i
  %out.i33 = getelementptr inbounds %struct.aspeed_sdhci_phase_desc, ptr %17, i32 0, i32 1
  %enable_mask.i20.i = getelementptr inbounds %struct.aspeed_sdhci_phase_desc, ptr %17, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %enable_mask.i20.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %enable_mask.i20.i, align 4
  %36 = ptrtoint ptr %out.i33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %out.i33, align 4
  %or.i21.i = or i32 %37, %35
  %neg.i22.i = xor i32 %or.i21.i, -1
  %and.i23.i = and i32 %or7.i.i, %neg.i22.i
  %conv.i24.i = zext i8 %_taps.sroa.8.0 to i32
  %38 = tail call i32 @llvm.cttz.i32(i32 %37, i1 false) #7, !range !199
  %shl.i25.i = shl i32 %conv.i24.i, %38
  %or2.i26.i = or i32 %shl.i25.i, %and.i23.i
  %enable_value.i27.i = getelementptr inbounds %struct.aspeed_sdhci_phase_desc, ptr %17, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %enable_value.i27.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %enable_value.i27.i, align 4
  %conv3.i28.i = zext i8 %40 to i32
  %41 = tail call i32 @llvm.cttz.i32(i32 %35, i1 false) #7, !range !199
  %shl6.i29.i = shl i32 %conv3.i28.i, %41
  %or7.i30.i = or i32 %or2.i26.i, %shl6.i29.i
  br label %aspeed_sdc_set_phase_taps.exit

aspeed_sdc_set_phase_taps.exit:                   ; preds = %if.then.i31.i, %aspeed_sdc_set_phase_tap.exit.thread.i
  %reg.addr.0.i32.i = phi i32 [ %or7.i30.i, %if.then.i31.i ], [ %and.i2339.i, %aspeed_sdc_set_phase_tap.exit.thread.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %reg.addr.0.i32.i) #7
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %44, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %42) #7, !srcloc !186
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_sdhci_configure_phase.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_sdhci_configure_phase, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !177

if.then8:                                         ; preds = %aspeed_sdc_set_phase_taps.exit
  call void @__sanitizer_cov_trace_pc() #9
  %45 = and i8 %_taps.sroa.5.0, 15
  %and = zext i8 %45 to i32
  %46 = and i8 %_taps.sroa.8.0, 15
  %and10 = zext i8 %46 to i32
  %in_deg = getelementptr [11 x %struct.mmc_clk_phase], ptr %phase_map, i32 0, i32 %7, i32 1
  %47 = ptrtoint ptr %in_deg to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %in_deg, align 2
  %conv11 = zext i16 %48 to i32
  %out_deg = getelementptr [11 x %struct.mmc_clk_phase], ptr %phase_map, i32 0, i32 %7, i32 2
  %49 = ptrtoint ptr %out_deg to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %out_deg, align 2
  %conv12 = zext i16 %50 to i32
  %51 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %timing, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_sdhci_configure_phase.__UNIQUE_ID_ddebug273, ptr noundef %3, ptr noundef nonnull @.str.74, i32 noundef %and, i32 noundef %and10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %rate, i32 noundef %52) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %aspeed_sdc_set_phase_taps.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !34, !35, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !54, !56, !58, !59, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !77, !78, !79, !80, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !119, !120, !121, !122, !123, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !148, !150, !151, !152, !154, !156, !158, !159, !160, !162, !164, !166}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @aspeed_sdc_test_suites, !1, !"aspeed_sdc_test_suites", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 104, i32 29}
!2 = !{ptr @__initcall__kmod_sdhci_of_aspeed__275_655_aspeed_sdc_init6, !3, !"__initcall__kmod_sdhci_of_aspeed__275_655_aspeed_sdc_init6", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 655, i32 1}
!4 = !{ptr @__exitcall_aspeed_sdc_exit, !5, !"__exitcall_aspeed_sdc_exit", i1 false, i1 false}
!5 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 664, i32 1}
!6 = !{ptr @__UNIQUE_ID_description276, !7, !"__UNIQUE_ID_description276", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 666, i32 1}
!8 = !{ptr @__UNIQUE_ID_author277, !9, !"__UNIQUE_ID_author277", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 667, i32 1}
!10 = !{ptr @__UNIQUE_ID_author278, !11, !"__UNIQUE_ID_author278", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 668, i32 1}
!12 = !{ptr @__UNIQUE_ID_file279, !13, !"__UNIQUE_ID_file279", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 669, i32 1}
!14 = !{ptr @__UNIQUE_ID_license280, !13, !"__UNIQUE_ID_license280", i1 false, i1 false}
!15 = !{ptr @aspeed_sdc_test_suite_array, !16, !"aspeed_sdc_test_suite_array", i1 false, i1 false}
!16 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 99, i32 28}
!17 = !{ptr @aspeed_sdhci_test_suite, !18, !"aspeed_sdhci_test_suite", i1 false, i1 false}
!18 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 94, i32 27}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 89, i32 2}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 90, i32 2}
!23 = !{ptr @aspeed_sdhci_test_cases, !24, !"aspeed_sdhci_test_cases", i1 false, i1 false}
!24 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 88, i32 26}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 10, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 12, i32 2}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 14, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 16, i32 2}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 18, i32 2}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 20, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 22, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 24, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 26, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 29, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 31, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 33, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 35, i32 2}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 37, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 39, i32 2}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 41, i32 2}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 43, i32 2}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 45, i32 2}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 176, i32 3}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @aspeed_sdhci_phase_to_tap.__UNIQUE_ID_ddebug271, !76, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 189, i32 3}
!83 = !{ptr @aspeed_sdhci_phase_to_tap.__UNIQUE_ID_ddebug272, !82, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 57, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 59, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 61, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 63, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 65, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 67, i32 2}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 70, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 74, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 76, i32 2}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 78, i32 2}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 80, i32 2}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 82, i32 2}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/sdhci-of-aspeed-test.c", i32 84, i32 2}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 598, i32 11}
!112 = !{ptr @aspeed_sdc_driver, !113, !"aspeed_sdc_driver", i1 false, i1 false}
!113 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 596, i32 31}
!114 = !{ptr @aspeed_sdc_probe.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 538, i32 2}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 546, i32 3}
!119 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @aspeed_sdc_probe._entry, !118, !"_entry", i1 false, i1 false}
!123 = !{ptr @aspeed_sdc_probe._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @aspeed_sdc_of_match, !125, !"aspeed_sdc_of_match", i1 false, i1 false}
!125 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 587, i32 34}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 519, i32 11}
!128 = !{ptr @aspeed_sdhci_driver, !129, !"aspeed_sdhci_driver", i1 false, i1 false}
!129 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 517, i32 31}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 377, i32 3}
!132 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @aspeed_sdhci_probe._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @aspeed_sdhci_probe._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 401, i32 3}
!137 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @aspeed_sdhci_probe._entry.61, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @aspeed_sdhci_probe._entry_ptr.64, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 408, i32 2}
!142 = !{ptr @aspeed_sdhci_probe._entry.65, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @aspeed_sdhci_probe._entry_ptr.67, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 412, i32 32}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 413, i32 32}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 429, i32 3}
!150 = !{ptr @aspeed_sdhci_probe._entry.70, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @aspeed_sdhci_probe._entry_ptr.72, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @aspeed_sdhci_pdata, !153, !"aspeed_sdhci_pdata", i1 false, i1 false}
!153 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 341, i32 38}
!154 = !{ptr @aspeed_sdhci_ops, !155, !"aspeed_sdhci_ops", i1 false, i1 false}
!155 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 331, i32 31}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 229, i32 2}
!158 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @aspeed_sdhci_configure_phase.__UNIQUE_ID_ddebug273, !157, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!160 = !{ptr @aspeed_sdhci_of_match, !161, !"aspeed_sdhci_of_match", i1 false, i1 false}
!161 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 510, i32 34}
!162 = !{ptr @ast2400_sdhci_pdata, !163, !"ast2400_sdhci_pdata", i1 false, i1 false}
!163 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 471, i32 40}
!164 = !{ptr @ast2600_sdhci_pdata, !165, !"ast2600_sdhci_pdata", i1 false, i1 false}
!165 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 504, i32 40}
!166 = !{ptr @ast2600_sdhci_phase, !167, !"ast2600_sdhci_phase", i1 false, i1 false}
!167 = !{!"../drivers/mmc/host/sdhci-of-aspeed.c", i32 475, i32 45}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{i64 2148736376, i64 2148736381, i64 2148736394, i64 2148736438, i64 2148736472, i64 2148736493}
!178 = !{i64 2148645095, i64 2148645375, i64 2148645709, i64 2148646043}
!179 = !{i64 1159264, i64 1159291}
!180 = !{i64 1159774, i64 1159801, i64 1159835, i64 1159856}
!181 = !{i64 1159959, i64 1159986, i64 1160019, i64 1160040, i64 1160067, i64 1160093}
!182 = !{!"branch_weights", i32 2000, i32 1}
!183 = !{i64 4824979}
!184 = !{i64 2154772012}
!185 = !{i64 2154774395}
!186 = !{i64 4824561}
!187 = !{i64 2154786618}
!188 = !{!"branch_weights", i32 1, i32 2000}
!189 = !{i64 2154770648}
!190 = !{i64 4823941}
!191 = !{i64 2154775081}
!192 = !{i64 2154775300}
!193 = !{i64 4824759}
!194 = !{i64 2154773164}
!195 = !{i64 2154771254}
!196 = !{i64 4824364}
!197 = !{i8 0, i8 2}
!198 = !{i64 2154775964}
!199 = !{i32 0, i32 33}
!200 = !{i64 2154776182}
