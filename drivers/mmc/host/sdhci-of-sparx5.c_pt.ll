; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-of-sparx5.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-of-sparx5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_sdhci_of_sparx5__281_266_sdhci_sparx5_driver_init6 = internal global ptr @sdhci_sparx5_driver_init, section ".initcall6.init", align 4
@sdhci_sparx5_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_sparx5_probe, ptr @sdhci_pltfm_unregister, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_sparx5_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_sparx5_driver_exit = internal global ptr @sdhci_sparx5_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description282 = internal constant [51 x i8] c"sdhci_of_sparx5.description=Sparx5 SDHCI OF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [65 x i8] c"sdhci_of_sparx5.author=Lars Povlsen <lars.povlsen@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [54 x i8] c"sdhci_of_sparx5.file=drivers/mmc/host/sdhci-of-sparx5\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [31 x i8] c"sdhci_of_sparx5.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdhci-sparx5\00", [19 x i8] zeroinitializer }, align 32
@sdhci_sparx5_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,dw-sparx5-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sdhci_pltfm_pmops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"microchip,sparx5-cpu-syscon\00", [36 x i8] zeroinitializer }, align 32
@sdhci_sparx5_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_sparx5_ops, i32 0, i32 6 }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@sdhci_sparx5_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 190, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get core clk: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhci_sparx5_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mmc/host/sdhci-of-sparx5.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_sparx5_probe._entry_ptr = internal global ptr @sdhci_sparx5_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"microchip,clock-delay\00", [42 x i8] zeroinitializer }, align 32
@sdhci_sparx5_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 209, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No CPU syscon regmap !\0A\00", [40 x i8] zeroinitializer }, align 32
@sdhci_sparx5_probe._entry_ptr.11 = internal global ptr @sdhci_sparx5_probe._entry.9, section ".printk_index", align 4
@sdhci_sparx5_probe.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.4, ptr @.str.5, ptr @.str.13, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdhci_of_sparx5\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: SDHC version: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@sdhci_sparx5_probe.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.4, ptr @.str.5, ptr @.str.14, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: SDHC type:    0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@sdhci_sparx5_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_sparx5_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_sparx5_adma_write_desc, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_sparx5_reset.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhci_sparx5_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: *** RESET: mask %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sdhci_sparx5_adma_write_desc.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdhci_sparx5_adma_write_desc\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: write_desc: splitting dma len %d, offset %pad\0A\00", [45 x i8] zeroinitializer }, align 32
@sparx5_set_delay.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.19, ptr @.str.5, ptr @.str.20, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sparx5_set_delay\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Set DLY_CC = %u\0A\00", [43 x i8] zeroinitializer }, align 32
@sdhci_sparx5_reset_emmc.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdhci_sparx5_reset_emmc\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Toggle EMMC_CTRL.EMMC_RST_N\0A\00", [63 x i8] zeroinitializer }, align 32
@sdhci_sparx5_set_emmc.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.23, ptr @.str.5, ptr @.str.24, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdhci_sparx5_set_emmc\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Set EMMC_CTRL: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@sparx5_set_cacheable.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sparx5_set_cacheable\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Set Cacheable = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"sdhci_sparx5_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 255, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 257, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"sdhci_sparx5_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 249, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 161, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"sdhci_sparx5_pdata\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 151, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 187, i32 45 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 190, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 197, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 209, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 235, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 237, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"sdhci_sparx5_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 142, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 134, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 63, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 92, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 120, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 109, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [38 x i8] c"../drivers/mmc/host/sdhci-of-sparx5.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 80, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_sdhci_sparx5_driver_exit, ptr @__initcall__kmod_sdhci_of_sparx5__281_266_sdhci_sparx5_driver_init6, ptr @sdhci_sparx5_driver_exit, ptr @sdhci_sparx5_probe._entry, ptr @sdhci_sparx5_probe._entry.9, ptr @sdhci_sparx5_probe._entry_ptr, ptr @sdhci_sparx5_probe._entry_ptr.11, ptr @sdhci_sparx5_driver, ptr @.str, ptr @sdhci_sparx5_of_match, ptr @.str.1, ptr @sdhci_sparx5_pdata, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sdhci_sparx5_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sparx5_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sparx5_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sparx5_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sparx5_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sparx5_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_sparx5_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sparx5_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_sparx5_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sparx5_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_sparx5_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_sparx5_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !78
  %call = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull @sdhci_sparx5_pdata, i32 noundef 12) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i64 @dma_get_required_mask(ptr noundef %dev) #6
  %sub = add i64 %call4, 134217727
  %shr = lshr i64 %sub, 27
  %conv190 = trunc i64 %shr to i32
  %4 = tail call i32 @llvm.umin.i32(i32 %conv190, i32 128)
  %adma_table_cnt = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 78
  %5 = ptrtoint ptr %adma_table_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %adma_table_cnt, align 4
  %add195 = add i32 %4, %6
  store i32 %add195, ptr %adma_table_cnt, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 81
  %private.i429 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 21
  %7 = ptrtoint ptr %private.i429 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %private.i429, align 4
  %call200 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call200, ptr %private.i, align 128
  %cmp.i430 = icmp ugt ptr %call200, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i430, label %if.then203, label %if.end207

if.then203:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call200 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %9) #9
  br label %free_pltfm

if.end207:                                        ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end207.free_pltfm_crit_edge

if.end207.free_pltfm_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_pltfm

if.end.i:                                         ; preds = %if.end207
  %call1.i = tail call i32 @clk_enable(ptr noundef %call200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end212, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call200) #6
  br label %free_pltfm

if.end212:                                        ; preds = %if.end.i
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool214.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool214.not, label %land.lhs.true215, label %if.end212.if.end222_crit_edge

if.end212.if.end222_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end222

land.lhs.true215:                                 ; preds = %if.end212
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %12 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %13 = icmp ult i32 %12, 15
  br i1 %13, label %if.then221, label %land.lhs.true215.if.end222_crit_edge

land.lhs.true215.if.end222_crit_edge:             ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end222

if.then221:                                       ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #8
  %delay_clock = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 23
  %14 = ptrtoint ptr %delay_clock to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %delay_clock, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.then221, %land.lhs.true215.if.end222_crit_edge, %if.end212.if.end222_crit_edge
  call void @sdhci_get_property(ptr noundef %pdev) #6
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %15 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmc, align 8
  %call223 = call i32 @mmc_of_parse(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.end226, label %if.end222.err_clk_crit_edge

if.end222.err_clk_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

if.end226:                                        ; preds = %if.end222
  %call227 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #6
  %cpu_ctrl = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 22
  %17 = ptrtoint ptr %cpu_ctrl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call227, ptr %cpu_ctrl, align 4
  %cmp.i432 = icmp ugt ptr %call227, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i432, label %do.end233, label %if.end237

do.end233:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %18 = ptrtoint ptr %cpu_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpu_ctrl, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %err_clk

if.end237:                                        ; preds = %if.end226
  %delay_clock238 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 23
  %21 = ptrtoint ptr %delay_clock238 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay_clock238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp239 = icmp sgt i32 %22, -1
  br i1 %cmp239, label %if.then241, label %if.end237.if.end244_crit_edge

if.end237.if.end244_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

if.then241:                                       ; preds = %if.end237
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sparx5_set_delay.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_sparx5_probe, %if.then.i)) #6
          to label %sparx5_set_delay.exit [label %if.then.i], !srcloc !79

if.then.i:                                        ; preds = %if.then241
  %23 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmc, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i11.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.then.i.dev_name.exit.i_crit_edge ]
  %conv.i = and i32 %22, 255
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sparx5_set_delay.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i11.i, i32 noundef %conv.i) #6
  br label %sparx5_set_delay.exit

sparx5_set_delay.exit:                            ; preds = %dev_name.exit.i, %if.then241
  %29 = ptrtoint ptr %cpu_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpu_ctrl, align 4
  %conv6.i = shl i32 %22, 13
  %shl.i = and i32 %conv6.i, 2088960
  %call.i.i433 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 136, i32 noundef 122880, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end244

if.end244:                                        ; preds = %sparx5_set_delay.exit, %if.end237.if.end244_crit_edge
  %31 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmc, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %caps.i, align 32
  %35 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool247.not.not = icmp eq i32 %35, 0
  br i1 %tobool247.not.not, label %if.end244.if.end251_crit_edge, label %if.then248

if.end244.if.end251_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end251

if.then248:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @sdhci_sparx5_reset_emmc(ptr noundef %call)
  call fastcc void @sdhci_sparx5_set_emmc(ptr noundef %call)
  %36 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %caps2, align 4
  %or250 = or i32 %39, 2621440
  store i32 %or250, ptr %caps2, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.then248, %if.end244.if.end251_crit_edge
  %call252 = call i32 @sdhci_add_host(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %if.end255, label %if.end251.err_clk_crit_edge

if.end251.err_clk_crit_edge:                      ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

if.end255:                                        ; preds = %if.end251
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 16
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and256 = and i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %if.end255.do.body260_crit_edge, label %if.then258

if.end255.do.body260_crit_edge:                   ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body260

if.then258:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @sparx5_set_cacheable(ptr noundef %call)
  br label %do.body260

do.body260:                                       ; preds = %if.then258, %if.end255.do.body260_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_sparx5_probe.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_sparx5_probe, %if.then270)) #6
          to label %do.body277 [label %if.then270], !srcloc !79

if.then270:                                       ; preds = %do.body260
  %42 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %43, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i434 = icmp eq ptr %45, null
  br i1 %tobool.not.i434, label %if.end.i435, label %if.then270.dev_name.exit_crit_edge

if.then270.dev_name.exit_crit_edge:               ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i435:                                      ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i435, %if.then270.dev_name.exit_crit_edge
  %retval.0.i436 = phi ptr [ %47, %if.end.i435 ], [ %45, %if.then270.dev_name.exit_crit_edge ]
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 9
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool.not.i437 = icmp eq ptr %51, null
  br i1 %tobool.not.i437, label %if.else.i, label %if.then.i439, !prof !80

if.then.i439:                                     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i438 = call i32 %51(ptr noundef %call, i32 noundef 1280) #6
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %52 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %53, i32 1280
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %55 = call i32 @llvm.bswap.i32(i32 %54) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i439
  %retval.0.i440 = phi i32 [ %call.i438, %if.then.i439 ], [ %55, %if.else.i ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_sparx5_probe.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i436, i32 noundef %retval.0.i440) #6
  br label %do.body277

do.body277:                                       ; preds = %sdhci_readl.exit, %do.body260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_sparx5_probe.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_sparx5_probe, %if.then289)) #6
          to label %cleanup [label %if.then289], !srcloc !79

if.then289:                                       ; preds = %do.body277
  %56 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmc, align 8
  %init_name.i441 = getelementptr inbounds %struct.mmc_host, ptr %57, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %init_name.i441 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i441, align 8
  %tobool.not.i442 = icmp eq ptr %59, null
  br i1 %tobool.not.i442, label %if.end.i443, label %if.then289.dev_name.exit445_crit_edge

if.then289.dev_name.exit445_crit_edge:            ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit445

if.end.i443:                                      ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev291 = getelementptr inbounds %struct.mmc_host, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %class_dev291 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %class_dev291, align 4
  br label %dev_name.exit445

dev_name.exit445:                                 ; preds = %if.end.i443, %if.then289.dev_name.exit445_crit_edge
  %retval.0.i444 = phi ptr [ %61, %if.end.i443 ], [ %59, %if.then289.dev_name.exit445_crit_edge ]
  %ops.i446 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 9
  %62 = ptrtoint ptr %ops.i446 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i446, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %tobool.not.i447 = icmp eq ptr %65, null
  br i1 %tobool.not.i447, label %if.else.i452, label %if.then.i449, !prof !80

if.then.i449:                                     ; preds = %dev_name.exit445
  call void @__sanitizer_cov_trace_pc() #8
  %call.i448 = call i32 %65(ptr noundef %call, i32 noundef 1284) #6
  br label %sdhci_readl.exit454

if.else.i452:                                     ; preds = %dev_name.exit445
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i450 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %66 = ptrtoint ptr %ioaddr.i450 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioaddr.i450, align 16
  %add.ptr.i451 = getelementptr i8, ptr %67, i32 1284
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i451) #6, !srcloc !81
  %69 = call i32 @llvm.bswap.i32(i32 %68) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  br label %sdhci_readl.exit454

sdhci_readl.exit454:                              ; preds = %if.else.i452, %if.then.i449
  %retval.0.i453 = phi i32 [ %call.i448, %if.then.i449 ], [ %69, %if.else.i452 ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_sparx5_probe.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i444, i32 noundef %retval.0.i453) #6
  br label %cleanup

err_clk:                                          ; preds = %if.end251.err_clk_crit_edge, %do.end233, %if.end222.err_clk_crit_edge
  %ret.0 = phi i32 [ %call223, %if.end222.err_clk_crit_edge ], [ %20, %do.end233 ], [ %call252, %if.end251.err_clk_crit_edge ]
  %70 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %private.i, align 128
  call void @clk_disable(ptr noundef %71) #6
  call void @clk_unprepare(ptr noundef %71) #6
  br label %free_pltfm

free_pltfm:                                       ; preds = %err_clk, %if.then3.i, %if.end207.free_pltfm_crit_edge, %if.then203
  %ret.1 = phi i32 [ %9, %if.then203 ], [ %ret.0, %err_clk ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end207.free_pltfm_crit_edge ]
  call void @sdhci_pltfm_free(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %free_pltfm, %sdhci_readl.exit454, %do.body277, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %ret.1, %free_pltfm ], [ 0, %sdhci_readl.exit454 ], [ 0, %do.body277 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_get_required_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_sparx5_reset_emmc(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_sparx5_reset_emmc.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_sparx5_reset_emmc, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !79

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i12 = phi ptr [ %5, %if.end.i ], [ %3, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_sparx5_reset_emmc.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i12) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %read_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read_b.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_b.i, align 4
  %tobool.not.i13 = icmp eq ptr %9, null
  br i1 %tobool.not.i13, label %if.else.i, label %if.then.i, !prof !80

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i8 %9(ptr noundef %host, i32 noundef 1324) #6
  br label %sdhci_readb.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %11, i32 1324
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  br label %sdhci_readb.exit

sdhci_readb.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i14 = phi i8 [ %call.i, %if.then.i ], [ %12, %if.else.i ]
  %13 = and i8 %retval.0.i14, -5
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %write_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write_b.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_b.i, align 4
  %tobool.not.i16 = icmp eq ptr %17, null
  br i1 %tobool.not.i16, label %do.body.i, label %if.then.i17, !prof !80

if.then.i17:                                      ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17(ptr noundef %host, i8 noundef zeroext %13, i32 noundef 1324) #6
  br label %sdhci_writeb.exit

do.body.i:                                        ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %ioaddr.i18 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %18 = ptrtoint ptr %ioaddr.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i18, align 16
  %add.ptr.i19 = getelementptr i8, ptr %19, i32 1324
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19, i8 %13) #6, !srcloc !86
  br label %sdhci_writeb.exit

sdhci_writeb.exit:                                ; preds = %do.body.i, %if.then.i17
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %20 = or i8 %retval.0.i14, 4
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %write_b.i22 = getelementptr inbounds %struct.sdhci_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %write_b.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_b.i22, align 4
  %tobool.not.i23 = icmp eq ptr %24, null
  br i1 %tobool.not.i23, label %do.body.i27, label %if.then.i24, !prof !80

if.then.i24:                                      ; preds = %sdhci_writeb.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %24(ptr noundef %host, i8 noundef zeroext %20, i32 noundef 1324) #6
  br label %sdhci_writeb.exit29

do.body.i27:                                      ; preds = %sdhci_writeb.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %ioaddr.i25 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %25 = ptrtoint ptr %ioaddr.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i25, align 16
  %add.ptr.i26 = getelementptr i8, ptr %26, i32 1324
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i26, i8 %20) #6, !srcloc !86
  br label %sdhci_writeb.exit29

sdhci_writeb.exit29:                              ; preds = %do.body.i27, %if.then.i24
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_sparx5_set_emmc(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps.i, align 32
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.not = icmp eq i32 %4, 0
  br i1 %tobool.not.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %read_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %read_b.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_b.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !80

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i8 %8(ptr noundef %host, i32 noundef 1324) #6
  br label %sdhci_readb.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %10, i32 1324
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  br label %sdhci_readb.exit

sdhci_readb.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i22 = phi i8 [ %call.i, %if.then.i ], [ %11, %if.else.i ]
  %12 = and i8 %retval.0.i22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %if.then3, label %sdhci_readb.exit.if.end15_crit_edge

sdhci_readb.exit.if.end15_crit_edge:              ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then3:                                         ; preds = %sdhci_readb.exit
  %or = or i8 %retval.0.i22, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_sparx5_set_emmc.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_sparx5_set_emmc, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !79

if.then10:                                        ; preds = %if.then3
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i23 = icmp eq ptr %16, null
  br i1 %tobool.not.i23, label %if.end.i, label %if.then10.dev_name.exit_crit_edge

if.then10.dev_name.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then10.dev_name.exit_crit_edge
  %retval.0.i24 = phi ptr [ %18, %if.end.i ], [ %16, %if.then10.dev_name.exit_crit_edge ]
  %conv13 = zext i8 %or to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_sparx5_set_emmc.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.24, ptr noundef %retval.0.i24, i32 noundef %conv13) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %if.then3
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %write_b.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_b.i, align 4
  %tobool.not.i26 = icmp eq ptr %22, null
  br i1 %tobool.not.i26, label %do.body.i, label %if.then.i27, !prof !80

if.then.i27:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %22(ptr noundef %host, i8 noundef zeroext %or, i32 noundef 1324) #6
  br label %if.end15

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %ioaddr.i28 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i28, align 16
  %add.ptr.i29 = getelementptr i8, ptr %24, i32 1324
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i29, i8 %or) #6, !srcloc !86
  br label %if.end15

if.end15:                                         ; preds = %do.body.i, %if.then.i27, %sdhci_readb.exit.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_set_cacheable(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sparx5_set_cacheable.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sparx5_set_cacheable, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !79

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i2 = phi ptr [ %5, %if.end.i ], [ %3, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sparx5_set_cacheable.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.26, ptr noundef %retval.0.i2, i32 noundef 16) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %cpu_ctrl = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %6 = ptrtoint ptr %cpu_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_ctrl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 176, i32 noundef 28, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sparx5_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_sparx5_reset.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_sparx5_reset, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !79

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i7 = phi ptr [ %5, %if.end.i ], [ %3, %if.then.dev_name.exit_crit_edge ]
  %conv = zext i8 %mask to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_sparx5_reset.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i7, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #6
  tail call fastcc void @sdhci_sparx5_set_emmc(ptr noundef %host)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_sparx5_adma_write_desc(ptr noundef %host, ptr noundef %desc, i32 noundef %addr, i32 noundef %len, i32 noundef %cmd) #2 align 64 {
entry:
  %addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %addr.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  %add = add i32 %addr, -1
  %sub = add i32 %add, %len
  %1 = xor i32 %sub, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %1)
  %cmp = icmp ult i32 %1, 134217728
  %2 = or i1 %tobool.not, %cmp
  br i1 %2, label %if.then, label %do.body, !prof !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sdhci_adma_write_desc(ptr noundef %host, ptr noundef %desc, i32 noundef %addr, i32 noundef %len, i32 noundef %cmd) #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_sparx5_adma_write_desc.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_sparx5_adma_write_desc, %if.then11)) #6
          to label %do.end [label %if.then11], !srcloc !79

if.then11:                                        ; preds = %do.body
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %3 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.dev_name.exit_crit_edge

if.then11.dev_name.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then11.dev_name.exit_crit_edge
  %retval.0.i32 = phi ptr [ %8, %if.end.i ], [ %6, %if.then11.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_sparx5_adma_write_desc.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i32, i32 noundef %len, ptr noundef nonnull %addr.addr) #6
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  %9 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.addr, align 4
  %and = and i32 %10, 134217727
  %sub14 = sub nuw nsw i32 134217728, %and
  call void @sdhci_adma_write_desc(ptr noundef %host, ptr noundef %desc, i32 noundef %10, i32 noundef %sub14, i32 noundef %cmd) #6
  %11 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.addr, align 4
  %add15 = add i32 %12, %sub14
  store i32 %add15, ptr %addr.addr, align 4
  %sub16 = sub i32 %len, %sub14
  call void @sdhci_adma_write_desc(ptr noundef %host, ptr noundef %desc, i32 noundef %add15, i32 noundef %sub16, i32 noundef %cmd) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_adma_write_desc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_sdhci_of_sparx5__281_266_sdhci_sparx5_driver_init6, !1, !"__initcall__kmod_sdhci_of_sparx5__281_266_sdhci_sparx5_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 266, i32 1}
!2 = !{ptr @__exitcall_sdhci_sparx5_driver_exit, !1, !"__exitcall_sdhci_sparx5_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description282, !4, !"__UNIQUE_ID_description282", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 268, i32 1}
!5 = !{ptr @__UNIQUE_ID_author283, !6, !"__UNIQUE_ID_author283", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 269, i32 1}
!7 = !{ptr @__UNIQUE_ID_file284, !8, !"__UNIQUE_ID_file284", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 270, i32 1}
!9 = !{ptr @__UNIQUE_ID_license285, !8, !"__UNIQUE_ID_license285", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 257, i32 11}
!12 = !{ptr @sdhci_sparx5_driver, !13, !"sdhci_sparx5_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 255, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 161, i32 23}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 187, i32 45}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 190, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sdhci_sparx5_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sdhci_sparx5_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 197, i32 32}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 209, i32 3}
!30 = !{ptr @sdhci_sparx5_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sdhci_sparx5_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 235, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sdhci_sparx5_probe.__UNIQUE_ID_ddebug279, !33, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 237, i32 2}
!38 = !{ptr @sdhci_sparx5_probe.__UNIQUE_ID_ddebug280, !37, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!39 = !{ptr @sdhci_sparx5_pdata, !40, !"sdhci_sparx5_pdata", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 151, i32 38}
!41 = !{ptr @sdhci_sparx5_ops, !42, !"sdhci_sparx5_ops", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 142, i32 31}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 134, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sdhci_sparx5_reset.__UNIQUE_ID_ddebug278, !44, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 63, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sdhci_sparx5_adma_write_desc.__UNIQUE_ID_ddebug273, !48, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 92, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sparx5_set_delay.__UNIQUE_ID_ddebug275, !52, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 120, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sdhci_sparx5_reset_emmc.__UNIQUE_ID_ddebug277, !56, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 109, i32 4}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sdhci_sparx5_set_emmc.__UNIQUE_ID_ddebug276, !60, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 80, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sparx5_set_cacheable.__UNIQUE_ID_ddebug274, !64, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!67 = !{ptr @sdhci_sparx5_of_match, !68, !"sdhci_sparx5_of_match", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/sdhci-of-sparx5.c", i32 249, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{i64 2148763642, i64 2148763647, i64 2148763660, i64 2148763704, i64 2148763738, i64 2148763759}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 4614527}
!82 = !{i64 2154866190}
!83 = !{i64 4614307}
!84 = !{i64 2154867342}
!85 = !{i64 2154865432}
!86 = !{i64 4613912}
