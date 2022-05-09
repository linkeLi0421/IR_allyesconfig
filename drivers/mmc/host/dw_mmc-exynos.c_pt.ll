; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/dw_mmc-exynos.c_pt.bc'
source_filename = "../drivers/mmc/host/dw_mmc-exynos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mci_drv_data = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.dw_mci = type { %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i8, ptr, %struct.sg_mapping_iter, ptr, ptr, ptr, %struct.mmc_command, i32, i8, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.tasklet_struct, i32, i32, i32, %struct.list_head, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, %union.anon.76, ptr, ptr, i32, i8, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.fault_attr, %struct.hrtimer }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { i64 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dw_mci_exynos_priv_data = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dw_mci_slot = type { ptr, ptr, i32, ptr, %struct.list_head, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_dw_mmc_exynos__274_695_dw_mci_exynos_pltfm_driver_init6 = internal global ptr @dw_mci_exynos_pltfm_driver_init, section ".initcall6.init", align 4
@dw_mci_exynos_pltfm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_mci_exynos_probe, ptr @dw_mci_exynos_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @dw_mci_exynos_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_exynos_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_mci_exynos_pltfm_driver_exit = internal global ptr @dw_mci_exynos_pltfm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description275 = internal constant [68 x i8] c"dw_mmc_exynos.description=Samsung Specific DW-MSHC Driver Extension\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [59 x i8] c"dw_mmc_exynos.author=Thomas Abraham <thomas.ab@samsung.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [50 x i8] c"dw_mmc_exynos.file=drivers/mmc/host/dw_mmc-exynos\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [29 x i8] c"dw_mmc_exynos.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias279 = internal constant [42 x i8] c"dw_mmc_exynos.alias=platform:dwmmc_exynos\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dwmmc_exynos\00", [19 x i8] zeroinitializer }, align 32
@dw_mci_exynos_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-dw-mshc-smu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-dw-mshc-smu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec8-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @artpec_drv_data }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@dw_mci_exynos_pmops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_exynos_suspend_noirq, ptr @dw_mci_exynos_resume_noirq, ptr @dw_mci_exynos_suspend_noirq, ptr @dw_mci_exynos_resume_noirq, ptr @dw_mci_exynos_suspend_noirq, ptr @dw_mci_exynos_resume_noirq, ptr @dw_mci_runtime_suspend, ptr @dw_mci_exynos_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos_drv_data = internal constant { %struct.dw_mci_drv_data, [52 x i8] } { %struct.dw_mci_drv_data { ptr @exynos_dwmmc_caps, i32 4, i32 1073741824, ptr @dw_mci_exynos_priv_init, ptr @dw_mci_exynos_set_ios, ptr @dw_mci_exynos_parse_dt, ptr @dw_mci_exynos_execute_tuning, ptr @dw_mci_exynos_prepare_hs400_tuning, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@artpec_drv_data = internal constant { %struct.dw_mci_drv_data, [52 x i8] } { %struct.dw_mci_drv_data { ptr null, i32 0, i32 1073741824, ptr @dw_mci_exynos_priv_init, ptr @dw_mci_exynos_set_ios, ptr @dw_mci_exynos_parse_dt, ptr @dw_mci_exynos_execute_tuning, ptr null, ptr null, ptr @dw_mci_exynos_set_data_timeout, ptr @dw_mci_exynos_get_drto_clks }, [52 x i8] zeroinitializer }, align 32
@exynos_dwmmc_caps = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 4160, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@dw_mci_exynos_config_hs400._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cannot configure HS400, unsupported chipset\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dw_mci_exynos_config_hs400\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mmc/host/dw_mmc-exynos.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_mci_exynos_config_hs400._entry_ptr = internal global ptr @dw_mci_exynos_config_hs400._entry, section ".printk_index", align 4
@dw_mci_exynos_adjust_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set clk-rate %u error: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dw_mci_exynos_adjust_clock\00", [37 x i8] zeroinitializer }, align 32
@dw_mci_exynos_adjust_clock._entry_ptr = internal global ptr @dw_mci_exynos_adjust_clock._entry, section ".printk_index", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"samsung,dw-mshc-ciu-div\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,dw-mshc-sdr-timing\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,dw-mshc-ddr-timing\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"samsung,dw-mshc-hs400-timing\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung,read-strobe-delay\00", [38 x i8] zeroinitializer }, align 32
@dw_mci_exynos_parse_dt.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw_mmc_exynos\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dw_mci_exynos_parse_dt\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"read-strobe-delay is not found, assuming usage of default value\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,exynos4210-dw-mshc\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,exynos4412-dw-mshc\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,exynos5250-dw-mshc\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung,exynos5420-dw-mshc\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"samsung,exynos5420-dw-mshc-smu\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"samsung,exynos7-dw-mshc\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"samsung,exynos7-dw-mshc-smu\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"axis,artpec8-dw-mshc\00", [43 x i8] zeroinitializer }, align 32
@dw_mci_exynos_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 530, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"There is no candidates value about clksmpl!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dw_mci_exynos_execute_tuning\00", [35 x i8] zeroinitializer }, align 32
@dw_mci_exynos_execute_tuning._entry_ptr = internal global ptr @dw_mci_exynos_execute_tuning._entry, section ".printk_index", align 4
@dw_mci_exynos_set_data_timeout.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dw_mci_exynos_set_data_timeout\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"timeout_ns: %u => TMOUT[31:8]: %#08x\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 8, i64 5, i64 6, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"dw_mci_exynos_pltfm_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 684, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 688, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"dw_mci_exynos_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 623, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"dw_mci_exynos_pmops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 676, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"exynos_drv_data\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 602, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"artpec_drv_data\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 613, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"exynos_dwmmc_caps\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 595, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 258, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 302, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 376, i32 28 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 381, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 388, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 395, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 397, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 398, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 53, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 56, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 59, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 62, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 65, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 68, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 71, i32 17 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 74, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 529, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [36 x i8] c"../drivers/mmc/host/dw_mmc-exynos.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 581, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias279, ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_dw_mci_exynos_pltfm_driver_exit, ptr @__initcall__kmod_dw_mmc_exynos__274_695_dw_mci_exynos_pltfm_driver_init6, ptr @dw_mci_exynos_adjust_clock._entry, ptr @dw_mci_exynos_adjust_clock._entry_ptr, ptr @dw_mci_exynos_config_hs400._entry, ptr @dw_mci_exynos_config_hs400._entry_ptr, ptr @dw_mci_exynos_execute_tuning._entry, ptr @dw_mci_exynos_execute_tuning._entry_ptr, ptr @dw_mci_exynos_pltfm_driver_exit, ptr @dw_mci_exynos_pltfm_driver, ptr @.str, ptr @dw_mci_exynos_match, ptr @dw_mci_exynos_pmops, ptr @exynos_drv_data, ptr @artpec_drv_data, ptr @exynos_dwmmc_caps, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_exynos_pltfm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_exynos_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_exynos_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drv_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec_drv_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dwmmc_caps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_exynos_config_hs400._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_exynos_adjust_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_exynos_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_pltfm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_mci_exynos_pltfm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_exynos_pltfm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_mci_exynos_pltfm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @dw_mci_exynos_match, ptr noundef %1) #7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !90
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %call5 = tail call i32 @dw_mci_pltfm_register(ptr noundef %pdev, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i20 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  %call.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !92
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !92
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %call3 = tail call i32 @dw_mci_pltfm_remove(ptr noundef %pdev) #7
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_priv_init(ptr nocapture noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.dw_mci_exynos_config_smu.exit_crit_edge [
    i32 4, label %entry.if.then.i_crit_edge
    i32 6, label %entry.if.then.i_crit_edge35
  ]

entry.if.then.i_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.dw_mci_exynos_config_smu.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mci_exynos_config_smu.exit

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge35
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !94
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %8, i32 4612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -1) #7, !srcloc !94
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %10, i32 4620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 1895825408) #7, !srcloc !94
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %1, align 4
  br label %dw_mci_exynos_config_smu.exit

dw_mci_exynos_config_smu.exit:                    ; preds = %if.then.i, %entry.dw_mci_exynos_config_smu.exit_crit_edge
  %12 = phi i32 [ %3, %entry.dw_mci_exynos_config_smu.exit_crit_edge ], [ %.pr, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp ugt i32 %12, 2
  br i1 %cmp, label %if.then, label %dw_mci_exynos_config_smu.exit.if.end14_crit_edge

dw_mci_exynos_config_smu.exit.if.end14_crit_edge: ; preds = %dw_mci_exynos_config_smu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %dw_mci_exynos_config_smu.exit
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %14, i32 392
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !95
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %saved_strobe_ctrl = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %saved_strobe_ctrl to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %saved_strobe_ctrl, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %19, i32 384
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !95
  %saved_dqs_en = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 8
  %21 = or i32 %20, -2147483648
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %saved_dqs_en to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %saved_dqs_en, align 4
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %add.ptr10 = getelementptr i8, ptr %25, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %21) #7, !srcloc !94
  %dqs_delay = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %dqs_delay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dqs_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.then11, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %saved_strobe_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %saved_strobe_ctrl, align 4
  %and = and i32 %29, 1023
  %30 = ptrtoint ptr %dqs_delay to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %dqs_delay, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then.if.end14_crit_edge, %dw_mci_exynos_config_smu.exit.if.end14_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %32)
  %cmp16 = icmp eq i32 %32, 7
  br i1 %cmp16, label %if.then17, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %quirks = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 50
  %33 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quirks, align 8
  %or18 = or i32 %34, 1
  store i32 %or18, ptr %quirks, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %ciu_div = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %ciu_div to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ciu_div, align 4
  %conv = zext i8 %36 to i32
  %add = add nuw nsw i32 %conv, 1
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %37 = ptrtoint ptr %bus_hz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bus_hz, align 4
  %div = udiv i32 %38, %add
  store i32 %div, ptr %bus_hz, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_exynos_set_ios(ptr nocapture noundef %host, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ios, align 4
  %timing2 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %4 = ptrtoint ptr %timing2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %timing2, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %5, label %sw.default [
    i8 10, label %sw.bb
    i8 8, label %sw.bb5
    i8 6, label %entry.sw.bb9_crit_edge
    i8 5, label %entry.sw.bb9_crit_edge42
    i8 7, label %sw.bb14
  ]

entry.sw.bb9_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hs400_timing = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %hs400_timing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hs400_timing, align 4
  %and = and i32 %8, -8
  %tuned_sample = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %tuned_sample to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tuned_sample, align 4
  %and3 = and i32 %10, 7
  %or = or i32 %and3, %and
  %shl4 = shl i32 %3, 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ddr_timing = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %ddr_timing to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ddr_timing, align 4
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %13 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp = icmp eq i8 %14, 3
  %shl8 = zext i1 %cmp to i32
  %spec.select = shl i32 %3, %shl8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge42
  %sdr_timing = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %sdr_timing to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sdr_timing, align 4
  %and10 = and i32 %16, -458753
  %ciu_div = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %ciu_div to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ciu_div, align 4
  %conv11 = zext i8 %18 to i32
  %shl12 = shl nuw nsw i32 %conv11, 16
  %or13 = or i32 %shl12, %and10
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ddr_timing15 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %ddr_timing15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ddr_timing15, align 4
  %and16 = and i32 %20, -458753
  %ciu_div17 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %ciu_div17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ciu_div17, align 4
  %conv18 = zext i8 %22 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or20 = or i32 %shl19, %and16
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sdr_timing21 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %sdr_timing21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sdr_timing21, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb9, %sw.bb5, %sw.bb
  %wanted.0 = phi i32 [ %3, %sw.default ], [ %3, %sw.bb14 ], [ %3, %sw.bb9 ], [ %shl4, %sw.bb ], [ %spec.select, %sw.bb5 ]
  %clksel.0 = phi i32 [ %24, %sw.default ], [ %or20, %sw.bb14 ], [ %or13, %sw.bb9 ], [ %or, %sw.bb ], [ %12, %sw.bb5 ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %.off.i = add i32 %26, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 8
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %28, i32 168
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !95
  br label %if.end.i

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr9.i = getelementptr i8, ptr %28, i32 156
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !95
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %30, %if.else.i ], [ %29, %if.then.i ]
  %31 = and i32 %.sink.i, -117442312
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %or.i = or i32 %32, %clksel.0
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %.off48.i = add i32 %34, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off48.i)
  %switch49.i = icmp ult i32 %.off48.i, 3
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  br i1 %switch49.i, label %if.then20.i, label %if.else23.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr22.i = getelementptr i8, ptr %37, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %35) #7, !srcloc !94
  br label %if.end26.i

if.else23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25.i = getelementptr i8, ptr %37, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %35) #7, !srcloc !94
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else23.i, %if.then20.i
  %38 = and i32 %clksel.0, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end26.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge

if.end26.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mci_exynos_set_clksel_timing.exit

land.lhs.true.i:                                  ; preds = %if.end26.i
  %slot.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 42
  %39 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %slot.i, align 4
  %tobool28.not.i = icmp eq ptr %40, null
  br i1 %tobool28.not.i, label %land.lhs.true.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge, label %if.then29.i

land.lhs.true.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mci_exynos_set_clksel_timing.exit

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.dw_mci_slot, ptr %40, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #7
  br label %dw_mci_exynos_set_clksel_timing.exit

dw_mci_exynos_set_clksel_timing.exit:             ; preds = %if.then29.i, %land.lhs.true.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge, %if.end26.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge
  %41 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv1, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %44, label %if.end6.i [
    i32 7, label %dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge
    i32 2, label %dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge43
    i32 1, label %dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge44
    i32 0, label %dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge45
  ]

dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge45: ; preds = %dw_mci_exynos_set_clksel_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i38

dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge44: ; preds = %dw_mci_exynos_set_clksel_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i38

dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge43: ; preds = %dw_mci_exynos_set_clksel_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i38

dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge: ; preds = %dw_mci_exynos_set_clksel_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i38

if.then.i38:                                      ; preds = %dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge, %dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge43, %dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge44, %dw_mci_exynos_set_clksel_timing.exit.if.then.i38_crit_edge45
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp4.i = icmp eq i8 %5, 10
  br i1 %cmp4.i, label %do.end.i, label %if.then.i38.dw_mci_exynos_config_hs400.exit_crit_edge

if.then.i38.dw_mci_exynos_config_hs400.exit_crit_edge: ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mci_exynos_config_hs400.exit

do.end.i:                                         ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.1) #10
  br label %dw_mci_exynos_config_hs400.exit

if.end6.i:                                        ; preds = %dw_mci_exynos_set_clksel_timing.exit
  %saved_dqs_en.i = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %42, i32 0, i32 8
  %48 = ptrtoint ptr %saved_dqs_en.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %saved_dqs_en.i, align 4
  %saved_strobe_ctrl.i = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %42, i32 0, i32 9
  %50 = ptrtoint ptr %saved_strobe_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %saved_strobe_ctrl.i, align 4
  %52 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %5, label %if.else14.i [
    i8 10, label %if.then8.i
    i8 6, label %if.then12.i
  ]

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i39 = or i32 %49, 1
  %and.i = and i32 %51, -1024
  %dqs_delay.i = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %42, i32 0, i32 7
  %53 = ptrtoint ptr %dqs_delay.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dqs_delay.i, align 4
  %and9.i = and i32 %54, 1023
  %or10.i = or i32 %and9.i, %and.i
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %and13.i = and i32 %49, -256
  br label %if.end17.i

if.else14.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %and15.i = and i32 %49, -2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else14.i, %if.then12.i, %if.then8.i
  %dqs.0.i = phi i32 [ %or.i39, %if.then8.i ], [ %and13.i, %if.then12.i ], [ %and15.i, %if.else14.i ]
  %strobe.0.i = phi i32 [ %or10.i, %if.then8.i ], [ %51, %if.then12.i ], [ %51, %if.else14.i ]
  %55 = tail call i32 @llvm.bswap.i32(i32 %dqs.0.i) #7
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 8
  %add.ptr.i41 = getelementptr i8, ptr %57, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %55) #7, !srcloc !94
  %58 = tail call i32 @llvm.bswap.i32(i32 %strobe.0.i) #7
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 8
  %add.ptr19.i = getelementptr i8, ptr %60, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %58) #7, !srcloc !94
  br label %dw_mci_exynos_config_hs400.exit

dw_mci_exynos_config_hs400.exit:                  ; preds = %if.end17.i, %do.end.i, %if.then.i38.dw_mci_exynos_config_hs400.exit_crit_edge
  tail call fastcc void @dw_mci_exynos_adjust_clock(ptr noundef %host, i32 noundef %wanted.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_parse_dt(ptr nocapture noundef %host) #2 align 64 {
entry:
  %timing = alloca [2 x i32], align 4
  %div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timing) #7
  %4 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %timing, align 4, !annotation !96
  %5 = getelementptr inbounds [2 x i32], ptr %timing, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #7
  %7 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %div, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.body.preheader.for.inc_crit_edge, label %if.then4

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then4:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %call.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.preheader.for.inc_crit_edge
  %call2.1 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool3.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call.i, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then4.1, %for.inc.for.inc.1_crit_edge
  %call2.2 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool3.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %call.i, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then4.2, %for.inc.1.for.inc.2_crit_edge
  %call2.3 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %tobool3.not.3 = icmp eq i32 %call2.3, 0
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then4.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then4.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %call.i, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then4.3, %for.inc.2.for.inc.3_crit_edge
  %call2.4 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.4)
  %tobool3.not.4 = icmp eq i32 %call2.4, 0
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then4.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then4.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %call.i, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then4.4, %for.inc.3.for.inc.4_crit_edge
  %call2.5 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.5)
  %tobool3.not.5 = icmp eq i32 %call2.5, 0
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then4.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then4.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %call.i, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then4.5, %for.inc.4.for.inc.5_crit_edge
  %call2.6 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.6)
  %tobool3.not.6 = icmp eq i32 %call2.6, 0
  br i1 %tobool3.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then4.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then4.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %call.i, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then4.6, %for.inc.5.for.inc.6_crit_edge
  %call2.7 = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.7)
  %tobool3.not.7 = icmp eq i32 %call2.7, 0
  br i1 %tobool3.not.7, label %for.inc.7, label %for.inc.7.thread

for.inc.7.thread:                                 ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7, ptr %call.i, align 4
  br label %if.else15

for.inc.7:                                        ; preds = %for.inc.6
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %call.i, align 4
  %17 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %.pr, label %for.inc.7.if.else15_crit_edge [
    i32 1, label %for.inc.7.if.end19_crit_edge
    i32 0, label %if.then13
  ]

for.inc.7.if.end19_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.7.if.else15_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

if.then13:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else15:                                        ; preds = %for.inc.7.if.else15_crit_edge, %for.inc.7.thread
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull %div, i32 noundef 1, i32 noundef 0) #7
  %18 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div, align 4
  %conv = trunc i32 %19 to i8
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then13, %for.inc.7.if.end19_crit_edge
  %.sink = phi i8 [ 1, %if.then13 ], [ %conv, %if.else15 ], [ 3, %for.inc.7.if.end19_crit_edge ]
  %ciu_div14 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %ciu_div14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %ciu_div14, align 4
  %call.i100 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %timing, i32 noundef 2, i32 noundef 0) #7
  %21 = call i32 @llvm.smin.i32(i32 %call.i100, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i100)
  %tobool21.not = icmp sgt i32 %call.i100, -1
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %22 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timing, align 4
  %and = and i32 %23, 7
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %5, align 4
  %and26 = shl i32 %25, 16
  %shl27 = and i32 %and26, 458752
  %or = or i32 %shl27, %and
  %26 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %div, align 4
  %and28 = shl i32 %27, 24
  %shl29 = and i32 %and28, 117440512
  %or30 = or i32 %or, %shl29
  %sdr_timing = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %sdr_timing to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or30, ptr %sdr_timing, align 4
  %call.i101 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef nonnull %timing, i32 noundef 2, i32 noundef 0) #7
  %29 = call i32 @llvm.smin.i32(i32 %call.i101, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i101)
  %tobool33.not = icmp sgt i32 %call.i101, -1
  br i1 %tobool33.not, label %if.end35, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  %30 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timing, align 4
  %and37 = and i32 %31, 7
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %5, align 4
  %and40 = shl i32 %33, 16
  %shl41 = and i32 %and40, 458752
  %or42 = or i32 %shl41, %and37
  %34 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %div, align 4
  %and43 = shl i32 %35, 24
  %shl44 = and i32 %and43, 117440512
  %or45 = or i32 %or42, %shl44
  %ddr_timing = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %ddr_timing to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or45, ptr %ddr_timing, align 4
  %call.i102 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull %timing, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i102)
  %tobool48.not = icmp sgt i32 %call.i102, -1
  br i1 %tobool48.not, label %land.lhs.true, label %if.end35.if.end59_crit_edge

if.end35.if.end59_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end35
  %dqs_delay = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %call.i, i32 0, i32 7
  %call.i.i103 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef %dqs_delay, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i103)
  %tobool50.not = icmp sgt i32 %call.i.i103, -1
  br i1 %tobool50.not, label %land.lhs.true.if.end59_crit_edge, label %do.body

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_exynos_parse_dt.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_exynos_parse_dt, %if.then56)) #7
          to label %if.end59 [label %if.then56], !srcloc !97

if.then56:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_exynos_parse_dt.__UNIQUE_ID_ddebug272, ptr noundef %38, ptr noundef nonnull @.str.15) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %do.body, %land.lhs.true.if.end59_crit_edge, %if.end35.if.end59_crit_edge
  %39 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %timing, align 4
  %and61 = and i32 %40, 7
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %5, align 4
  %and64 = shl i32 %42, 16
  %shl65 = and i32 %and64, 458752
  %or66 = or i32 %and61, %shl65
  %or67 = or i32 %or66, 16777216
  %hs400_timing = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %hs400_timing to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or67, ptr %hs400_timing, align 4
  %priv68 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %44 = ptrtoint ptr %priv68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %priv68, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -12, %entry.cleanup_crit_edge ], [ %21, %if.end19.cleanup_crit_edge ], [ %29, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timing) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_execute_tuning(ptr nocapture noundef readonly %slot, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %priv2 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 8
  %4 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slot, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %.off.i = add i32 %7, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %9, i32 168
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !95
  br label %dw_mci_exynos_get_clksmpl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr9.i = getelementptr i8, ptr %9, i32 156
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !95
  br label %dw_mci_exynos_get_clksmpl.exit

dw_mci_exynos_get_clksmpl.exit:                   ; preds = %if.else.i, %if.then.i
  %retval.0.in.in.in.i = phi i32 [ %10, %if.then.i ], [ %11, %if.else.i ]
  %retval.0.in.in.i = lshr i32 %retval.0.in.in.in.i, 24
  %retval.0.in.i = trunc i32 %retval.0.in.in.i to i8
  %retval.0.i = and i8 %retval.0.in.i, 7
  br label %do.body

do.body:                                          ; preds = %dw_mci_exynos_move_next_clksmpl.exit.do.body_crit_edge, %dw_mci_exynos_get_clksmpl.exit
  %candidates.0 = phi i8 [ 0, %dw_mci_exynos_get_clksmpl.exit ], [ %candidates.1, %dw_mci_exynos_move_next_clksmpl.exit.do.body_crit_edge ]
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #7, !srcloc !94
  %14 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv2, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %.off.i32 = add i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i32)
  %switch.i33 = icmp ult i32 %.off.i32, 3
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  br i1 %switch.i33, label %if.then.i36, label %if.else.i38

if.then.i36:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i35 = getelementptr i8, ptr %19, i32 168
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #7, !srcloc !95
  br label %if.end.i

if.else.i38:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr9.i37 = getelementptr i8, ptr %19, i32 156
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i37) #7, !srcloc !95
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i38, %if.then.i36
  %.sink.i = phi i32 [ %21, %if.else.i38 ], [ %20, %if.then.i36 ]
  %22 = tail call i32 @llvm.bswap.i32(i32 %.sink.i) #7
  %23 = trunc i32 %22 to i8
  %24 = add i8 %23, 1
  %and12.i = and i32 %22, -8
  %25 = and i8 %24, 7
  %and14.i = zext i8 %25 to i32
  %or.i = or i32 %and12.i, %and14.i
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %15, align 4
  %.off47.i = add i32 %27, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off47.i)
  %switch48.i = icmp ult i32 %.off47.i, 3
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 8
  br i1 %switch48.i, label %if.then26.i, label %if.else29.i

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr28.i = getelementptr i8, ptr %30, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %28) #7, !srcloc !94
  br label %dw_mci_exynos_move_next_clksmpl.exit

if.else29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr31.i = getelementptr i8, ptr %30, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %28) #7, !srcloc !94
  br label %dw_mci_exynos_move_next_clksmpl.exit

dw_mci_exynos_move_next_clksmpl.exit:             ; preds = %if.else29.i, %if.then26.i
  %call5 = tail call i32 @mmc_send_tuning(ptr noundef %5, i32 noundef %opcode, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %shl = shl nuw i8 1, %25
  %conv7 = select i1 %tobool.not, i8 %shl, i8 0
  %candidates.1 = or i8 %conv7, %candidates.0
  %cmp.not = icmp eq i8 %retval.0.i, %25
  br i1 %cmp.not, label %do.end, label %dw_mci_exynos_move_next_clksmpl.exit.do.body_crit_edge

dw_mci_exynos_move_next_clksmpl.exit.do.body_crit_edge: ; preds = %dw_mci_exynos_move_next_clksmpl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %dw_mci_exynos_move_next_clksmpl.exit
  %31 = and i8 %candidates.1, -57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %31)
  %cmp4.i = icmp eq i8 %31, -57
  br i1 %cmp4.i, label %do.end.if.then15_crit_edge, label %for.inc.i

do.end.if.then15_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc.i:                                        ; preds = %do.end
  %conv3.i.1.i = tail call i8 @llvm.fshl.i8(i8 %candidates.1, i8 %candidates.1, i8 7) #7
  %32 = and i8 %conv3.i.1.i, -57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %32)
  %cmp4.1.i = icmp eq i8 %32, -57
  br i1 %cmp4.1.i, label %for.inc.i.if.then15_crit_edge, label %for.inc.1.i

for.inc.i.if.then15_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc.1.i:                                      ; preds = %for.inc.i
  %conv3.i.2.i = tail call i8 @llvm.fshl.i8(i8 %candidates.1, i8 %candidates.1, i8 6) #7
  %33 = and i8 %conv3.i.2.i, -57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %33)
  %cmp4.2.i = icmp eq i8 %33, -57
  br i1 %cmp4.2.i, label %for.inc.1.i.if.then15_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then15_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %conv3.i.3.i = tail call i8 @llvm.fshl.i8(i8 %candidates.1, i8 %candidates.1, i8 5) #7
  %34 = and i8 %conv3.i.3.i, -57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %34)
  %cmp4.3.i = icmp eq i8 %34, -57
  br i1 %cmp4.3.i, label %for.inc.2.i.if.then15_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then15_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %conv3.i.4.i = tail call i8 @llvm.fshl.i8(i8 %candidates.1, i8 %candidates.1, i8 4) #7
  %35 = and i8 %conv3.i.4.i, -57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %35)
  %cmp4.4.i = icmp eq i8 %35, -57
  br i1 %cmp4.4.i, label %for.inc.3.i.if.then15_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then15_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %conv3.i.5.i = tail call i8 @llvm.fshl.i8(i8 %candidates.1, i8 %candidates.1, i8 3) #7
  %36 = and i8 %conv3.i.5.i, -57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %36)
  %cmp4.5.i = icmp eq i8 %36, -57
  br i1 %cmp4.5.i, label %for.inc.4.i.if.then15_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then15_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %conv3.i.6.i = tail call i8 @llvm.fshl.i8(i8 %candidates.1, i8 %candidates.1, i8 2) #7
  %37 = and i8 %conv3.i.6.i, -57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %37)
  %cmp4.6.i = icmp eq i8 %37, -57
  br i1 %cmp4.6.i, label %for.inc.5.i.if.then15_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then15_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %conv3.i.7.i = tail call i8 @llvm.fshl.i8(i8 %candidates.1, i8 %candidates.1, i8 1) #7
  %38 = and i8 %conv3.i.7.i, -57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %38)
  %cmp4.7.i = icmp eq i8 %38, -57
  br i1 %cmp4.7.i, label %for.inc.6.i.if.then15_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then15_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %39 = and i8 %candidates.1, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %39)
  %cmp15.i = icmp eq i8 %39, -125
  br i1 %cmp15.i, label %for.inc.7.i.if.then15_crit_edge, label %for.inc19.i

for.inc.7.i.if.then15_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc19.i:                                      ; preds = %for.inc.7.i
  %40 = and i8 %conv3.i.1.i, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %40)
  %cmp15.1.i = icmp eq i8 %40, -125
  br i1 %cmp15.1.i, label %for.inc19.i.if.then15_crit_edge, label %for.inc19.1.i

for.inc19.i.if.then15_crit_edge:                  ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc19.1.i:                                    ; preds = %for.inc19.i
  %41 = and i8 %conv3.i.2.i, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %41)
  %cmp15.2.i = icmp eq i8 %41, -125
  br i1 %cmp15.2.i, label %for.inc19.1.i.if.then15_crit_edge, label %for.inc19.2.i

for.inc19.1.i.if.then15_crit_edge:                ; preds = %for.inc19.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc19.2.i:                                    ; preds = %for.inc19.1.i
  %42 = and i8 %conv3.i.3.i, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %42)
  %cmp15.3.i = icmp eq i8 %42, -125
  br i1 %cmp15.3.i, label %for.inc19.2.i.if.then15_crit_edge, label %for.inc19.3.i

for.inc19.2.i.if.then15_crit_edge:                ; preds = %for.inc19.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc19.3.i:                                    ; preds = %for.inc19.2.i
  %43 = and i8 %conv3.i.4.i, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %43)
  %cmp15.4.i = icmp eq i8 %43, -125
  br i1 %cmp15.4.i, label %for.inc19.3.i.if.then15_crit_edge, label %for.inc19.4.i

for.inc19.3.i.if.then15_crit_edge:                ; preds = %for.inc19.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc19.4.i:                                    ; preds = %for.inc19.3.i
  %44 = and i8 %conv3.i.5.i, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %44)
  %cmp15.5.i = icmp eq i8 %44, -125
  br i1 %cmp15.5.i, label %for.inc19.4.i.if.then15_crit_edge, label %for.inc19.5.i

for.inc19.4.i.if.then15_crit_edge:                ; preds = %for.inc19.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc19.5.i:                                    ; preds = %for.inc19.4.i
  %45 = and i8 %conv3.i.6.i, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %45)
  %cmp15.6.i = icmp eq i8 %45, -125
  br i1 %cmp15.6.i, label %for.inc19.5.i.if.then15_crit_edge, label %for.inc19.6.i

for.inc19.5.i.if.then15_crit_edge:                ; preds = %for.inc19.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc19.6.i:                                    ; preds = %for.inc19.5.i
  %46 = and i8 %conv3.i.7.i, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %46)
  %cmp15.7.i = icmp eq i8 %46, -125
  br i1 %cmp15.7.i, label %for.inc19.6.i.if.then15_crit_edge, label %for.inc19.7.i

for.inc19.6.i.if.then15_crit_edge:                ; preds = %for.inc19.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc19.7.i:                                    ; preds = %for.inc19.6.i
  %47 = and i8 %candidates.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp31.not.i = icmp eq i8 %47, 0
  br i1 %cmp31.not.i, label %for.inc35.i, label %for.inc19.7.i.if.then15_crit_edge

for.inc19.7.i.if.then15_crit_edge:                ; preds = %for.inc19.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc35.i:                                      ; preds = %for.inc19.7.i
  %48 = and i8 %conv3.i.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp31.not.1.i = icmp eq i8 %48, 0
  br i1 %cmp31.not.1.i, label %for.inc35.1.i, label %for.inc35.i.if.then15_crit_edge

for.inc35.i.if.then15_crit_edge:                  ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc35.1.i:                                    ; preds = %for.inc35.i
  %49 = and i8 %conv3.i.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp31.not.2.i = icmp eq i8 %49, 0
  br i1 %cmp31.not.2.i, label %for.inc35.2.i, label %for.inc35.1.i.if.then15_crit_edge

for.inc35.1.i.if.then15_crit_edge:                ; preds = %for.inc35.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc35.2.i:                                    ; preds = %for.inc35.1.i
  %50 = and i8 %conv3.i.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp31.not.3.i = icmp eq i8 %50, 0
  br i1 %cmp31.not.3.i, label %for.inc35.3.i, label %for.inc35.2.i.if.then15_crit_edge

for.inc35.2.i.if.then15_crit_edge:                ; preds = %for.inc35.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc35.3.i:                                    ; preds = %for.inc35.2.i
  %51 = and i8 %conv3.i.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp31.not.4.i = icmp eq i8 %51, 0
  br i1 %cmp31.not.4.i, label %for.inc35.4.i, label %for.inc35.3.i.if.then15_crit_edge

for.inc35.3.i.if.then15_crit_edge:                ; preds = %for.inc35.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc35.4.i:                                    ; preds = %for.inc35.3.i
  %52 = and i8 %conv3.i.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp31.not.5.i = icmp eq i8 %52, 0
  br i1 %cmp31.not.5.i, label %for.inc35.5.i, label %for.inc35.4.i.if.then15_crit_edge

for.inc35.4.i.if.then15_crit_edge:                ; preds = %for.inc35.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc35.5.i:                                    ; preds = %for.inc35.4.i
  %53 = and i8 %conv3.i.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp31.not.6.i = icmp eq i8 %53, 0
  br i1 %cmp31.not.6.i, label %for.inc35.6.i, label %for.inc35.5.i.if.then15_crit_edge

for.inc35.5.i.if.then15_crit_edge:                ; preds = %for.inc35.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc35.6.i:                                    ; preds = %for.inc35.5.i
  %54 = and i8 %conv3.i.7.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp31.not.7.i = icmp eq i8 %54, 0
  br i1 %cmp31.not.7.i, label %if.else, label %for.inc35.6.i.if.then15_crit_edge

for.inc35.6.i.if.then15_crit_edge:                ; preds = %for.inc35.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then15:                                        ; preds = %for.inc35.6.i.if.then15_crit_edge, %for.inc35.5.i.if.then15_crit_edge, %for.inc35.4.i.if.then15_crit_edge, %for.inc35.3.i.if.then15_crit_edge, %for.inc35.2.i.if.then15_crit_edge, %for.inc35.1.i.if.then15_crit_edge, %for.inc35.i.if.then15_crit_edge, %for.inc19.7.i.if.then15_crit_edge, %for.inc19.6.i.if.then15_crit_edge, %for.inc19.5.i.if.then15_crit_edge, %for.inc19.4.i.if.then15_crit_edge, %for.inc19.3.i.if.then15_crit_edge, %for.inc19.2.i.if.then15_crit_edge, %for.inc19.1.i.if.then15_crit_edge, %for.inc19.i.if.then15_crit_edge, %for.inc.7.i.if.then15_crit_edge, %for.inc.6.i.if.then15_crit_edge, %for.inc.5.i.if.then15_crit_edge, %for.inc.4.i.if.then15_crit_edge, %for.inc.3.i.if.then15_crit_edge, %for.inc.2.i.if.then15_crit_edge, %for.inc.1.i.if.then15_crit_edge, %for.inc.i.if.then15_crit_edge, %do.end.if.then15_crit_edge
  %loc.0.i.ph = phi i32 [ 7, %for.inc35.6.i.if.then15_crit_edge ], [ 7, %for.inc.6.i.if.then15_crit_edge ], [ 6, %for.inc.5.i.if.then15_crit_edge ], [ 5, %for.inc.4.i.if.then15_crit_edge ], [ 4, %for.inc.3.i.if.then15_crit_edge ], [ 3, %for.inc.2.i.if.then15_crit_edge ], [ 2, %for.inc.1.i.if.then15_crit_edge ], [ 1, %for.inc.i.if.then15_crit_edge ], [ 0, %do.end.if.then15_crit_edge ], [ 7, %for.inc19.6.i.if.then15_crit_edge ], [ 6, %for.inc19.5.i.if.then15_crit_edge ], [ 5, %for.inc19.4.i.if.then15_crit_edge ], [ 4, %for.inc19.3.i.if.then15_crit_edge ], [ 3, %for.inc19.2.i.if.then15_crit_edge ], [ 2, %for.inc19.1.i.if.then15_crit_edge ], [ 1, %for.inc19.i.if.then15_crit_edge ], [ 0, %for.inc.7.i.if.then15_crit_edge ], [ 6, %for.inc35.5.i.if.then15_crit_edge ], [ 5, %for.inc35.4.i.if.then15_crit_edge ], [ 4, %for.inc35.3.i.if.then15_crit_edge ], [ 3, %for.inc35.2.i.if.then15_crit_edge ], [ 2, %for.inc35.1.i.if.then15_crit_edge ], [ 1, %for.inc35.i.if.then15_crit_edge ], [ 0, %for.inc19.7.i.if.then15_crit_edge ]
  %55 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv2, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %.off.i40 = add i32 %58, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i40)
  %switch.i41 = icmp ult i32 %.off.i40, 3
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 8
  br i1 %switch.i41, label %if.then.i44, label %if.else.i46

if.then.i44:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i43 = getelementptr i8, ptr %60, i32 168
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #7, !srcloc !95
  br label %if.end.i50

if.else.i46:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr9.i45 = getelementptr i8, ptr %60, i32 156
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i45) #7, !srcloc !95
  br label %if.end.i50

if.end.i50:                                       ; preds = %if.else.i46, %if.then.i44
  %.sink.i47 = phi i32 [ %62, %if.else.i46 ], [ %61, %if.then.i44 ]
  %63 = and i32 %.sink.i47, -117440513
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  %or.i49 = or i32 %64, %loc.0.i.ph
  %65 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %56, align 4
  %.off43.i = add i32 %66, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off43.i)
  %switch44.i = icmp ult i32 %.off43.i, 3
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i49) #7
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 8
  br i1 %switch44.i, label %if.then24.i, label %if.else27.i

if.then24.i:                                      ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr26.i = getelementptr i8, ptr %69, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %67) #7, !srcloc !94
  br label %dw_mci_exynos_set_clksmpl.exit

if.else27.i:                                      ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr29.i = getelementptr i8, ptr %69, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %67) #7, !srcloc !94
  br label %dw_mci_exynos_set_clksmpl.exit

dw_mci_exynos_set_clksmpl.exit:                   ; preds = %if.else27.i, %if.then24.i
  %tuned_sample = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %3, i32 0, i32 5
  %70 = ptrtoint ptr %tuned_sample to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %loc.0.i.ph, ptr %tuned_sample, align 4
  br label %if.end20

if.else:                                          ; preds = %for.inc35.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %class_dev, ptr noundef nonnull @.str.24) #10
  br label %if.end20

if.end20:                                         ; preds = %if.else, %dw_mci_exynos_set_clksmpl.exit
  %ret.0 = phi i32 [ 0, %dw_mci_exynos_set_clksmpl.exit ], [ -5, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_prepare_hs400_tuning(ptr nocapture noundef %host, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %hs400_timing = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hs400_timing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hs400_timing, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %.off.i = add i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %7, i32 168
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !95
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr9.i = getelementptr i8, ptr %7, i32 156
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !95
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %9, %if.else.i ], [ %8, %if.then.i ]
  %10 = and i32 %.sink.i, -117442312
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %or.i = or i32 %11, %3
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %.off48.i = add i32 %13, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off48.i)
  %switch49.i = icmp ult i32 %.off48.i, 3
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  br i1 %switch49.i, label %if.then20.i, label %if.else23.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr22.i = getelementptr i8, ptr %16, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %14) #7, !srcloc !94
  br label %if.end26.i

if.else23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25.i = getelementptr i8, ptr %16, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %14) #7, !srcloc !94
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else23.i, %if.then20.i
  %17 = and i32 %3, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end26.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge

if.end26.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mci_exynos_set_clksel_timing.exit

land.lhs.true.i:                                  ; preds = %if.end26.i
  %slot.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 42
  %18 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slot.i, align 4
  %tobool28.not.i = icmp eq ptr %19, null
  br i1 %tobool28.not.i, label %land.lhs.true.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge, label %if.then29.i

land.lhs.true.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mci_exynos_set_clksel_timing.exit

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.dw_mci_slot, ptr %19, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #7
  br label %dw_mci_exynos_set_clksel_timing.exit

dw_mci_exynos_set_clksel_timing.exit:             ; preds = %if.then29.i, %land.lhs.true.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge, %if.end26.i.dw_mci_exynos_set_clksel_timing.exit_crit_edge
  %20 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ios, align 4
  %shl = shl i32 %21, 1
  tail call fastcc void @dw_mci_exynos_adjust_clock(ptr noundef %host, i32 noundef %shl)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_exynos_adjust_clock(ptr nocapture noundef %host, i32 noundef %wanted) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wanted)
  %tobool.not = icmp eq i32 %wanted, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ciu_clk = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 41
  %2 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ciu_clk, align 8
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = tail call i32 @llvm.umax.i32(i32 %wanted, i32 50000000)
  %cur_speed = getelementptr inbounds %struct.dw_mci_exynos_priv_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %cur_speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp4 = icmp eq i32 %4, %6
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %8, label %if.else14.i [
    i32 1, label %if.end6.dw_mci_exynos_get_ciu_div.exit_crit_edge
    i32 0, label %if.then4.i
    i32 5, label %if.end6.if.then13.i_crit_edge
    i32 6, label %if.end6.if.then13.i_crit_edge39
    i32 7, label %if.end6.if.then13.i_crit_edge40
  ]

if.end6.if.then13.i_crit_edge40:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.end6.if.then13.i_crit_edge39:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.end6.if.then13.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.end6.dw_mci_exynos_get_ciu_div.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mci_exynos_get_ciu_div.exit

if.then4.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mci_exynos_get_ciu_div.exit

if.then13.i:                                      ; preds = %if.end6.if.then13.i_crit_edge, %if.end6.if.then13.i_crit_edge39, %if.end6.if.then13.i_crit_edge40
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 168
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !95
  %13 = and i32 %12, 7
  %conv.i = add nuw nsw i32 %13, 1
  br label %dw_mci_exynos_get_ciu_div.exit

if.else14.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %regs16.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %14 = ptrtoint ptr %regs16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs16.i, align 8
  %add.ptr17.i = getelementptr i8, ptr %15, i32 156
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #7, !srcloc !95
  %17 = and i32 %16, 7
  %conv23.i = add nuw nsw i32 %17, 1
  br label %dw_mci_exynos_get_ciu_div.exit

dw_mci_exynos_get_ciu_div.exit:                   ; preds = %if.else14.i, %if.then13.i, %if.then4.i, %if.end6.dw_mci_exynos_get_ciu_div.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.then4.i ], [ %conv.i, %if.then13.i ], [ %conv23.i, %if.else14.i ], [ 4, %if.end6.dw_mci_exynos_get_ciu_div.exit_crit_edge ]
  %18 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ciu_clk, align 8
  %mul = mul i32 %retval.0.i, %4
  %call9 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %mul) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %dw_mci_exynos_get_ciu_div.exit.if.end14_crit_edge, label %do.end

dw_mci_exynos_get_ciu_div.exit.if.end14_crit_edge: ; preds = %dw_mci_exynos_get_ciu_div.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end:                                           ; preds = %dw_mci_exynos_get_ciu_div.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.6, i32 noundef %mul, i32 noundef %call9) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end, %dw_mci_exynos_get_ciu_div.exit.if.end14_crit_edge
  %22 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ciu_clk, align 8
  %call16 = tail call i32 @clk_get_rate(ptr noundef %23) #7
  %div18 = udiv i32 %call16, %retval.0.i
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %24 = ptrtoint ptr %bus_hz to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div18, ptr %bus_hz, align 4
  %25 = ptrtoint ptr %cur_speed to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %4, ptr %cur_speed, align 4
  %current_speed = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 33
  %26 = ptrtoint ptr %current_speed to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %current_speed, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_exynos_set_data_timeout(ptr nocapture noundef readonly %host, i32 noundef %timeout_ns) #2 align 64 {
if.end192:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !95
  %3 = lshr i32 %2, 23
  %mul = and i32 %3, 510
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp eq i32 %mul, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %mul
  %conv = zext i32 %timeout_ns to i64
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %4 = ptrtoint ptr %bus_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_hz, align 4
  %conv2 = zext i32 %5 to i64
  %mul3 = mul nuw i64 %conv2, %conv
  %sub = add nuw i64 %mul3, 999999999
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i32 0) #11, !srcloc !98
  %asmresult.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #11, !srcloc !99
  %asmresult10.i = extractvalue { i64, i32 } %7, 0
  %_tmp.0 = lshr i64 %asmresult10.i, 29
  %conv196 = zext i32 %spec.store.select to i64
  %add197 = add nsw i64 %conv196, -1
  %sub198 = add nuw nsw i64 %add197, %_tmp.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub198)
  %cmp400 = icmp ult i64 %sub198, 4294967296
  br i1 %cmp400, label %if.then408, label %if.else414, !prof !100

if.then408:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  %conv409 = trunc i64 %sub198 to i32
  %div412 = udiv i32 %conv409, %spec.store.select
  %conv413 = zext i32 %div412 to i64
  br label %if.end418

if.else414:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.store.select, i64 %sub198) #11, !srcloc !101
  %asmresult1.i = extractvalue { i64, i64 } %8, 1
  br label %if.end418

if.end418:                                        ; preds = %if.else414, %if.then408
  %_tmp195.0 = phi i64 [ %conv413, %if.then408 ], [ %asmresult1.i, %if.else414 ]
  %9 = add i64 %_tmp195.0, -117440499
  call void @__sanitizer_cov_trace_const_cmp8(i64 -117440498, i64 %9)
  %10 = icmp ult i64 %9, -117440498
  br i1 %10, label %if.end418.if.end442_crit_edge, label %if.else426

if.end418.if.end442_crit_edge:                    ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end442

if.else426:                                       ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #9
  %conv427 = trunc i64 %_tmp195.0 to i32
  %div428 = udiv i32 %conv427, 16777215
  %add429 = add nuw nsw i32 %div428, 1
  %shl431 = shl nuw nsw i32 %add429, 8
  %or432 = or i32 %shl431, 255
  %11 = mul nuw nsw i32 %add429, 16777215
  %mul434.neg = xor i32 %11, -1
  %sub436.tr = add i32 %mul434.neg, %conv427
  %12 = shl i32 %sub436.tr, 8
  %13 = and i32 %12, -2048
  %conv441 = or i32 %13, %or432
  br label %if.end442

if.end442:                                        ; preds = %if.else426, %if.end418.if.end442_crit_edge
  %tmout.0 = phi i32 [ %conv441, %if.else426 ], [ -1, %if.end418.if.end442_crit_edge ]
  %14 = tail call i32 @llvm.bswap.i32(i32 %tmout.0)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr444 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr444, i32 %14) #7, !srcloc !94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_exynos_set_data_timeout.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_exynos_set_data_timeout, %if.then454)) #7
          to label %do.end [label %if.then454], !srcloc !97

if.then454:                                       ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %shr455 = lshr i32 %tmout.0, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_exynos_set_data_timeout.__UNIQUE_ID_ddebug273, ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %timeout_ns, i32 noundef %shr455) #7
  br label %do.end

do.end:                                           ; preds = %if.then454, %if.end442
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_get_drto_clks(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !95
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 7
  %4 = mul nuw nsw i32 %and, 16777215
  %and1 = and i32 %shr, 16777208
  %mul = or i32 %and1, -16777215
  %add = add nsw i32 %mul, %4
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_suspend_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !90
  %call = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_resume_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv1 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %call2 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %.off = add i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  br i1 %switch, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %7, i32 168
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !95
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr12 = getelementptr i8, ptr %7, i32 156
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !95
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8
  %.sink = phi i32 [ %9, %if.else ], [ %8, %if.then8 ]
  %10 = and i32 %.sink, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not = icmp eq i32 %10, 0
  br i1 %tobool16.not, label %if.end15.if.end33_crit_edge, label %if.then17

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then17:                                        ; preds = %if.end15
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %.off53 = add i32 %12, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off53)
  %switch54 = icmp ult i32 %.off53, 3
  %regs27 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regs27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs27, align 8
  br i1 %switch54, label %if.then26, label %if.else29

if.then26:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr28 = getelementptr i8, ptr %14, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %.sink) #7, !srcloc !94
  br label %if.end33

if.else29:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr31 = getelementptr i8, ptr %14, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %.sink) #7, !srcloc !94
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then26, %if.end15.if.end33_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_suspend(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_exynos_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @dw_mci_runtime_resume(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 4, label %if.end.if.then.i_crit_edge
    i32 6, label %if.end.if.then.i_crit_edge6
  ]

if.end.if.then.i_crit_edge6:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge6
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !94
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %10, i32 4612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -1) #7, !srcloc !94
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %12, i32 4620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 1895825408) #7, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !77, !78, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_dw_mmc_exynos__274_695_dw_mci_exynos_pltfm_driver_init6, !1, !"__initcall__kmod_dw_mmc_exynos__274_695_dw_mci_exynos_pltfm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 695, i32 1}
!2 = !{ptr @__exitcall_dw_mci_exynos_pltfm_driver_exit, !1, !"__exitcall_dw_mci_exynos_pltfm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description275, !4, !"__UNIQUE_ID_description275", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 697, i32 1}
!5 = !{ptr @__UNIQUE_ID_author276, !6, !"__UNIQUE_ID_author276", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 698, i32 1}
!7 = !{ptr @__UNIQUE_ID_file277, !8, !"__UNIQUE_ID_file277", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 699, i32 1}
!9 = !{ptr @__UNIQUE_ID_license278, !8, !"__UNIQUE_ID_license278", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias279, !11, !"__UNIQUE_ID_alias279", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 700, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 688, i32 12}
!14 = !{ptr @dw_mci_exynos_pltfm_driver, !15, !"dw_mci_exynos_pltfm_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 684, i32 31}
!16 = !{ptr @dw_mci_exynos_match, !17, !"dw_mci_exynos_match", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 623, i32 34}
!18 = !{ptr @exynos_drv_data, !19, !"exynos_drv_data", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 602, i32 37}
!20 = !{ptr @exynos_dwmmc_caps, !21, !"exynos_dwmmc_caps", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 595, i32 22}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 258, i32 4}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dw_mci_exynos_config_hs400._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @dw_mci_exynos_config_hs400._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 302, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dw_mci_exynos_adjust_clock._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @dw_mci_exynos_adjust_clock._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 376, i32 28}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 381, i32 4}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 388, i32 4}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 395, i32 4}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 397, i32 5}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 398, i32 3}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dw_mci_exynos_parse_dt.__UNIQUE_ID_ddebug272, !46, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 53, i32 17}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 56, i32 17}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 59, i32 17}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 62, i32 17}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 65, i32 17}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 68, i32 17}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 71, i32 17}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 74, i32 17}
!66 = distinct !{null, !67, !"exynos_compat", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 51, i32 3}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 529, i32 3}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @dw_mci_exynos_execute_tuning._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @dw_mci_exynos_execute_tuning._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @artpec_drv_data, !74, !"artpec_drv_data", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 613, i32 37}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 581, i32 2}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @dw_mci_exynos_set_data_timeout.__UNIQUE_ID_ddebug273, !76, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!79 = !{ptr @dw_mci_exynos_pmops, !80, !"dw_mci_exynos_pmops", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/dw_mmc-exynos.c", i32 676, i32 32}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148356792, i64 2148356818, i64 2148356847, i64 2148356881, i64 2148356912, i64 2148356935}
!91 = !{i64 2148356211}
!92 = !{i64 841831, i64 841856, i64 841878, i64 841894, i64 841906, i64 841926, i64 841950, i64 841966, i64 841978}
!93 = !{i64 2148356399}
!94 = !{i64 6508017}
!95 = !{i64 6508435}
!96 = !{!"auto-init"}
!97 = !{i64 2148970169, i64 2148970174, i64 2148970187, i64 2148970231, i64 2148970265, i64 2148970286}
!98 = !{i64 717672, i64 717699, i64 717721, i64 717749}
!99 = !{i64 718080, i64 718107, i64 718140, i64 718161, i64 718188, i64 718214}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i64 2148203216, i64 2148203496, i64 2148203830, i64 2148204164}
