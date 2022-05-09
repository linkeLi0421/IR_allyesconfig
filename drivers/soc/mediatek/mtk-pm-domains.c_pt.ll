; ModuleID = '/llk/IR_all_yes/drivers/soc/mediatek/mtk-pm-domains.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-pm-domains.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.scpsys_soc_data = type { ptr, i32, i32, i32 }
%struct.scpsys_domain_data = type { ptr, i32, i32, i32, i32, i8, [5 x %struct.scpsys_bus_prot_data], [5 x %struct.scpsys_bus_prot_data] }
%struct.scpsys_bus_prot_data = type { i32, i32, i32, i32, i8, i8 }
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
%struct.scpsys = type { ptr, ptr, ptr, %struct.genpd_onecell_data, [0 x ptr] }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.scpsys_domain = type { %struct.generic_pm_domain, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.84 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.84 = type { %struct.mutex }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_mtk_pm_domains__290_654_scpsys_pm_domain_driver_init6 = internal global ptr @scpsys_pm_domain_driver_init, section ".initcall6.init", align 4
@scpsys_pm_domain_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @scpsys_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @scpsys_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk-power-controller\00", [43 x i8] zeroinitializer }, align 32
@scpsys_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8167_scpsys_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_scpsys_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_scpsys_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_scpsys_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@scpsys_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no power controller data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scpsys_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/soc/mediatek/mtk-pm-domains.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scpsys_probe._entry_ptr = internal global ptr @scpsys_probe._entry, section ".printk_index", align 4
@scpsys_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 600, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no parent for syscon devices\0A\00", [34 x i8] zeroinitializer }, align 32
@scpsys_probe._entry_ptr.8 = internal global ptr @scpsys_probe._entry.6, section ".printk_index", align 4
@scpsys_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no regmap available\0A\00", [43 x i8] zeroinitializer }, align 32
@scpsys_probe._entry_ptr.11 = internal global ptr @scpsys_probe._entry.9, section ".printk_index", align 4
@scpsys_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_pm_domains\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no power domains present\0A\00", [38 x i8] zeroinitializer }, align 32
@scpsys_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add provider: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@scpsys_probe._entry_ptr.16 = internal global ptr @scpsys_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@scpsys_add_one_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%pOF: failed to retrieve domain id from reg: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scpsys_add_one_domain\00", [42 x i8] zeroinitializer }, align 32
@scpsys_add_one_domain._entry_ptr = internal global ptr @scpsys_add_one_domain._entry, section ".printk_index", align 4
@scpsys_add_one_domain._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%pOF: invalid domain id %d\0A\00", [36 x i8] zeroinitializer }, align 32
@scpsys_add_one_domain._entry_ptr.22 = internal global ptr @scpsys_add_one_domain._entry.20, section ".printk_index", align 4
@scpsys_add_one_domain._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%pOF: undefined domain id %d\0A\00", [34 x i8] zeroinitializer }, align 32
@scpsys_add_one_domain._entry_ptr.25 = internal global ptr @scpsys_add_one_domain._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"domain\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%pOF: failed to get power supply.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,infracfg\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek,smi\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%pOF: failed to get clk at index %d: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@scpsys_add_one_domain._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.3, i32 422, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%pOF: A default off power domain has been ON\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@scpsys_add_one_domain._entry_ptr.35 = internal global ptr @scpsys_add_one_domain._entry.32, section ".printk_index", align 4
@scpsys_add_one_domain._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.19, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%pOF: failed to power on domain: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@scpsys_add_one_domain._entry_ptr.38 = internal global ptr @scpsys_add_one_domain._entry.36, section ".printk_index", align 4
@scpsys_add_one_domain._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.19, ptr @.str.3, i32 434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"power domain with id %d already exists, check your device-tree\0A\00", [32 x i8] zeroinitializer }, align 32
@scpsys_add_one_domain._entry_ptr.41 = internal global ptr @scpsys_add_one_domain._entry.39, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@scpsys_add_subdomain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 473, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%pOF: failed to get parent domain id\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scpsys_add_subdomain\00", [43 x i8] zeroinitializer }, align 32
@scpsys_add_subdomain._entry_ptr = internal global ptr @scpsys_add_subdomain._entry, section ".printk_index", align 4
@scpsys_add_subdomain._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 479, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"power domain with id %d does not exist\0A\00", [56 x i8] zeroinitializer }, align 32
@scpsys_add_subdomain._entry_ptr.46 = internal global ptr @scpsys_add_subdomain._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%pOF: failed to get child domain id\0A\00", [59 x i8] zeroinitializer }, align 32
@scpsys_add_subdomain._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.43, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to add %s subdomain to parent %s\0A\00", [55 x i8] zeroinitializer }, align 32
@scpsys_add_subdomain._entry_ptr.50 = internal global ptr @scpsys_add_subdomain._entry.48, section ".printk_index", align 4
@scpsys_add_subdomain.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.43, ptr @.str.3, ptr @.str.51, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s add subdomain: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@scpsys_remove_one_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"failed to remove domain '%s' : %d - state may be inconsistent\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scpsys_remove_one_domain\00", [39 x i8] zeroinitializer }, align 32
@scpsys_remove_one_domain._entry_ptr = internal global ptr @scpsys_remove_one_domain._entry, section ".printk_index", align 4
@mt8167_scpsys_data = internal constant { %struct.scpsys_soc_data, [16 x i8] } { %struct.scpsys_soc_data { ptr @scpsys_domain_data_mt8167, i32 7, i32 1548, i32 1552 }, [16 x i8] zeroinitializer }, align 32
@mt8173_scpsys_data = internal constant { %struct.scpsys_soc_data, [16 x i8] } { %struct.scpsys_soc_data { ptr @scpsys_domain_data_mt8173, i32 10, i32 1548, i32 1552 }, [16 x i8] zeroinitializer }, align 32
@mt8183_scpsys_data = internal constant { %struct.scpsys_soc_data, [16 x i8] } { %struct.scpsys_soc_data { ptr @scpsys_domain_data_mt8183, i32 15, i32 384, i32 388 }, [16 x i8] zeroinitializer }, align 32
@mt8192_scpsys_data = internal constant { %struct.scpsys_soc_data, [16 x i8] } { %struct.scpsys_soc_data { ptr @scpsys_domain_data_mt8192, i32 21, i32 364, i32 368 }, [16 x i8] zeroinitializer }, align 32
@scpsys_domain_data_mt8167 = internal constant { [7 x %struct.scpsys_domain_data], [384 x i8] } { [7 x %struct.scpsys_domain_data] [%struct.scpsys_domain_data { ptr @.str.54, i32 8, i32 572, i32 3840, i32 4096, i8 1, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 2050, i32 544, i32 544, i32 552, i8 1, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.55, i32 128, i32 528, i32 256, i32 4096, i8 1, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.56, i32 32, i32 568, i32 3840, i32 12288, i8 1, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.57, i32 2, i32 640, i32 256, i32 0, i8 1, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 784, i32 544, i32 544, i32 552, i8 1, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.58, i32 33554432, i32 708, i32 0, i32 0, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 36, i32 544, i32 544, i32 552, i8 1, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.59, i32 16777216, i32 704, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.60, i32 16, i32 532, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }], [384 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mm\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdec\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"conn\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mfg_async\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfg_2d\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mfg\00", [28 x i8] zeroinitializer }, align 32
@scpsys_domain_data_mt8173 = internal constant { [10 x %struct.scpsys_domain_data], [544 x i8] } { [10 x %struct.scpsys_domain_data] [%struct.scpsys_domain_data { ptr @.str.55, i32 128, i32 528, i32 3840, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.61, i32 2097152, i32 560, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.56, i32 32, i32 568, i32 3840, i32 12288, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.54, i32 8, i32 572, i32 3840, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 6, i32 544, i32 544, i32 552, i8 1, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.62, i32 1048576, i32 664, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.63, i32 16777216, i32 668, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.64, i32 33554432, i32 716, i32 3840, i32 61440, i8 1, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.58, i32 8388608, i32 708, i32 3840, i32 0, i8 16, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.59, i32 4194304, i32 704, i32 3840, i32 12288, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.60, i32 16, i32 532, i32 16128, i32 4128768, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 14696448, i32 544, i32 544, i32 552, i8 1, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }], [544 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"venc\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"venc_lt\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@scpsys_domain_data_mt8183 = internal constant { [15 x %struct.scpsys_domain_data], [832 x i8] } { [15 x %struct.scpsys_domain_data] [%struct.scpsys_domain_data { ptr @.str.63, i32 16777216, i32 788, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.57, i32 2, i32 812, i32 0, i32 0, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 24576, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.58, i32 8388608, i32 820, i32 0, i32 0, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.60, i32 16, i32 824, i32 256, i32 4096, i8 16, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.65, i32 128, i32 844, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.66, i32 1048576, i32 784, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.59, i32 4194304, i32 840, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 3670016, i32 680, i32 684, i32 600, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 6291456, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.67, i32 8, i32 780, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 196608, i32 680, i32 684, i32 600, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 3072, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 255, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.68, i32 33554432, i32 836, i32 768, i32 12288, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 8752, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 268435456, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 2048, i32 724, i32 728, i32 748, i8 0, i8 1 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 24, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.56, i32 32, i32 776, i32 768, i32 12288, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 264, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 1024, i32 724, i32 728, i32 748, i8 0, i8 1 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 4, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.55, i32 -2147483648, i32 768, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 128, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.61, i32 2097152, i32 772, i32 3840, i32 61440, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 2, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.69, i32 67108864, i32 804, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 5056, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 134217728, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 3072, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 96, i32 964, i32 968, i32 960, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer] }, %struct.scpsys_domain_data { ptr @.str.70, i32 134217728, i32 828, i32 3840, i32 12288, i8 4, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 64, i32 708, i32 712, i32 740, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 21, i32 708, i32 712, i32 740, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.71, i32 268435456, i32 832, i32 3840, i32 12288, i8 4, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 128, i32 708, i32 712, i32 740, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 42, i32 708, i32 712, i32 740, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }], [832 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mfg_core0\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mfg_core1\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"disp\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cam\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpu_top\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpu_core0\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpu_core1\00", [22 x i8] zeroinitializer }, align 32
@scpsys_domain_data_mt8192 = internal constant { [21 x %struct.scpsys_domain_data], [1152 x i8] } { [21 x %struct.scpsys_domain_data] [%struct.scpsys_domain_data { ptr @.str.63, i32 2097152, i32 852, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 16, i32 1812, i32 1816, i32 1828, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.57, i32 2, i32 772, i32 0, i32 0, i8 8, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 270336, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 16384, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 1024, i32 680, i32 684, i32 600, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.72, i32 4, i32 776, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.73, i32 8, i32 780, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 2097152, i32 680, i32 684, i32 600, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 96, i32 1812, i32 1816, i32 1828, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 6291456, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 128, i32 1812, i32 1816, i32 1828, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.74, i32 16, i32 784, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.75, i32 32, i32 788, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.76, i32 64, i32 792, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.77, i32 128, i32 796, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.78, i32 256, i32 800, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.67, i32 1048576, i32 848, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 83973125, i32 724, i32 728, i32 748, i8 0, i8 1 }, %struct.scpsys_bus_prot_data { i32 4352, i32 3532, i32 3536, i32 3544, i8 0, i8 1 }, %struct.scpsys_bus_prot_data { i32 8388672, i32 672, i32 676, i32 552, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 167936010, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 8704, i32 3532, i32 3536, i32 3544, i8 0, i8 0 }], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.79, i32 16384, i32 824, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 65536, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 131072, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.56, i32 4096, i32 816, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 256, i32 3532, i32 3536, i32 3544, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 512, i32 3532, i32 3536, i32 3544, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.80, i32 8192, i32 820, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 16384, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 32768, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.81, i32 524288, i32 844, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 4096, i32 3532, i32 3536, i32 3544, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 8192, i32 3532, i32 3536, i32 3544, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.61, i32 131072, i32 836, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 67108864, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 134217728, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.55, i32 32768, i32 828, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 16777216, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 33554432, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer, %struct.scpsys_bus_prot_data zeroinitializer], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.82, i32 65536, i32 832, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.68, i32 8388608, i32 860, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] [%struct.scpsys_bus_prot_data { i32 1, i32 1812, i32 1816, i32 1828, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 5, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 4194304, i32 680, i32 684, i32 600, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 10, i32 724, i32 728, i32 748, i8 0, i8 0 }, %struct.scpsys_bus_prot_data { i32 2097152, i32 2948, i32 2952, i32 2960, i8 0, i8 0 }], [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.83, i32 16777216, i32 864, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.84, i32 33554432, i32 868, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }, %struct.scpsys_domain_data { ptr @.str.85, i32 67108864, i32 872, i32 256, i32 4096, i8 0, [5 x %struct.scpsys_bus_prot_data] zeroinitializer, [5 x %struct.scpsys_bus_prot_data] zeroinitializer }], [1152 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfg0\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfg1\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfg2\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfg3\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfg4\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfg5\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfg6\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipe\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isp2\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdp\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdec2\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cam_rawa\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cam_rawb\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cam_rawc\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"scpsys_pm_domain_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 646, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 649, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"scpsys_of_match\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 552, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 584, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 600, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 606, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 629, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 635, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 308, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 310, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 316, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 322, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 342, i32 48 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 346, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 352, i32 64 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 356, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 367, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 393, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 421, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 426, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 433, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 473, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 479, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 488, i32 36 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 495, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 499, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private constant [41 x i8] c"../drivers/soc/mediatek/mtk-pm-domains.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 529, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [19 x i8] c"mt8167_scpsys_data\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 85, i32 37 }
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"mt8173_scpsys_data\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 98, i32 37 }
@___asan_gen_.242 = private unnamed_addr constant [19 x i8] c"mt8183_scpsys_data\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 230, i32 37 }
@___asan_gen_.245 = private unnamed_addr constant [19 x i8] c"mt8192_scpsys_data\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 306, i32 37 }
@___asan_gen_.248 = private unnamed_addr constant [26 x i8] c"scpsys_domain_data_mt8167\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 16, i32 40 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 18, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 30, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 38, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 71, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 46, i32 11 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 57, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant [44 x i8] c"../drivers/soc/mediatek/mt8167-pm-domains.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 64, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant [26 x i8] c"scpsys_domain_data_mt8173\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 13, i32 40 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 22, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 47, i32 11 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 54, i32 11 }
@___asan_gen_.285 = private unnamed_addr constant [44 x i8] c"../drivers/soc/mediatek/mt8173-pm-domains.h\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 61, i32 11 }
@___asan_gen_.287 = private unnamed_addr constant [26 x i8] c"scpsys_domain_data_mt8183\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 13, i32 40 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 48, i32 11 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 55, i32 11 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 75, i32 11 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 94, i32 11 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 166, i32 11 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 193, i32 11 }
@___asan_gen_.309 = private unnamed_addr constant [44 x i8] c"../drivers/soc/mediatek/mt8183-pm-domains.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 211, i32 11 }
@___asan_gen_.311 = private unnamed_addr constant [26 x i8] c"scpsys_domain_data_mt8192\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 13, i32 40 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 50, i32 11 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 57, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 82, i32 11 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 89, i32 11 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 96, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 103, i32 11 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 110, i32 11 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 146, i32 11 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 180, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 197, i32 11 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 248, i32 11 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 284, i32 11 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 291, i32 11 }
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [44 x i8] c"../drivers/soc/mediatek/mt8192-pm-domains.h\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 298, i32 11 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__initcall__kmod_mtk_pm_domains__290_654_scpsys_pm_domain_driver_init6, ptr @scpsys_add_one_domain._entry, ptr @scpsys_add_one_domain._entry.20, ptr @scpsys_add_one_domain._entry.23, ptr @scpsys_add_one_domain._entry.32, ptr @scpsys_add_one_domain._entry.36, ptr @scpsys_add_one_domain._entry.39, ptr @scpsys_add_one_domain._entry_ptr, ptr @scpsys_add_one_domain._entry_ptr.22, ptr @scpsys_add_one_domain._entry_ptr.25, ptr @scpsys_add_one_domain._entry_ptr.35, ptr @scpsys_add_one_domain._entry_ptr.38, ptr @scpsys_add_one_domain._entry_ptr.41, ptr @scpsys_add_subdomain._entry, ptr @scpsys_add_subdomain._entry.44, ptr @scpsys_add_subdomain._entry.48, ptr @scpsys_add_subdomain._entry_ptr, ptr @scpsys_add_subdomain._entry_ptr.46, ptr @scpsys_add_subdomain._entry_ptr.50, ptr @scpsys_probe._entry, ptr @scpsys_probe._entry.14, ptr @scpsys_probe._entry.6, ptr @scpsys_probe._entry.9, ptr @scpsys_probe._entry_ptr, ptr @scpsys_probe._entry_ptr.11, ptr @scpsys_probe._entry_ptr.16, ptr @scpsys_probe._entry_ptr.8, ptr @scpsys_remove_one_domain._entry, ptr @scpsys_remove_one_domain._entry_ptr, ptr @scpsys_pm_domain_driver, ptr @.str, ptr @scpsys_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @mt8167_scpsys_data, ptr @mt8173_scpsys_data, ptr @mt8183_scpsys_data, ptr @mt8192_scpsys_data, ptr @scpsys_domain_data_mt8167, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @scpsys_domain_data_mt8173, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @scpsys_domain_data_mt8183, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @scpsys_domain_data_mt8192, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_pm_domain_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_add_one_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_add_one_domain._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_add_one_domain._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_add_one_domain._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_add_one_domain._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_add_one_domain._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_add_subdomain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_add_subdomain._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_add_subdomain._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_remove_one_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8167_scpsys_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_scpsys_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_scpsys_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_scpsys_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_domain_data_mt8167 to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_domain_data_mt8173 to i32), i32 2240, i32 2784, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_domain_data_mt8183 to i32), i32 3360, i32 4192, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpsys_domain_data_mt8192 to i32), i32 4704, i32 5856, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scpsys_pm_domain_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @scpsys_pm_domain_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpsys_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %status.i.i.i = alloca i32, align 4
  %status2.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup63

if.end:                                           ; preds = %entry
  %num_domains = getelementptr inbounds %struct.scpsys_soc_data, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #7
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 24) #7
  %retval.0.i108 = select i1 %5, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i108, i32 noundef 3520) #7
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup63_crit_edge, label %if.end8

if.end.cleanup63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %soc_data = getelementptr inbounds %struct.scpsys, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %soc_data, align 4
  %domains = getelementptr inbounds %struct.scpsys, ptr %call.i, i32 0, i32 4
  %pd_data = getelementptr inbounds %struct.scpsys, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %pd_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %domains, ptr %pd_data, align 4
  %10 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_domains, align 4
  %num_domains13 = getelementptr inbounds %struct.scpsys, ptr %call.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %num_domains13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_domains13, align 4
  %parent14 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %parent14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent14, align 8
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup63

if.end20:                                         ; preds = %if.end8
  %of_node21 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node21, align 8
  %call22 = tail call ptr @syscon_node_to_regmap(ptr noundef %16) #7
  %base = getelementptr inbounds %struct.scpsys, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call22, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup63

if.end31:                                         ; preds = %if.end20
  %call32 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #7
  %cmp.not121 = icmp eq ptr %call32, null
  br i1 %cmp.not121, label %if.end31.do.body45_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

if.end31.do.body45_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body45

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end31.for.body_crit_edge
  %node.0122 = phi ptr [ %call42, %for.inc.for.body_crit_edge ], [ %call32, %if.end31.for.body_crit_edge ]
  %call33 = tail call fastcc ptr @scpsys_add_one_domain(ptr noundef nonnull %call.i, ptr noundef nonnull %node.0122)
  %cmp.i109 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then35, label %if.end37

if.then35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call33 to i32
  tail call void @of_node_put(ptr noundef nonnull %node.0122) #7
  br label %err_cleanup_domains

if.end37:                                         ; preds = %for.body
  %call38 = tail call fastcc i32 @scpsys_add_subdomain(ptr noundef nonnull %call.i, ptr noundef nonnull %node.0122)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.inc, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %node.0122) #7
  br label %err_cleanup_domains

for.inc:                                          ; preds = %if.end37
  %call42 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %node.0122) #7
  %cmp.not = icmp eq ptr %call42, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %cmp.not121, label %for.end.do.body45_crit_edge, label %if.end54

for.end.do.body45_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body45

do.body45:                                        ; preds = %for.end.do.body45_crit_edge, %if.end31.do.body45_crit_edge
  %ret.0.lcssa130 = phi i32 [ 0, %for.end.do.body45_crit_edge ], [ -19, %if.end31.do.body45_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scpsys_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scpsys_probe, %if.then50)) #7
          to label %cleanup63 [label %if.then50], !srcloc !184

if.then50:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scpsys_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.13) #7
  br label %cleanup63

if.end54:                                         ; preds = %for.end
  %call56 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %1, ptr noundef %pd_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end54.cleanup63_crit_edge, label %do.end61

if.end54.cleanup63_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call56) #10
  br label %err_cleanup_domains

err_cleanup_domains:                              ; preds = %do.end61, %if.then40, %if.then35
  %ret.2 = phi i32 [ %call56, %do.end61 ], [ %call38, %if.then40 ], [ %21, %if.then35 ]
  %22 = ptrtoint ptr %num_domains13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_domains13, align 4
  %i.06.i = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.06.i)
  %cmp7.i = icmp sgt i32 %i.06.i, -1
  br i1 %cmp7.i, label %err_cleanup_domains.for.body.i_crit_edge, label %err_cleanup_domains.cleanup63_crit_edge

err_cleanup_domains.cleanup63_crit_edge:          ; preds = %err_cleanup_domains
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

err_cleanup_domains.for.body.i_crit_edge:         ; preds = %err_cleanup_domains
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %err_cleanup_domains.for.body.i_crit_edge
  %i.08.i = phi i32 [ %i.0.i, %for.inc.i.for.body.i_crit_edge ], [ %i.06.i, %err_cleanup_domains.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %pd_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd_data, align 4
  %arrayidx.i = getelementptr ptr, ptr %25, i32 %i.08.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %scpsys1.i.i.i = getelementptr inbounds %struct.scpsys_domain, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %scpsys1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scpsys1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i.i) #7
  %30 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %status.i.i.i, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status2.i.i.i) #7
  %31 = ptrtoint ptr %status2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %status2.i.i.i, align 4, !annotation !185
  %base.i.i.i = getelementptr inbounds %struct.scpsys, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i.i, align 4
  %soc_data.i.i.i = getelementptr inbounds %struct.scpsys, ptr %29, i32 0, i32 2
  %34 = ptrtoint ptr %soc_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %soc_data.i.i.i, align 4
  %pwr_sta_offs.i.i.i = getelementptr inbounds %struct.scpsys_soc_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %pwr_sta_offs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pwr_sta_offs.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %33, i32 noundef %37, ptr noundef nonnull %status.i.i.i) #7
  %data.i.i.i = getelementptr inbounds %struct.scpsys_domain, ptr %27, i32 0, i32 1
  %38 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i.i, align 8
  %sta_mask.i.i.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %sta_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sta_mask.i.i.i, align 4
  %42 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status.i.i.i, align 4
  %and.i.i.i = and i32 %43, %41
  store i32 %and.i.i.i, ptr %status.i.i.i, align 4
  %44 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i.i, align 4
  %46 = ptrtoint ptr %soc_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %soc_data.i.i.i, align 4
  %pwr_sta2nd_offs.i.i.i = getelementptr inbounds %struct.scpsys_soc_data, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %pwr_sta2nd_offs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pwr_sta2nd_offs.i.i.i, align 4
  %call4.i.i.i = call i32 @regmap_read(ptr noundef %45, i32 noundef %49, ptr noundef nonnull %status2.i.i.i) #7
  %50 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i, align 8
  %sta_mask6.i.i.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %sta_mask6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sta_mask6.i.i.i, align 4
  %54 = ptrtoint ptr %status2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status2.i.i.i, align 4
  %and7.i.i.i = and i32 %55, %53
  %56 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %status.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i = icmp ne i32 %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.i.i.i = icmp ne i32 %and7.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i1 %tobool8.i.i.i, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status2.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i.i) #7
  br i1 %spec.select.i.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i = call i32 @scpsys_power_off(ptr noundef nonnull %27) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %call3.i.i = call i32 @pm_genpd_remove(ptr noundef nonnull %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i.scpsys_remove_one_domain.exit.i_crit_edge

if.end.i.i.scpsys_remove_one_domain.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scpsys_remove_one_domain.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %scpsys1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %scpsys1.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %name.i.i = getelementptr inbounds %struct.generic_pm_domain, ptr %27, i32 0, i32 10
  %62 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.52, ptr noundef %63, i32 noundef %call3.i.i) #10
  br label %scpsys_remove_one_domain.exit.i

scpsys_remove_one_domain.exit.i:                  ; preds = %do.end.i.i, %if.end.i.i.scpsys_remove_one_domain.exit.i_crit_edge
  %num_clks.i.i = getelementptr inbounds %struct.scpsys_domain, ptr %27, i32 0, i32 3
  %64 = ptrtoint ptr %num_clks.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_clks.i.i, align 8
  %clks.i.i = getelementptr inbounds %struct.scpsys_domain, ptr %27, i32 0, i32 4
  %66 = ptrtoint ptr %clks.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clks.i.i, align 4
  call void @clk_bulk_put(i32 noundef %65, ptr noundef %67) #7
  %num_subsys_clks.i.i = getelementptr inbounds %struct.scpsys_domain, ptr %27, i32 0, i32 5
  %68 = ptrtoint ptr %num_subsys_clks.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_subsys_clks.i.i, align 8
  %subsys_clks.i.i = getelementptr inbounds %struct.scpsys_domain, ptr %27, i32 0, i32 6
  %70 = ptrtoint ptr %subsys_clks.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %subsys_clks.i.i, align 4
  call void @clk_bulk_put(i32 noundef %69, ptr noundef %71) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %scpsys_remove_one_domain.exit.i, %for.body.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.08.i, -1
  %cmp.i110 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i110, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup63_crit_edge

for.inc.i.cleanup63_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup63:                                        ; preds = %for.inc.i.cleanup63_crit_edge, %err_cleanup_domains.cleanup63_crit_edge, %if.end54.cleanup63_crit_edge, %if.then50, %do.body45, %do.end28, %do.end19, %if.end.cleanup63_crit_edge, %do.end
  %retval.0 = phi i32 [ %20, %do.end28 ], [ -19, %do.end19 ], [ -22, %do.end ], [ -12, %if.end.cleanup63_crit_edge ], [ %ret.0.lcssa130, %if.then50 ], [ 0, %if.end54.cleanup63_crit_edge ], [ %ret.0.lcssa130, %do.body45 ], [ %ret.2, %err_cleanup_domains.cleanup63_crit_edge ], [ %ret.2, %for.inc.i.cleanup63_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scpsys_add_one_domain(ptr noundef %scpsys, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scpsys, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %id, align 4, !annotation !185
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.17, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scpsys, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef %node, i32 noundef %call.i.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %soc_data = getelementptr inbounds %struct.scpsys, ptr %scpsys, i32 0, i32 2
  %9 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %soc_data, align 4
  %num_domains = getelementptr inbounds %struct.scpsys_soc_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp.not = icmp ult i32 %8, %12
  br i1 %cmp.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scpsys, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.21, ptr noundef %node, i32 noundef %8) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  %arrayidx = getelementptr %struct.scpsys_domain_data, ptr %16, i32 %8
  %sta_mask = getelementptr %struct.scpsys_domain_data, ptr %16, i32 %8, i32 1
  %17 = ptrtoint ptr %sta_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sta_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11 = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scpsys, align 4
  br i1 %cmp11, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.24, ptr noundef %node, i32 noundef %8) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef 1392, i32 noundef 3520) #7
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %data = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %data, align 8
  %scpsys25 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %scpsys25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %scpsys, ptr %scpsys25, align 4
  %caps = getelementptr %struct.scpsys_domain_data, ptr %16, i32 %8, i32 5
  %23 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %caps, align 4
  %25 = and i8 %24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not = icmp eq i8 %25, 0
  br i1 %tobool27.not, label %if.end24.if.end45_crit_edge, label %if.then28

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then28:                                        ; preds = %if.end24
  %26 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %scpsys, align 4
  %of_node30 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %of_node30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %node, ptr %of_node30, align 8
  %29 = load ptr, ptr %scpsys, align 4
  %call32 = call ptr @devm_regulator_get(ptr noundef %29, ptr noundef nonnull @.str.26) #7
  %supply = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 9
  %30 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call32, ptr %supply, align 8
  %31 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scpsys, align 4
  %of_node34 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %of_node34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %3, ptr %of_node34, align 8
  %34 = load ptr, ptr %supply, align 8
  %cmp.i = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.then28.if.end45_crit_edge

if.then28.if.end45_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then37:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %scpsys, align 4
  %37 = ptrtoint ptr %34 to i32
  %call41 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %36, i32 noundef %37, ptr noundef nonnull @.str.27, ptr noundef %node) #7
  %38 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %supply, align 8
  br label %cleanup

if.end45:                                         ; preds = %if.then28.if.end45_crit_edge, %if.end24.if.end45_crit_edge
  %call46 = call ptr @syscon_regmap_lookup_by_phandle_optional(ptr noundef %node, ptr noundef nonnull @.str.28) #7
  %infracfg = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 7
  %40 = ptrtoint ptr %infracfg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call46, ptr %infracfg, align 8
  %cmp.i321 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321, label %if.end45.cleanup_crit_edge, label %if.end52

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %41 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i322 = call i32 @__of_parse_phandle_with_args(ptr noundef %node, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i322)
  %tobool.not.i = icmp eq i32 %call.i322, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %if.end63

of_parse_phandle.exit:                            ; preds = %if.end52
  %42 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool54.not = icmp eq ptr %43, null
  br i1 %tobool54.not, label %of_parse_phandle.exit.if.end63_crit_edge, label %if.then55

of_parse_phandle.exit.if.end63_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then55:                                        ; preds = %of_parse_phandle.exit
  %call56 = call ptr @device_node_to_regmap(ptr noundef nonnull %43) #7
  %smi = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 8
  %44 = ptrtoint ptr %smi to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call56, ptr %smi, align 4
  call void @of_node_put(ptr noundef nonnull %43) #7
  %45 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %smi, align 4
  %cmp.i323 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i323, label %if.then55.cleanup_crit_edge, label %if.then55.if.end63_crit_edge

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.then55.if.end63_crit_edge, %of_parse_phandle.exit.if.end63_crit_edge, %of_parse_phandle.exit.thread
  %call64 = call i32 @of_clk_get_parent_count(ptr noundef %node) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp sgt i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end63.if.end94_crit_edge

if.end63.if.end94_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then67:                                        ; preds = %if.end63
  %call68 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.30, ptr noundef null) #7
  %call69 = call ptr @of_prop_next_string(ptr noundef %call68, ptr noundef null) #7
  %tobool70.not344 = icmp eq ptr %call69, null
  br i1 %tobool70.not344, label %if.then67.for.end_crit_edge, label %for.body.lr.ph

if.then67.for.end_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then67
  %num_subsys_clks = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 5
  %num_clks74 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %clk_name.0345 = phi ptr [ %call69, %for.body.lr.ph ], [ %call77, %for.body.for.body_crit_edge ]
  %call71 = call ptr @strchr(ptr noundef nonnull %clk_name.0345, i32 noundef 45)
  %tobool72.not = icmp eq ptr %call71, null
  %num_clks74.num_subsys_clks = select i1 %tobool72.not, ptr %num_clks74, ptr %num_subsys_clks
  %47 = ptrtoint ptr %num_clks74.num_subsys_clks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_clks74.num_subsys_clks, align 8
  %inc75 = add i32 %48, 1
  store i32 %inc75, ptr %num_clks74.num_subsys_clks, align 8
  %call77 = call ptr @of_prop_next_string(ptr noundef %call68, ptr noundef nonnull %clk_name.0345) #7
  %tobool70.not = icmp eq ptr %call77, null
  br i1 %tobool70.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then67.for.end_crit_edge
  %num_clks79 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 3
  %49 = ptrtoint ptr %num_clks79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_clks79, align 8
  %51 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 8) #7
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !186

devm_kcalloc.exit.thread:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %clks333 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 4
  %53 = ptrtoint ptr %clks333 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %clks333, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %for.end
  %54 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %scpsys, align 4
  %56 = extractvalue { i32, i1 } %51, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef %56, i32 noundef 3520) #7
  %clks = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 4
  %57 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call5.i.i, ptr %clks, align 4
  %tobool82.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool82.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end85

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end85:                                         ; preds = %devm_kcalloc.exit
  %num_subsys_clks87 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 5
  %58 = ptrtoint ptr %num_subsys_clks87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_subsys_clks87, align 8
  %60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %59, i32 8) #7
  %61 = extractvalue { i32, i1 } %60, 1
  br i1 %61, label %devm_kcalloc.exit327.thread, label %devm_kcalloc.exit327, !prof !186

devm_kcalloc.exit327.thread:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %subsys_clks336 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 6
  %62 = ptrtoint ptr %subsys_clks336 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %subsys_clks336, align 4
  br label %cleanup

devm_kcalloc.exit327:                             ; preds = %if.end85
  %63 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %scpsys, align 4
  %65 = extractvalue { i32, i1 } %60, 0
  %call5.i.i324 = call noalias ptr @devm_kmalloc(ptr noundef %64, i32 noundef %65, i32 noundef 3520) #7
  %subsys_clks = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 6
  %66 = ptrtoint ptr %subsys_clks to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call5.i.i324, ptr %subsys_clks, align 4
  %tobool90.not = icmp eq ptr %call5.i.i324, null
  br i1 %tobool90.not, label %devm_kcalloc.exit327.cleanup_crit_edge, label %devm_kcalloc.exit327.if.end94_crit_edge

devm_kcalloc.exit327.if.end94_crit_edge:          ; preds = %devm_kcalloc.exit327
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

devm_kcalloc.exit327.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit327
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end94:                                         ; preds = %devm_kcalloc.exit327.if.end94_crit_edge, %if.end63.if.end94_crit_edge
  %num_clks96 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 3
  %67 = ptrtoint ptr %num_clks96 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_clks96, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp97347 = icmp sgt i32 %68, 0
  br i1 %cmp97347, label %for.body99.lr.ph, label %if.end94.for.cond114.preheader_crit_edge

if.end94.for.cond114.preheader_crit_edge:         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond114.preheader

for.body99.lr.ph:                                 ; preds = %if.end94
  %clks107 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 4
  br label %for.body99

for.cond114.preheader:                            ; preds = %if.end106.for.cond114.preheader_crit_edge, %if.end94.for.cond114.preheader_crit_edge
  %clk_ind.0.lcssa = phi i32 [ 0, %if.end94.for.cond114.preheader_crit_edge ], [ %inc108, %if.end106.for.cond114.preheader_crit_edge ]
  %num_subsys_clks115 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 5
  %69 = ptrtoint ptr %num_subsys_clks115 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_subsys_clks115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp116351 = icmp sgt i32 %70, 0
  br i1 %cmp116351, label %for.body118.lr.ph, label %for.cond114.preheader.for.end132_crit_edge

for.cond114.preheader.for.end132_crit_edge:       ; preds = %for.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end132

for.body118.lr.ph:                                ; preds = %for.cond114.preheader
  %subsys_clks127 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 6
  br label %for.body118

for.body99:                                       ; preds = %if.end106.for.body99_crit_edge, %for.body99.lr.ph
  %clk_ind.0349 = phi i32 [ 0, %for.body99.lr.ph ], [ %inc108, %if.end106.for.body99_crit_edge ]
  %call100 = call ptr @of_clk_get(ptr noundef %node, i32 noundef %clk_ind.0349) #7
  %cmp.i328 = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then102, label %if.end106

if.then102:                                       ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %call100 to i32
  %72 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %scpsys, align 4
  %call105 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %73, i32 noundef %71, ptr noundef nonnull @.str.31, ptr noundef %node, i32 noundef %clk_ind.0349, i32 noundef %71) #7
  br label %err_put_clocks

if.end106:                                        ; preds = %for.body99
  %74 = ptrtoint ptr %clks107 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clks107, align 4
  %inc108 = add nuw nsw i32 %clk_ind.0349, 1
  %clk110 = getelementptr %struct.clk_bulk_data, ptr %75, i32 %clk_ind.0349, i32 1
  %76 = ptrtoint ptr %clk110 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call100, ptr %clk110, align 4
  %77 = ptrtoint ptr %num_clks96 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_clks96, align 8
  %cmp97 = icmp slt i32 %inc108, %78
  br i1 %cmp97, label %if.end106.for.body99_crit_edge, label %if.end106.for.cond114.preheader_crit_edge

if.end106.for.cond114.preheader_crit_edge:        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond114.preheader

if.end106.for.body99_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body99

for.body118:                                      ; preds = %if.end126.for.body118_crit_edge, %for.body118.lr.ph
  %i.1352 = phi i32 [ 0, %for.body118.lr.ph ], [ %inc131, %if.end126.for.body118_crit_edge ]
  %add = add nuw i32 %i.1352, %clk_ind.0.lcssa
  %call119 = call ptr @of_clk_get(ptr noundef %node, i32 noundef %add) #7
  %cmp.i329 = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i329, label %if.then121, label %if.end126

if.then121:                                       ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %call119 to i32
  %80 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %scpsys, align 4
  %call125 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %81, i32 noundef %79, ptr noundef nonnull @.str.31, ptr noundef %node, i32 noundef %add, i32 noundef %79) #7
  br label %err_put_subsys_clocks

if.end126:                                        ; preds = %for.body118
  %82 = ptrtoint ptr %subsys_clks127 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %subsys_clks127, align 4
  %clk129 = getelementptr %struct.clk_bulk_data, ptr %83, i32 %i.1352, i32 1
  %84 = ptrtoint ptr %clk129 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call119, ptr %clk129, align 4
  %inc131 = add nuw nsw i32 %i.1352, 1
  %85 = ptrtoint ptr %num_subsys_clks115 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_subsys_clks115, align 8
  %cmp116 = icmp slt i32 %inc131, %86
  br i1 %cmp116, label %if.end126.for.body118_crit_edge, label %if.end126.for.end132_crit_edge

if.end126.for.end132_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end132

if.end126.for.body118_crit_edge:                  ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body118

for.end132:                                       ; preds = %if.end126.for.end132_crit_edge, %for.cond114.preheader.for.end132_crit_edge
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data, align 8
  %caps134 = getelementptr inbounds %struct.scpsys_domain_data, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %caps134 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %caps134, align 4
  %91 = and i8 %90, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool137.not = icmp eq i8 %91, 0
  br i1 %tobool137.not, label %if.else146, label %if.then138

if.then138:                                       ; preds = %for.end132
  %call139 = call fastcc zeroext i1 @scpsys_domain_is_on(ptr noundef nonnull %call.i)
  br i1 %call139, label %do.end143, label %if.then138.if.end156_crit_edge

if.then138.if.end156_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

do.end143:                                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %scpsys, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %93, ptr noundef nonnull @.str.33, ptr noundef %node) #10
  br label %if.end156

if.else146:                                       ; preds = %for.end132
  %call147 = call i32 @scpsys_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %do.end153, label %if.else146.if.end156_crit_edge

if.else146.if.end156_crit_edge:                   ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

do.end153:                                        ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %scpsys, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.37, ptr noundef %node, i32 noundef %call147) #10
  br label %err_put_subsys_clocks

if.end156:                                        ; preds = %if.else146.if.end156_crit_edge, %do.end143, %if.then138.if.end156_crit_edge
  %96 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %id, align 4
  %arrayidx157 = getelementptr %struct.scpsys, ptr %scpsys, i32 0, i32 4, i32 %97
  %98 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx157, align 4
  %tobool158.not = icmp eq ptr %99, null
  br i1 %tobool158.not, label %if.end164, label %if.then159

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %scpsys, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.40, i32 noundef %97) #10
  br label %err_put_subsys_clocks

if.end164:                                        ; preds = %if.end156
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %tobool166.not = icmp eq ptr %105, null
  br i1 %tobool166.not, label %if.then167, label %if.end164.if.end176_crit_edge

if.end164.if.end176_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %node, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then167, %if.end164.if.end176_crit_edge
  %.sink = phi ptr [ %107, %if.then167 ], [ %105, %if.end164.if.end176_crit_edge ]
  %108 = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 10
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %.sink, ptr %108, align 8
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 18
  %110 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @scpsys_power_off, ptr %power_off, align 8
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 19
  %111 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @scpsys_power_on, ptr %power_on, align 4
  %112 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data, align 8
  %caps180 = getelementptr inbounds %struct.scpsys_domain_data, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %caps180 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %caps180, align 4
  %116 = and i8 %115, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool183.not = icmp ne i8 %116, 0
  %call189 = call i32 @pm_genpd_init(ptr noundef nonnull %call.i, ptr noundef null, i1 noundef zeroext %tobool183.not) #7
  %117 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %id, align 4
  %arrayidx193 = getelementptr %struct.scpsys, ptr %scpsys, i32 0, i32 4, i32 %118
  %119 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i, ptr %arrayidx193, align 4
  %pd_data = getelementptr inbounds %struct.scpsys, ptr %scpsys, i32 0, i32 3
  %120 = ptrtoint ptr %pd_data to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pd_data, align 4
  %arrayidx195 = getelementptr ptr, ptr %121, i32 %118
  %122 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx195, align 4
  br label %cleanup

err_put_subsys_clocks:                            ; preds = %if.then159, %do.end153, %if.then121
  %ret.0 = phi i32 [ %79, %if.then121 ], [ -22, %if.then159 ], [ %call147, %do.end153 ]
  %124 = ptrtoint ptr %num_subsys_clks115 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_subsys_clks115, align 8
  %subsys_clks197 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 6
  %126 = ptrtoint ptr %subsys_clks197 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %subsys_clks197, align 4
  call void @clk_bulk_put(i32 noundef %125, ptr noundef %127) #7
  br label %err_put_clocks

err_put_clocks:                                   ; preds = %err_put_subsys_clocks, %if.then102
  %ret.1 = phi i32 [ %71, %if.then102 ], [ %ret.0, %err_put_subsys_clocks ]
  %128 = ptrtoint ptr %num_clks96 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_clks96, align 8
  %clks199 = getelementptr inbounds %struct.scpsys_domain, ptr %call.i, i32 0, i32 4
  %130 = ptrtoint ptr %clks199 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %clks199, align 4
  call void @clk_bulk_put(i32 noundef %129, ptr noundef %131) #7
  %132 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_put_clocks, %if.end176, %devm_kcalloc.exit327.cleanup_crit_edge, %devm_kcalloc.exit327.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.then55.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then37, %if.end18.cleanup_crit_edge, %do.end15, %do.end6, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end6 ], [ inttoptr (i32 -22 to ptr), %do.end15 ], [ %39, %if.then37 ], [ %132, %err_put_clocks ], [ %123, %if.end176 ], [ inttoptr (i32 -12 to ptr), %if.end18.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ %46, %if.then55.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.thread ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit327.thread ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit327.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scpsys_add_subdomain(ptr noundef %scpsys, ptr noundef %parent) unnamed_addr #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_next_child(ptr noundef %parent, ptr noundef null) #7
  %cmp.not99 = icmp eq ptr %call, null
  br i1 %cmp.not99, label %entry.cleanup45_crit_edge, label %for.body.lr.ph

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

for.body.lr.ph:                                   ; preds = %entry
  %pd_data = getelementptr inbounds %struct.scpsys, ptr %scpsys, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.0100 = phi ptr [ %call, %for.body.lr.ph ], [ %call44, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !185
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %parent, ptr noundef nonnull @.str.17, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scpsys, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.42, ptr noundef nonnull %child.0100) #10
  br label %err_put_node

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %pd_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pd_data, align 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scpsys, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.45, i32 noundef %6) #10
  br label %err_put_node

if.end8:                                          ; preds = %if.end
  %call12 = call fastcc ptr @scpsys_add_one_domain(ptr noundef %scpsys, ptr noundef nonnull %child.0100)
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call12 to i32
  %12 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scpsys, align 4
  %call17 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %13, i32 noundef %11, ptr noundef nonnull @.str.47, ptr noundef nonnull %child.0100) #7
  br label %err_put_node

if.end18:                                         ; preds = %if.end8
  %call19 = call i32 @pm_genpd_add_subdomain(ptr noundef nonnull %8, ptr noundef %call12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body27, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scpsys, align 4
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %call12, i32 0, i32 10
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 8
  %name26 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 10
  %18 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name26, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.49, ptr noundef %17, ptr noundef %19) #10
  br label %err_put_node

do.body27:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scpsys_add_subdomain.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scpsys_add_subdomain, %if.then32)) #7
          to label %if.end39 [label %if.then32], !srcloc !184

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %scpsys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scpsys, align 4
  %name34 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 10
  %22 = ptrtoint ptr %name34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name34, align 8
  %name35 = getelementptr inbounds %struct.generic_pm_domain, ptr %call12, i32 0, i32 10
  %24 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name35, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scpsys_add_subdomain.__UNIQUE_ID_ddebug288, ptr noundef %21, ptr noundef nonnull @.str.51, ptr noundef %23, ptr noundef %25) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %do.body27
  %call40 = call fastcc i32 @scpsys_add_subdomain(ptr noundef %scpsys, ptr noundef nonnull %child.0100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.inc, label %if.end39.err_put_node_crit_edge

if.end39.err_put_node_crit_edge:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_node

for.inc:                                          ; preds = %if.end39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  %call44 = call ptr @of_get_next_child(ptr noundef %parent, ptr noundef nonnull %child.0100) #7
  %cmp.not = icmp eq ptr %call44, null
  br i1 %cmp.not, label %for.inc.cleanup45_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

err_put_node:                                     ; preds = %if.end39.err_put_node_crit_edge, %do.end24, %if.then14, %if.then3, %do.end
  %ret.0.ph = phi i32 [ -22, %if.then3 ], [ %call19, %do.end24 ], [ %11, %if.then14 ], [ %call.i.i, %do.end ], [ %call40, %if.end39.err_put_node_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  call void @of_node_put(ptr noundef nonnull %child.0100) #7
  br label %cleanup45

cleanup45:                                        ; preds = %err_put_node, %for.inc.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.0 = phi i32 [ %ret.0.ph, %err_put_node ], [ 0, %entry.cleanup45_crit_edge ], [ 0, %for.inc.cleanup45_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scpsys_domain_is_on(ptr nocapture noundef readonly %pd) unnamed_addr #2 align 64 {
entry:
  %status = alloca i32, align 4
  %status2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %scpsys1 = getelementptr inbounds %struct.scpsys_domain, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %scpsys1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scpsys1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status2) #7
  %3 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status2, align 4, !annotation !185
  %base = getelementptr inbounds %struct.scpsys, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %soc_data = getelementptr inbounds %struct.scpsys, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc_data, align 4
  %pwr_sta_offs = getelementptr inbounds %struct.scpsys_soc_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pwr_sta_offs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pwr_sta_offs, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef %9, ptr noundef nonnull %status) #7
  %data = getelementptr inbounds %struct.scpsys_domain, ptr %pd, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %sta_mask = getelementptr inbounds %struct.scpsys_domain_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sta_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sta_mask, align 4
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  %and = and i32 %15, %13
  store i32 %and, ptr %status, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %18 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc_data, align 4
  %pwr_sta2nd_offs = getelementptr inbounds %struct.scpsys_soc_data, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %pwr_sta2nd_offs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pwr_sta2nd_offs, align 4
  %call4 = call i32 @regmap_read(ptr noundef %17, i32 noundef %21, ptr noundef nonnull %status2) #7
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 8
  %sta_mask6 = getelementptr inbounds %struct.scpsys_domain_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %sta_mask6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sta_mask6, align 4
  %26 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status2, align 4
  %and7 = and i32 %27, %25
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8 = icmp ne i32 %and7, 0
  %spec.select = select i1 %tobool.not, i1 %tobool8, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i1 %spec.select
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpsys_power_on(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %status.i119 = alloca i32, align 4
  %status2.i120 = alloca i32, align 4
  %status.i = alloca i32, align 4
  %status2.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %scpsys1 = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 2
  %0 = ptrtoint ptr %scpsys1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scpsys1, align 4
  %supply = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 9
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %scpsys_regulator_enable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

scpsys_regulator_enable.exit:                     ; preds = %entry
  %call.i = tail call i32 @regulator_enable(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %scpsys_regulator_enable.exit.if.end_crit_edge, label %scpsys_regulator_enable.exit.cleanup_crit_edge

scpsys_regulator_enable.exit.cleanup_crit_edge:   ; preds = %scpsys_regulator_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

scpsys_regulator_enable.exit.if.end_crit_edge:    ; preds = %scpsys_regulator_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %scpsys_regulator_enable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %num_clks = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 3
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 8
  %clks = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 4
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  %call.i112 = tail call i32 @clk_bulk_prepare(i32 noundef %5, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i113, label %if.end.i, label %if.end.err_reg_crit_edge

if.end.err_reg_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_reg

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %5, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %7) #7
  br label %err_reg

if.end6:                                          ; preds = %if.end.i
  %base = getelementptr inbounds %struct.scpsys, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %data = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %ctl_offs = getelementptr inbounds %struct.scpsys_domain_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ctl_offs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctl_offs, align 4
  %call.i114 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %13, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 8
  %ctl_offs10 = getelementptr inbounds %struct.scpsys_domain_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ctl_offs10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctl_offs10, align 4
  %call.i115 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %19, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call12 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call12, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 224) #7
  br label %for.cond

for.cond:                                         ; preds = %if.then35, %if.end6
  %20 = ptrtoint ptr %scpsys1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scpsys1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %status.i, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status2.i) #7
  %23 = ptrtoint ptr %status2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %status2.i, align 4, !annotation !185
  %base.i = getelementptr inbounds %struct.scpsys, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %soc_data.i = getelementptr inbounds %struct.scpsys, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %soc_data.i, align 4
  %pwr_sta_offs.i = getelementptr inbounds %struct.scpsys_soc_data, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %pwr_sta_offs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pwr_sta_offs.i, align 4
  %call.i116 = call i32 @regmap_read(ptr noundef %25, i32 noundef %29, ptr noundef nonnull %status.i) #7
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 8
  %sta_mask.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %sta_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sta_mask.i, align 4
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status.i, align 4
  %and.i = and i32 %35, %33
  store i32 %and.i, ptr %status.i, align 4
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %38 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc_data.i, align 4
  %pwr_sta2nd_offs.i = getelementptr inbounds %struct.scpsys_soc_data, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %pwr_sta2nd_offs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pwr_sta2nd_offs.i, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %37, i32 noundef %41, ptr noundef nonnull %status2.i) #7
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 8
  %sta_mask6.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %sta_mask6.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sta_mask6.i, align 4
  %46 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status2.i, align 4
  %and7.i = and i32 %47, %45
  %48 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i117 = icmp ne i32 %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.i = icmp ne i32 %and7.i, 0
  %spec.select.i = select i1 %tobool.not.i117, i1 %tobool8.i, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %spec.select.i, label %for.cond.if.end41_crit_edge, label %land.lhs.true

for.cond.if.end41_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true:                                    ; preds = %for.cond
  %call27 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call27, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %50 = ptrtoint ptr %scpsys1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %scpsys1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i119) #7
  %52 = ptrtoint ptr %status.i119 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %status.i119, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status2.i120) #7
  %53 = ptrtoint ptr %status2.i120 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %status2.i120, align 4, !annotation !185
  %base.i122 = getelementptr inbounds %struct.scpsys, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %base.i122 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i122, align 4
  %soc_data.i123 = getelementptr inbounds %struct.scpsys, ptr %51, i32 0, i32 2
  %56 = ptrtoint ptr %soc_data.i123 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %soc_data.i123, align 4
  %pwr_sta_offs.i124 = getelementptr inbounds %struct.scpsys_soc_data, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %pwr_sta_offs.i124 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pwr_sta_offs.i124, align 4
  %call.i125 = call i32 @regmap_read(ptr noundef %55, i32 noundef %59, ptr noundef nonnull %status.i119) #7
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 8
  %sta_mask.i127 = getelementptr inbounds %struct.scpsys_domain_data, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %sta_mask.i127 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sta_mask.i127, align 4
  %64 = ptrtoint ptr %status.i119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status.i119, align 4
  %and.i128 = and i32 %65, %63
  store i32 %and.i128, ptr %status.i119, align 4
  %66 = ptrtoint ptr %base.i122 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i122, align 4
  %68 = ptrtoint ptr %soc_data.i123 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %soc_data.i123, align 4
  %pwr_sta2nd_offs.i129 = getelementptr inbounds %struct.scpsys_soc_data, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %pwr_sta2nd_offs.i129 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pwr_sta2nd_offs.i129, align 4
  %call4.i130 = call i32 @regmap_read(ptr noundef %67, i32 noundef %71, ptr noundef nonnull %status2.i120) #7
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data, align 8
  %sta_mask6.i131 = getelementptr inbounds %struct.scpsys_domain_data, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %sta_mask6.i131 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sta_mask6.i131, align 4
  %76 = ptrtoint ptr %status2.i120 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %status2.i120, align 4
  %and7.i132 = and i32 %77, %75
  %78 = ptrtoint ptr %status.i119 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %status.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i133 = icmp ne i32 %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i132)
  %tobool8.i134 = icmp ne i32 %and7.i132, 0
  %spec.select.i135 = select i1 %tobool.not.i133, i1 %tobool8.i134, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status2.i120) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i119) #7
  br i1 %spec.select.i135, label %for.end.if.end41_crit_edge, label %for.end.err_pwr_ack_crit_edge

for.end.err_pwr_ack_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pwr_ack

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %for.end.if.end41_crit_edge, %for.cond.if.end41_crit_edge
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %82 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data, align 8
  %ctl_offs44 = getelementptr inbounds %struct.scpsys_domain_data, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %ctl_offs44 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ctl_offs44, align 4
  %call.i136 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef %85, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base, align 4
  %88 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data, align 8
  %ctl_offs48 = getelementptr inbounds %struct.scpsys_domain_data, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %ctl_offs48 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ctl_offs48, align 4
  %call.i137 = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef %91, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data, align 8
  %ctl_offs52 = getelementptr inbounds %struct.scpsys_domain_data, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %ctl_offs52 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ctl_offs52, align 4
  %call.i138 = call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef %97, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %num_subsys_clks = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 5
  %98 = ptrtoint ptr %num_subsys_clks to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_subsys_clks, align 8
  %subsys_clks = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 6
  %100 = ptrtoint ptr %subsys_clks to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %subsys_clks, align 4
  %call.i139 = call i32 @clk_bulk_prepare(i32 noundef %99, ptr noundef %101) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i140 = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i140, label %if.end.i143, label %if.end41.err_pwr_ack_crit_edge

if.end41.err_pwr_ack_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pwr_ack

if.end.i143:                                      ; preds = %if.end41
  %call1.i141 = call i32 @clk_bulk_enable(i32 noundef %99, ptr noundef %101) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i141)
  %tobool2.not.i142 = icmp eq i32 %call1.i141, 0
  br i1 %tobool2.not.i142, label %if.end57, label %if.then3.i144

if.then3.i144:                                    ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_bulk_unprepare(i32 noundef %99, ptr noundef %101) #7
  br label %err_pwr_ack

if.end57:                                         ; preds = %if.end.i143
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 8
  %sram_pdn_ack_bits.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %sram_pdn_ack_bits.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sram_pdn_ack_bits.i, align 4
  %106 = ptrtoint ptr %scpsys1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %scpsys1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %108 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %tmp.i, align 4, !annotation !185
  %base.i149 = getelementptr inbounds %struct.scpsys, ptr %107, i32 0, i32 1
  %109 = ptrtoint ptr %base.i149 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i149, align 4
  %ctl_offs.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %103, i32 0, i32 2
  %111 = ptrtoint ptr %ctl_offs.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ctl_offs.i, align 4
  %sram_pdn_bits.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %103, i32 0, i32 3
  %113 = ptrtoint ptr %sram_pdn_bits.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sram_pdn_bits.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call4.i150 = call i64 @ktime_get() #7
  %add.i.i = add i64 %call4.i150, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 84) #7
  %115 = ptrtoint ptr %base.i149 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i149, align 4
  %117 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data, align 8
  %ctl_offs1491.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %ctl_offs1491.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ctl_offs1491.i, align 4
  %call1592.i = call i32 @regmap_read(ptr noundef %116, i32 noundef %120, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1592.i)
  %tobool.not93.i = icmp eq i32 %call1592.i, 0
  br i1 %tobool.not93.i, label %if.end57.lor.lhs.false.i_crit_edge, label %if.end57.lor.end.i_crit_edge

if.end57.lor.end.i_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

if.end57.lor.lhs.false.i_crit_edge:               ; preds = %if.end57
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then30.i.lor.lhs.false.i_crit_edge, %if.end57.lor.lhs.false.i_crit_edge
  %121 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tmp.i, align 4
  %and.i151 = and i32 %122, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151)
  %cmp16.i = icmp eq i32 %and.i151, 0
  br i1 %cmp16.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call20.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call20.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call20.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then30.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %123 = ptrtoint ptr %base.i149 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i149, align 4
  %125 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data, align 8
  %ctl_offs14.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %ctl_offs14.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ctl_offs14.i, align 4
  %call15.i = call i32 @regmap_read(ptr noundef %124, i32 noundef %128, ptr noundef nonnull %tmp.i) #7
  %tobool.not.i152 = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i152, label %if.then30.i.lor.lhs.false.i_crit_edge, label %if.then30.i.lor.end.i_crit_edge

if.then30.i.lor.end.i_crit_edge:                  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

if.then30.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %129 = ptrtoint ptr %base.i149 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base.i149, align 4
  %131 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data, align 8
  %ctl_offs26.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %ctl_offs26.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ctl_offs26.i, align 4
  %call27.i = call i32 @regmap_read(ptr noundef %130, i32 noundef %134, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool33.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool33.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.lor.end.i_crit_edge

for.end.i.lor.end.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %135 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tmp.i, align 4
  %and34.i = and i32 %136, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %cmp35.i = icmp eq i32 %and34.i, 0
  br i1 %cmp35.i, label %lor.rhs.i.if.end41.i_crit_edge, label %lor.rhs.i.scpsys_sram_enable.exit.thread_crit_edge

lor.rhs.i.scpsys_sram_enable.exit.thread_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scpsys_sram_enable.exit.thread

lor.rhs.i.if.end41.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

lor.end.i:                                        ; preds = %for.end.i.lor.end.i_crit_edge, %if.then30.i.lor.end.i_crit_edge, %if.end57.lor.end.i_crit_edge
  %tobool33.not84.i = phi i32 [ %call27.i, %for.end.i.lor.end.i_crit_edge ], [ %call1592.i, %if.end57.lor.end.i_crit_edge ], [ %call15.i, %if.then30.i.lor.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool33.not84.i)
  %cmp39.i = icmp slt i32 %tobool33.not84.i, 0
  br i1 %cmp39.i, label %lor.end.i.scpsys_sram_enable.exit.thread_crit_edge, label %lor.end.i.if.end41.i_crit_edge

lor.end.i.if.end41.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

lor.end.i.scpsys_sram_enable.exit.thread_crit_edge: ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scpsys_sram_enable.exit.thread

if.end41.i:                                       ; preds = %lor.end.i.if.end41.i_crit_edge, %lor.rhs.i.if.end41.i_crit_edge
  %137 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data, align 8
  %caps.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %138, i32 0, i32 5
  %139 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %caps.i, align 4
  %141 = and i8 %140, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool44.not.i = icmp eq i8 %141, 0
  br i1 %tobool44.not.i, label %if.end41.i.if.end61_crit_edge, label %if.then45.i

if.end41.i.if.end61_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %base.i149 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i149, align 4
  %ctl_offs48.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %138, i32 0, i32 2
  %144 = ptrtoint ptr %ctl_offs48.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ctl_offs48.i, align 4
  %call.i78.i = call i32 @regmap_update_bits_base(ptr noundef %143, i32 noundef %145, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %146(i32 noundef 214748) #7
  %147 = ptrtoint ptr %base.i149 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i149, align 4
  %149 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data, align 8
  %ctl_offs52.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %ctl_offs52.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ctl_offs52.i, align 4
  %call.i79.i = call i32 @regmap_update_bits_base(ptr noundef %148, i32 noundef %152, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end61

scpsys_sram_enable.exit.thread:                   ; preds = %lor.end.i.scpsys_sram_enable.exit.thread_crit_edge, %lor.rhs.i.scpsys_sram_enable.exit.thread_crit_edge
  %retval.0.i153.ph = phi i32 [ -110, %lor.rhs.i.scpsys_sram_enable.exit.thread_crit_edge ], [ %tobool33.not84.i, %lor.end.i.scpsys_sram_enable.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %err_disable_subsys_clks

if.end61:                                         ; preds = %if.then45.i, %if.end41.i.if.end61_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  %call62 = call fastcc i32 @scpsys_bus_protect_disable(ptr noundef %genpd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %err_disable_sram, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_disable_sram:                                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call fastcc i32 @scpsys_sram_disable(ptr noundef %genpd)
  br label %err_disable_subsys_clks

err_disable_subsys_clks:                          ; preds = %err_disable_sram, %scpsys_sram_enable.exit.thread
  %ret.0 = phi i32 [ %call62, %err_disable_sram ], [ %retval.0.i153.ph, %scpsys_sram_enable.exit.thread ]
  %153 = ptrtoint ptr %num_subsys_clks to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_subsys_clks, align 8
  %155 = ptrtoint ptr %subsys_clks to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %subsys_clks, align 4
  call void @clk_bulk_disable(i32 noundef %154, ptr noundef %156) #7
  call void @clk_bulk_unprepare(i32 noundef %154, ptr noundef %156) #7
  br label %err_pwr_ack

err_pwr_ack:                                      ; preds = %err_disable_subsys_clks, %if.then3.i144, %if.end41.err_pwr_ack_crit_edge, %for.end.err_pwr_ack_crit_edge
  %ret.1 = phi i32 [ -110, %for.end.err_pwr_ack_crit_edge ], [ %ret.0, %err_disable_subsys_clks ], [ %call1.i141, %if.then3.i144 ], [ %call.i139, %if.end41.err_pwr_ack_crit_edge ]
  %157 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_clks, align 8
  %159 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %clks, align 4
  call void @clk_bulk_disable(i32 noundef %158, ptr noundef %160) #7
  call void @clk_bulk_unprepare(i32 noundef %158, ptr noundef %160) #7
  br label %err_reg

err_reg:                                          ; preds = %err_pwr_ack, %if.then3.i, %if.end.err_reg_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_pwr_ack ], [ %call1.i, %if.then3.i ], [ %call.i112, %if.end.err_reg_crit_edge ]
  %161 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %supply, align 8
  %tobool.not.i154 = icmp eq ptr %162, null
  br i1 %tobool.not.i154, label %err_reg.cleanup_crit_edge, label %cond.true.i156

err_reg.cleanup_crit_edge:                        ; preds = %err_reg
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.true.i156:                                   ; preds = %err_reg
  call void @__sanitizer_cov_trace_pc() #9
  %call.i155 = call i32 @regulator_disable(ptr noundef nonnull %162) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i156, %err_reg.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %scpsys_regulator_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %scpsys_regulator_enable.exit.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ], [ %ret.2, %err_reg.cleanup_crit_edge ], [ %ret.2, %cond.true.i156 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpsys_power_off(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  %status.i95 = alloca i32, align 4
  %status2.i96 = alloca i32, align 4
  %status.i = alloca i32, align 4
  %status2.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %scpsys1 = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 2
  %0 = ptrtoint ptr %scpsys1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scpsys1, align 4
  %data.i = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 1
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 8
  %bp_infracfg.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %3, i32 0, i32 6
  %infracfg.i = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 7
  %4 = ptrtoint ptr %infracfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %infracfg.i, align 8
  %call.i = tail call fastcc i32 @_scpsys_bus_protect_enable(ptr noundef %bp_infracfg.i, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.scpsys_bus_protect_enable.exit_crit_edge

entry.scpsys_bus_protect_enable.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %scpsys_bus_protect_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 8
  %bp_smi.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %7, i32 0, i32 7
  %smi.i = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 8
  %8 = ptrtoint ptr %smi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smi.i, align 4
  %call3.i = tail call fastcc i32 @_scpsys_bus_protect_enable(ptr noundef %bp_smi.i, ptr noundef %9) #7
  br label %scpsys_bus_protect_enable.exit

scpsys_bus_protect_enable.exit:                   ; preds = %if.end.i, %entry.scpsys_bus_protect_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %entry.scpsys_bus_protect_enable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %scpsys_bus_protect_enable.exit.cleanup_crit_edge, label %if.end

scpsys_bus_protect_enable.exit.cleanup_crit_edge: ; preds = %scpsys_bus_protect_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %scpsys_bus_protect_enable.exit
  %call3 = tail call fastcc i32 @scpsys_sram_disable(ptr noundef %genpd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %num_subsys_clks = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 5
  %10 = ptrtoint ptr %num_subsys_clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_subsys_clks, align 8
  %subsys_clks = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 6
  %12 = ptrtoint ptr %subsys_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subsys_clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %11, ptr noundef %13) #7
  tail call void @clk_bulk_unprepare(i32 noundef %11, ptr noundef %13) #7
  %base = getelementptr inbounds %struct.scpsys, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 8
  %ctl_offs = getelementptr inbounds %struct.scpsys_domain_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ctl_offs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctl_offs, align 4
  %call.i86 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %19, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 8
  %ctl_offs10 = getelementptr inbounds %struct.scpsys_domain_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ctl_offs10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctl_offs10, align 4
  %call.i87 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %25, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 8
  %ctl_offs14 = getelementptr inbounds %struct.scpsys_domain_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ctl_offs14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctl_offs14, align 4
  %call.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %31, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 8
  %ctl_offs18 = getelementptr inbounds %struct.scpsys_domain_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ctl_offs18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctl_offs18, align 4
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef %37, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 8
  %ctl_offs22 = getelementptr inbounds %struct.scpsys_domain_data, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %ctl_offs22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctl_offs22, align 4
  %call.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %43, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call24 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call24, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 283) #7
  br label %for.cond

for.cond:                                         ; preds = %if.then47, %if.end6
  %44 = ptrtoint ptr %scpsys1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %scpsys1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %46 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %status.i, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status2.i) #7
  %47 = ptrtoint ptr %status2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %status2.i, align 4, !annotation !185
  %base.i = getelementptr inbounds %struct.scpsys, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %soc_data.i = getelementptr inbounds %struct.scpsys, ptr %45, i32 0, i32 2
  %50 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %soc_data.i, align 4
  %pwr_sta_offs.i = getelementptr inbounds %struct.scpsys_soc_data, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %pwr_sta_offs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pwr_sta_offs.i, align 4
  %call.i91 = call i32 @regmap_read(ptr noundef %49, i32 noundef %53, ptr noundef nonnull %status.i) #7
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 8
  %sta_mask.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %sta_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sta_mask.i, align 4
  %58 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status.i, align 4
  %and.i = and i32 %59, %57
  store i32 %and.i, ptr %status.i, align 4
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %62 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %soc_data.i, align 4
  %pwr_sta2nd_offs.i = getelementptr inbounds %struct.scpsys_soc_data, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %pwr_sta2nd_offs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pwr_sta2nd_offs.i, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %61, i32 noundef %65, ptr noundef nonnull %status2.i) #7
  %66 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i, align 8
  %sta_mask6.i = getelementptr inbounds %struct.scpsys_domain_data, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %sta_mask6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sta_mask6.i, align 4
  %70 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status2.i, align 4
  %and7.i = and i32 %71, %69
  %72 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i93 = icmp ne i32 %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.i = icmp ne i32 %and7.i, 0
  %spec.select.i = select i1 %tobool.not.i93, i1 %tobool8.i, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br i1 %spec.select.i, label %land.lhs.true, label %for.cond.if.end53_crit_edge

for.cond.if.end53_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

land.lhs.true:                                    ; preds = %for.cond
  %call39 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call39, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then47

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %74 = ptrtoint ptr %scpsys1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %scpsys1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i95) #7
  %76 = ptrtoint ptr %status.i95 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %status.i95, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status2.i96) #7
  %77 = ptrtoint ptr %status2.i96 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %status2.i96, align 4, !annotation !185
  %base.i98 = getelementptr inbounds %struct.scpsys, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %base.i98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i98, align 4
  %soc_data.i99 = getelementptr inbounds %struct.scpsys, ptr %75, i32 0, i32 2
  %80 = ptrtoint ptr %soc_data.i99 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %soc_data.i99, align 4
  %pwr_sta_offs.i100 = getelementptr inbounds %struct.scpsys_soc_data, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %pwr_sta_offs.i100 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pwr_sta_offs.i100, align 4
  %call.i101 = call i32 @regmap_read(ptr noundef %79, i32 noundef %83, ptr noundef nonnull %status.i95) #7
  %84 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i, align 8
  %sta_mask.i103 = getelementptr inbounds %struct.scpsys_domain_data, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %sta_mask.i103 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sta_mask.i103, align 4
  %88 = ptrtoint ptr %status.i95 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %status.i95, align 4
  %and.i104 = and i32 %89, %87
  store i32 %and.i104, ptr %status.i95, align 4
  %90 = ptrtoint ptr %base.i98 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i98, align 4
  %92 = ptrtoint ptr %soc_data.i99 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %soc_data.i99, align 4
  %pwr_sta2nd_offs.i105 = getelementptr inbounds %struct.scpsys_soc_data, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %pwr_sta2nd_offs.i105 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pwr_sta2nd_offs.i105, align 4
  %call4.i106 = call i32 @regmap_read(ptr noundef %91, i32 noundef %95, ptr noundef nonnull %status2.i96) #7
  %96 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data.i, align 8
  %sta_mask6.i107 = getelementptr inbounds %struct.scpsys_domain_data, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %sta_mask6.i107 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sta_mask6.i107, align 4
  %100 = ptrtoint ptr %status2.i96 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %status2.i96, align 4
  %and7.i108 = and i32 %101, %99
  %102 = ptrtoint ptr %status.i95 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %status.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i109 = icmp ne i32 %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i108)
  %tobool8.i110 = icmp ne i32 %and7.i108, 0
  %spec.select.i111 = select i1 %tobool.not.i109, i1 %tobool8.i110, i1 false
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status2.i96) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i95) #7
  br i1 %spec.select.i111, label %for.end.cleanup_crit_edge, label %for.end.if.end53_crit_edge

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %for.end.if.end53_crit_edge, %for.cond.if.end53_crit_edge
  %num_clks = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 3
  %104 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_clks, align 8
  %clks = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 4
  %106 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clks, align 4
  call void @clk_bulk_disable(i32 noundef %105, ptr noundef %107) #7
  call void @clk_bulk_unprepare(i32 noundef %105, ptr noundef %107) #7
  %supply = getelementptr inbounds %struct.scpsys_domain, ptr %genpd, i32 0, i32 9
  %108 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %supply, align 8
  %tobool.not.i112 = icmp eq ptr %109, null
  br i1 %tobool.not.i112, label %if.end53.cleanup_crit_edge, label %cond.true.i

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.true.i:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %call.i113 = call i32 @regulator_disable(ptr noundef nonnull %109) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i, %if.end53.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %scpsys_bus_protect_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %scpsys_bus_protect_enable.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -110, %for.end.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ 0, %cond.true.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scpsys_bus_protect_disable(ptr nocapture noundef readonly %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.scpsys_domain, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %bp_smi = getelementptr inbounds %struct.scpsys_domain_data, ptr %1, i32 0, i32 7
  %smi = getelementptr inbounds %struct.scpsys_domain, ptr %pd, i32 0, i32 8
  %2 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smi, align 4
  %call = tail call fastcc i32 @_scpsys_bus_protect_disable(ptr noundef %bp_smi, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %bp_infracfg = getelementptr inbounds %struct.scpsys_domain_data, ptr %5, i32 0, i32 6
  %infracfg = getelementptr inbounds %struct.scpsys_domain, ptr %pd, i32 0, i32 7
  %6 = ptrtoint ptr %infracfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %infracfg, align 8
  %call3 = tail call fastcc i32 @_scpsys_bus_protect_disable(ptr noundef %bp_infracfg, ptr noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scpsys_sram_disable(ptr nocapture noundef readonly %pd) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.scpsys_domain, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %sram_pdn_ack_bits = getelementptr inbounds %struct.scpsys_domain_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sram_pdn_ack_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sram_pdn_ack_bits, align 4
  %scpsys1 = getelementptr inbounds %struct.scpsys_domain, ptr %pd, i32 0, i32 2
  %4 = ptrtoint ptr %scpsys1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scpsys1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp, align 4, !annotation !185
  %caps = getelementptr inbounds %struct.scpsys_domain_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %caps, align 4
  %9 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.scpsys, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %ctl_offs = getelementptr inbounds %struct.scpsys_domain_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ctl_offs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctl_offs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #7
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %ctl_offs6 = getelementptr inbounds %struct.scpsys_domain_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ctl_offs6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctl_offs6, align 4
  %call.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %20, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base8 = getelementptr inbounds %struct.scpsys, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base8, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 8
  %ctl_offs10 = getelementptr inbounds %struct.scpsys_domain_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ctl_offs10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctl_offs10, align 4
  %sram_pdn_bits = getelementptr inbounds %struct.scpsys_domain_data, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %sram_pdn_bits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sram_pdn_bits, align 4
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %26, i32 noundef %28, i32 noundef %28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call13 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call13, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 114) #7
  %29 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base8, align 4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 8
  %ctl_offs2690 = getelementptr inbounds %struct.scpsys_domain_data, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ctl_offs2690 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctl_offs2690, align 4
  %call2791 = call i32 @regmap_read(ptr noundef %30, i32 noundef %34, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2791)
  %tobool28.not92 = icmp eq i32 %call2791, 0
  br i1 %tobool28.not92, label %if.end.lor.lhs.false_crit_edge, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then46.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %35 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tmp, align 4
  %and29 = and i32 %36, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %and29, i32 %3)
  %cmp30 = icmp eq i32 %and29, %3
  br i1 %cmp30, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call35 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call35, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call35, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then46

if.then46:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %37 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base8, align 4
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 8
  %ctl_offs26 = getelementptr inbounds %struct.scpsys_domain_data, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ctl_offs26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctl_offs26, align 4
  %call27 = call i32 @regmap_read(ptr noundef %38, i32 noundef %42, ptr noundef nonnull %tmp) #7
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then46.lor.lhs.false_crit_edge, label %if.then46.lor.end_crit_edge

if.then46.lor.end_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.then46.lor.lhs.false_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %43 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base8, align 4
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 8
  %ctl_offs42 = getelementptr inbounds %struct.scpsys_domain_data, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %ctl_offs42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctl_offs42, align 4
  %call43 = call i32 @regmap_read(ptr noundef %44, i32 noundef %48, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool49.not = icmp eq i32 %call43, 0
  br i1 %tobool49.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %49 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tmp, align 4
  %and50 = and i32 %50, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %and50, i32 %3)
  %cmp51 = icmp eq i32 %and50, %3
  %phi.sel = select i1 %cmp51, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then46.lor.end_crit_edge, %if.end.lor.end_crit_edge
  %tobool49.not83 = phi i32 [ %call43, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call2791, %if.end.lor.end_crit_edge ], [ %call27, %if.then46.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %tobool49.not83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_scpsys_bus_protect_disable(ptr nocapture noundef readonly %bpd, ptr noundef %regmap) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0109 = phi i32 [ 4, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !185
  %arrayidx = getelementptr %struct.scpsys_bus_prot_data, ptr %bpd, i32 %i.0109
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %bus_prot_reg_update = getelementptr %struct.scpsys_bus_prot_data, ptr %bpd, i32 %i.0109, i32 4
  %3 = ptrtoint ptr %bus_prot_reg_update to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bus_prot_reg_update, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %bus_prot_clr6 = getelementptr %struct.scpsys_bus_prot_data, ptr %bpd, i32 %i.0109, i32 2
  %5 = ptrtoint ptr %bus_prot_clr6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_prot_clr6, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %6, i32 noundef %2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 @regmap_write(ptr noundef %regmap, i32 noundef %6, i32 noundef %2) #7
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %ignore_clr_ack = getelementptr %struct.scpsys_bus_prot_data, ptr %bpd, i32 %i.0109, i32 5
  %7 = ptrtoint ptr %ignore_clr_ack to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ignore_clr_ack, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12:                                         ; preds = %if.end8
  %call13 = call i64 @ktime_get() #7
  %add.i = add i64 %call13, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 174) #7
  %bus_prot_sta = getelementptr %struct.scpsys_bus_prot_data, ptr %bpd, i32 %i.0109, i32 3
  %9 = ptrtoint ptr %bus_prot_sta to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_prot_sta, align 4
  %call26107 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26107)
  %tobool27.not108 = icmp eq i32 %call26107, 0
  br i1 %tobool27.not108, label %if.end12.lor.lhs.false_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12.lor.lhs.false_crit_edge:                 ; preds = %if.end12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then41.lor.lhs.false_crit_edge, %if.end12.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %lor.lhs.false.lor.end_crit_edge, label %land.lhs.true

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call32 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call32, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call32, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then41

if.then41:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %13 = ptrtoint ptr %bus_prot_sta to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_prot_sta, align 4
  %call26 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %14, ptr noundef nonnull %val) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then41.lor.lhs.false_crit_edge, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41.lor.lhs.false_crit_edge:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %bus_prot_sta to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_prot_sta, align 4
  %call38 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %16, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool43.not = icmp eq i32 %call38, 0
  br i1 %tobool43.not, label %for.end.lor.end_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and44 = and i32 %18, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %lor.end.for.inc_crit_edge, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.end.for.inc_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup:                                          ; preds = %lor.end.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %.ph = phi i32 [ %call26, %if.then41.cleanup_crit_edge ], [ %call38, %for.end.cleanup_crit_edge ], [ %call26107, %if.end12.cleanup_crit_edge ], [ -110, %lor.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %cleanup54

for.inc:                                          ; preds = %lor.end.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  %dec = add nsw i32 %i.0109, -1
  %cmp = icmp sgt i32 %i.0109, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup54_crit_edge

for.inc.cleanup54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup54:                                        ; preds = %for.inc.cleanup54_crit_edge, %cleanup
  %retval.2 = phi i32 [ %.ph, %cleanup ], [ 0, %for.inc.cleanup54_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_scpsys_bus_protect_enable(ptr nocapture noundef readonly %bpd, ptr noundef %regmap) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0108 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !185
  %arrayidx = getelementptr %struct.scpsys_bus_prot_data, ptr %bpd, i32 %i.0108
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %bus_prot_reg_update = getelementptr %struct.scpsys_bus_prot_data, ptr %bpd, i32 %i.0108, i32 4
  %3 = ptrtoint ptr %bus_prot_reg_update to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bus_prot_reg_update, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %bus_prot_set6 = getelementptr %struct.scpsys_bus_prot_data, ptr %bpd, i32 %i.0108, i32 1
  %5 = ptrtoint ptr %bus_prot_set6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_prot_set6, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef %6, i32 noundef %2, i32 noundef %2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 @regmap_write(ptr noundef %regmap, i32 noundef %6, i32 noundef %2) #7
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %call9 = call i64 @ktime_get() #7
  %add.i = add i64 %call9, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 134) #7
  %bus_prot_sta = getelementptr %struct.scpsys_bus_prot_data, ptr %bpd, i32 %i.0108, i32 3
  %7 = ptrtoint ptr %bus_prot_sta to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_prot_sta, align 4
  %call22106 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %8, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22106)
  %tobool23.not107 = icmp eq i32 %call22106, 0
  br i1 %tobool23.not107, label %if.end8.lor.lhs.false_crit_edge, label %if.end8.cleanup.thread_crit_edge

if.end8.cleanup.thread_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end8.lor.lhs.false_crit_edge:                  ; preds = %if.end8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then37.lor.lhs.false_crit_edge, %if.end8.lor.lhs.false_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %2)
  %cmp24 = icmp eq i32 %and, %2
  br i1 %cmp24, label %lor.lhs.false.lor.end_crit_edge, label %land.lhs.true

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call28 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call28, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call28, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then37

if.then37:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %11 = ptrtoint ptr %bus_prot_sta to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_prot_sta, align 4
  %call22 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %12, ptr noundef nonnull %val) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then37.lor.lhs.false_crit_edge, label %if.then37.cleanup.thread_crit_edge

if.then37.cleanup.thread_crit_edge:               ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then37.lor.lhs.false_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %bus_prot_sta to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_prot_sta, align 4
  %call34 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %14, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool39.not = icmp eq i32 %call34, 0
  br i1 %tobool39.not, label %for.end.lor.end_crit_edge, label %for.end.cleanup.thread_crit_edge

for.end.cleanup.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and40 = and i32 %16, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %and40, i32 %2)
  %cmp41 = icmp eq i32 %and40, %2
  br i1 %cmp41, label %for.inc, label %lor.end.cleanup.thread_crit_edge

lor.end.cleanup.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.end.cleanup.thread_crit_edge, %for.end.cleanup.thread_crit_edge, %if.then37.cleanup.thread_crit_edge, %if.end8.cleanup.thread_crit_edge
  %.ph = phi i32 [ %call22, %if.then37.cleanup.thread_crit_edge ], [ %call34, %for.end.cleanup.thread_crit_edge ], [ %call22106, %if.end8.cleanup.thread_crit_edge ], [ -110, %lor.end.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %cleanup50

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %cleanup50

for.inc:                                          ; preds = %lor.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.cleanup50_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup50_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

cleanup50:                                        ; preds = %for.inc.cleanup50_crit_edge, %cleanup, %cleanup.thread
  %retval.2 = phi i32 [ %.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %for.inc.cleanup50_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !87, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__initcall__kmod_mtk_pm_domains__290_654_scpsys_pm_domain_driver_init6, !1, !"__initcall__kmod_mtk_pm_domains__290_654_scpsys_pm_domain_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 654, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 649, i32 11}
!4 = !{ptr @scpsys_pm_domain_driver, !5, !"scpsys_pm_domain_driver", i1 false, i1 false}
!5 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 646, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 584, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @scpsys_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @scpsys_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 600, i32 3}
!16 = !{ptr @scpsys_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @scpsys_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 606, i32 3}
!20 = !{ptr @scpsys_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @scpsys_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 629, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @scpsys_probe.__UNIQUE_ID_ddebug289, !23, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 635, i32 3}
!28 = !{ptr @scpsys_probe._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @scpsys_probe._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 308, i32 35}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 310, i32 3}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @scpsys_add_one_domain._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @scpsys_add_one_domain._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 316, i32 3}
!39 = !{ptr @scpsys_add_one_domain._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @scpsys_add_one_domain._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 322, i32 3}
!43 = !{ptr @scpsys_add_one_domain._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @scpsys_add_one_domain._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 342, i32 48}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 346, i32 11}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 352, i32 64}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 356, i32 36}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 367, i32 3}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 393, i32 11}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 421, i32 4}
!59 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @scpsys_add_one_domain._entry.32, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @scpsys_add_one_domain._entry_ptr.35, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 426, i32 4}
!64 = !{ptr @scpsys_add_one_domain._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @scpsys_add_one_domain._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 433, i32 3}
!68 = !{ptr @scpsys_add_one_domain._entry.39, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @scpsys_add_one_domain._entry_ptr.41, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 473, i32 4}
!72 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @scpsys_add_subdomain._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @scpsys_add_subdomain._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 479, i32 4}
!77 = !{ptr @scpsys_add_subdomain._entry.44, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @scpsys_add_subdomain._entry_ptr.46, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 488, i32 36}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 495, i32 4}
!83 = !{ptr @scpsys_add_subdomain._entry.48, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @scpsys_add_subdomain._entry_ptr.50, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 499, i32 4}
!87 = !{ptr @scpsys_add_subdomain.__UNIQUE_ID_ddebug288, !86, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 529, i32 3}
!90 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @scpsys_remove_one_domain._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @scpsys_remove_one_domain._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @scpsys_of_match, !94, !"scpsys_of_match", i1 false, i1 false}
!94 = !{!"../drivers/soc/mediatek/mtk-pm-domains.c", i32 552, i32 34}
!95 = !{ptr @mt8167_scpsys_data, !96, !"mt8167_scpsys_data", i1 false, i1 false}
!96 = !{!"../drivers/soc/mediatek/mt8167-pm-domains.h", i32 85, i32 37}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/soc/mediatek/mt8167-pm-domains.h", i32 18, i32 11}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/soc/mediatek/mt8167-pm-domains.h", i32 30, i32 11}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/soc/mediatek/mt8167-pm-domains.h", i32 38, i32 11}
!103 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/mediatek/mt8167-pm-domains.h", i32 71, i32 11}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/soc/mediatek/mt8167-pm-domains.h", i32 46, i32 11}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/soc/mediatek/mt8167-pm-domains.h", i32 57, i32 11}
!109 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/soc/mediatek/mt8167-pm-domains.h", i32 64, i32 11}
!111 = !{ptr @scpsys_domain_data_mt8167, !112, !"scpsys_domain_data_mt8167", i1 false, i1 false}
!112 = !{!"../drivers/soc/mediatek/mt8167-pm-domains.h", i32 16, i32 40}
!113 = !{ptr @mt8173_scpsys_data, !114, !"mt8173_scpsys_data", i1 false, i1 false}
!114 = !{!"../drivers/soc/mediatek/mt8173-pm-domains.h", i32 98, i32 37}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/soc/mediatek/mt8173-pm-domains.h", i32 22, i32 11}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/soc/mediatek/mt8173-pm-domains.h", i32 47, i32 11}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/soc/mediatek/mt8173-pm-domains.h", i32 54, i32 11}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/soc/mediatek/mt8173-pm-domains.h", i32 61, i32 11}
!123 = !{ptr @scpsys_domain_data_mt8173, !124, !"scpsys_domain_data_mt8173", i1 false, i1 false}
!124 = !{!"../drivers/soc/mediatek/mt8173-pm-domains.h", i32 13, i32 40}
!125 = !{ptr @mt8183_scpsys_data, !126, !"mt8183_scpsys_data", i1 false, i1 false}
!126 = !{!"../drivers/soc/mediatek/mt8183-pm-domains.h", i32 230, i32 37}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/soc/mediatek/mt8183-pm-domains.h", i32 48, i32 11}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/soc/mediatek/mt8183-pm-domains.h", i32 55, i32 11}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/soc/mediatek/mt8183-pm-domains.h", i32 75, i32 11}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/soc/mediatek/mt8183-pm-domains.h", i32 94, i32 11}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/soc/mediatek/mt8183-pm-domains.h", i32 166, i32 11}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/soc/mediatek/mt8183-pm-domains.h", i32 193, i32 11}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/soc/mediatek/mt8183-pm-domains.h", i32 211, i32 11}
!141 = !{ptr @scpsys_domain_data_mt8183, !142, !"scpsys_domain_data_mt8183", i1 false, i1 false}
!142 = !{!"../drivers/soc/mediatek/mt8183-pm-domains.h", i32 13, i32 40}
!143 = !{ptr @mt8192_scpsys_data, !144, !"mt8192_scpsys_data", i1 false, i1 false}
!144 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 306, i32 37}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 50, i32 11}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 57, i32 11}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 82, i32 11}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 89, i32 11}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 96, i32 11}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 103, i32 11}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 110, i32 11}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 146, i32 11}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 180, i32 11}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 197, i32 11}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 248, i32 11}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 284, i32 11}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 291, i32 11}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 298, i32 11}
!173 = !{ptr @scpsys_domain_data_mt8192, !174, !"scpsys_domain_data_mt8192", i1 false, i1 false}
!174 = !{!"../drivers/soc/mediatek/mt8192-pm-domains.h", i32 13, i32 40}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i64 2148736449, i64 2148736454, i64 2148736467, i64 2148736511, i64 2148736545, i64 2148736566}
!185 = !{!"auto-init"}
!186 = !{!"branch_weights", i32 1, i32 2000}
!187 = !{i8 0, i8 2}
