; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/dw_mmc-rockchip.c_pt.bc'
source_filename = "../drivers/mmc/host/dw_mmc-rockchip.c"
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
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dw_mci_rockchip_priv_data = type { ptr, ptr, i32, i32 }
%struct.dw_mci_slot = type { ptr, ptr, i32, ptr, %struct.list_head, i32, i32, i32, i32, i32 }
%struct.range_t = type { i32, i32 }

@__initcall__kmod_dw_mmc_rockchip__276_383_dw_mci_rockchip_pltfm_driver_init6 = internal global ptr @dw_mci_rockchip_pltfm_driver_init, section ".initcall6.init", align 4
@dw_mci_rockchip_pltfm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_mci_rockchip_probe, ptr @dw_mci_rockchip_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @dw_mci_rockchip_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_rockchip_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_mci_rockchip_pltfm_driver_exit = internal global ptr @dw_mci_rockchip_pltfm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author277 = internal constant [56 x i8] c"dw_mmc_rockchip.author=Addy Ke <addy.ke@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [71 x i8] c"dw_mmc_rockchip.description=Rockchip Specific DW-MSHC Driver Extension\00", section ".modinfo", align 1
@__UNIQUE_ID_alias279 = internal constant [46 x i8] c"dw_mmc_rockchip.alias=platform:dwmmc_rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [54 x i8] c"dw_mmc_rockchip.file=drivers/mmc/host/dw_mmc-rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [31 x i8] c"dw_mmc_rockchip.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwmmc_rockchip\00", [17 x i8] zeroinitializer }, align 32
@dw_mci_rockchip_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk2928-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk2928_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-dw-mshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_drv_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dw_mci_rockchip_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_runtime_suspend, ptr @dw_mci_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rk2928_drv_data = internal constant { %struct.dw_mci_drv_data, [52 x i8] } { %struct.dw_mci_drv_data { ptr null, i32 0, i32 0, ptr @dw_mci_rockchip_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rk3288_drv_data = internal constant { %struct.dw_mci_drv_data, [52 x i8] } { %struct.dw_mci_drv_data { ptr null, i32 0, i32 1073741824, ptr @dw_mci_rockchip_init, ptr @dw_mci_rk3288_set_ios, ptr @dw_mci_rk3288_parse_dt, ptr @dw_mci_rk3288_execute_tuning, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip,rk3288-dw-mshc\00", [40 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 54, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set rate %uHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw_mci_rk3288_set_ios\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mmc/host/dw_mmc-rockchip.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_set_ios._entry_ptr = internal global ptr @dw_mci_rk3288_set_ios._entry, section ".printk_index", align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rockchip,desired-num-phases\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip,default-sample-phase\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ciu-drive\00", [22 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_parse_dt.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dw_mmc_rockchip\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dw_mci_rk3288_parse_dt\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ciu-drive not available\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ciu-sample\00", [21 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_parse_dt.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.4, ptr @.str.14, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ciu-sample not available\0A\00", [38 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 154, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Tuning clock (sample_clk) not defined.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dw_mci_rk3288_execute_tuning\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_execute_tuning._entry_ptr = internal global ptr @dw_mci_rk3288_execute_tuning._entry, section ".printk_index", align 4
@dw_mci_rk3288_execute_tuning._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"All phases bad!\00", [16 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_execute_tuning._entry_ptr.20 = internal global ptr @dw_mci_rk3288_execute_tuning._entry.18, section ".printk_index", align 4
@dw_mci_rk3288_execute_tuning._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.4, i32 214, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"All phases work, using default phase %d.\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_execute_tuning._entry_ptr.24 = internal global ptr @dw_mci_rk3288_execute_tuning._entry.21, section ".printk_index", align 4
@dw_mci_rk3288_execute_tuning.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.4, ptr @.str.25, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Good phase range %d-%d (%d len)\0A\00", [63 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_execute_tuning.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.4, ptr @.str.26, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Best phase range %d-%d (%d len)\0A\00", [63 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_execute_tuning._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.16, ptr @.str.4, i32 250, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Successfully tuned phase to %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dw_mci_rk3288_execute_tuning._entry_ptr.29 = internal global ptr @dw_mci_rk3288_execute_tuning._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant [29 x i8] c"dw_mci_rockchip_pltfm_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 372, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 376, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"dw_mci_rockchip_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 315, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"dw_mci_rockchip_dev_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 364, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"rk2928_drv_data\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 303, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"rk3288_drv_data\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 307, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 297, i32 9 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 54, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 270, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 274, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 278, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 280, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 282, i32 45 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 284, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 154, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 200, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 213, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 230, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 239, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [38 x i8] c"../drivers/mmc/host/dw_mmc-rockchip.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 249, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias279, ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_dw_mci_rockchip_pltfm_driver_exit, ptr @__initcall__kmod_dw_mmc_rockchip__276_383_dw_mci_rockchip_pltfm_driver_init6, ptr @dw_mci_rk3288_execute_tuning._entry, ptr @dw_mci_rk3288_execute_tuning._entry.18, ptr @dw_mci_rk3288_execute_tuning._entry.21, ptr @dw_mci_rk3288_execute_tuning._entry.27, ptr @dw_mci_rk3288_execute_tuning._entry_ptr, ptr @dw_mci_rk3288_execute_tuning._entry_ptr.20, ptr @dw_mci_rk3288_execute_tuning._entry_ptr.24, ptr @dw_mci_rk3288_execute_tuning._entry_ptr.29, ptr @dw_mci_rk3288_set_ios._entry, ptr @dw_mci_rk3288_set_ios._entry_ptr, ptr @dw_mci_rockchip_pltfm_driver_exit, ptr @dw_mci_rockchip_pltfm_driver, ptr @.str, ptr @dw_mci_rockchip_match, ptr @dw_mci_rockchip_dev_pm_ops, ptr @rk2928_drv_data, ptr @rk3288_drv_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_rockchip_pltfm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_rockchip_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_rockchip_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk2928_drv_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_drv_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_rk3288_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_rk3288_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_rk3288_execute_tuning._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_rk3288_execute_tuning._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_rk3288_execute_tuning._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_rockchip_pltfm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_mci_rockchip_pltfm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_rockchip_pltfm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_mci_rockchip_pltfm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_rockchip_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @dw_mci_rockchip_match, ptr noundef nonnull %1) #7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !84
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  %call9 = tail call i32 @dw_mci_pltfm_register(ptr noundef %pdev, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i33 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  %call.i.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !86
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then11.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i36 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end11.i.i.i.i, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -19, %entry.cleanup_crit_edge ], [ %call9, %if.then11.cleanup_crit_edge ], [ %call9, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_rockchip_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !86
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %call3 = tail call i32 @dw_mci_pltfm_remove(ptr noundef %pdev) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_pltfm_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_rockchip_init(ptr nocapture noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sdio_id0 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 54
  %0 = ptrtoint ptr %sdio_id0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %sdio_id0, align 8
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %5 = ptrtoint ptr %bus_hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_hz, align 4
  %div3 = lshr i32 %6, 1
  store i32 %div3, ptr %bus_hz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_rk3288_set_ios(ptr nocapture noundef %host, ptr nocapture noundef readonly %ios) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %4 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp2 = icmp eq i8 %5, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %6 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %cmp5 = icmp eq i8 %7, 8
  br i1 %cmp5, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end12

if.end12:                                         ; preds = %if.else, %land.lhs.true.if.end12_crit_edge
  %.sink = phi i32 [ 1, %if.else ], [ 2, %land.lhs.true.if.end12_crit_edge ]
  %mul11 = shl i32 %3, %.sink
  %ciu_clk = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 41
  %8 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ciu_clk, align 8
  %call = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %mul11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12.if.end15_crit_edge, label %do.end

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ios, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %13) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end12.if.end15_crit_edge
  %14 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ciu_clk, align 8
  %call17 = tail call i32 @clk_get_rate(ptr noundef %15) #7
  %div70 = lshr i32 %call17, 1
  %bus_hz18 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %16 = ptrtoint ptr %bus_hz18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_hz18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div70, i32 %17)
  %cmp19.not = icmp eq i32 %div70, %17
  br i1 %cmp19.not, label %if.end15.if.end23_crit_edge, label %if.then21

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %bus_hz18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div70, ptr %bus_hz18, align 4
  %current_speed = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 33
  %19 = ptrtoint ptr %current_speed to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %current_speed, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end15.if.end23_crit_edge
  %sample_clk = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %sample_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sample_clk, align 4
  %cmp.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end23.if.end33_crit_edge, label %land.lhs.true25

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true25:                                  ; preds = %if.end23
  %timing26 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %22 = ptrtoint ptr %timing26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %timing26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp28 = icmp ult i8 %23, 3
  br i1 %cmp28, label %if.then30, label %land.lhs.true25.if.end33_crit_edge

land.lhs.true25.if.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  %default_sample_phase = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %default_sample_phase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %default_sample_phase, align 4
  %call32 = tail call i32 @clk_set_phase(ptr noundef %21, i32 noundef %25) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true25.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %cmp.i71 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.end33.cleanup_crit_edge, label %if.then35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35:                                        ; preds = %if.end33
  %timing36 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %28 = ptrtoint ptr %timing36 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %timing36, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %29, label %if.then35.sw.epilog_crit_edge [
    i8 8, label %sw.bb
    i8 6, label %if.then35.sw.bb44_crit_edge
    i8 9, label %if.then35.sw.bb44_crit_edge72
  ]

if.then35.sw.bb44_crit_edge72:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.then35.sw.bb44_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.then35.sw.epilog_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp40 = icmp eq i8 %32, 3
  %spec.select = select i1 %cmp40, i32 180, i32 90
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.then35.sw.bb44_crit_edge, %if.then35.sw.bb44_crit_edge72
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb, %if.then35.sw.epilog_crit_edge
  %phase.0 = phi i32 [ 90, %if.then35.sw.epilog_crit_edge ], [ 180, %sw.bb44 ], [ %spec.select, %sw.bb ]
  %call46 = tail call i32 @clk_set_phase(ptr noundef %27, i32 noundef %phase.0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_rk3288_parse_dt(ptr nocapture noundef %host) #2 align 64 {
entry:
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_phases = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef %num_phases, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %num_phases to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 360, ptr %num_phases, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %default_sample_phase = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %call.i, i32 0, i32 2
  %call.i.i69 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef %default_sample_phase, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i69)
  %tobool8.not = icmp sgt i32 %call.i.i69, -1
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %default_sample_phase to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %default_sample_phase, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call13 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.9) #7
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end11.if.end24_crit_edge

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_rk3288_parse_dt.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_rk3288_parse_dt, %if.then21)) #7
          to label %if.end24 [label %if.then21], !srcloc !88

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_rk3288_parse_dt.__UNIQUE_ID_ddebug274, ptr noundef %10, ptr noundef nonnull @.str.12) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %do.body, %if.end11.if.end24_crit_edge
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call26 = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef nonnull @.str.13) #7
  %sample_clk = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %sample_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call26, ptr %sample_clk, align 4
  %cmp.i70 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %do.body30, label %if.end24.if.end47_crit_edge

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.body30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_rk3288_parse_dt.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_rk3288_parse_dt, %if.then42)) #7
          to label %if.end47 [label %if.then42], !srcloc !88

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_rk3288_parse_dt.__UNIQUE_ID_ddebug275, ptr noundef %15, ptr noundef nonnull @.str.14) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %do.body30, %if.end24.if.end47_crit_edge
  %priv48 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 39
  %16 = ptrtoint ptr %priv48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %priv48, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_rk3288_execute_tuning(ptr nocapture noundef readonly %slot, i32 noundef %opcode) #2 align 64 {
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
  %sample_clk = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %sample_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sample_clk, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_phases = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %num_phases to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_phases, align 4
  %div = sdiv i32 %11, 2
  %add = add nsw i32 %div, 1
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #7
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !89

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  %15 = ptrtoint ptr %num_phases to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_phases, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp307 = icmp sgt i32 %16, 0
  br i1 %cmp307, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.end57_crit_edge

for.cond.preheader.do.end57_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %17 = phi i32 [ %25, %if.end50.for.body_crit_edge ], [ %16, %for.cond.preheader.for.body_crit_edge ]
  %range_count.0311 = phi i32 [ %range_count.1, %if.end50.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %first_v.0.off0310 = phi i1 [ %spec.select, %if.end50.for.body_crit_edge ], [ true, %for.cond.preheader.for.body_crit_edge ]
  %prev_v.0.off0309 = phi i1 [ %tobool15.not, %if.end50.for.body_crit_edge ], [ false, %for.cond.preheader.for.body_crit_edge ]
  %i.0308 = phi i32 [ %i.1, %if.end50.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %18 = ptrtoint ptr %sample_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sample_clk, align 4
  %mul = mul i32 %i.0308, 360
  %add10 = add i32 %mul, -1
  %sub = add i32 %add10, %17
  %div12 = sdiv i32 %sub, %17
  %call13 = tail call i32 @clk_set_phase(ptr noundef %19, i32 noundef %div12) #7
  %call14 = tail call i32 @mmc_send_tuning(ptr noundef %5, i32 noundef %opcode, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0308)
  %cmp16 = icmp eq i32 %i.0308, 0
  %spec.select = select i1 %cmp16, i1 %tobool15.not, i1 %first_v.0.off0310
  %tobool15.not.not = xor i1 %tobool15.not, true
  %brmerge = select i1 %prev_v.0.off0309, i1 true, i1 %tobool15.not.not
  br i1 %brmerge, label %for.body.if.end25_crit_edge, label %if.then23

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %range_count.0311, 1
  %arrayidx = getelementptr %struct.range_t, ptr %call8.i, i32 %range_count.0311
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.0308, ptr %arrayidx, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.body.if.end25_crit_edge
  %range_count.1 = phi i32 [ %range_count.0311, %for.body.if.end25_crit_edge ], [ %inc, %if.then23 ]
  br i1 %tobool15.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %sub28 = add i32 %range_count.1, -1
  %end = getelementptr %struct.range_t, ptr %call8.i, i32 %sub28, i32 1
  %21 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.0308, ptr %end, align 4
  %inc30 = add i32 %i.0308, 1
  br label %if.end50

if.else:                                          ; preds = %if.end25
  %22 = ptrtoint ptr %num_phases to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_phases, align 4
  %sub32 = add i32 %23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0308, i32 %sub32)
  %cmp33 = icmp eq i32 %i.0308, %sub32
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %inc35 = add i32 %i.0308, 1
  br label %if.end50

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %mul38 = mul i32 %23, 20
  %sub40 = add i32 %mul38, 359
  %div41 = sdiv i32 %sub40, 360
  %add42 = add i32 %div41, %i.0308
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %23)
  %cmp44.not = icmp slt i32 %add42, %23
  %spec.select293 = select i1 %cmp44.not, i32 %add42, i32 %sub32
  br label %if.end50

if.end50:                                         ; preds = %if.else36, %if.then34, %if.then27
  %i.1 = phi i32 [ %inc30, %if.then27 ], [ %inc35, %if.then34 ], [ %spec.select293, %if.else36 ]
  %24 = ptrtoint ptr %num_phases to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_phases, align 4
  %cmp = icmp slt i32 %i.1, %25
  br i1 %cmp, label %if.end50.for.body_crit_edge, label %for.end

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end50
  %26 = zext i32 %range_count.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %range_count.1, label %land.lhs.true61 [
    i32 0, label %for.end.do.end57_crit_edge
    i32 1, label %for.end.if.end71thread-pre-split_crit_edge
  ]

for.end.if.end71thread-pre-split_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71thread-pre-split

for.end.do.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57

do.end57:                                         ; preds = %for.end.do.end57_crit_edge, %for.cond.preheader.do.end57_crit_edge
  %dev58 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %27 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.19) #10
  br label %free

land.lhs.true61:                                  ; preds = %for.end
  %29 = select i1 %spec.select, i1 %tobool15.not, i1 false
  br i1 %29, label %if.then65, label %land.lhs.true61.if.end71thread-pre-split_crit_edge

land.lhs.true61.if.end71thread-pre-split_crit_edge: ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71thread-pre-split

if.then65:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  %sub66 = add i32 %range_count.1, -1
  %arrayidx67 = getelementptr %struct.range_t, ptr %call8.i, i32 %sub66
  %30 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx67, align 8
  %32 = ptrtoint ptr %call8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call8.i, align 128
  br label %if.end71

if.end71thread-pre-split:                         ; preds = %land.lhs.true61.if.end71thread-pre-split_crit_edge, %for.end.if.end71thread-pre-split_crit_edge
  %33 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %call8.i, align 128
  br label %if.end71

if.end71:                                         ; preds = %if.end71thread-pre-split, %if.then65
  %34 = phi i32 [ %.pr, %if.end71thread-pre-split ], [ %31, %if.then65 ]
  %range_count.2 = phi i32 [ %range_count.1, %if.end71thread-pre-split ], [ %sub66, %if.then65 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp74 = icmp eq i32 %34, 0
  br i1 %cmp74, label %land.lhs.true75, label %if.end71.for.body92.lr.ph_crit_edge

if.end71.for.body92.lr.ph_crit_edge:              ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body92.lr.ph

land.lhs.true75:                                  ; preds = %if.end71
  %end77 = getelementptr inbounds %struct.range_t, ptr %call8.i, i32 0, i32 1
  %35 = ptrtoint ptr %end77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end77, align 4
  %37 = ptrtoint ptr %num_phases to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_phases, align 4
  %sub79 = add i32 %38, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %sub79)
  %cmp80 = icmp eq i32 %36, %sub79
  br i1 %cmp80, label %if.then81, label %land.lhs.true75.for.body92.lr.ph_crit_edge

land.lhs.true75.for.body92.lr.ph_crit_edge:       ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body92.lr.ph

if.then81:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %sample_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sample_clk, align 4
  %default_sample_phase = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, ptr %3, i32 0, i32 2
  %41 = ptrtoint ptr %default_sample_phase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %default_sample_phase, align 4
  %call83 = tail call i32 @clk_set_phase(ptr noundef %40, i32 noundef %42) #7
  %dev87 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %43 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev87, align 4
  %45 = ptrtoint ptr %default_sample_phase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %default_sample_phase, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.22, i32 noundef %46) #10
  br label %free

for.body92.lr.ph:                                 ; preds = %land.lhs.true75.for.body92.lr.ph_crit_edge, %if.end71.for.body92.lr.ph_crit_edge
  %dev115 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  br label %for.body92

for.body92:                                       ; preds = %do.end134.for.body92_crit_edge, %for.body92.lr.ph
  %longest_range.0317 = phi i32 [ -1, %for.body92.lr.ph ], [ %spec.select296, %do.end134.for.body92_crit_edge ]
  %longest_range_len.0316 = phi i32 [ -1, %for.body92.lr.ph ], [ %53, %do.end134.for.body92_crit_edge ]
  %i.2315 = phi i32 [ 0, %for.body92.lr.ph ], [ %inc135, %do.end134.for.body92_crit_edge ]
  %arrayidx93 = getelementptr %struct.range_t, ptr %call8.i, i32 %i.2315
  %end94 = getelementptr %struct.range_t, ptr %call8.i, i32 %i.2315, i32 1
  %47 = ptrtoint ptr %end94 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %end94, align 4
  %49 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx93, align 8
  %sub97 = sub i32 %48, %50
  %add98 = add i32 %sub97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add98)
  %cmp99 = icmp slt i32 %add98, 0
  br i1 %cmp99, label %if.then100, label %for.body92.if.end103_crit_edge

for.body92.if.end103_crit_edge:                   ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then100:                                       ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %num_phases to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_phases, align 4
  %add102 = add i32 %52, %add98
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %for.body92.if.end103_crit_edge
  %len.0 = phi i32 [ %add102, %if.then100 ], [ %add98, %for.body92.if.end103_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %longest_range_len.0316, i32 %len.0)
  %cmp104 = icmp slt i32 %longest_range_len.0316, %len.0
  %53 = tail call i32 @llvm.smax.i32(i32 %longest_range_len.0316, i32 %len.0)
  %spec.select296 = select i1 %cmp104, i32 %i.2315, i32 %longest_range.0317
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_rk3288_execute_tuning.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_rk3288_execute_tuning, %if.then114)) #7
          to label %do.end134 [label %if.then114], !srcloc !88

if.then114:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev115, align 4
  %56 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx93, align 8
  %mul118 = mul i32 %57, 360
  %58 = ptrtoint ptr %num_phases to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_phases, align 4
  %add120 = add i32 %59, -1
  %sub121 = add i32 %add120, %mul118
  %div123 = sdiv i32 %sub121, %59
  %60 = ptrtoint ptr %end94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %end94, align 4
  %mul126 = mul i32 %61, 360
  %sub129 = add i32 %add120, %mul126
  %div131 = sdiv i32 %sub129, %59
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_rk3288_execute_tuning.__UNIQUE_ID_ddebug272, ptr noundef %55, ptr noundef nonnull @.str.25, i32 noundef %div123, i32 noundef %div131, i32 noundef %len.0) #7
  br label %do.end134

do.end134:                                        ; preds = %if.then114, %if.end103
  %inc135 = add nuw i32 %i.2315, 1
  %exitcond.not = icmp eq i32 %inc135, %range_count.2
  br i1 %exitcond.not, label %do.body137, label %do.end134.for.body92_crit_edge

do.end134.for.body92_crit_edge:                   ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body92

do.body137:                                       ; preds = %do.end134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_rk3288_execute_tuning.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_rk3288_execute_tuning, %if.then149)) #7
          to label %do.end169 [label %if.then149], !srcloc !88

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  %dev150 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %62 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev150, align 4
  %arrayidx151 = getelementptr %struct.range_t, ptr %call8.i, i32 %spec.select296
  %64 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx151, align 8
  %mul153 = mul i32 %65, 360
  %66 = ptrtoint ptr %num_phases to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_phases, align 4
  %add155 = add i32 %67, -1
  %sub156 = add i32 %add155, %mul153
  %div158 = sdiv i32 %sub156, %67
  %end160 = getelementptr %struct.range_t, ptr %call8.i, i32 %spec.select296, i32 1
  %68 = ptrtoint ptr %end160 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %end160, align 4
  %mul161 = mul i32 %69, 360
  %sub164 = add i32 %add155, %mul161
  %div166 = sdiv i32 %sub164, %67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_rk3288_execute_tuning.__UNIQUE_ID_ddebug273, ptr noundef %63, ptr noundef nonnull @.str.26, i32 noundef %div158, i32 noundef %div166, i32 noundef %53) #7
  br label %do.end169

do.end169:                                        ; preds = %if.then149, %do.body137
  %arrayidx170 = getelementptr %struct.range_t, ptr %call8.i, i32 %spec.select296
  %70 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx170, align 8
  %div172 = sdiv i32 %53, 2
  %add173 = add i32 %71, %div172
  %72 = ptrtoint ptr %num_phases to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_phases, align 4
  %rem = srem i32 %add173, %73
  %dev178 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %74 = ptrtoint ptr %dev178 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev178, align 4
  %mul179 = mul i32 %rem, 360
  %add181 = add i32 %mul179, -1
  %sub182 = add i32 %add181, %73
  %div184 = sdiv i32 %sub182, %73
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.28, i32 noundef %div184) #10
  %76 = ptrtoint ptr %sample_clk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sample_clk, align 4
  %78 = ptrtoint ptr %num_phases to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_phases, align 4
  %sub189 = add i32 %add181, %79
  %div191 = sdiv i32 %sub189, %79
  %call192 = tail call i32 @clk_set_phase(ptr noundef %77, i32 noundef %div191) #7
  br label %free

free:                                             ; preds = %do.end169, %if.then81, %do.end57
  %ret.0 = phi i32 [ -5, %do.end57 ], [ 0, %if.then81 ], [ 0, %do.end169 ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.0, %free ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_phase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_mci_runtime_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !71, !72, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_dw_mmc_rockchip__276_383_dw_mci_rockchip_pltfm_driver_init6, !1, !"__initcall__kmod_dw_mmc_rockchip__276_383_dw_mci_rockchip_pltfm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 383, i32 1}
!2 = !{ptr @__exitcall_dw_mci_rockchip_pltfm_driver_exit, !1, !"__exitcall_dw_mci_rockchip_pltfm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author277, !4, !"__UNIQUE_ID_author277", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 385, i32 1}
!5 = !{ptr @__UNIQUE_ID_description278, !6, !"__UNIQUE_ID_description278", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 386, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias279, !8, !"__UNIQUE_ID_alias279", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 387, i32 1}
!9 = !{ptr @__UNIQUE_ID_file280, !10, !"__UNIQUE_ID_file280", i1 false, i1 false}
!10 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 388, i32 1}
!11 = !{ptr @__UNIQUE_ID_license281, !10, !"__UNIQUE_ID_license281", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 376, i32 12}
!14 = !{ptr @dw_mci_rockchip_pltfm_driver, !15, !"dw_mci_rockchip_pltfm_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 372, i32 31}
!16 = !{ptr @dw_mci_rockchip_match, !17, !"dw_mci_rockchip_match", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 315, i32 34}
!18 = !{ptr @rk2928_drv_data, !19, !"rk2928_drv_data", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 303, i32 37}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 297, i32 9}
!22 = !{ptr @rk3288_drv_data, !23, !"rk3288_drv_data", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 307, i32 37}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 54, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dw_mci_rk3288_set_ios._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @dw_mci_rk3288_set_ios._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 270, i32 31}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 274, i32 31}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 278, i32 42}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 280, i32 3}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dw_mci_rk3288_parse_dt.__UNIQUE_ID_ddebug274, !39, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 282, i32 45}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 284, i32 3}
!47 = !{ptr @dw_mci_rk3288_parse_dt.__UNIQUE_ID_ddebug275, !46, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 154, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dw_mci_rk3288_execute_tuning._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @dw_mci_rk3288_execute_tuning._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 200, i32 3}
!56 = !{ptr @dw_mci_rk3288_execute_tuning._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dw_mci_rk3288_execute_tuning._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 213, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dw_mci_rk3288_execute_tuning._entry.21, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @dw_mci_rk3288_execute_tuning._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 230, i32 3}
!65 = !{ptr @dw_mci_rk3288_execute_tuning.__UNIQUE_ID_ddebug272, !64, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 239, i32 2}
!68 = !{ptr @dw_mci_rk3288_execute_tuning.__UNIQUE_ID_ddebug273, !67, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 249, i32 2}
!71 = !{ptr @dw_mci_rk3288_execute_tuning._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @dw_mci_rk3288_execute_tuning._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @dw_mci_rockchip_dev_pm_ops, !74, !"dw_mci_rockchip_dev_pm_ops", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/dw_mmc-rockchip.c", i32 364, i32 32}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148348792, i64 2148348818, i64 2148348847, i64 2148348881, i64 2148348912, i64 2148348935}
!85 = !{i64 2148348211}
!86 = !{i64 833831, i64 833856, i64 833878, i64 833894, i64 833906, i64 833926, i64 833950, i64 833966, i64 833978}
!87 = !{i64 2148348399}
!88 = !{i64 2148962169, i64 2148962174, i64 2148962187, i64 2148962231, i64 2148962265, i64 2148962286}
!89 = !{!"branch_weights", i32 1, i32 2000}
