; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-st.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-st.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_sdhci_st__272_523_sdhci_st_driver_init6 = internal global ptr @sdhci_st_driver_init, section ".initcall6.init", align 4
@sdhci_st_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_st_probe, ptr @sdhci_st_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @st_sdhci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_st_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_st_driver_exit = internal global ptr @sdhci_st_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description273 = internal constant [62 x i8] c"sdhci_st.description=SDHCI driver for STMicroelectronics SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [60 x i8] c"sdhci_st.author=Giuseppe Cavallaro <peppe.cavallaro@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [40 x i8] c"sdhci_st.file=drivers/mmc/host/sdhci-st\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [24 x i8] c"sdhci_st.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias277 = internal constant [33 x i8] c"sdhci_st.alias=platform:sdhci-st\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdhci-st\00", [23 x i8] zeroinitializer }, align 32
@st_sdhci_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sdhci_st_pmops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_st_suspend, ptr @sdhci_st_resume, ptr @sdhci_st_suspend, ptr @sdhci_st_resume, ptr @sdhci_st_suspend, ptr @sdhci_st_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmc\00", [28 x i8] zeroinitializer }, align 32
@sdhci_st_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 356, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Peripheral clk not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdhci_st_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mmc/host/sdhci-st.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_st_probe._entry_ptr = internal global ptr @sdhci_st_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"icn\00", [28 x i8] zeroinitializer }, align 32
@sdhci_st_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_st_ops, i32 637534208, i32 264 }, [20 x i8] zeroinitializer }, align 32
@sdhci_st_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 372, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed sdhci_pltfm_init\0A\00", [39 x i8] zeroinitializer }, align 32
@sdhci_st_probe._entry_ptr.10 = internal global ptr @sdhci_st_probe._entry.8, section ".printk_index", align 4
@sdhci_st_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed mmc_of_parse\0A\00", [43 x i8] zeroinitializer }, align 32
@sdhci_st_probe._entry_ptr.13 = internal global ptr @sdhci_st_probe._entry.11, section ".printk_index", align 4
@sdhci_st_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to prepare clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sdhci_st_probe._entry_ptr.16 = internal global ptr @sdhci_st_probe._entry.14, section ".printk_index", align 4
@sdhci_st_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to prepare icn clock\0A\00", [35 x i8] zeroinitializer }, align 32
@sdhci_st_probe._entry_ptr.19 = internal global ptr @sdhci_st_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top-mmc-delay\00", [18 x i8] zeroinitializer }, align 32
@sdhci_st_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 421, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"SDHCI ST Initialised: Host Version: 0x%x Vendor Version 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sdhci_st_probe._entry_ptr.24 = internal global ptr @sdhci_st_probe._entry.21, section ".printk_index", align 4
@sdhci_st_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr @sdhci_st_readl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_st_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_st_set_uhs_signaling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 300, ptr @.str.27, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error setting dll for clock (uhs %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sdhci_st_set_uhs_signaling\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sdhci_st_set_uhs_signaling._entry_ptr = internal global ptr @sdhci_st_set_uhs_signaling._entry, section ".printk_index", align 4
@sdhci_st_set_uhs_signaling.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.26, ptr @.str.4, ptr @.str.29, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdhci_st\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uhs %d, ctrl_2 %04X\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,sdhci-stih407\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 100000000, i64 200000000]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"sdhci_st_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 512, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 516, i32 14 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"st_sdhci_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 505, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"sdhci_st_pmops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 503, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 354, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 356, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 361, i32 36 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"sdhci_st_pdata\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 332, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 372, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 383, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 389, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 395, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 401, i32 9 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 418, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"sdhci_st_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 323, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 299, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 302, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [31 x i8] c"../drivers/mmc/host/sdhci-st.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 148, i32 35 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias277, ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_sdhci_st_driver_exit, ptr @__initcall__kmod_sdhci_st__272_523_sdhci_st_driver_init6, ptr @sdhci_st_driver_exit, ptr @sdhci_st_probe._entry, ptr @sdhci_st_probe._entry.11, ptr @sdhci_st_probe._entry.14, ptr @sdhci_st_probe._entry.17, ptr @sdhci_st_probe._entry.21, ptr @sdhci_st_probe._entry.8, ptr @sdhci_st_probe._entry_ptr, ptr @sdhci_st_probe._entry_ptr.10, ptr @sdhci_st_probe._entry_ptr.13, ptr @sdhci_st_probe._entry_ptr.16, ptr @sdhci_st_probe._entry_ptr.19, ptr @sdhci_st_probe._entry_ptr.24, ptr @sdhci_st_set_uhs_signaling._entry, ptr @sdhci_st_set_uhs_signaling._entry_ptr, ptr @sdhci_st_driver, ptr @.str, ptr @st_sdhci_match, ptr @sdhci_st_pmops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sdhci_st_pdata, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @sdhci_st_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sdhci_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_st_set_uhs_signaling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_st_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_st_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_st_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_st_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_st_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  %cmp.i124 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i124, ptr null, ptr %call6
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #5
  %cmp.i125 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @reset_control_deassert(ptr noundef %call.i) #5
  %call17 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull @sdhci_st_pdata, i32 noundef 12) #5
  %cmp.i126 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  %4 = ptrtoint ptr %call17 to i32
  br label %err_pltfm_init

if.end25:                                         ; preds = %if.end15
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call17, i32 0, i32 81
  %private.i127 = getelementptr inbounds %struct.sdhci_host, ptr %call17, i32 1, i32 11, i32 21
  %5 = ptrtoint ptr %private.i127 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %private.i127, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call17, i32 0, i32 10
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 8
  %call29 = tail call i32 @mmc_of_parse(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %err_of

if.end35:                                         ; preds = %if.end25
  %call.i128 = tail call i32 @clk_prepare(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end35.do.end41_crit_edge

if.end35.do.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41

if.end.i:                                         ; preds = %if.end35
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end43, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call) #5
  br label %do.end41

do.end41:                                         ; preds = %if.then3.i, %if.end35.do.end41_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i128, %if.end35.do.end41_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %err_of

if.end43:                                         ; preds = %if.end.i
  %call.i129 = tail call i32 @clk_prepare(ptr noundef %spec.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i130 = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i130, label %if.end.i133, label %if.end43.do.end49_crit_edge

if.end43.do.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49

if.end.i133:                                      ; preds = %if.end43
  %call1.i131 = tail call i32 @clk_enable(ptr noundef %spec.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool2.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool2.not.i132, label %if.end51, label %if.then3.i134

if.then3.i134:                                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %spec.select) #5
  br label %do.end49

do.end49:                                         ; preds = %if.then3.i134, %if.end43.do.end49_crit_edge
  %retval.0.i135.ph = phi i32 [ %call1.i131, %if.then3.i134 ], [ %call.i129, %if.end43.do.end49_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %err_icnclk

if.end51:                                         ; preds = %if.end.i133
  %call52 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.20) #5
  %call54 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call52) #5
  %top_ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %call17, i32 1, i32 11, i32 23
  %cmp.i137 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i137, ptr null, ptr %call54
  %8 = ptrtoint ptr %top_ioaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.store.select, ptr %top_ioaddr, align 4
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %private.i, align 128
  %icnclk61 = getelementptr inbounds %struct.sdhci_host, ptr %call17, i32 1, i32 11, i32 22
  %10 = ptrtoint ptr %icnclk61 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.select, ptr %icnclk61, align 4
  tail call fastcc void @st_mmcss_cconfig(ptr noundef %1, ptr noundef %call17)
  %call62 = tail call i32 @sdhci_add_host(ptr noundef %call17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %err_out

if.end65:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %call17, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %12, i32 254
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !80
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %and = and i32 %conv, 255
  %15 = lshr i32 %conv, 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %and, i32 noundef %15) #8
  br label %cleanup

err_out:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %spec.select) #5
  tail call void @clk_unprepare(ptr noundef %spec.select) #5
  br label %err_icnclk

err_icnclk:                                       ; preds = %err_out, %do.end49
  %ret.0 = phi i32 [ %retval.0.i135.ph, %do.end49 ], [ %call62, %err_out ]
  tail call void @clk_disable(ptr noundef %call) #5
  tail call void @clk_unprepare(ptr noundef %call) #5
  br label %err_of

err_of:                                           ; preds = %err_icnclk, %do.end41, %do.end33
  %ret.1 = phi i32 [ %call29, %do.end33 ], [ %retval.0.i.ph, %do.end41 ], [ %ret.0, %err_icnclk ]
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #5
  br label %err_pltfm_init

err_pltfm_init:                                   ; preds = %err_of, %do.end22
  %ret.2 = phi i32 [ %4, %do.end22 ], [ %ret.1, %err_of ]
  %call74 = tail call i32 @reset_control_assert(ptr noundef %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_pltfm_init, %if.end65, %if.then13, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %3, %if.then13 ], [ %ret.2, %err_pltfm_init ], [ 0, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_st_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i8 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %2 = ptrtoint ptr %private.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i8, align 4
  %call4 = tail call i32 @sdhci_pltfm_unregister(ptr noundef %pdev) #5
  %icnclk = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %4 = ptrtoint ptr %icnclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %icnclk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %call5 = tail call i32 @reset_control_assert(ptr noundef %3) #5
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_mmcss_cconfig(ptr noundef %np, ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1114113) #5, !srcloc !81
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_max, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 200000000, label %if.end.sw.epilog_crit_edge
    i32 100000000, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %if.end.sw.epilog_crit_edge
  %.sink80 = phi i32 [ 50000000, %sw.default ], [ 100000000, %sw.bb4 ], [ %5, %if.end.sw.epilog_crit_edge ]
  %cconf2.0 = phi i32 [ 286326834, %sw.default ], [ 286326884, %sw.bb4 ], [ 286326984, %if.end.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 128
  %call10 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef %.sink80) #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %cconf2.0)
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 16
  %add.ptr13 = getelementptr i8, ptr %11, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %9) #5, !srcloc !81
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps.i, align 32
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not.not = icmp eq i32 %14, 0
  br i1 %tobool15.not.not, label %if.else, label %sw.epilog.if.end20_crit_edge

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr, align 16
  %add.ptr19 = getelementptr i8, ptr %16, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 1048576) #5, !srcloc !81
  br label %if.end20

if.end20:                                         ; preds = %if.else, %sw.epilog.if.end20_crit_edge
  %cconf3.0 = phi i32 [ 1048849, %if.else ], [ 269484305, %sw.epilog.if.end20_crit_edge ]
  %17 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps.i, align 32
  %and = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  %or23 = or i32 %cconf3.0, 65536
  %not.tobool21.not = xor i1 %tobool21.not, true
  %cconf4.0 = zext i1 %not.tobool21.not to i32
  %cconf5.0 = select i1 %tobool21.not, i32 0, i32 271
  %and29 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %or34 = or i32 %cconf5.0, 15
  %19 = and i32 %18, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  %cconf3.2 = select i1 %20, i32 %cconf3.0, i32 %or23
  %21 = lshr exact i32 %and29, 15
  %cconf5.1 = select i1 %tobool30.not, i32 %cconf5.0, i32 %or34
  %and37 = lshr i32 %18, 12
  %22 = and i32 %and37, 256
  %23 = or i32 %22, %21
  %24 = or i32 %23, %cconf4.0
  %25 = tail call i32 @llvm.bswap.i32(i32 %cconf3.2)
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 16
  %add.ptr43 = getelementptr i8, ptr %27, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %25) #5, !srcloc !81
  %28 = tail call i32 @llvm.bswap.i32(i32 %24)
  %29 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr, align 16
  %add.ptr45 = getelementptr i8, ptr %30, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %28) #5, !srcloc !81
  %31 = tail call i32 @llvm.bswap.i32(i32 %cconf5.1)
  %32 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr, align 16
  %add.ptr47 = getelementptr i8, ptr %33, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %31) #5, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_st_readl(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %reg)
  %cond = icmp eq i32 %reg, 64
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !82
  %3 = and i32 %2, -3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr3 = getelementptr i8, ptr %1, i32 %reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !82
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %.sink = phi i32 [ %4, %sw.default ], [ %3, %sw.bb ]
  %5 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_st_set_uhs_signaling(ptr noundef %host, i32 noundef %uhs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !83

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call zeroext i16 %3(ptr noundef %host, i32 noundef 62) #5
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 62
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !80
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i60 = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %8 = and i16 %retval.0.i60, -8
  %9 = zext i32 %uhs to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %uhs, label %sdhci_readw.exit.do.body28_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb6
    i32 5, label %sw.bb11
    i32 6, label %sdhci_readw.exit.sw.bb17_crit_edge
    i32 9, label %sdhci_readw.exit.sw.bb17_crit_edge125
    i32 7, label %sdhci_readw.exit.sw.bb23_crit_edge
    i32 8, label %sdhci_readw.exit.sw.bb23_crit_edge126
  ]

sdhci_readw.exit.sw.bb23_crit_edge126:            ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23

sdhci_readw.exit.sw.bb23_crit_edge:               ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23

sdhci_readw.exit.sw.bb17_crit_edge125:            ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

sdhci_readw.exit.sw.bb17_crit_edge:               ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17

sdhci_readw.exit.do.body28_crit_edge:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

sw.bb:                                            ; preds = %sdhci_readw.exit
  %top_ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %10 = ptrtoint ptr %top_ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %top_ioaddr, align 4
  %tobool.not.i61 = icmp eq ptr %11, null
  br i1 %tobool.not.i61, label %sw.bb.st_mmcss_set_static_delay.exit_crit_edge, label %if.end.i

sw.bb.st_mmcss_set_static_delay.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_mmcss_set_static_delay.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i62 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 0) #5, !srcloc !81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 251658240) #5, !srcloc !81
  br label %st_mmcss_set_static_delay.exit

st_mmcss_set_static_delay.exit:                   ; preds = %if.end.i, %sw.bb.st_mmcss_set_static_delay.exit_crit_edge
  %12 = or i16 %8, 8
  br label %do.body28

sw.bb6:                                           ; preds = %sdhci_readw.exit
  %top_ioaddr7 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %13 = ptrtoint ptr %top_ioaddr7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %top_ioaddr7, align 4
  %tobool.not.i63 = icmp eq ptr %14, null
  br i1 %tobool.not.i63, label %sw.bb6.st_mmcss_set_static_delay.exit66_crit_edge, label %if.end.i65

sw.bb6.st_mmcss_set_static_delay.exit66_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_mmcss_set_static_delay.exit66

if.end.i65:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i64 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 0) #5, !srcloc !81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 251658240) #5, !srcloc !81
  br label %st_mmcss_set_static_delay.exit66

st_mmcss_set_static_delay.exit66:                 ; preds = %if.end.i65, %sw.bb6.st_mmcss_set_static_delay.exit66_crit_edge
  %15 = or i16 %8, 9
  br label %do.body28

sw.bb11:                                          ; preds = %sdhci_readw.exit
  %top_ioaddr12 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %16 = ptrtoint ptr %top_ioaddr12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %top_ioaddr12, align 4
  %tobool.not.i67 = icmp eq ptr %17, null
  br i1 %tobool.not.i67, label %sw.bb11.st_mmcss_set_static_delay.exit70_crit_edge, label %if.end.i69

sw.bb11.st_mmcss_set_static_delay.exit70_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_mmcss_set_static_delay.exit70

if.end.i69:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i68 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 0) #5, !srcloc !81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 251658240) #5, !srcloc !81
  br label %st_mmcss_set_static_delay.exit70

st_mmcss_set_static_delay.exit70:                 ; preds = %if.end.i69, %sw.bb11.st_mmcss_set_static_delay.exit70_crit_edge
  %18 = or i16 %8, 10
  %clock.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %19 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %20)
  %cmp.i = icmp ugt i32 %20, 90000000
  br i1 %cmp.i, label %if.then.i71, label %st_mmcss_set_static_delay.exit70.do.body28_crit_edge

st_mmcss_set_static_delay.exit70.do.body28_crit_edge: ; preds = %st_mmcss_set_static_delay.exit70
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

if.then.i71:                                      ; preds = %st_mmcss_set_static_delay.exit70
  %21 = ptrtoint ptr %top_ioaddr12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %top_ioaddr12, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then.i71.st_mmcss_set_dll.exit.i_crit_edge, label %if.end.i.i

if.then.i71.st_mmcss_set_dll.exit.i_crit_edge:    ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_mmcss_set_dll.exit.i

if.end.i.i:                                       ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 851968) #5, !srcloc !81
  %add.ptr1.i.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 100663296) #5, !srcloc !81
  br label %st_mmcss_set_dll.exit.i

st_mmcss_set_dll.exit.i:                          ; preds = %if.end.i.i, %if.then.i71.st_mmcss_set_dll.exit.i_crit_edge
  %ioaddr.i72 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr.i72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i72, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.ptr.i6.i = getelementptr i8, ptr %24, i32 1120
  %add.neg.i.i = sub i32 -100, %25
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %st_mmcss_set_dll.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #5, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i7.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i7.i, label %do.end.i.i, label %do.body.i.i.do.body28_crit_edge

do.body.i.i.do.body28_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

do.end.i.i:                                       ; preds = %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !87
  %sub.i.i = add i32 %add.neg.i.i, %26
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i.do.body.i.i_crit_edge, label %do.end.i.i.do.end_crit_edge

do.end.i.i.do.end_crit_edge:                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

sw.bb17:                                          ; preds = %sdhci_readw.exit.sw.bb17_crit_edge, %sdhci_readw.exit.sw.bb17_crit_edge125
  %top_ioaddr18 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %29 = ptrtoint ptr %top_ioaddr18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %top_ioaddr18, align 4
  %tobool.not.i74 = icmp eq ptr %30, null
  br i1 %tobool.not.i74, label %sw.bb17.st_mmcss_set_static_delay.exit77_crit_edge, label %if.end.i76

sw.bb17.st_mmcss_set_static_delay.exit77_crit_edge: ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_mmcss_set_static_delay.exit77

if.end.i76:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i75 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 0) #5, !srcloc !81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 251658240) #5, !srcloc !81
  br label %st_mmcss_set_static_delay.exit77

st_mmcss_set_static_delay.exit77:                 ; preds = %if.end.i76, %sw.bb17.st_mmcss_set_static_delay.exit77_crit_edge
  %31 = or i16 %8, 11
  %clock.i78 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %32 = ptrtoint ptr %clock.i78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clock.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %33)
  %cmp.i79 = icmp ugt i32 %33, 90000000
  br i1 %cmp.i79, label %if.then.i82, label %st_mmcss_set_static_delay.exit77.do.body28_crit_edge

st_mmcss_set_static_delay.exit77.do.body28_crit_edge: ; preds = %st_mmcss_set_static_delay.exit77
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

if.then.i82:                                      ; preds = %st_mmcss_set_static_delay.exit77
  %34 = ptrtoint ptr %top_ioaddr18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %top_ioaddr18, align 4
  %tobool.not.i.i81 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i81, label %if.then.i82.st_mmcss_set_dll.exit.i89_crit_edge, label %if.end.i.i85

if.then.i82.st_mmcss_set_dll.exit.i89_crit_edge:  ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_mmcss_set_dll.exit.i89

if.end.i.i85:                                     ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i83 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83, i32 851968) #5, !srcloc !81
  %add.ptr1.i.i84 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i84, i32 100663296) #5, !srcloc !81
  br label %st_mmcss_set_dll.exit.i89

st_mmcss_set_dll.exit.i89:                        ; preds = %if.end.i.i85, %if.then.i82.st_mmcss_set_dll.exit.i89_crit_edge
  %ioaddr.i86 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %36 = ptrtoint ptr %ioaddr.i86 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i86, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add.ptr.i6.i87 = getelementptr i8, ptr %37, i32 1120
  %add.neg.i.i88 = sub i32 -100, %38
  br label %do.body.i.i91

do.body.i.i91:                                    ; preds = %do.end.i.i94.do.body.i.i91_crit_edge, %st_mmcss_set_dll.exit.i89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i87) #5, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i7.i90 = icmp eq i32 %41, 0
  br i1 %tobool.not.i7.i90, label %do.end.i.i94, label %do.body.i.i91.do.body28_crit_edge

do.body.i.i91.do.body28_crit_edge:                ; preds = %do.body.i.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

do.end.i.i94:                                     ; preds = %do.body.i.i91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !87
  %sub.i.i92 = add i32 %add.neg.i.i88, %39
  %cmp.i.i93 = icmp slt i32 %sub.i.i92, 0
  br i1 %cmp.i.i93, label %do.end.i.i94.do.body.i.i91_crit_edge, label %do.end.i.i94.do.end_crit_edge

do.end.i.i94.do.end_crit_edge:                    ; preds = %do.end.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end.i.i94.do.body.i.i91_crit_edge:             ; preds = %do.end.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i91

sw.bb23:                                          ; preds = %sdhci_readw.exit.sw.bb23_crit_edge, %sdhci_readw.exit.sw.bb23_crit_edge126
  %top_ioaddr24 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %42 = ptrtoint ptr %top_ioaddr24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %top_ioaddr24, align 4
  %tobool.not.i98 = icmp eq ptr %43, null
  br i1 %tobool.not.i98, label %sw.bb23.st_mmcss_set_static_delay.exit101_crit_edge, label %if.end.i100

sw.bb23.st_mmcss_set_static_delay.exit101_crit_edge: ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_mmcss_set_static_delay.exit101

if.end.i100:                                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i99 = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 0) #5, !srcloc !81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 251658240) #5, !srcloc !81
  br label %st_mmcss_set_static_delay.exit101

st_mmcss_set_static_delay.exit101:                ; preds = %if.end.i100, %sw.bb23.st_mmcss_set_static_delay.exit101_crit_edge
  %44 = or i16 %8, 12
  br label %do.body28

do.end:                                           ; preds = %do.end.i.i94.do.end_crit_edge, %do.end.i.i.do.end_crit_edge
  %ctrl_2.0 = phi i16 [ %18, %do.end.i.i.do.end_crit_edge ], [ %31, %do.end.i.i94.do.end_crit_edge ]
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %45 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmc, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.25, i32 noundef %uhs) #8
  br label %do.body28

do.body28:                                        ; preds = %do.end, %st_mmcss_set_static_delay.exit101, %do.body.i.i91.do.body28_crit_edge, %st_mmcss_set_static_delay.exit77.do.body28_crit_edge, %do.body.i.i.do.body28_crit_edge, %st_mmcss_set_static_delay.exit70.do.body28_crit_edge, %st_mmcss_set_static_delay.exit66, %st_mmcss_set_static_delay.exit, %sdhci_readw.exit.do.body28_crit_edge
  %ctrl_2.0111 = phi i16 [ %ctrl_2.0, %do.end ], [ %31, %st_mmcss_set_static_delay.exit77.do.body28_crit_edge ], [ %18, %st_mmcss_set_static_delay.exit70.do.body28_crit_edge ], [ %12, %st_mmcss_set_static_delay.exit ], [ %15, %st_mmcss_set_static_delay.exit66 ], [ %44, %st_mmcss_set_static_delay.exit101 ], [ %8, %sdhci_readw.exit.do.body28_crit_edge ], [ %18, %do.body.i.i.do.body28_crit_edge ], [ %31, %do.body.i.i91.do.body28_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_st_set_uhs_signaling.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_st_set_uhs_signaling, %if.then33)) #5
          to label %do.end39 [label %if.then33], !srcloc !88

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  %mmc34 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %49 = ptrtoint ptr %mmc34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmc34, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 128
  %conv36 = zext i16 %ctrl_2.0111 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_st_set_uhs_signaling.__UNIQUE_ID_ddebug271, ptr noundef %52, ptr noundef nonnull @.str.29, i32 noundef %uhs, i32 noundef %conv36) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then33, %do.body28
  %53 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i103 = icmp eq ptr %56, null
  br i1 %tobool.not.i103, label %do.body.i, label %if.then.i104, !prof !83

if.then.i104:                                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %56(ptr noundef %host, i16 noundef zeroext %ctrl_2.0111, i32 noundef 62) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %57 = tail call i16 @llvm.bswap.i16(i16 %ctrl_2.0111) #5
  %ioaddr.i105 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %58 = ptrtoint ptr %ioaddr.i105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioaddr.i105, align 16
  %add.ptr.i106 = getelementptr i8, ptr %59, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i106, i16 %57) #5, !srcloc !90
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i104
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_st_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %private.i13 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %can_retune.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %can_retune.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_retune.i, align 8
  %7 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @sdhci_suspend_host(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %private.i13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i13, align 4
  %call6 = tail call i32 @reset_control_assert(ptr noundef %10) #5
  %icnclk = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %11 = ptrtoint ptr %icnclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %icnclk, align 4
  tail call void @clk_disable(ptr noundef %12) #5
  tail call void @clk_unprepare(ptr noundef %12) #5
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %14) #5
  tail call void @clk_unprepare(ptr noundef %14) #5
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_st_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %private.i24 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 128
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %icnclk = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %6 = ptrtoint ptr %icnclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %icnclk, align 4
  %call.i25 = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.end.i29, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.end.i29:                                       ; preds = %if.end
  %call1.i27 = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool2.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool2.not.i28, label %if.end8, label %if.then3.i30

if.then3.i30:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %if.then6

if.then6:                                         ; preds = %if.then3.i30, %if.end.if.then6_crit_edge
  %retval.0.i31.ph = phi i32 [ %call1.i27, %if.then3.i30 ], [ %call.i25, %if.end.if.then6_crit_edge ]
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %private.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i24, align 4
  %call9 = tail call i32 @reset_control_deassert(ptr noundef %11) #5
  tail call fastcc void @st_mmcss_cconfig(ptr noundef %3, ptr noundef %1)
  %call10 = tail call i32 @sdhci_resume_host(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i31.ph, %if.then6 ], [ %call10, %if.end8 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_sdhci_st__272_523_sdhci_st_driver_init6, !1, !"__initcall__kmod_sdhci_st__272_523_sdhci_st_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-st.c", i32 523, i32 1}
!2 = !{ptr @__exitcall_sdhci_st_driver_exit, !1, !"__exitcall_sdhci_st_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description273, !4, !"__UNIQUE_ID_description273", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-st.c", i32 525, i32 1}
!5 = !{ptr @__UNIQUE_ID_author274, !6, !"__UNIQUE_ID_author274", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-st.c", i32 526, i32 1}
!7 = !{ptr @__UNIQUE_ID_file275, !8, !"__UNIQUE_ID_file275", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-st.c", i32 527, i32 1}
!9 = !{ptr @__UNIQUE_ID_license276, !8, !"__UNIQUE_ID_license276", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias277, !11, !"__UNIQUE_ID_alias277", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-st.c", i32 528, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-st.c", i32 516, i32 14}
!14 = !{ptr @sdhci_st_driver, !15, !"sdhci_st_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-st.c", i32 512, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-st.c", i32 354, i32 34}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci-st.c", i32 356, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sdhci_st_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sdhci_st_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-st.c", i32 361, i32 36}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-st.c", i32 372, i32 3}
!30 = !{ptr @sdhci_st_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sdhci_st_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-st.c", i32 383, i32 3}
!34 = !{ptr @sdhci_st_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sdhci_st_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/sdhci-st.c", i32 389, i32 3}
!38 = !{ptr @sdhci_st_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sdhci_st_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/sdhci-st.c", i32 395, i32 3}
!42 = !{ptr @sdhci_st_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sdhci_st_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/sdhci-st.c", i32 401, i32 9}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/sdhci-st.c", i32 418, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sdhci_st_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sdhci_st_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @sdhci_st_pdata, !52, !"sdhci_st_pdata", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/sdhci-st.c", i32 332, i32 38}
!53 = !{ptr @sdhci_st_ops, !54, !"sdhci_st_ops", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/sdhci-st.c", i32 323, i32 31}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/sdhci-st.c", i32 299, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sdhci_st_set_uhs_signaling._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @sdhci_st_set_uhs_signaling._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/sdhci-st.c", i32 302, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sdhci_st_set_uhs_signaling.__UNIQUE_ID_ddebug271, !62, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/sdhci-st.c", i32 148, i32 35}
!67 = !{ptr @st_sdhci_match, !68, !"st_sdhci_match", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/sdhci-st.c", i32 505, i32 34}
!69 = !{ptr @sdhci_st_pmops, !70, !"sdhci_st_pmops", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/sdhci-st.c", i32 503, i32 8}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 697269}
!81 = !{i64 697689}
!82 = !{i64 698107}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2154751492}
!85 = !{i64 2154758644}
!86 = !{i64 2154758919}
!87 = !{i64 2154758761}
!88 = !{i64 2148164846, i64 2148164851, i64 2148164864, i64 2148164908, i64 2148164942, i64 2148164963}
!89 = !{i64 2154749424}
!90 = !{i64 697069}
