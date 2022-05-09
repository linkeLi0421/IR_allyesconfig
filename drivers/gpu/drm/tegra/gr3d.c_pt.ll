; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/gr3d.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/gr3d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_drm_client_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gr3d_soc = type { i32, i32, i32 }
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
%struct.gr3d = type { %struct.tegra_drm_client, ptr, ptr, ptr, i32, [4 x %struct.reset_control_bulk_data], i32, [117 x i32] }
%struct.tegra_drm_client = type { %struct.host1x_client, %struct.list_head, ptr, ptr, i32, ptr }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
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

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-gr3d\00", [21 x i8] zeroinitializer }, align 32
@tegra_gr3d_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_gr3d_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_gr3d_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_gr3d_soc }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tegra_gr3d_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gr3d_runtime_suspend, ptr @gr3d_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_gr3d_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gr3d_probe, ptr @gr3d_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_gr3d_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gr3d_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@gr3d_client_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr null, ptr @gr3d_init, ptr @gr3d_exit, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gr3d_ops = internal constant { %struct.tegra_drm_client_ops, [44 x i8] } { %struct.tegra_drm_client_ops { ptr @gr3d_open_channel, ptr @gr3d_close_channel, ptr @gr3d_is_addr_reg, ptr null, ptr @tegra_drm_submit }, [44 x i8] zeroinitializer }, align 32
@gr3d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gr3d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gr3d_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpu/drm/tegra/gr3d.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gr3d_probe._entry_ptr = internal global ptr @gr3d_probe._entry, section ".printk_index", align 4
@gr3d_addr_regs = internal constant { [102 x i32], [104 x i8] } { [102 x i32] [i32 256, i32 258, i32 260, i32 262, i32 264, i32 266, i32 268, i32 270, i32 272, i32 274, i32 276, i32 278, i32 280, i32 282, i32 284, i32 286, i32 289, i32 1045, i32 1047, i32 1049, i32 1808, i32 1809, i32 1810, i32 1811, i32 1812, i32 1813, i32 1814, i32 1815, i32 1816, i32 1817, i32 1818, i32 1819, i32 1820, i32 1821, i32 1822, i32 1823, i32 2308, i32 3584, i32 3585, i32 3586, i32 3587, i32 3588, i32 3589, i32 3590, i32 3591, i32 3592, i32 3593, i32 3594, i32 3595, i32 3596, i32 3597, i32 3598, i32 3599, i32 3626, i32 3632, i32 3633, i32 3634, i32 3635, i32 3636, i32 3637, i32 3638, i32 3639, i32 3640, i32 3641, i32 3642, i32 3643, i32 3644, i32 3645, i32 3646, i32 3647, i32 3664, i32 3665, i32 3666, i32 3667, i32 3668, i32 3669, i32 3670, i32 3671, i32 3672, i32 3673, i32 3674, i32 3675, i32 3676, i32 3677, i32 3678, i32 3679, i32 3680, i32 3681, i32 3682, i32 3683, i32 3684, i32 3685, i32 3686, i32 3687, i32 3688, i32 3689, i32 3690, i32 3691, i32 3692, i32 3693, i32 3694, i32 3695], [104 x i8] zeroinitializer }, align 32
@gr3d_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gr3d_get_clocks\00", [16 x i8] zeroinitializer }, align 32
@gr3d_get_clocks._entry_ptr = internal global ptr @gr3d_get_clocks._entry, section ".printk_index", align 4
@gr3d_get_clocks._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 462, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid number of clocks: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@gr3d_get_clocks._entry_ptr.10 = internal global ptr @gr3d_get_clocks._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mc2\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3d\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3d2\00", [28 x i8] zeroinitializer }, align 32
@gr3d_get_resets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get reset: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gr3d_get_resets\00", [16 x i8] zeroinitializer }, align 32
@gr3d_get_resets._entry_ptr = internal global ptr @gr3d_get_resets._entry, section ".printk_index", align 4
@gr3d_init_power.opp_genpd_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.17, ptr @.str.18, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3d0\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3d1\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#power-domain-cells\00", [44 x i8] zeroinitializer }, align 32
@gr3d_init_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get %s power domain\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gr3d_init_power\00", [16 x i8] zeroinitializer }, align 32
@gr3d_init_power._entry_ptr = internal global ptr @gr3d_init_power._entry, section ".printk_index", align 4
@gr3d_init_power._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to link to %s\0A\00", [42 x i8] zeroinitializer }, align 32
@gr3d_init_power._entry_ptr.25 = internal global ptr @gr3d_init_power._entry.23, section ".printk_index", align 4
@gr3d_power_up_legacy_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 360, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to acquire %s reset: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gr3d_power_up_legacy_domain\00", [36 x i8] zeroinitializer }, align 32
@gr3d_power_up_legacy_domain._entry_ptr = internal global ptr @gr3d_power_up_legacy_domain._entry, section ".printk_index", align 4
@gr3d_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 73, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request syncpoint: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gr3d_init\00", [22 x i8] zeroinitializer }, align 32
@gr3d_init._entry_ptr = internal global ptr @gr3d_init._entry, section ".printk_index", align 4
@gr3d_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 79, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to attach to domain: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@gr3d_init._entry_ptr.32 = internal global ptr @gr3d_init._entry.30, section ".printk_index", align 4
@gr3d_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register client: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@gr3d_init._entry_ptr.35 = internal global ptr @gr3d_init._entry.33, section ".printk_index", align 4
@gr3d_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gr3d_remove\00", [20 x i8] zeroinitializer }, align 32
@gr3d_remove._entry_ptr = internal global ptr @gr3d_remove._entry, section ".printk_index", align 4
@tegra114_gr3d_soc = internal constant { %struct.gr3d_soc, [20 x i8] } { %struct.gr3d_soc { i32 53, i32 1, i32 2 }, [20 x i8] zeroinitializer }, align 32
@tegra30_gr3d_soc = internal constant { %struct.gr3d_soc, [20 x i8] } { %struct.gr3d_soc { i32 48, i32 2, i32 4 }, [20 x i8] zeroinitializer }, align 32
@tegra20_gr3d_soc = internal constant { %struct.gr3d_soc, [20 x i8] } { %struct.gr3d_soc { i32 32, i32 1, i32 2 }, [20 x i8] zeroinitializer }, align 32
@gr3d_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to assert reset: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gr3d_runtime_suspend\00", [43 x i8] zeroinitializer }, align 32
@gr3d_runtime_suspend._entry_ptr = internal global ptr @gr3d_runtime_suspend._entry, section ".printk_index", align 4
@gr3d_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to acquire reset: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gr3d_runtime_resume\00", [44 x i8] zeroinitializer }, align 32
@gr3d_runtime_resume._entry_ptr = internal global ptr @gr3d_runtime_resume._entry, section ".printk_index", align 4
@gr3d_runtime_resume._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@gr3d_runtime_resume._entry_ptr.44 = internal global ptr @gr3d_runtime_resume._entry.42, section ".printk_index", align 4
@gr3d_runtime_resume._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to deassert reset: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@gr3d_runtime_resume._entry_ptr.47 = internal global ptr @gr3d_runtime_resume._entry.45, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 96]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 636, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"tegra_gr3d_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 201, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"tegra_gr3d_pm\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 628, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"tegra_gr3d_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 634, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"gr3d_client_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 130, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant [9 x i8] c"gr3d_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 176, i32 42 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 539, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 541, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"gr3d_addr_regs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 209, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 456, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 462, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 473, i32 28 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 474, i32 29 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 475, i32 30 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 476, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 482, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"opp_genpd_names\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 386, i32 28 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 386, i32 50 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 386, i32 57 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 393, i32 49 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 394, i32 7 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 431, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 438, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 360, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 73, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 79, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 89, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 560, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [18 x i8] c"tegra114_gr3d_soc\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 195, i32 30 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"tegra30_gr3d_soc\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 189, i32 30 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"tegra20_gr3d_soc\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 183, i32 30 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 577, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 602, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 608, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [32 x i8] c"../drivers/gpu/drm/tegra/gr3d.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 614, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @gr3d_get_clocks._entry, ptr @gr3d_get_clocks._entry.8, ptr @gr3d_get_clocks._entry_ptr, ptr @gr3d_get_clocks._entry_ptr.10, ptr @gr3d_get_resets._entry, ptr @gr3d_get_resets._entry_ptr, ptr @gr3d_init._entry, ptr @gr3d_init._entry.30, ptr @gr3d_init._entry.33, ptr @gr3d_init._entry_ptr, ptr @gr3d_init._entry_ptr.32, ptr @gr3d_init._entry_ptr.35, ptr @gr3d_init_power._entry, ptr @gr3d_init_power._entry.23, ptr @gr3d_init_power._entry_ptr, ptr @gr3d_init_power._entry_ptr.25, ptr @gr3d_power_up_legacy_domain._entry, ptr @gr3d_power_up_legacy_domain._entry_ptr, ptr @gr3d_probe._entry, ptr @gr3d_probe._entry_ptr, ptr @gr3d_remove._entry, ptr @gr3d_remove._entry_ptr, ptr @gr3d_runtime_resume._entry, ptr @gr3d_runtime_resume._entry.42, ptr @gr3d_runtime_resume._entry.45, ptr @gr3d_runtime_resume._entry_ptr, ptr @gr3d_runtime_resume._entry_ptr.44, ptr @gr3d_runtime_resume._entry_ptr.47, ptr @gr3d_runtime_suspend._entry, ptr @gr3d_runtime_suspend._entry_ptr, ptr @.str, ptr @tegra_gr3d_match, ptr @tegra_gr3d_pm, ptr @tegra_gr3d_driver, ptr @gr3d_client_ops, ptr @gr3d_ops, ptr @gr3d_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gr3d_addr_regs, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @gr3d_init_power.opp_genpd_names, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @tegra114_gr3d_soc, ptr @tegra30_gr3d_soc, ptr @tegra20_gr3d_soc, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gr3d_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gr3d_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gr3d_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_addr_regs to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_get_clocks._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_get_resets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_init_power.opp_genpd_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_init_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_init_power._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_power_up_legacy_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_gr3d_soc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_gr3d_soc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_gr3d_soc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_runtime_resume._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gr3d_runtime_resume._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr3d_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  %opp_virt_devs.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 784, i32 noundef 3520) #6
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
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %soc = getelementptr inbounds %struct.gr3d, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %soc, align 4
  %call.i100 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i100, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %clocks.i = getelementptr inbounds %struct.gr3d, ptr %call.i, i32 0, i32 3
  %call.i101 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %dev, ptr noundef %clocks.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp.i = icmp slt i32 %call.i101, 0
  br i1 %cmp.i, label %if.end7.gr3d_get_clocks.exit_crit_edge, label %if.end.i

if.end7.gr3d_get_clocks.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %gr3d_get_clocks.exit

if.end.i:                                         ; preds = %if.end7
  %nclocks.i = getelementptr inbounds %struct.gr3d, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i101, ptr %nclocks.i, align 4
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc, align 4
  %num_clocks.i = getelementptr inbounds %struct.gr3d_soc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_clocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i101, i32 %6)
  %cmp2.not.i = icmp eq i32 %call.i101, %6
  br i1 %cmp2.not.i, label %if.end12, label %if.end.i.gr3d_get_clocks.exit_crit_edge

if.end.i.gr3d_get_clocks.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gr3d_get_clocks.exit

gr3d_get_clocks.exit:                             ; preds = %if.end.i.gr3d_get_clocks.exit_crit_edge, %if.end7.gr3d_get_clocks.exit_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.6, %if.end7.gr3d_get_clocks.exit_crit_edge ], [ @.str.9, %if.end.i.gr3d_get_clocks.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i101, %if.end7.gr3d_get_clocks.exit_crit_edge ], [ -2, %if.end.i.gr3d_get_clocks.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.9.sink.i, i32 noundef %call.i101) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end.i
  %resets.i = getelementptr inbounds %struct.gr3d, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %resets.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.11, ptr %resets.i, align 4
  %arrayidx2.i = getelementptr %struct.gr3d, ptr %call.i, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.12, ptr %arrayidx2.i, align 4
  %arrayidx5.i = getelementptr %struct.gr3d, ptr %call.i, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.13, ptr %arrayidx5.i, align 4
  %arrayidx8.i = getelementptr %struct.gr3d, ptr %call.i, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.14, ptr %arrayidx8.i, align 4
  %11 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc, align 4
  %num_resets.i = getelementptr inbounds %struct.gr3d_soc, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_resets.i, align 4
  %nresets.i = getelementptr inbounds %struct.gr3d, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %nresets.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nresets.i, align 4
  %call.i.i = tail call i32 @__devm_reset_control_bulk_get(ptr noundef %dev, i32 noundef %14, ptr noundef %resets.i, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i103, label %do.end.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call.i.i) #9
  br label %cleanup

if.end.i103:                                      ; preds = %if.end12
  %rstc.i = getelementptr %struct.gr3d, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %16 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rstc.i, align 4
  %tobool14.not.i = icmp eq ptr %17, null
  br i1 %tobool14.not.i, label %do.end27.i, label %lor.lhs.false.critedge.i, !prof !121

do.end27.i:                                       ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 486, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

lor.lhs.false.critedge.i:                         ; preds = %if.end.i103
  %rstc44.i = getelementptr %struct.gr3d, ptr %call.i, i32 0, i32 5, i32 3, i32 1
  %18 = ptrtoint ptr %rstc44.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rstc44.i, align 4
  %tobool45.not.i = icmp eq ptr %19, null
  br i1 %tobool45.not.i, label %land.rhs.i, label %lor.lhs.false.critedge.i.if.end17_crit_edge

lor.lhs.false.critedge.i.if.end17_crit_edge:      ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.rhs.i:                                       ; preds = %lor.lhs.false.critedge.i
  %20 = ptrtoint ptr %nresets.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nresets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp.i104 = icmp eq i32 %21, 4
  br i1 %cmp.i104, label %do.end62.i, label %land.rhs.i.if.end17_crit_edge, !prof !121

land.rhs.i.if.end17_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end62.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 487, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end17:                                         ; preds = %land.rhs.i.if.end17_crit_edge, %lor.lhs.false.critedge.i.if.end17_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opp_virt_devs.i) #6
  %22 = ptrtoint ptr %opp_virt_devs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %opp_virt_devs.i, align 4, !annotation !122
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call.i106 = tail call i32 @of_count_phandle_with_args(ptr noundef %24, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp.i107 = icmp slt i32 %call.i106, 0
  br i1 %cmp.i107, label %if.then.i, label %if.end10.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i106)
  %cmp1.not.i = icmp eq i32 %call.i106, -2
  br i1 %cmp1.not.i, label %if.end.i109, label %if.then.i.gr3d_init_power.exit.thread_crit_edge

if.then.i.gr3d_init_power.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gr3d_init_power.exit.thread

if.end.i109:                                      ; preds = %if.then.i
  %call3.i = tail call fastcc i32 @gr3d_power_up_legacy_domain(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i108 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i108, label %gr3d_init_power.exit, label %if.end.i109.gr3d_init_power.exit.thread_crit_edge

if.end.i109.gr3d_init_power.exit.thread_crit_edge: ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %gr3d_init_power.exit.thread

if.end10.i:                                       ; preds = %if.end17
  %pm_domain.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 13
  %25 = ptrtoint ptr %pm_domain.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pm_domain.i, align 8
  %tobool11.not.i = icmp eq ptr %26, null
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end10.i.gr3d_init_power.exit.thread122_crit_edge

if.end10.i.gr3d_init_power.exit.thread122_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gr3d_init_power.exit.thread122

if.end13.i:                                       ; preds = %if.end10.i
  %call14.i = call i32 @devm_pm_opp_attach_genpd(ptr noundef %dev, ptr noundef nonnull @gr3d_init_power.opp_genpd_names, ptr noundef nonnull %opp_virt_devs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.body.preheader.i, label %if.end13.i.gr3d_init_power.exit.thread_crit_edge

if.end13.i.gr3d_init_power.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gr3d_init_power.exit.thread

for.body.preheader.i:                             ; preds = %if.end13.i
  %27 = ptrtoint ptr %opp_virt_devs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %opp_virt_devs.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool20.not.i = icmp eq ptr %30, null
  br i1 %tobool20.not.i, label %for.body.preheader.i.do.end.i110_crit_edge, label %if.end23.i

for.body.preheader.i.do.end.i110_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i110

do.end.i110:                                      ; preds = %for.inc.i.do.end.i110_crit_edge, %for.body.preheader.i.do.end.i110_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %for.body.preheader.i.do.end.i110_crit_edge ], [ 1, %for.inc.i.do.end.i110_crit_edge ]
  %arrayidx.le.i = getelementptr [3 x ptr], ptr @gr3d_init_power.opp_genpd_names, i32 0, i32 %i.010.lcssa.i
  %31 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.le.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %32) #9
  br label %gr3d_init_power.exit.thread

if.end23.i:                                       ; preds = %for.body.preheader.i
  %call24.i = call ptr @device_link_add(ptr noundef %dev, ptr noundef nonnull %30, i32 noundef 5) #6
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end23.i.do.end29.i_crit_edge, label %if.end31.i

if.end23.i.do.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.1.i.do.end29.i_crit_edge, %if.end23.i.do.end29.i_crit_edge
  %.lcssa11.i = phi ptr [ %30, %if.end23.i.do.end29.i_crit_edge ], [ %40, %if.end23.1.i.do.end29.i_crit_edge ]
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %.lcssa11.i, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end29.i.dev_name.exit.i_crit_edge

do.end29.i.dev_name.exit.i_crit_edge:             ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %.lcssa11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.lcssa11.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end29.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.end.i.i ], [ %34, %do.end29.i.dev_name.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %retval.0.i.i) #9
  br label %gr3d_init_power.exit.thread

if.end31.i:                                       ; preds = %if.end23.i
  %call.i.i111 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @gr3d_del_link, ptr noundef nonnull %call24.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i111)
  %tobool.not.i1.i = icmp eq i32 %call.i.i111, 0
  br i1 %tobool.not.i1.i, label %for.inc.i, label %if.end31.i.devm_add_action_or_reset.exit.i_crit_edge

if.end31.i.devm_add_action_or_reset.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end31.1.i.devm_add_action_or_reset.exit.i_crit_edge, %if.end31.i.devm_add_action_or_reset.exit.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i111, %if.end31.i.devm_add_action_or_reset.exit.i_crit_edge ], [ %call.i.1.i, %if.end31.1.i.devm_add_action_or_reset.exit.i_crit_edge ]
  %call24.lcssa17.i = phi ptr [ %call24.i, %if.end31.i.devm_add_action_or_reset.exit.i_crit_edge ], [ %call24.1.i, %if.end31.1.i.devm_add_action_or_reset.exit.i_crit_edge ]
  call void @device_link_del(ptr noundef nonnull %call24.lcssa17.i) #6
  br label %gr3d_init_power.exit.thread

for.inc.i:                                        ; preds = %if.end31.i
  %37 = ptrtoint ptr %opp_virt_devs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %opp_virt_devs.i, align 4
  %arrayidx19.1.i = getelementptr ptr, ptr %38, i32 1
  %39 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx19.1.i, align 4
  %tobool20.not.1.i = icmp eq ptr %40, null
  br i1 %tobool20.not.1.i, label %for.inc.i.do.end.i110_crit_edge, label %if.end23.1.i

for.inc.i.do.end.i110_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i110

if.end23.1.i:                                     ; preds = %for.inc.i
  %call24.1.i = call ptr @device_link_add(ptr noundef %dev, ptr noundef nonnull %40, i32 noundef 5) #6
  %tobool25.not.1.i = icmp eq ptr %call24.1.i, null
  br i1 %tobool25.not.1.i, label %if.end23.1.i.do.end29.i_crit_edge, label %if.end31.1.i

if.end23.1.i.do.end29.i_crit_edge:                ; preds = %if.end23.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i

if.end31.1.i:                                     ; preds = %if.end23.1.i
  %call.i.1.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @gr3d_del_link, ptr noundef nonnull %call24.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i1.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i1.1.i, label %if.end31.1.i.gr3d_init_power.exit.thread122_crit_edge, label %if.end31.1.i.devm_add_action_or_reset.exit.i_crit_edge

if.end31.1.i.devm_add_action_or_reset.exit.i_crit_edge: ; preds = %if.end31.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_add_action_or_reset.exit.i

if.end31.1.i.gr3d_init_power.exit.thread122_crit_edge: ; preds = %if.end31.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gr3d_init_power.exit.thread122

gr3d_init_power.exit.thread:                      ; preds = %devm_add_action_or_reset.exit.i, %dev_name.exit.i, %do.end.i110, %if.end13.i.gr3d_init_power.exit.thread_crit_edge, %if.end.i109.gr3d_init_power.exit.thread_crit_edge, %if.then.i.gr3d_init_power.exit.thread_crit_edge
  %retval.0.i112.ph = phi i32 [ %call.i.lcssa.i, %devm_add_action_or_reset.exit.i ], [ %call14.i, %if.end13.i.gr3d_init_power.exit.thread_crit_edge ], [ %call3.i, %if.end.i109.gr3d_init_power.exit.thread_crit_edge ], [ %call.i106, %if.then.i.gr3d_init_power.exit.thread_crit_edge ], [ -22, %do.end.i110 ], [ -22, %dev_name.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opp_virt_devs.i) #6
  br label %cleanup

gr3d_init_power.exit.thread122:                   ; preds = %if.end31.1.i.gr3d_init_power.exit.thread122_crit_edge, %if.end10.i.gr3d_init_power.exit.thread122_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opp_virt_devs.i) #6
  br label %if.end22

gr3d_init_power.exit:                             ; preds = %if.end.i109
  %call6.i = tail call fastcc i32 @gr3d_power_up_legacy_domain(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opp_virt_devs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool20.not = icmp eq i32 %call6.i, 0
  br i1 %tobool20.not, label %gr3d_init_power.exit.if.end22_crit_edge, label %gr3d_init_power.exit.cleanup_crit_edge

gr3d_init_power.exit.cleanup_crit_edge:           ; preds = %gr3d_init_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

gr3d_init_power.exit.if.end22_crit_edge:          ; preds = %gr3d_init_power.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %gr3d_init_power.exit.if.end22_crit_edge, %gr3d_init_power.exit.thread122
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @gr3d_client_ops, ptr %ops, align 4
  %dev28 = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %dev28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev, ptr %dev28, align 4
  %class = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 96, ptr %class, align 4
  %syncpts33 = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %syncpts33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i100, ptr %syncpts33, align 4
  %num_syncpts = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 8
  %47 = ptrtoint ptr %num_syncpts to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %num_syncpts, align 4
  %list37 = getelementptr inbounds %struct.tegra_drm_client, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %list37 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list37, ptr %list37, align 4
  %prev.i113 = getelementptr inbounds %struct.tegra_drm_client, ptr %call.i, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %list37, ptr %prev.i113, align 4
  %50 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %soc, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %version40 = getelementptr inbounds %struct.tegra_drm_client, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %version40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %version40, align 4
  %ops42 = getelementptr inbounds %struct.tegra_drm_client, ptr %call.i, i32 0, i32 5
  %55 = ptrtoint ptr %ops42 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @gr3d_ops, ptr %ops42, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #6
  %56 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %opp_params.i, align 1
  %call.i114 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev, ptr noundef nonnull %opp_params.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i114)
  %cmp.not.i = icmp eq i32 %call.i114, -19
  %.call.i = select i1 %cmp.not.i, i32 0, i32 %call.i114
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool45.not = icmp eq i32 %.call.i, 0
  br i1 %tobool45.not, label %if.end47, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end22
  call void @__host1x_client_init(ptr noundef nonnull %call.i, ptr noundef nonnull @gr3d_probe.__key) #6
  %call52 = call i32 @__host1x_client_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp = icmp slt i32 %call52, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end47
  %addr_regs = getelementptr inbounds %struct.gr3d, ptr %call.i, i32 0, i32 7
  br label %for.body

do.end:                                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call52) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0125 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [102 x i32], ptr @gr3d_addr_regs, i32 0, i32 %i.0125
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  call void @_set_bit(i32 noundef %58, ptr noundef %addr_regs) #6
  %inc = add nuw nsw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, 102
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end, %if.end22.cleanup_crit_edge, %gr3d_init_power.exit.cleanup_crit_edge, %gr3d_init_power.exit.thread, %do.end62.i, %do.end27.i, %do.end.i, %gr3d_get_clocks.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph.i, %gr3d_get_clocks.exit ], [ %call6.i, %gr3d_init_power.exit.cleanup_crit_edge ], [ %.call.i, %if.end22.cleanup_crit_edge ], [ %retval.0.i112.ph, %gr3d_init_power.exit.thread ], [ -2, %do.end27.i ], [ -2, %do.end62.i ], [ %call.i.i, %do.end.i ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr3d_remove(ptr noundef %pdev) #0 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call1) #9
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
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_reset_control_bulk_get(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gr3d_power_up_legacy_domain(ptr noundef %dev, ptr noundef %name, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nclocks = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nclocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nclocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5134.not = icmp eq i32 %5, 0
  br i1 %cmp5134.not, label %for.cond.preheader.do.end62_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end62_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %clocks6 = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 3
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %id)
  %cmp1 = icmp eq i32 %id, 13
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %clocks = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clocks, align 4
  %clk3 = getelementptr inbounds %struct.clk_bulk_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %clk3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk3, align 4
  br label %if.end79

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %10 = phi i32 [ %5, %for.body.lr.ph ], [ %18, %for.inc.for.body_crit_edge ]
  %i.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %clocks6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clocks6, align 4
  %arrayidx7 = getelementptr %struct.clk_bulk_data, ptr %12, i32 %i.0135
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %do.end, label %if.end33.critedge, !prof !121

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 335, i32 noundef 9, ptr noundef null) #6
  br label %for.inc

if.end33.critedge:                                ; preds = %for.body
  %call37 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end33.critedge.for.inc_crit_edge

if.end33.critedge.for.inc_crit_edge:              ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then39:                                        ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %clk42 = getelementptr %struct.clk_bulk_data, ptr %12, i32 %i.0135, i32 1
  %15 = ptrtoint ptr %clk42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk42, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end33.critedge.for.inc_crit_edge, %do.end
  %inc = add nuw i32 %i.0135, 1
  %17 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nclocks, align 4
  %cmp5 = icmp ult i32 %inc, %18
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then39
  %i.0132 = phi i32 [ %i.0135, %if.then39 ], [ %inc, %for.inc.for.end_crit_edge ]
  %19 = phi i32 [ %10, %if.then39 ], [ %18, %for.inc.for.end_crit_edge ]
  %clk.0 = phi ptr [ %16, %if.then39 ], [ inttoptr (i32 -1 to ptr), %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0132, i32 %19)
  %cmp46 = icmp eq i32 %i.0132, %19
  br i1 %cmp46, label %for.end.do.end62_crit_edge, label %for.end.if.end79_crit_edge, !prof !121

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

for.end.do.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

do.end62:                                         ; preds = %for.end.do.end62_crit_edge, %for.cond.preheader.do.end62_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end79:                                         ; preds = %for.end.if.end79_crit_edge, %if.end
  %clk.1 = phi ptr [ %9, %if.end ], [ %clk.0, %for.end.if.end79_crit_edge ]
  %call.i = tail call ptr @__reset_control_get(ptr noundef %dev, ptr noundef %name, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end84:                                         ; preds = %if.end79
  %call85 = tail call i32 @reset_control_acquire(ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end93, label %if.end93.thread

if.end93.thread:                                  ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef %name, i32 noundef %call85) #9
  tail call void @reset_control_put(ptr noundef %call.i) #6
  br label %cleanup

if.end93:                                         ; preds = %if.end84
  %call92 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef %id, ptr noundef %clk.1, ptr noundef %call.i) #6
  tail call void @reset_control_release(ptr noundef %call.i) #6
  tail call void @reset_control_put(ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool94.not = icmp eq i32 %call92, 0
  br i1 %tobool94.not, label %if.end96, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end96:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %clk.1) #6
  tail call void @clk_unprepare(ptr noundef %clk.1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.end93.cleanup_crit_edge, %if.end93.thread, %if.then82, %do.end62, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then82 ], [ 0, %if.end96 ], [ -22, %do.end62 ], [ 0, %if.then.cleanup_crit_edge ], [ %call92, %if.end93.cleanup_crit_edge ], [ %call85, %if.end93.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_attach_genpd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gr3d_del_link(ptr noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_link_del(ptr noundef %link) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_sequence_power_up(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr3d_init(ptr noundef %client) #0 align 64 {
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
  %channel = getelementptr inbounds %struct.gr3d, ptr %client, i32 0, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.28, i32 noundef -12) #9
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef %call12) #9
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.34, i32 noundef %call22) #9
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
define internal i32 @gr3d_exit(ptr noundef %client) #0 align 64 {
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
  %channel = getelementptr inbounds %struct.gr3d, ptr %client, i32 0, i32 1
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
define internal i32 @gr3d_open_channel(ptr nocapture noundef readonly %client, ptr nocapture noundef writeonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.gr3d, ptr %client, i32 0, i32 1
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
define internal void @gr3d_close_channel(ptr nocapture noundef readonly %context) #0 align 64 {
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
define internal i32 @gr3d_is_addr_reg(ptr nocapture noundef readonly %dev, i32 noundef %class, i32 noundef %offset) #5 align 64 {
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
    i32 96, label %sw.bb1
  ]

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

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3719, i32 %offset)
  %cmp2 = icmp ugt i32 %offset, 3719
  br i1 %cmp2, label %sw.bb1.sw.epilog_crit_edge, label %if.end4

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end4:                                          ; preds = %sw.bb1
  %addr_regs = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 7
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
define internal i32 @gr3d_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channel = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  tail call void @host1x_channel_stop(ptr noundef %3) #6
  %nresets = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nresets, align 4
  %resets = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @reset_control_bulk_assert(i32 noundef %5, ptr noundef %resets) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %nclocks = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nclocks, align 4
  %clocks = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clocks, align 4
  tail call void @clk_bulk_disable(i32 noundef %7, ptr noundef %9) #6
  tail call void @clk_bulk_unprepare(i32 noundef %7, ptr noundef %9) #6
  %10 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nresets, align 4
  tail call void @reset_control_bulk_release(i32 noundef %11, ptr noundef %resets) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gr3d_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nresets = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nresets, align 4
  %resets = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @reset_control_bulk_acquire(i32 noundef %3, ptr noundef %resets) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nclocks = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nclocks, align 4
  %clocks = getelementptr inbounds %struct.gr3d, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clocks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %5, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %5, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %7) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i, %if.end.do.end7_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i.ph) #9
  br label %release_reset

if.end8:                                          ; preds = %if.end.i
  %8 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nresets, align 4
  %call12 = tail call i32 @reset_control_bulk_deassert(i32 noundef %9, ptr noundef %resets) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end8.cleanup_crit_edge, label %do.end17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call12) #9
  %10 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nclocks, align 4
  %12 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clocks, align 4
  tail call void @clk_bulk_disable(i32 noundef %11, ptr noundef %13) #6
  tail call void @clk_bulk_unprepare(i32 noundef %11, ptr noundef %13) #6
  br label %release_reset

release_reset:                                    ; preds = %do.end17, %do.end7
  %err.0 = phi i32 [ %retval.0.i.ph, %do.end7 ], [ %call12, %do.end17 ]
  %14 = ptrtoint ptr %nresets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nresets, align 4
  tail call void @reset_control_bulk_release(i32 noundef %15, ptr noundef %resets) #6
  br label %cleanup

cleanup:                                          ; preds = %release_reset, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %err.0, %release_reset ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_assert(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_bulk_release(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_acquire(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_deassert(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 636, i32 11}
!2 = !{ptr @tegra_gr3d_driver, !3, !"tegra_gr3d_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 634, i32 24}
!4 = !{ptr @gr3d_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 539, i32 8}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 541, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @gr3d_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @gr3d_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 456, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gr3d_get_clocks._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @gr3d_get_clocks._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 462, i32 3}
!21 = !{ptr @gr3d_get_clocks._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @gr3d_get_clocks._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 473, i32 28}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 474, i32 29}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 475, i32 30}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 476, i32 31}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 482, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gr3d_get_resets._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @gr3d_get_resets._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 386, i32 50}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 386, i32 57}
!40 = !{ptr @gr3d_init_power.opp_genpd_names, !41, !"opp_genpd_names", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 386, i32 28}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 393, i32 49}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 394, i32 7}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 431, i32 4}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @gr3d_init_power._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @gr3d_init_power._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 438, i32 4}
!53 = !{ptr @gr3d_init_power._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @gr3d_init_power._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 360, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @gr3d_power_up_legacy_domain._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @gr3d_power_up_legacy_domain._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @gr3d_client_ops, !61, !"gr3d_client_ops", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 130, i32 39}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 73, i32 3}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gr3d_init._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @gr3d_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 79, i32 3}
!69 = !{ptr @gr3d_init._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @gr3d_init._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 89, i32 3}
!73 = !{ptr @gr3d_init._entry.33, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @gr3d_init._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @gr3d_ops, !76, !"gr3d_ops", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 176, i32 42}
!77 = !{ptr @gr3d_addr_regs, !78, !"gr3d_addr_regs", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 209, i32 18}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 560, i32 3}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @gr3d_remove._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @gr3d_remove._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @tegra_gr3d_match, !85, !"tegra_gr3d_match", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 201, i32 34}
!86 = !{ptr @tegra114_gr3d_soc, !87, !"tegra114_gr3d_soc", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 195, i32 30}
!88 = !{ptr @tegra30_gr3d_soc, !89, !"tegra30_gr3d_soc", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 189, i32 30}
!90 = !{ptr @tegra20_gr3d_soc, !91, !"tegra20_gr3d_soc", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 183, i32 30}
!92 = !{ptr @tegra_gr3d_pm, !93, !"tegra_gr3d_pm", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 628, i32 32}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 577, i32 3}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @gr3d_runtime_suspend._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @gr3d_runtime_suspend._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 602, i32 3}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @gr3d_runtime_resume._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @gr3d_runtime_resume._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 608, i32 3}
!106 = !{ptr @gr3d_runtime_resume._entry.42, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @gr3d_runtime_resume._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/tegra/gr3d.c", i32 614, i32 3}
!110 = !{ptr @gr3d_runtime_resume._entry.45, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @gr3d_runtime_resume._entry_ptr.47, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{!"auto-init"}
