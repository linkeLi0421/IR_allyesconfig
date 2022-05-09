; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/gr2d.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/gr2d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_drm_client_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gr2d_soc = type { i32 }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.gr2d = type { %struct.tegra_drm_client, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, [3 x i32] }
%struct.tegra_drm_client = type { %struct.host1x_client, %struct.list_head, ptr, ptr, i32, ptr }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.tegra_drm_context = type { ptr, ptr, i32, %struct.xarray }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-gr2d\00", [21 x i8] zeroinitializer }, align 32
@gr2d_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_gr2d_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_gr2d_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_gr2d_soc }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tegra_gr2d_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gr2d_runtime_suspend, ptr @gr2d_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_gr2d_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gr2d_probe, ptr @gr2d_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gr2d_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gr2d_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@gr2d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gr2d_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpu/drm/tegra/gr2d.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gr2d_probe._entry_ptr = internal global ptr @gr2d_probe._entry, section ".printk_index", align 4
@gr2d_client_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr null, ptr @gr2d_init, ptr @gr2d_exit, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gr2d_ops = internal constant { %struct.tegra_drm_client_ops, [44 x i8] } { %struct.tegra_drm_client_ops { ptr @gr2d_open_channel, ptr @gr2d_close_channel, ptr @gr2d_is_addr_reg, ptr @gr2d_is_valid_class, ptr @tegra_drm_submit }, [44 x i8] zeroinitializer }, align 32
@gr2d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gr2d_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@gr2d_probe._entry_ptr.8 = internal global ptr @gr2d_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2d\00", [29 x i8] zeroinitializer }, align 32
@gr2d_get_resets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get reset: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gr2d_get_resets\00", [16 x i8] zeroinitializer }, align 32
@gr2d_get_resets._entry_ptr = internal global ptr @gr2d_get_resets._entry, section ".printk_index", align 4
@gr2d_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 63, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request syncpoint: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gr2d_init\00", [22 x i8] zeroinitializer }, align 32
@gr2d_init._entry_ptr = internal global ptr @gr2d_init._entry, section ".printk_index", align 4
@gr2d_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 69, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to attach to domain: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@gr2d_init._entry_ptr.17 = internal global ptr @gr2d_init._entry.15, section ".printk_index", align 4
@gr2d_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 79, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register client: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@gr2d_init._entry_ptr.20 = internal global ptr @gr2d_init._entry.18, section ".printk_index", align 4
@gr2d_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gr2d_remove\00", [20 x i8] zeroinitializer }, align 32
@gr2d_remove._entry_ptr = internal global ptr @gr2d_remove._entry, section ".printk_index", align 4
@tegra114_gr2d_soc = internal constant { %struct.gr2d_soc, [28 x i8] } { %struct.gr2d_soc { i32 53 }, [28 x i8] zeroinitializer }, align 32
@tegra30_gr2d_soc = internal constant { %struct.gr2d_soc, [28 x i8] } { %struct.gr2d_soc { i32 48 }, [28 x i8] zeroinitializer }, align 32
@tegra20_gr2d_soc = internal constant { %struct.gr2d_soc, [28 x i8] } { %struct.gr2d_soc { i32 32 }, [28 x i8] zeroinitializer }, align 32
@gr2d_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to acquire MC reset: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gr2d_runtime_suspend\00", [43 x i8] zeroinitializer }, align 32
@gr2d_runtime_suspend._entry_ptr = internal global ptr @gr2d_runtime_suspend._entry, section ".printk_index", align 4
@gr2d_runtime_suspend._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to assert MC reset: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@gr2d_runtime_suspend._entry_ptr.27 = internal global ptr @gr2d_runtime_suspend._entry.25, section ".printk_index", align 4
@gr2d_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to acquire reset: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gr2d_runtime_resume\00", [44 x i8] zeroinitializer }, align 32
@gr2d_runtime_resume._entry_ptr = internal global ptr @gr2d_runtime_resume._entry, section ".printk_index", align 4
@gr2d_runtime_resume._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@gr2d_runtime_resume._entry_ptr.32 = internal global ptr @gr2d_runtime_resume._entry.30, section ".printk_index", align 4
@gr2d_runtime_resume._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to deassert reset: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@gr2d_runtime_resume._entry_ptr.35 = internal global ptr @gr2d_runtime_resume._entry.33, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 81, i64 82]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 401, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"gr2d_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 194, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"tegra_gr2d_pm\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 393, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"tegra_gr2d_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 399, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 262, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"gr2d_client_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 121, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"gr2d_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 174, i32 42 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 285, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 287, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 223, i32 28 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 224, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 230, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 63, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 69, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 79, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 305, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"tegra114_gr2d_soc\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 190, i32 30 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"tegra30_gr2d_soc\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 186, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"tegra20_gr2d_soc\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 182, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 335, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 342, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 364, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 370, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [32 x i8] c"../drivers/gpu/drm/tegra/gr2d.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 379, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @gr2d_get_resets._entry, ptr @gr2d_get_resets._entry_ptr, ptr @gr2d_init._entry, ptr @gr2d_init._entry.15, ptr @gr2d_init._entry.18, ptr @gr2d_init._entry_ptr, ptr @gr2d_init._entry_ptr.17, ptr @gr2d_init._entry_ptr.20, ptr @gr2d_probe._entry, ptr @gr2d_probe._entry.6, ptr @gr2d_probe._entry_ptr, ptr @gr2d_probe._entry_ptr.8, ptr @gr2d_remove._entry, ptr @gr2d_remove._entry_ptr, ptr @gr2d_runtime_resume._entry, ptr @gr2d_runtime_resume._entry.30, ptr @gr2d_runtime_resume._entry.33, ptr @gr2d_runtime_resume._entry_ptr, ptr @gr2d_runtime_resume._entry_ptr.32, ptr @gr2d_runtime_resume._entry_ptr.35, ptr @gr2d_runtime_suspend._entry, ptr @gr2d_runtime_suspend._entry.25, ptr @gr2d_runtime_suspend._entry_ptr, ptr @gr2d_runtime_suspend._entry_ptr.27, ptr @.str, ptr @gr2d_match, ptr @tegra_gr2d_pm, ptr @tegra_gr2d_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gr2d_client_ops, ptr @gr2d_ops, ptr @gr2d_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @tegra114_gr2d_soc, ptr @tegra30_gr2d_soc, ptr @tegra20_gr2d_soc, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gr2d_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gr2d_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_get_resets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_gr2d_soc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_gr2d_soc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_gr2d_soc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_runtime_suspend._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_runtime_resume._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr2d_runtime_resume._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr2d_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 308, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %soc = getelementptr inbounds %struct.gr2d, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %soc, align 4
  %call.i93 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i93, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.gr2d, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %resets.i = getelementptr inbounds %struct.gr2d, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %resets.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.9, ptr %resets.i, align 4
  %arrayidx2.i = getelementptr %struct.gr2d, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.10, ptr %arrayidx2.i, align 4
  %nresets.i = getelementptr inbounds %struct.gr2d, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %nresets.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %nresets.i, align 4
  %call.i.i = tail call i32 @__devm_reset_control_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %resets.i, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call.i.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  %rstc.i = getelementptr %struct.gr2d, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %9 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rstc.i, align 4
  %tobool8.not.i = icmp eq ptr %10, null
  br i1 %tobool8.not.i, label %do.end21.i, label %if.end17, !prof !92

do.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 234, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gr2d_client_ops, ptr %ops, align 4
  %dev22 = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev1, ptr %dev22, align 4
  %class = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 81, ptr %class, align 4
  %syncpts27 = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %syncpts27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i93, ptr %syncpts27, align 4
  %num_syncpts = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %num_syncpts to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %num_syncpts, align 4
  %list31 = getelementptr inbounds %struct.tegra_drm_client, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %list31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list31, ptr %list31, align 4
  %prev.i94 = getelementptr inbounds %struct.tegra_drm_client, ptr %call.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i94 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list31, ptr %prev.i94, align 4
  %20 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %version34 = getelementptr inbounds %struct.tegra_drm_client, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %version34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %version34, align 4
  %ops36 = getelementptr inbounds %struct.tegra_drm_client, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %ops36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gr2d_ops, ptr %ops36, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #6
  %26 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %opp_params.i, align 1
  %call.i95 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev1, ptr noundef nonnull %opp_params.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i95)
  %cmp.not.i = icmp eq i32 %call.i95, -19
  %.call.i = select i1 %cmp.not.i, i32 0, i32 %call.i95
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool38.not = icmp eq i32 %.call.i, 0
  br i1 %tobool38.not, label %if.end40, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end17
  call void @__host1x_client_init(ptr noundef nonnull %call.i, ptr noundef nonnull @gr2d_probe.__key) #6
  %call45 = call i32 @__host1x_client_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp = icmp slt i32 %call45, 0
  br i1 %cmp, label %do.end49, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %addr_regs = getelementptr inbounds %struct.gr2d, ptr %call.i, i32 0, i32 6
  call void @_set_bit(i32 noundef 26, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 27, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 38, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 43, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 44, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 45, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 49, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 50, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 71, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 72, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 73, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 74, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 75, ptr noundef %addr_regs) #6
  call void @_set_bit(i32 noundef 76, ptr noundef %addr_regs) #6
  br label %cleanup

do.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call45) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %for.cond.preheader, %if.end17.cleanup_crit_edge, %do.end21.i, %do.end.i, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %call45, %do.end49 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %.call.i, %if.end17.cleanup_crit_edge ], [ -2, %do.end21.i ], [ %call.i.i, %do.end.i ], [ 0, %for.cond.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr2d_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @host1x_client_unregister(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_reset_control_bulk_get(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr2d_init(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call ptr @host1x_channel_request(ptr noundef %client) #6
  %channel = getelementptr inbounds %struct.gr2d, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %channel, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @host1x_syncpt_request(ptr noundef %client, i32 noundef 2) #6
  %syncpts = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 7
  %5 = ptrtoint ptr %syncpts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %syncpts, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %6, align 4
  %8 = load ptr, ptr %syncpts, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %11 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13, i32 noundef -12) #9
  br label %put

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @host1x_client_iommu_attach(ptr noundef %client) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  %dev17 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %13 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev17, align 4
  br i1 %cmp, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.16, i32 noundef %call12) #9
  br label %free

if.end18:                                         ; preds = %if.end11
  tail call void @pm_runtime_enable(ptr noundef %14) #6
  %15 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev17, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %16, i1 noundef zeroext true) #6
  %17 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev17, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %18, i32 noundef 200) #6
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private, align 4
  %call22 = tail call i32 @tegra_drm_register_client(ptr noundef %20, ptr noundef %client) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.19, i32 noundef %call22) #9
  %23 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev17, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %24, i1 noundef zeroext false) #6
  %25 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev17, align 4
  %call32 = tail call i32 @pm_runtime_force_suspend(ptr noundef %26) #6
  tail call void @host1x_client_iommu_detach(ptr noundef %client) #6
  br label %free

free:                                             ; preds = %do.end27, %do.end16
  %err.0 = phi i32 [ %call12, %do.end16 ], [ %call22, %do.end27 ]
  %27 = ptrtoint ptr %syncpts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %syncpts, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  tail call void @host1x_syncpt_put(ptr noundef %30) #6
  br label %put

put:                                              ; preds = %free, %if.then9
  %err.1 = phi i32 [ %err.0, %free ], [ -12, %if.then9 ]
  %31 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %channel, align 4
  tail call void @host1x_channel_put(ptr noundef %32) #6
  br label %cleanup

cleanup:                                          ; preds = %put, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %put ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr2d_exit(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %call3 = tail call i32 @tegra_drm_unregister_client(ptr noundef %5, ptr noundef %client) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %7, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %call6 = tail call i32 @pm_runtime_force_suspend(ptr noundef %9) #6
  tail call void @host1x_client_iommu_detach(ptr noundef %client) #6
  %syncpts = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 7
  %10 = ptrtoint ptr %syncpts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %syncpts, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void @host1x_syncpt_put(ptr noundef %13) #6
  %channel = getelementptr inbounds %struct.gr2d, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel, align 4
  tail call void @host1x_channel_put(ptr noundef %15) #6
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %channel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_iommu_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_register_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_client_iommu_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_unregister_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr2d_open_channel(ptr nocapture noundef readonly %client, ptr nocapture noundef writeonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.gr2d, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  %call1 = tail call ptr @host1x_channel_get(ptr noundef %1) #6
  %channel2 = getelementptr inbounds %struct.tegra_drm_context, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %channel2, align 4
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gr2d_close_channel(ptr nocapture noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.tegra_drm_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  tail call void @host1x_channel_put(ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gr2d_is_addr_reg(ptr nocapture noundef readonly %dev, i32 noundef %class, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %class to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %class, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 81, label %entry.sw.bb1_crit_edge
    i32 82, label %entry.sw.bb1_crit_edge10
  ]

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %offset)
  %cmp = icmp eq i32 %offset, 43
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge10
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %offset)
  %cmp2 = icmp ugt i32 %offset, 76
  br i1 %cmp2, label %sw.bb1.sw.epilog_crit_edge, label %if.end4

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end4:                                          ; preds = %sw.bb1
  %addr_regs = getelementptr inbounds %struct.gr2d, ptr %1, i32 0, i32 6
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %addr_regs, i32 %div3.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %5 = shl nuw i32 1, %and.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end4.sw.epilog_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end4.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gr2d_is_valid_class(i32 noundef %class) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %class, -81
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_submit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr2d_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channel = getelementptr inbounds %struct.gr2d, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  tail call void @host1x_channel_stop(ptr noundef %3) #6
  %nresets = getelementptr inbounds %struct.gr2d, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nresets, align 4
  %resets = getelementptr inbounds %struct.gr2d, ptr %1, i32 0, i32 3
  tail call void @reset_control_bulk_release(i32 noundef %5, ptr noundef %resets) #6
  %rstc = getelementptr inbounds %struct.gr2d, ptr %1, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rstc, align 4
  %call2 = tail call i32 @reset_control_acquire(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call2) #9
  br label %acquire_reset

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rstc, align 4
  %call6 = tail call i32 @reset_control_assert(ptr noundef %9) #6
  %10 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rstc, align 4
  tail call void @reset_control_release(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool10.not = icmp eq i32 %call6, 0
  br i1 %tobool10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call6) #9
  br label %acquire_reset

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.gr2d, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %cleanup

acquire_reset:                                    ; preds = %do.end14, %do.end
  %err.0 = phi i32 [ %call2, %do.end ], [ %call6, %do.end14 ]
  %14 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nresets, align 4
  %call19 = tail call i32 @reset_control_bulk_acquire(i32 noundef %15, ptr noundef %resets) #6
  %16 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nresets, align 4
  %call23 = tail call i32 @reset_control_bulk_deassert(i32 noundef %17, ptr noundef %resets) #6
  br label %cleanup

cleanup:                                          ; preds = %acquire_reset, %if.end15
  %retval.0 = phi i32 [ %err.0, %acquire_reset ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr2d_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nresets = getelementptr inbounds %struct.gr2d, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nresets, align 4
  %resets = getelementptr inbounds %struct.gr2d, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @reset_control_bulk_acquire(i32 noundef %3, ptr noundef %resets) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.gr2d, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i, %if.end.do.end7_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i.ph) #9
  br label %release_reset

if.end8:                                          ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #6
  %6 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nresets, align 4
  %call12 = tail call i32 @reset_control_bulk_deassert(i32 noundef %7, ptr noundef %resets) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end8.cleanup_crit_edge, label %do.end17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call12) #9
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %release_reset

release_reset:                                    ; preds = %do.end17, %do.end7
  %err.0 = phi i32 [ %retval.0.i.ph, %do.end7 ], [ %call12, %do.end17 ]
  %10 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nresets, align 4
  tail call void @reset_control_bulk_release(i32 noundef %11, ptr noundef %resets) #6
  br label %cleanup

cleanup:                                          ; preds = %release_reset, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %err.0, %release_reset ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_bulk_release(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_acquire(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_deassert(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 401, i32 11}
!2 = !{ptr @tegra_gr2d_driver, !3, !"tegra_gr2d_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 399, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 262, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @gr2d_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @gr2d_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @gr2d_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 285, i32 8}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 287, i32 3}
!16 = !{ptr @gr2d_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @gr2d_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 223, i32 28}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 224, i32 30}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 230, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gr2d_get_resets._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @gr2d_get_resets._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @gr2d_client_ops, !28, !"gr2d_client_ops", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 121, i32 39}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 63, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gr2d_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @gr2d_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 69, i32 3}
!36 = !{ptr @gr2d_init._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @gr2d_init._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 79, i32 3}
!40 = !{ptr @gr2d_init._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @gr2d_init._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @gr2d_ops, !43, !"gr2d_ops", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 174, i32 42}
!44 = distinct !{null, !45, !"gr2d_addr_regs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 202, i32 18}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 305, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @gr2d_remove._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @gr2d_remove._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @gr2d_match, !52, !"gr2d_match", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 194, i32 34}
!53 = !{ptr @tegra114_gr2d_soc, !54, !"tegra114_gr2d_soc", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 190, i32 30}
!55 = !{ptr @tegra30_gr2d_soc, !56, !"tegra30_gr2d_soc", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 186, i32 30}
!57 = !{ptr @tegra20_gr2d_soc, !58, !"tegra20_gr2d_soc", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 182, i32 30}
!59 = !{ptr @tegra_gr2d_pm, !60, !"tegra_gr2d_pm", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 393, i32 32}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 335, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gr2d_runtime_suspend._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @gr2d_runtime_suspend._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 342, i32 3}
!68 = !{ptr @gr2d_runtime_suspend._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @gr2d_runtime_suspend._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 364, i32 3}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @gr2d_runtime_resume._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @gr2d_runtime_resume._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 370, i32 3}
!77 = !{ptr @gr2d_runtime_resume._entry.30, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @gr2d_runtime_resume._entry_ptr.32, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/tegra/gr2d.c", i32 379, i32 3}
!81 = !{ptr @gr2d_runtime_resume._entry.33, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @gr2d_runtime_resume._entry_ptr.35, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 1, i32 2000}
