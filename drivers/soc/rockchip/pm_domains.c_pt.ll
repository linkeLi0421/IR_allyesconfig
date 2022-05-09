; ModuleID = '/llk/IR_all_yes/drivers/soc/rockchip/pm_domains.c_pt.bc'
source_filename = "../drivers/soc/rockchip/pm_domains.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rockchip_pmu_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rockchip_domain_info = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32 }
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
%struct.rockchip_pmu = type { ptr, ptr, ptr, %struct.mutex, %struct.genpd_onecell_data, [0 x ptr] }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.rockchip_pm_domain = type { %struct.generic_pm_domain, ptr, ptr, i32, ptr, [5 x ptr], i32, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_pm_domains__176_1083_rockchip_pm_domain_drv_register2 = internal global ptr @rockchip_pm_domain_drv_register, section ".initcall2.init", align 4
@rockchip_pm_domain_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_pm_domain_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rockchip_pm_domain_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rockchip-pm-domain\00", [45 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_dt_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3036_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3128_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3366-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3366_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_pmu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_pmu }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 642, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device tree node not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_pm_domain_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/soc/rockchip/pm_domains.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_probe._entry_ptr = internal global ptr @rockchip_pm_domain_probe._entry, section ".printk_index", align 4
@rockchip_pm_domain_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 648, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"missing pmu data\0A\00", [46 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_probe._entry_ptr.8 = internal global ptr @rockchip_pm_domain_probe._entry.6, section ".printk_index", align 4
@rockchip_pm_domain_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pmu->mutex\00", [20 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 670, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no parent for syscon devices\0A\00", [34 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_probe._entry_ptr.12 = internal global ptr @rockchip_pm_domain_probe._entry.10, section ".printk_index", align 4
@rockchip_pm_domain_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 676, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no regmap available\0A\00", [43 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_probe._entry_ptr.15 = internal global ptr @rockchip_pm_domain_probe._entry.13, section ".printk_index", align 4
@rockchip_pm_domain_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to handle node %pOFn: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_probe._entry_ptr.18 = internal global ptr @rockchip_pm_domain_probe._entry.16, section ".printk_index", align 4
@rockchip_pm_domain_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 705, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to handle subdomain node %pOFn: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_probe._entry_ptr.21 = internal global ptr @rockchip_pm_domain_probe._entry.19, section ".printk_index", align 4
@rockchip_pm_domain_probe.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.2, ptr @.str.3, ptr @.str.23, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm_domains\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no power domains defined\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 718, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add provider: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rockchip_pm_domain_probe._entry_ptr.26 = internal global ptr @rockchip_pm_domain_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rockchip_pm_add_one_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%pOFn: failed to retrieve domain id (reg): %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip_pm_add_one_domain\00", [37 x i8] zeroinitializer }, align 32
@rockchip_pm_add_one_domain._entry_ptr = internal global ptr @rockchip_pm_add_one_domain._entry, section ".printk_index", align 4
@rockchip_pm_add_one_domain._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%pOFn: invalid domain id %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rockchip_pm_add_one_domain._entry_ptr.32 = internal global ptr @rockchip_pm_add_one_domain._entry.30, section ".printk_index", align 4
@rockchip_pm_add_one_domain._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%pOFn: undefined domain id %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rockchip_pm_add_one_domain._entry_ptr.35 = internal global ptr @rockchip_pm_add_one_domain._entry.33, section ".printk_index", align 4
@rockchip_pm_add_one_domain.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.29, ptr @.str.3, ptr @.str.36, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%pOFn: doesn't have clocks: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_pm_add_one_domain._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%pOFn: failed to get clk at index %d: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rockchip_pm_add_one_domain._entry_ptr.39 = internal global ptr @rockchip_pm_add_one_domain._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm_qos\00", [25 x i8] zeroinitializer }, align 32
@rockchip_pm_add_one_domain._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.29, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to power on domain '%pOFn': %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rockchip_pm_add_one_domain._entry_ptr.43 = internal global ptr @rockchip_pm_add_one_domain._entry.41, section ".printk_index", align 4
@rockchip_pd_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip_pd_power\00", [46 x i8] zeroinitializer }, align 32
@rockchip_pd_power._entry_ptr = internal global ptr @rockchip_pd_power._entry, section ".printk_index", align 4
@rockchip_pmu_set_idle_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get ack on domain '%s', val=0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip_pmu_set_idle_request\00", [34 x i8] zeroinitializer }, align 32
@rockchip_pmu_set_idle_request._entry_ptr = internal global ptr @rockchip_pmu_set_idle_request._entry, section ".printk_index", align 4
@rockchip_pmu_set_idle_request._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to set idle on domain '%s', val=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@rockchip_pmu_set_idle_request._entry_ptr.50 = internal global ptr @rockchip_pmu_set_idle_request._entry.48, section ".printk_index", align 4
@rockchip_do_pmu_set_power_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set domain '%s', val=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rockchip_do_pmu_set_power_domain\00", [63 x i8] zeroinitializer }, align 32
@rockchip_do_pmu_set_power_domain._entry_ptr = internal global ptr @rockchip_do_pmu_set_power_domain._entry, section ".printk_index", align 4
@rockchip_pd_attach_dev.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_pd_attach_dev\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"attaching to power domain '%s'\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_pd_attach_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm_clk_create failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rockchip_pd_attach_dev._entry_ptr = internal global ptr @rockchip_pd_attach_dev._entry, section ".printk_index", align 4
@rockchip_pd_attach_dev.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.53, ptr @.str.3, ptr @.str.56, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"adding clock '%pC' to list of PM clocks\0A\00", [55 x i8] zeroinitializer }, align 32
@rockchip_pd_attach_dev._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.3, i32 371, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pm_clk_add_clk failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_pd_attach_dev._entry_ptr.59 = internal global ptr @rockchip_pd_attach_dev._entry.57, section ".printk_index", align 4
@rockchip_pd_detach_dev.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_pd_detach_dev\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"detaching from power domain '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_pm_add_subdomain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.62, ptr @.str.3, i32 589, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_pm_add_subdomain\00", [38 x i8] zeroinitializer }, align 32
@rockchip_pm_add_subdomain._entry_ptr = internal global ptr @rockchip_pm_add_subdomain._entry, section ".printk_index", align 4
@rockchip_pm_add_subdomain._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.62, ptr @.str.3, i32 597, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rockchip_pm_add_subdomain._entry_ptr.64 = internal global ptr @rockchip_pm_add_subdomain._entry.63, section ".printk_index", align 4
@rockchip_pm_add_subdomain._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.62, ptr @.str.3, i32 605, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rockchip_pm_add_subdomain._entry_ptr.66 = internal global ptr @rockchip_pm_add_subdomain._entry.65, section ".printk_index", align 4
@rockchip_pm_add_subdomain._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.62, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s failed to add subdomain %s: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_pm_add_subdomain._entry_ptr.69 = internal global ptr @rockchip_pm_add_subdomain._entry.67, section ".printk_index", align 4
@rockchip_pm_add_subdomain.__UNIQUE_ID_ddebug174 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.62, ptr @.str.3, ptr @.str.70, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s add subdomain: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@rockchip_pm_remove_one_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"failed to remove domain '%s' : %d - state may be inconsistent\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip_pm_remove_one_domain\00", [34 x i8] zeroinitializer }, align 32
@rockchip_pm_remove_one_domain._entry_ptr = internal global ptr @rockchip_pm_remove_one_domain._entry, section ".printk_index", align 4
@px30_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 24, i32 32, i32 100, i32 108, i32 108, i32 0, i32 0, i32 0, i32 0, i32 15, ptr @px30_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3036_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 0, i32 0, i32 328, i32 332, i32 332, i32 0, i32 0, i32 0, i32 0, i32 7, ptr @rk3036_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3066_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 8, i32 12, i32 56, i32 12, i32 12, i32 0, i32 0, i32 0, i32 0, i32 11, ptr @rk3066_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3128_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 4, i32 8, i32 12, i32 16, i32 16, i32 0, i32 0, i32 0, i32 0, i32 5, ptr @rk3128_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3188_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 8, i32 12, i32 56, i32 12, i32 12, i32 0, i32 0, i32 0, i32 0, i32 11, ptr @rk3188_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3228_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 0, i32 0, i32 1036, i32 1160, i32 1160, i32 0, i32 0, i32 0, i32 0, i32 11, ptr @rk3228_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3288_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 8, i32 12, i32 16, i32 20, i32 20, i32 52, i32 60, i32 24, i32 24, i32 14, ptr @rk3288_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3328_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 0, i32 0, i32 1044, i32 1156, i32 1156, i32 0, i32 0, i32 0, i32 0, i32 10, ptr @rk3328_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3366_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 12, i32 16, i32 60, i32 64, i32 64, i32 72, i32 80, i32 24, i32 24, i32 12, ptr @rk3366_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3368_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 12, i32 16, i32 60, i32 64, i32 64, i32 72, i32 80, i32 24, i32 24, i32 17, ptr @rk3368_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3399_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 20, i32 24, i32 96, i32 100, i32 104, i32 0, i32 0, i32 0, i32 0, i32 36, ptr @rk3399_pm_domains }, [52 x i8] zeroinitializer }, align 32
@rk3568_pmu = internal constant { %struct.rockchip_pmu_info, [52 x i8] } { %struct.rockchip_pmu_info { i32 160, i32 152, i32 80, i32 104, i32 96, i32 0, i32 0, i32 0, i32 0, i32 16, ptr @rk3568_pm_domains }, [52 x i8] zeroinitializer }, align 32
@px30_pm_domains = internal constant { [15 x %struct.rockchip_domain_info], [132 x i8] } { [15 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.73, i32 32, i32 32, i32 1024, i32 67108864, i32 1024, i8 0, i32 2097152, i32 67108864 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.74, i32 256, i32 256, i32 512, i32 33554432, i32 512, i8 0, i32 16777216, i32 33554432 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.75, i32 1024, i32 1024, i32 64, i32 4194304, i32 64, i8 0, i32 67108864, i32 4194304 }, %struct.rockchip_domain_info { ptr @.str.76, i32 2048, i32 2048, i32 32, i32 2097152, i32 32, i8 0, i32 134217728, i32 2097152 }, %struct.rockchip_domain_info { ptr @.str.77, i32 4096, i32 4096, i32 16384, i32 1073741824, i32 16384, i8 0, i32 268435456, i32 1073741824 }, %struct.rockchip_domain_info { ptr @.str.78, i32 8192, i32 8192, i32 128, i32 8388608, i32 128, i8 0, i32 536870912, i32 8388608 }, %struct.rockchip_domain_info { ptr @.str.79, i32 16384, i32 16384, i32 256, i32 16777216, i32 256, i8 0, i32 1073741824, i32 16777216 }, %struct.rockchip_domain_info { ptr @.str.80, i32 32768, i32 32768, i32 4, i32 262144, i32 4, i8 0, i32 -2147483648, i32 262144 }], [132 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdcard\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmac\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_nand\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpu\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vo\00", [29 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vi\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@rk3036_pm_domains = internal constant { [7 x %struct.rockchip_domain_info], [36 x i8] } { [7 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info { ptr @.str.81, i32 0, i32 0, i32 16384, i32 1073741824, i32 8388608, i8 1, i32 0, i32 1073741824 }, %struct.rockchip_domain_info { ptr @.str.82, i32 0, i32 0, i32 8192, i32 16777216, i32 131072, i8 0, i32 0, i32 536870912 }, %struct.rockchip_domain_info { ptr @.str.83, i32 0, i32 0, i32 4096, i32 33554432, i32 262144, i8 0, i32 0, i32 268435456 }, %struct.rockchip_domain_info { ptr @.str.84, i32 0, i32 0, i32 2048, i32 67108864, i32 524288, i8 0, i32 0, i32 134217728 }, %struct.rockchip_domain_info { ptr @.str.77, i32 0, i32 0, i32 1024, i32 134217728, i32 1048576, i8 0, i32 0, i32 67108864 }, %struct.rockchip_domain_info { ptr @.str.80, i32 0, i32 0, i32 512, i32 268435456, i32 2097152, i8 0, i32 0, i32 33554432 }, %struct.rockchip_domain_info { ptr @.str.85, i32 0, i32 0, i32 256, i32 536870912, i32 4194304, i8 0, i32 0, i32 16777216 }], [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msch\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"peri\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vio\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@rk3066_pm_domains = internal constant { [11 x %struct.rockchip_domain_info], [116 x i8] } { [11 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.86, i32 256, i32 256, i32 16, i32 8388608, i32 268435456, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.84, i32 128, i32 128, i32 32, i32 4194304, i32 134217728, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.80, i32 512, i32 512, i32 8, i32 16777216, i32 536870912, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.83, i32 64, i32 64, i32 4, i32 33554432, i32 1073741824, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.87, i32 0, i32 32, i32 2, i32 67108864, i32 -2147483648, i8 0, i32 0, i32 0 }], [116 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@rk3128_pm_domains = internal constant { [5 x %struct.rockchip_domain_info], [44 x i8] } { [5 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info { ptr @.str.82, i32 1, i32 1, i32 16, i32 16, i32 1048576, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.84, i32 8, i32 8, i32 4, i32 4, i32 262144, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.86, i32 4, i32 4, i32 2, i32 2, i32 131072, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.80, i32 2, i32 2, i32 8, i32 8, i32 524288, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.81, i32 0, i32 0, i32 64, i32 64, i32 4194304, i8 1, i32 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@rk3188_pm_domains = internal constant { [11 x %struct.rockchip_domain_info], [116 x i8] } { [11 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.86, i32 256, i32 256, i32 16, i32 8388608, i32 268435456, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.84, i32 128, i32 128, i32 32, i32 4194304, i32 134217728, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.80, i32 512, i32 512, i32 8, i32 16777216, i32 536870912, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.83, i32 64, i32 64, i32 4, i32 33554432, i32 1073741824, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.87, i32 32, i32 32, i32 2, i32 67108864, i32 -2147483648, i8 0, i32 0, i32 0 }], [116 x i8] zeroinitializer }, align 32
@rk3228_pm_domains = internal constant { [11 x %struct.rockchip_domain_info], [116 x i8] } { [11 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info { ptr @.str.82, i32 0, i32 0, i32 1, i32 65536, i32 1, i8 1, i32 0, i32 65536 }, %struct.rockchip_domain_info { ptr @.str.81, i32 0, i32 0, i32 2, i32 131072, i32 2, i8 1, i32 0, i32 131072 }, %struct.rockchip_domain_info { ptr @.str.88, i32 0, i32 0, i32 4, i32 262144, i32 4, i8 1, i32 0, i32 262144 }, %struct.rockchip_domain_info { ptr @.str.85, i32 0, i32 0, i32 8, i32 524288, i32 8, i8 1, i32 0, i32 524288 }, %struct.rockchip_domain_info { ptr @.str.84, i32 0, i32 0, i32 16, i32 1048576, i32 16, i8 0, i32 0, i32 1048576 }, %struct.rockchip_domain_info { ptr @.str.89, i32 0, i32 0, i32 32, i32 2097152, i32 32, i8 0, i32 0, i32 2097152 }, %struct.rockchip_domain_info { ptr @.str.77, i32 0, i32 0, i32 64, i32 4194304, i32 64, i8 0, i32 0, i32 4194304 }, %struct.rockchip_domain_info { ptr @.str.90, i32 0, i32 0, i32 128, i32 8388608, i32 128, i8 0, i32 0, i32 8388608 }, %struct.rockchip_domain_info { ptr @.str.80, i32 0, i32 0, i32 256, i32 16777216, i32 256, i8 0, i32 0, i32 16777216 }, %struct.rockchip_domain_info { ptr @.str.83, i32 0, i32 0, i32 512, i32 33554432, i32 512, i8 1, i32 0, i32 33554432 }, %struct.rockchip_domain_info { ptr @.str.75, i32 0, i32 0, i32 1024, i32 67108864, i32 1024, i8 0, i32 0, i32 67108864 }], [116 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vop\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdec\00", [27 x i8] zeroinitializer }, align 32
@rk3288_pm_domains = internal constant { [14 x %struct.rockchip_domain_info], [104 x i8] } { [14 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.84, i32 128, i32 128, i32 16, i32 16, i32 1048576, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.91, i32 16384, i32 1024, i32 512, i32 512, i32 33554432, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.86, i32 256, i32 256, i32 8, i32 8, i32 524288, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.80, i32 512, i32 512, i32 4, i32 4, i32 262144, i8 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hevc\00", [27 x i8] zeroinitializer }, align 32
@rk3328_pm_domains = internal constant { [10 x %struct.rockchip_domain_info], [88 x i8] } { [10 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info { ptr @.str.82, i32 0, i32 0, i32 1, i32 1024, i32 1, i8 0, i32 0, i32 65536 }, %struct.rockchip_domain_info { ptr @.str.80, i32 0, i32 0, i32 2, i32 2048, i32 2, i8 0, i32 0, i32 131072 }, %struct.rockchip_domain_info { ptr @.str.88, i32 0, i32 0, i32 4, i32 4096, i32 4, i8 1, i32 0, i32 262144 }, %struct.rockchip_domain_info { ptr @.str.81, i32 0, i32 0, i32 8, i32 8192, i32 8, i8 1, i32 0, i32 524288 }, %struct.rockchip_domain_info { ptr @.str.83, i32 0, i32 0, i32 16, i32 16384, i32 16, i8 1, i32 0, i32 1048576 }, %struct.rockchip_domain_info { ptr @.str.86, i32 0, i32 0, i32 32, i32 32768, i32 32, i8 0, i32 0, i32 2097152 }, %struct.rockchip_domain_info { ptr @.str.91, i32 0, i32 0, i32 64, i32 65536, i32 64, i8 0, i32 0, i32 4194304 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.77, i32 0, i32 0, i32 512, i32 524288, i32 512, i8 0, i32 0, i32 33554432 }, %struct.rockchip_domain_info { ptr @.str.84, i32 0, i32 0, i32 256, i32 262144, i32 256, i8 0, i32 0, i32 16777216 }], [88 x i8] zeroinitializer }, align 32
@rk3366_pm_domains = internal constant { [12 x %struct.rockchip_domain_info], [112 x i8] } { [12 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.83, i32 1024, i32 1024, i32 64, i32 4194304, i32 64, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.84, i32 16384, i32 16384, i32 256, i32 16777216, i32 256, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.86, i32 8192, i32 8192, i32 128, i32 8388608, i32 128, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.90, i32 2048, i32 2048, i32 128, i32 8388608, i32 128, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.92, i32 256, i32 256, i32 512, i32 33554432, i32 512, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.77, i32 4096, i32 4096, i32 128, i32 8388608, i32 128, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.80, i32 32768, i32 32768, i32 4, i32 262144, i32 4, i8 0, i32 0, i32 0 }], [112 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wifibt\00", [25 x i8] zeroinitializer }, align 32
@rk3368_pm_domains = internal constant { [17 x %struct.rockchip_domain_info], [156 x i8] } { [17 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.83, i32 8192, i32 4096, i32 64, i32 4194304, i32 64, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.84, i32 32768, i32 16384, i32 256, i32 16777216, i32 256, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.86, i32 16384, i32 8192, i32 128, i32 8388608, i32 128, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.93, i32 65536, i32 32768, i32 4, i32 262144, i32 4, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.94, i32 131072, i32 65536, i32 4, i32 262144, i32 4, i8 0, i32 0, i32 0 }], [156 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpu_0\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpu_1\00", [26 x i8] zeroinitializer }, align 32
@rk3399_pm_domains = internal constant { [36 x %struct.rockchip_domain_info], [336 x i8] } { [36 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.95, i32 256, i32 256, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.96, i32 512, i32 512, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.97, i32 1024, i32 1024, i32 0, i32 0, i32 0, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.98, i32 0, i32 0, i32 32768, i32 32768, i32 32768, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.99, i32 0, i32 0, i32 65536, i32 65536, i32 65536, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.100, i32 2048, i32 2048, i32 2, i32 2, i32 2, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.101, i32 4096, i32 4096, i32 4, i32 4, i32 4, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.84, i32 16384, i32 16384, i32 131072, i32 131072, i32 131072, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.78, i32 1048576, i32 1048576, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.102, i32 0, i32 0, i32 128, i32 128, i32 128, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.103, i32 0, i32 0, i32 256, i32 256, i32 256, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.104, i32 4194304, i32 4194304, i32 512, i32 512, i32 512, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.105, i32 8388608, i32 8388608, i32 1024, i32 1024, i32 1024, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.106, i32 16777216, i32 16777216, i32 2048, i32 2048, i32 2048, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.75, i32 33554432, i32 33554432, i32 8388608, i32 8388608, i32 8388608, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.107, i32 67108864, i32 67108864, i32 16777216, i32 16777216, i32 16777216, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.108, i32 134217728, i32 134217728, i32 4096, i32 4096, i32 4096, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.109, i32 268435456, i32 268435456, i32 4194304, i32 4194304, i32 4194304, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.110, i32 536870912, i32 536870912, i32 134217728, i32 134217728, i32 134217728, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.111, i32 1073741824, i32 1073741824, i32 268435456, i32 268435456, i32 268435456, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.112, i32 -2147483648, i32 -2147483648, i32 536870912, i32 536870912, i32 536870912, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.113, i32 8192, i32 8192, i32 16384, i32 16384, i32 16384, i8 1, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.114, i32 65536, i32 65536, i32 8, i32 8, i32 8, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.115, i32 131072, i32 131072, i32 16, i32 16, i32 16, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.116, i32 262144, i32 262144, i32 32, i32 32, i32 32, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.117, i32 524288, i32 524288, i32 64, i32 64, i32 64, i8 0, i32 0, i32 0 }, %struct.rockchip_domain_info { ptr @.str.80, i32 32768, i32 32768, i32 1, i32 1, i32 1, i8 0, i32 0, i32 0 }], [336 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tcpd0\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tcpd1\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cci\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cci0\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cci1\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"perilp\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"perihp\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vopb\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vopl\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isp0\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isp1\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdcp\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emmc\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb3\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"edp\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gic\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sd\00", [29 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdioaudio\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"center\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vcodec\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdu\00", [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rga\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iep\00", [28 x i8] zeroinitializer }, align 32
@rk3568_pm_domains = internal constant { [16 x %struct.rockchip_domain_info], [128 x i8] } { [16 x %struct.rockchip_domain_info] [%struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.118, i32 2, i32 2, i32 4, i32 4, i32 4, i8 0, i32 131072, i32 262144 }, %struct.rockchip_domain_info { ptr @.str.80, i32 1, i32 1, i32 2, i32 2, i32 2, i8 0, i32 65536, i32 131072 }, %struct.rockchip_domain_info { ptr @.str.79, i32 64, i32 64, i32 8, i32 8, i32 8, i8 0, i32 4194304, i32 524288 }, %struct.rockchip_domain_info { ptr @.str.78, i32 128, i32 128, i32 16, i32 16, i32 16, i8 0, i32 8388608, i32 1048576 }, %struct.rockchip_domain_info { ptr @.str.116, i32 32, i32 32, i32 32, i32 32, i32 32, i8 0, i32 2097152, i32 2097152 }, %struct.rockchip_domain_info { ptr @.str.77, i32 4, i32 4, i32 64, i32 64, i32 64, i8 0, i32 262144, i32 4194304 }, %struct.rockchip_domain_info zeroinitializer, %struct.rockchip_domain_info { ptr @.str.90, i32 16, i32 16, i32 256, i32 256, i32 256, i8 0, i32 1048576, i32 16777216 }, %struct.rockchip_domain_info { ptr @.str.119, i32 8, i32 8, i32 128, i32 128, i32 128, i8 0, i32 524288, i32 8388608 }, %struct.rockchip_domain_info { ptr @.str.120, i32 256, i32 256, i32 2048, i32 2048, i32 2048, i8 0, i32 16777216, i32 134217728 }], [128 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"npu\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"venc\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pipe\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"rockchip_pm_domain_driver\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1065, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1068, i32 13 }
@___asan_gen_.127 = private unnamed_addr constant [28 x i8] c"rockchip_pm_domain_dt_match\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1013, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 642, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 648, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 661, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 670, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 676, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 696, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 704, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 712, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 718, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 399, i32 37 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 401, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 408, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 415, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 434, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 443, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 454, i32 49 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 495, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 309, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 189, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 198, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 292, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 358, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 362, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 368, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 371, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 384, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 587, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 596, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 603, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 612, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 616, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 534, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [9 x i8] c"px30_pmu\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 867, i32 39 }
@___asan_gen_.331 = private unnamed_addr constant [11 x i8] c"rk3036_pmu\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 878, i32 39 }
@___asan_gen_.334 = private unnamed_addr constant [11 x i8] c"rk3066_pmu\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 887, i32 39 }
@___asan_gen_.337 = private unnamed_addr constant [11 x i8] c"rk3128_pmu\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 898, i32 39 }
@___asan_gen_.340 = private unnamed_addr constant [11 x i8] c"rk3188_pmu\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 909, i32 39 }
@___asan_gen_.343 = private unnamed_addr constant [11 x i8] c"rk3228_pmu\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 920, i32 39 }
@___asan_gen_.346 = private unnamed_addr constant [11 x i8] c"rk3288_pmu\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 929, i32 39 }
@___asan_gen_.349 = private unnamed_addr constant [11 x i8] c"rk3328_pmu\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 946, i32 39 }
@___asan_gen_.352 = private unnamed_addr constant [11 x i8] c"rk3366_pmu\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 955, i32 39 }
@___asan_gen_.355 = private unnamed_addr constant [11 x i8] c"rk3368_pmu\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 972, i32 39 }
@___asan_gen_.358 = private unnamed_addr constant [11 x i8] c"rk3399_pmu\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 989, i32 39 }
@___asan_gen_.361 = private unnamed_addr constant [11 x i8] c"rk3568_pmu\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1002, i32 39 }
@___asan_gen_.364 = private unnamed_addr constant [16 x i8] c"px30_pm_domains\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 729, i32 42 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 730, i32 19 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 731, i32 21 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 732, i32 20 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 733, i32 23 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 734, i32 19 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 735, i32 18 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 736, i32 18 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 737, i32 19 }
@___asan_gen_.391 = private unnamed_addr constant [18 x i8] c"rk3036_pm_domains\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 740, i32 42 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 741, i32 21 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 742, i32 21 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 743, i32 21 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 744, i32 21 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 747, i32 21 }
@___asan_gen_.409 = private unnamed_addr constant [18 x i8] c"rk3066_pm_domains\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 750, i32 42 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 752, i32 22 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 755, i32 21 }
@___asan_gen_.418 = private unnamed_addr constant [18 x i8] c"rk3128_pm_domains\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 758, i32 42 }
@___asan_gen_.421 = private unnamed_addr constant [18 x i8] c"rk3188_pm_domains\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 766, i32 42 }
@___asan_gen_.424 = private unnamed_addr constant [18 x i8] c"rk3228_pm_domains\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 774, i32 42 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 777, i32 21 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 780, i32 21 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 782, i32 23 }
@___asan_gen_.436 = private unnamed_addr constant [18 x i8] c"rk3288_pm_domains\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 788, i32 42 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 790, i32 21 }
@___asan_gen_.442 = private unnamed_addr constant [18 x i8] c"rk3328_pm_domains\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 795, i32 42 }
@___asan_gen_.445 = private unnamed_addr constant [18 x i8] c"rk3366_pm_domains\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 807, i32 42 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 812, i32 23 }
@___asan_gen_.451 = private unnamed_addr constant [18 x i8] c"rk3368_pm_domains\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 817, i32 42 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 821, i32 22 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 822, i32 22 }
@___asan_gen_.460 = private unnamed_addr constant [18 x i8] c"rk3399_pm_domains\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 825, i32 42 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 826, i32 22 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 827, i32 22 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 828, i32 21 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 829, i32 21 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 830, i32 21 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 831, i32 23 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 832, i32 23 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 841, i32 21 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 842, i32 21 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 843, i32 21 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 844, i32 21 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 845, i32 21 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 847, i32 21 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 848, i32 21 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 849, i32 21 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 850, i32 21 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 851, i32 20 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 852, i32 26 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 833, i32 23 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 836, i32 23 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 837, i32 21 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 838, i32 21 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 839, i32 21 }
@___asan_gen_.532 = private unnamed_addr constant [18 x i8] c"rk3568_pm_domains\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 855, i32 42 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 856, i32 21 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 863, i32 23 }
@___asan_gen_.541 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.542 = private constant [37 x i8] c"../drivers/soc/rockchip/pm_domains.c\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 864, i32 21 }
@llvm.compiler.used = appending global [165 x ptr] [ptr @__initcall__kmod_pm_domains__176_1083_rockchip_pm_domain_drv_register2, ptr @rockchip_do_pmu_set_power_domain._entry, ptr @rockchip_do_pmu_set_power_domain._entry_ptr, ptr @rockchip_pd_attach_dev._entry, ptr @rockchip_pd_attach_dev._entry.57, ptr @rockchip_pd_attach_dev._entry_ptr, ptr @rockchip_pd_attach_dev._entry_ptr.59, ptr @rockchip_pd_power._entry, ptr @rockchip_pd_power._entry_ptr, ptr @rockchip_pm_add_one_domain._entry, ptr @rockchip_pm_add_one_domain._entry.30, ptr @rockchip_pm_add_one_domain._entry.33, ptr @rockchip_pm_add_one_domain._entry.37, ptr @rockchip_pm_add_one_domain._entry.41, ptr @rockchip_pm_add_one_domain._entry_ptr, ptr @rockchip_pm_add_one_domain._entry_ptr.32, ptr @rockchip_pm_add_one_domain._entry_ptr.35, ptr @rockchip_pm_add_one_domain._entry_ptr.39, ptr @rockchip_pm_add_one_domain._entry_ptr.43, ptr @rockchip_pm_add_subdomain._entry, ptr @rockchip_pm_add_subdomain._entry.63, ptr @rockchip_pm_add_subdomain._entry.65, ptr @rockchip_pm_add_subdomain._entry.67, ptr @rockchip_pm_add_subdomain._entry_ptr, ptr @rockchip_pm_add_subdomain._entry_ptr.64, ptr @rockchip_pm_add_subdomain._entry_ptr.66, ptr @rockchip_pm_add_subdomain._entry_ptr.69, ptr @rockchip_pm_domain_probe._entry, ptr @rockchip_pm_domain_probe._entry.10, ptr @rockchip_pm_domain_probe._entry.13, ptr @rockchip_pm_domain_probe._entry.16, ptr @rockchip_pm_domain_probe._entry.19, ptr @rockchip_pm_domain_probe._entry.24, ptr @rockchip_pm_domain_probe._entry.6, ptr @rockchip_pm_domain_probe._entry_ptr, ptr @rockchip_pm_domain_probe._entry_ptr.12, ptr @rockchip_pm_domain_probe._entry_ptr.15, ptr @rockchip_pm_domain_probe._entry_ptr.18, ptr @rockchip_pm_domain_probe._entry_ptr.21, ptr @rockchip_pm_domain_probe._entry_ptr.26, ptr @rockchip_pm_domain_probe._entry_ptr.8, ptr @rockchip_pm_remove_one_domain._entry, ptr @rockchip_pm_remove_one_domain._entry_ptr, ptr @rockchip_pmu_set_idle_request._entry, ptr @rockchip_pmu_set_idle_request._entry.48, ptr @rockchip_pmu_set_idle_request._entry_ptr, ptr @rockchip_pmu_set_idle_request._entry_ptr.50, ptr @rockchip_pm_domain_driver, ptr @.str, ptr @rockchip_pm_domain_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @rockchip_pm_domain_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @px30_pmu, ptr @rk3036_pmu, ptr @rk3066_pmu, ptr @rk3128_pmu, ptr @rk3188_pmu, ptr @rk3228_pmu, ptr @rk3288_pmu, ptr @rk3328_pmu, ptr @rk3366_pmu, ptr @rk3368_pmu, ptr @rk3399_pmu, ptr @rk3568_pmu, ptr @px30_pm_domains, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @rk3036_pm_domains, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @rk3066_pm_domains, ptr @.str.86, ptr @.str.87, ptr @rk3128_pm_domains, ptr @rk3188_pm_domains, ptr @rk3228_pm_domains, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @rk3288_pm_domains, ptr @.str.91, ptr @rk3328_pm_domains, ptr @rk3366_pm_domains, ptr @.str.92, ptr @rk3368_pm_domains, ptr @.str.93, ptr @.str.94, ptr @rk3399_pm_domains, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @rk3568_pm_domains, ptr @.str.118, ptr @.str.119, ptr @.str.120], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_domain_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_domain_dt_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_domain_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_domain_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_domain_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_domain_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_domain_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_domain_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_domain_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_domain_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_add_one_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_add_one_domain._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_add_one_domain._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_add_one_domain._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_add_one_domain._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pd_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pmu_set_idle_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pmu_set_idle_request._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_do_pmu_set_power_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pd_attach_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pd_attach_dev._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_add_subdomain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_add_subdomain._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_add_subdomain._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_add_subdomain._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pm_remove_one_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_pmu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_pm_domains to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_pm_domains to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_pm_domains to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_pm_domains to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_pm_domains to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_pm_domains to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_pm_domains to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_pm_domains to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_pm_domains to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_pm_domains to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_pm_domains to i32), i32 1296, i32 1632, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_pm_domains to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pm_domain_drv_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pm_domain_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pm_domain_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_match_table, align 4
  %call = tail call ptr @of_match_device(ptr noundef %5, ptr noundef %dev1) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.do.end7_crit_edge, label %lor.lhs.false

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end7_crit_edge, label %if.end8

lor.lhs.false.do.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end7:                                          ; preds = %lor.lhs.false.do.end7_crit_edge, %if.end.do.end7_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %num_domains = getelementptr inbounds %struct.rockchip_pmu_info, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_domains, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #7
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 116) #7
  %retval.0.i153 = select i1 %11, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i153, i32 noundef 3520) #7
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %call.i, align 4
  %mutex = getelementptr inbounds %struct.rockchip_pmu, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @rockchip_pm_domain_probe.__key) #7
  %info = getelementptr inbounds %struct.rockchip_pmu, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %7, ptr %info, align 4
  %domains = getelementptr inbounds %struct.rockchip_pmu, ptr %call.i, i32 0, i32 5
  %genpd_data = getelementptr inbounds %struct.rockchip_pmu, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %genpd_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %domains, ptr %genpd_data, align 4
  %16 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_domains, align 4
  %num_domains23 = getelementptr inbounds %struct.rockchip_pmu, ptr %call.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %num_domains23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num_domains23, align 4
  %parent24 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %parent24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent24, align 8
  %tobool25.not = icmp eq ptr %20, null
  br i1 %tobool25.not, label %do.end29, label %if.end30

do.end29:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end14
  %of_node31 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %of_node31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node31, align 8
  %call32 = tail call ptr @syscon_node_to_regmap(ptr noundef %22) #7
  %regmap = getelementptr inbounds %struct.rockchip_pmu, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call32, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %core_power_transition_time = getelementptr inbounds %struct.rockchip_pmu_info, ptr %7, i32 0, i32 7
  %27 = ptrtoint ptr %core_power_transition_time to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %core_power_transition_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool42.not = icmp eq i32 %28, 0
  br i1 %tobool42.not, label %if.end41.if.end45_crit_edge, label %if.then43

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %core_pwrcnt_offset = getelementptr inbounds %struct.rockchip_pmu_info, ptr %7, i32 0, i32 5
  %29 = ptrtoint ptr %core_pwrcnt_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %core_pwrcnt_offset, align 4
  %call.i154 = tail call i32 @regmap_write(ptr noundef %call32, i32 noundef %30, i32 noundef %28) #7
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %add.i = add i32 %30, 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %add.i, i32 noundef %28) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %gpu_pwrcnt_offset = getelementptr inbounds %struct.rockchip_pmu_info, ptr %7, i32 0, i32 6
  %33 = ptrtoint ptr %gpu_pwrcnt_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gpu_pwrcnt_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool46.not = icmp eq i32 %34, 0
  br i1 %tobool46.not, label %if.end45.if.end49_crit_edge, label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %gpu_power_transition_time = getelementptr inbounds %struct.rockchip_pmu_info, ptr %7, i32 0, i32 8
  %35 = ptrtoint ptr %gpu_power_transition_time to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gpu_power_transition_time, align 4
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call.i156 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %34, i32 noundef %36) #7
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %add.i157 = add i32 %34, 4
  %call2.i158 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef %add.i157, i32 noundef %36) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge
  %call50 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp.not166 = icmp eq ptr %call50, null
  br i1 %cmp.not166, label %if.end49.do.body68_crit_edge, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  br label %for.body

if.end49.do.body68_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body68

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end49.for.body_crit_edge
  %node.0167 = phi ptr [ %call65, %for.inc.for.body_crit_edge ], [ %call50, %if.end49.for.body_crit_edge ]
  %call51 = tail call fastcc i32 @rockchip_pm_add_one_domain(ptr noundef nonnull %call.i, ptr noundef nonnull %node.0167)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end57, label %do.end56

do.end56:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull %node.0167, i32 noundef %call51) #10
  tail call void @of_node_put(ptr noundef nonnull %node.0167) #7
  br label %err_out

if.end57:                                         ; preds = %for.body
  %call58 = tail call fastcc i32 @rockchip_pm_add_subdomain(ptr noundef nonnull %call.i, ptr noundef nonnull %node.0167)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end63, label %for.inc

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull %node.0167, i32 noundef %call58) #10
  tail call void @of_node_put(ptr noundef nonnull %node.0167) #7
  br label %err_out

for.inc:                                          ; preds = %if.end57
  %call65 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %node.0167) #7
  %cmp.not = icmp eq ptr %call65, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool66.not = icmp eq i32 %call58, 0
  br i1 %tobool66.not, label %if.end77, label %for.end.do.body68_crit_edge

for.end.do.body68_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body68

do.body68:                                        ; preds = %for.end.do.body68_crit_edge, %if.end49.do.body68_crit_edge
  %error.0.lcssa175 = phi i32 [ %call58, %for.end.do.body68_crit_edge ], [ -19, %if.end49.do.body68_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pm_domain_probe.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_pm_domain_probe, %if.then73)) #7
          to label %err_out [label %if.then73], !srcloc !288

if.then73:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pm_domain_probe.__UNIQUE_ID_ddebug175, ptr noundef %dev1, ptr noundef nonnull @.str.23) #7
  br label %err_out

if.end77:                                         ; preds = %for.end
  %call79 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef nonnull %1, ptr noundef %genpd_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end77.cleanup_crit_edge, label %do.end84

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call79) #10
  br label %err_out

err_out:                                          ; preds = %do.end84, %if.then73, %do.body68, %do.end63, %do.end56
  %error.1 = phi i32 [ %call51, %do.end56 ], [ %call58, %do.end63 ], [ %error.0.lcssa175, %if.then73 ], [ %call79, %do.end84 ], [ %error.0.lcssa175, %do.body68 ]
  %41 = ptrtoint ptr %num_domains23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_domains23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp6.not.i = icmp eq i32 %42, 0
  br i1 %cmp6.not.i, label %err_out.cleanup_crit_edge, label %err_out.for.body.i_crit_edge

err_out.for.body.i_crit_edge:                     ; preds = %err_out
  br label %for.body.i

err_out.cleanup_crit_edge:                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %err_out.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %err_out.for.body.i_crit_edge ]
  %43 = ptrtoint ptr %genpd_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %genpd_data, align 4
  %arrayidx.i = getelementptr ptr, ptr %44, i32 %i.07.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i = tail call i32 @pm_genpd_remove(ptr noundef nonnull %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.rockchip_pm_remove_one_domain.exit.i_crit_edge

if.then.i.rockchip_pm_remove_one_domain.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_pm_remove_one_domain.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %pmu.i.i = getelementptr inbounds %struct.rockchip_pm_domain, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %pmu.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pmu.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %name.i.i = getelementptr inbounds %struct.generic_pm_domain, ptr %46, i32 0, i32 10
  %51 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.71, ptr noundef %52, i32 noundef %call.i.i) #10
  br label %rockchip_pm_remove_one_domain.exit.i

rockchip_pm_remove_one_domain.exit.i:             ; preds = %do.end.i.i, %if.then.i.rockchip_pm_remove_one_domain.exit.i_crit_edge
  %num_clks.i.i = getelementptr inbounds %struct.rockchip_pm_domain, ptr %46, i32 0, i32 6
  %53 = ptrtoint ptr %num_clks.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_clks.i.i, align 4
  %clks.i.i = getelementptr inbounds %struct.rockchip_pm_domain, ptr %46, i32 0, i32 7
  %55 = ptrtoint ptr %clks.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clks.i.i, align 8
  tail call void @clk_bulk_unprepare(i32 noundef %54, ptr noundef %56) #7
  %57 = ptrtoint ptr %num_clks.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_clks.i.i, align 4
  %59 = ptrtoint ptr %clks.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clks.i.i, align 8
  tail call void @clk_bulk_put(i32 noundef %58, ptr noundef %60) #7
  %pmu4.i.i = getelementptr inbounds %struct.rockchip_pm_domain, ptr %46, i32 0, i32 2
  %61 = ptrtoint ptr %pmu4.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pmu4.i.i, align 4
  %mutex.i.i = getelementptr inbounds %struct.rockchip_pmu, ptr %62, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #7
  %63 = ptrtoint ptr %num_clks.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %num_clks.i.i, align 4
  %64 = ptrtoint ptr %pmu4.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pmu4.i.i, align 4
  %mutex7.i.i = getelementptr inbounds %struct.rockchip_pmu, ptr %65, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex7.i.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %rockchip_pm_remove_one_domain.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.07.i, 1
  %66 = ptrtoint ptr %num_domains23 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_domains23, align 4
  %cmp.i159 = icmp ult i32 %inc.i, %67
  br i1 %cmp.i159, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %err_out.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %do.end38, %do.end29, %if.end8.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %26, %do.end38 ], [ -19, %do.end29 ], [ -22, %do.end7 ], [ -19, %do.end ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ], [ %error.1, %err_out.cleanup_crit_edge ], [ %error.1, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pm_add_one_domain(ptr noundef %pmu, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !289
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.27, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pmu, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef %node, i32 noundef %call.i.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %info = getelementptr inbounds %struct.rockchip_pmu, ptr %pmu, i32 0, i32 2
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %num_domains = getelementptr inbounds %struct.rockchip_pmu_info, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp.not = icmp ult i32 %4, %8
  br i1 %cmp.not, label %if.end6, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pmu, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.31, ptr noundef %node, i32 noundef %4) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %domain_info = getelementptr inbounds %struct.rockchip_pmu_info, ptr %6, i32 0, i32 10
  %11 = ptrtoint ptr %domain_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %domain_info, align 4
  %arrayidx = getelementptr %struct.rockchip_domain_info, ptr %12, i32 %4
  %tobool8.not = icmp eq ptr %arrayidx, null
  %13 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pmu, align 4
  br i1 %tobool8.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.34, ptr noundef %node, i32 noundef %4) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef 1400, i32 noundef 3520) #7
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %info20 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %info20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %info20, align 8
  %pmu21 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %pmu21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pmu, ptr %pmu21, align 4
  %call22 = call i32 @of_clk_get_parent_count(ptr noundef %node) #7
  %num_clks = getelementptr inbounds %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call22, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp24 = icmp sgt i32 %call22, 0
  br i1 %cmp24, label %if.then25, label %do.body33

if.then25:                                        ; preds = %if.end19
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call22, i32 8) #7
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !290

devm_kcalloc.exit.thread:                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %clks269 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %clks269 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %clks269, align 8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then25
  %21 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pmu, align 4
  %23 = extractvalue { i32, i1 } %18, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef %23, i32 noundef 3520) #7
  %clks = getelementptr inbounds %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %clks, align 8
  %tobool30.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool30.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end45

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body33:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pm_add_one_domain.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_pm_add_one_domain, %if.then38)) #7
          to label %if.end45.thread [label %if.then38], !srcloc !288

if.then38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pmu, align 4
  %27 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_clks, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pm_add_one_domain.__UNIQUE_ID_ddebug173, ptr noundef %26, ptr noundef nonnull @.str.36, ptr noundef %node, i32 noundef %28) #7
  br label %if.end45.thread

if.end45.thread:                                  ; preds = %if.then38, %do.body33
  %29 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %num_clks, align 4
  br label %for.end

if.end45:                                         ; preds = %devm_kcalloc.exit
  %30 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp47287 = icmp sgt i32 %.pr, 0
  br i1 %cmp47287, label %for.body.lr.ph, label %if.end45.for.end_crit_edge

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end45
  %clks49 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0288 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call48 = call ptr @of_clk_get(ptr noundef %node, i32 noundef %i.0288) #7
  %31 = ptrtoint ptr %clks49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clks49, align 8
  %clk = getelementptr %struct.clk_bulk_data, ptr %32, i32 %i.0288, i32 1
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call48, ptr %clk, align 4
  %34 = load ptr, ptr %clks49, align 8
  %clk53 = getelementptr %struct.clk_bulk_data, ptr %34, i32 %i.0288, i32 1
  %35 = ptrtoint ptr %clk53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk53, align 4
  %cmp.i = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then55, label %for.inc

if.then55:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %36 to i32
  %38 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pmu, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.38, ptr noundef %node, i32 noundef %i.0288, i32 noundef %37) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0288, 1
  %40 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_clks, align 4
  %cmp47 = icmp slt i32 %inc, %41
  br i1 %cmp47, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end45.for.end_crit_edge, %if.end45.thread
  %.lcssa = phi i32 [ %.pr, %if.end45.for.end_crit_edge ], [ 0, %if.end45.thread ], [ %41, %for.inc.for.end_crit_edge ]
  %clks66 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 7
  %42 = ptrtoint ptr %clks66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clks66, align 8
  %call67 = call i32 @clk_bulk_prepare(i32 noundef %.lcssa, ptr noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %for.end.err_put_clocks_crit_edge

for.end.err_put_clocks_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_clocks

if.end70:                                         ; preds = %for.end
  %call71 = call i32 @of_count_phandle_with_args(ptr noundef %node, ptr noundef nonnull @.str.40, ptr noundef null) #7
  %num_qos = getelementptr inbounds %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %num_qos to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call71, ptr %num_qos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp73 = icmp sgt i32 %call71, 0
  br i1 %cmp73, label %if.then74, label %if.end70.if.end116_crit_edge

if.end70.if.end116_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then74:                                        ; preds = %if.end70
  %45 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call71, i32 4) #7
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %devm_kcalloc.exit258.thread, label %devm_kcalloc.exit258, !prof !290

devm_kcalloc.exit258.thread:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %qos_regmap273 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %qos_regmap273 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %qos_regmap273, align 4
  br label %err_unprepare_clocks

devm_kcalloc.exit258:                             ; preds = %if.then74
  %48 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pmu, align 4
  %50 = extractvalue { i32, i1 } %45, 0
  %call5.i.i255 = call noalias ptr @devm_kmalloc(ptr noundef %49, i32 noundef %50, i32 noundef 3520) #7
  %qos_regmap = getelementptr inbounds %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 4
  %51 = ptrtoint ptr %qos_regmap to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call5.i.i255, ptr %qos_regmap, align 4
  %tobool79.not = icmp eq ptr %call5.i.i255, null
  br i1 %tobool79.not, label %devm_kcalloc.exit258.err_unprepare_clocks_crit_edge, label %for.body84.preheader

devm_kcalloc.exit258.err_unprepare_clocks_crit_edge: ; preds = %devm_kcalloc.exit258
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unprepare_clocks

for.body84.preheader:                             ; preds = %devm_kcalloc.exit258
  %52 = ptrtoint ptr %num_qos to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_qos, align 8
  %54 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 4) #7
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %for.body84.preheader.devm_kcalloc.exit262.thread_crit_edge, label %devm_kcalloc.exit262, !prof !290

for.body84.preheader.devm_kcalloc.exit262.thread_crit_edge: ; preds = %for.body84.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit262.thread

devm_kcalloc.exit262.thread:                      ; preds = %for.inc94.3.devm_kcalloc.exit262.thread_crit_edge, %for.inc94.2.devm_kcalloc.exit262.thread_crit_edge, %for.inc94.1.devm_kcalloc.exit262.thread_crit_edge, %for.inc94.devm_kcalloc.exit262.thread_crit_edge, %for.body84.preheader.devm_kcalloc.exit262.thread_crit_edge
  %j.0289.lcssa = phi i32 [ 0, %for.body84.preheader.devm_kcalloc.exit262.thread_crit_edge ], [ 1, %for.inc94.devm_kcalloc.exit262.thread_crit_edge ], [ 2, %for.inc94.1.devm_kcalloc.exit262.thread_crit_edge ], [ 3, %for.inc94.2.devm_kcalloc.exit262.thread_crit_edge ], [ 4, %for.inc94.3.devm_kcalloc.exit262.thread_crit_edge ]
  %arrayidx88276 = getelementptr %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 5, i32 %j.0289.lcssa
  %56 = ptrtoint ptr %arrayidx88276 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx88276, align 4
  br label %err_unprepare_clocks

devm_kcalloc.exit262:                             ; preds = %for.body84.preheader
  %57 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pmu, align 4
  %59 = extractvalue { i32, i1 } %54, 0
  %call5.i.i259 = call noalias ptr @devm_kmalloc(ptr noundef %58, i32 noundef %59, i32 noundef 3520) #7
  %arrayidx88 = getelementptr %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 5, i32 0
  %60 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call5.i.i259, ptr %arrayidx88, align 4
  %tobool91.not = icmp eq ptr %call5.i.i259, null
  br i1 %tobool91.not, label %devm_kcalloc.exit262.err_unprepare_clocks_crit_edge, label %for.inc94

devm_kcalloc.exit262.err_unprepare_clocks_crit_edge: ; preds = %devm_kcalloc.exit262
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unprepare_clocks

for.inc94:                                        ; preds = %devm_kcalloc.exit262
  %61 = ptrtoint ptr %num_qos to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_qos, align 8
  %63 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %62, i32 4) #7
  %64 = extractvalue { i32, i1 } %63, 1
  br i1 %64, label %for.inc94.devm_kcalloc.exit262.thread_crit_edge, label %devm_kcalloc.exit262.1, !prof !290

for.inc94.devm_kcalloc.exit262.thread_crit_edge:  ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit262.thread

devm_kcalloc.exit262.1:                           ; preds = %for.inc94
  %65 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pmu, align 4
  %67 = extractvalue { i32, i1 } %63, 0
  %call5.i.i259.1 = call noalias ptr @devm_kmalloc(ptr noundef %66, i32 noundef %67, i32 noundef 3520) #7
  %arrayidx88.1 = getelementptr %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call5.i.i259.1, ptr %arrayidx88.1, align 4
  %tobool91.not.1 = icmp eq ptr %call5.i.i259.1, null
  br i1 %tobool91.not.1, label %devm_kcalloc.exit262.1.err_unprepare_clocks_crit_edge, label %for.inc94.1

devm_kcalloc.exit262.1.err_unprepare_clocks_crit_edge: ; preds = %devm_kcalloc.exit262.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unprepare_clocks

for.inc94.1:                                      ; preds = %devm_kcalloc.exit262.1
  %69 = ptrtoint ptr %num_qos to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_qos, align 8
  %71 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %70, i32 4) #7
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %for.inc94.1.devm_kcalloc.exit262.thread_crit_edge, label %devm_kcalloc.exit262.2, !prof !290

for.inc94.1.devm_kcalloc.exit262.thread_crit_edge: ; preds = %for.inc94.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit262.thread

devm_kcalloc.exit262.2:                           ; preds = %for.inc94.1
  %73 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pmu, align 4
  %75 = extractvalue { i32, i1 } %71, 0
  %call5.i.i259.2 = call noalias ptr @devm_kmalloc(ptr noundef %74, i32 noundef %75, i32 noundef 3520) #7
  %arrayidx88.2 = getelementptr %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 5, i32 2
  %76 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call5.i.i259.2, ptr %arrayidx88.2, align 4
  %tobool91.not.2 = icmp eq ptr %call5.i.i259.2, null
  br i1 %tobool91.not.2, label %devm_kcalloc.exit262.2.err_unprepare_clocks_crit_edge, label %for.inc94.2

devm_kcalloc.exit262.2.err_unprepare_clocks_crit_edge: ; preds = %devm_kcalloc.exit262.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unprepare_clocks

for.inc94.2:                                      ; preds = %devm_kcalloc.exit262.2
  %77 = ptrtoint ptr %num_qos to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_qos, align 8
  %79 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 4) #7
  %80 = extractvalue { i32, i1 } %79, 1
  br i1 %80, label %for.inc94.2.devm_kcalloc.exit262.thread_crit_edge, label %devm_kcalloc.exit262.3, !prof !290

for.inc94.2.devm_kcalloc.exit262.thread_crit_edge: ; preds = %for.inc94.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit262.thread

devm_kcalloc.exit262.3:                           ; preds = %for.inc94.2
  %81 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pmu, align 4
  %83 = extractvalue { i32, i1 } %79, 0
  %call5.i.i259.3 = call noalias ptr @devm_kmalloc(ptr noundef %82, i32 noundef %83, i32 noundef 3520) #7
  %arrayidx88.3 = getelementptr %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 5, i32 3
  %84 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call5.i.i259.3, ptr %arrayidx88.3, align 4
  %tobool91.not.3 = icmp eq ptr %call5.i.i259.3, null
  br i1 %tobool91.not.3, label %devm_kcalloc.exit262.3.err_unprepare_clocks_crit_edge, label %for.inc94.3

devm_kcalloc.exit262.3.err_unprepare_clocks_crit_edge: ; preds = %devm_kcalloc.exit262.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unprepare_clocks

for.inc94.3:                                      ; preds = %devm_kcalloc.exit262.3
  %85 = ptrtoint ptr %num_qos to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_qos, align 8
  %87 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %86, i32 4) #7
  %88 = extractvalue { i32, i1 } %87, 1
  br i1 %88, label %for.inc94.3.devm_kcalloc.exit262.thread_crit_edge, label %devm_kcalloc.exit262.4, !prof !290

for.inc94.3.devm_kcalloc.exit262.thread_crit_edge: ; preds = %for.inc94.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit262.thread

devm_kcalloc.exit262.4:                           ; preds = %for.inc94.3
  %89 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pmu, align 4
  %91 = extractvalue { i32, i1 } %87, 0
  %call5.i.i259.4 = call noalias ptr @devm_kmalloc(ptr noundef %90, i32 noundef %91, i32 noundef 3520) #7
  %arrayidx88.4 = getelementptr %struct.rockchip_pm_domain, ptr %call.i, i32 0, i32 5, i32 4
  %92 = ptrtoint ptr %arrayidx88.4 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call5.i.i259.4, ptr %arrayidx88.4, align 4
  %tobool91.not.4 = icmp eq ptr %call5.i.i259.4, null
  br i1 %tobool91.not.4, label %devm_kcalloc.exit262.4.err_unprepare_clocks_crit_edge, label %for.inc94.4

devm_kcalloc.exit262.4.err_unprepare_clocks_crit_edge: ; preds = %devm_kcalloc.exit262.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unprepare_clocks

for.inc94.4:                                      ; preds = %devm_kcalloc.exit262.4
  %93 = ptrtoint ptr %num_qos to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_qos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp99290 = icmp sgt i32 %94, 0
  br i1 %cmp99290, label %for.inc94.4.for.body100_crit_edge, label %for.inc94.4.if.end116_crit_edge

for.inc94.4.if.end116_crit_edge:                  ; preds = %for.inc94.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

for.inc94.4.for.body100_crit_edge:                ; preds = %for.inc94.4
  br label %for.body100

for.body100:                                      ; preds = %if.end112.for.body100_crit_edge, %for.inc94.4.for.body100_crit_edge
  %j.1291 = phi i32 [ %inc114, %if.end112.for.body100_crit_edge ], [ 0, %for.inc94.4.for.body100_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %95 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i263 = call i32 @__of_parse_phandle_with_args(ptr noundef %node, ptr noundef nonnull @.str.40, ptr noundef null, i32 noundef 0, i32 noundef %j.1291, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool.not.i = icmp eq i32 %call.i263, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %err_unprepare_clocks

of_parse_phandle.exit:                            ; preds = %for.body100
  %96 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool102.not = icmp eq ptr %97, null
  br i1 %tobool102.not, label %of_parse_phandle.exit.err_unprepare_clocks_crit_edge, label %if.end104

of_parse_phandle.exit.err_unprepare_clocks_crit_edge: ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unprepare_clocks

if.end104:                                        ; preds = %of_parse_phandle.exit
  %call105 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %97) #7
  %98 = ptrtoint ptr %qos_regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %qos_regmap, align 4
  %arrayidx107 = getelementptr ptr, ptr %99, i32 %j.1291
  %100 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call105, ptr %arrayidx107, align 4
  %101 = load ptr, ptr %qos_regmap, align 4
  %arrayidx109 = getelementptr ptr, ptr %101, i32 %j.1291
  %102 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx109, align 4
  %cmp.i265 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  call void @of_node_put(ptr noundef nonnull %97) #7
  br i1 %cmp.i265, label %if.end104.err_unprepare_clocks_crit_edge, label %if.end112

if.end104.err_unprepare_clocks_crit_edge:         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unprepare_clocks

if.end112:                                        ; preds = %if.end104
  %inc114 = add nuw nsw i32 %j.1291, 1
  %104 = ptrtoint ptr %num_qos to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_qos, align 8
  %cmp99 = icmp slt i32 %inc114, %105
  br i1 %cmp99, label %if.end112.for.body100_crit_edge, label %if.end112.if.end116_crit_edge

if.end112.if.end116_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.end112.for.body100_crit_edge:                  ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body100

if.end116:                                        ; preds = %if.end112.if.end116_crit_edge, %for.inc94.4.if.end116_crit_edge, %if.end70.if.end116_crit_edge
  %call117 = call fastcc i32 @rockchip_pd_power(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end124, label %do.end122

do.end122:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pmu, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.42, ptr noundef %node, i32 noundef %call117) #10
  br label %err_unprepare_clocks

if.end124:                                        ; preds = %if.end116
  %108 = ptrtoint ptr %info20 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %info20, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %tobool126.not = icmp eq ptr %111, null
  br i1 %tobool126.not, label %if.else131, label %if.end124.if.end135_crit_edge

if.end124.if.end135_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.else131:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  %full_name = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %112 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %full_name, align 4
  %call.i266 = call ptr @strrchr(ptr noundef %113, i32 noundef 47) #7
  %tobool.not.i267 = icmp eq ptr %call.i266, null
  %add.ptr.i = getelementptr i8, ptr %call.i266, i32 1
  %cond.i = select i1 %tobool.not.i267, ptr %113, ptr %add.ptr.i
  br label %if.end135

if.end135:                                        ; preds = %if.else131, %if.end124.if.end135_crit_edge
  %.sink = phi ptr [ %cond.i, %if.else131 ], [ %111, %if.end124.if.end135_crit_edge ]
  %114 = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 10
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %.sink, ptr %114, align 8
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 18
  %116 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @rockchip_pd_power_off, ptr %power_off, align 8
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 19
  %117 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @rockchip_pd_power_on, ptr %power_on, align 4
  %attach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 30
  %118 = ptrtoint ptr %attach_dev to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @rockchip_pd_attach_dev, ptr %attach_dev, align 4
  %detach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 31
  %119 = ptrtoint ptr %detach_dev to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @rockchip_pd_detach_dev, ptr %detach_dev, align 8
  %flags = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 32
  %120 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %flags, align 4
  %active_wakeup = getelementptr %struct.rockchip_domain_info, ptr %12, i32 %4, i32 6
  %121 = ptrtoint ptr %active_wakeup to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %active_wakeup, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool141.not = icmp eq i8 %122, 0
  %spec.store.select = select i1 %tobool141.not, i32 1, i32 9
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %spec.store.select, ptr %flags, align 4
  %call147 = call i32 @pm_genpd_init(ptr noundef nonnull %call.i, ptr noundef null, i1 noundef zeroext false) #7
  %genpd_data = getelementptr inbounds %struct.rockchip_pmu, ptr %pmu, i32 0, i32 4
  %124 = ptrtoint ptr %genpd_data to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %genpd_data, align 4
  %126 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %id, align 4
  %arrayidx149 = getelementptr ptr, ptr %125, i32 %127
  %128 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call.i, ptr %arrayidx149, align 4
  br label %cleanup

err_unprepare_clocks:                             ; preds = %do.end122, %if.end104.err_unprepare_clocks_crit_edge, %of_parse_phandle.exit.err_unprepare_clocks_crit_edge, %of_parse_phandle.exit.thread, %devm_kcalloc.exit262.4.err_unprepare_clocks_crit_edge, %devm_kcalloc.exit262.3.err_unprepare_clocks_crit_edge, %devm_kcalloc.exit262.2.err_unprepare_clocks_crit_edge, %devm_kcalloc.exit262.1.err_unprepare_clocks_crit_edge, %devm_kcalloc.exit262.err_unprepare_clocks_crit_edge, %devm_kcalloc.exit262.thread, %devm_kcalloc.exit258.err_unprepare_clocks_crit_edge, %devm_kcalloc.exit258.thread
  %error.0 = phi i32 [ %call117, %do.end122 ], [ -12, %devm_kcalloc.exit258.err_unprepare_clocks_crit_edge ], [ -12, %devm_kcalloc.exit258.thread ], [ -12, %devm_kcalloc.exit262.thread ], [ -19, %of_parse_phandle.exit.thread ], [ -12, %devm_kcalloc.exit262.4.err_unprepare_clocks_crit_edge ], [ -12, %devm_kcalloc.exit262.3.err_unprepare_clocks_crit_edge ], [ -12, %devm_kcalloc.exit262.2.err_unprepare_clocks_crit_edge ], [ -12, %devm_kcalloc.exit262.1.err_unprepare_clocks_crit_edge ], [ -12, %devm_kcalloc.exit262.err_unprepare_clocks_crit_edge ], [ -19, %if.end104.err_unprepare_clocks_crit_edge ], [ -19, %of_parse_phandle.exit.err_unprepare_clocks_crit_edge ]
  %129 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_clks, align 4
  %131 = ptrtoint ptr %clks66 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %clks66, align 8
  call void @clk_bulk_unprepare(i32 noundef %130, ptr noundef %132) #7
  br label %err_put_clocks

err_put_clocks:                                   ; preds = %err_unprepare_clocks, %for.end.err_put_clocks_crit_edge
  %error.1 = phi i32 [ %call67, %for.end.err_put_clocks_crit_edge ], [ %error.0, %err_unprepare_clocks ]
  %133 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_clks, align 4
  %135 = ptrtoint ptr %clks66 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %clks66, align 8
  call void @clk_bulk_put(i32 noundef %134, ptr noundef %136) #7
  br label %cleanup

cleanup:                                          ; preds = %err_put_clocks, %if.end135, %if.then55, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end14.cleanup_crit_edge, %do.end12, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end4 ], [ %37, %if.then55 ], [ %error.1, %err_put_clocks ], [ 0, %if.end135 ], [ -22, %do.end12 ], [ -12, %if.end14.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pm_add_subdomain(ptr noundef %pmu, ptr noundef %parent) unnamed_addr #2 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_next_child(ptr noundef %parent, ptr noundef null) #7
  %cmp.not97 = icmp eq ptr %call, null
  br i1 %cmp.not97, label %entry.cleanup44_crit_edge, label %for.body.lr.ph

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

for.body.lr.ph:                                   ; preds = %entry
  %genpd_data = getelementptr inbounds %struct.rockchip_pmu, ptr %pmu, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.098 = phi ptr [ %call, %for.body.lr.ph ], [ %call43, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !289
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %parent, ptr noundef nonnull @.str.27, ptr noundef nonnull %idx, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pmu, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef %parent, i32 noundef %call.i.i) #10
  br label %err_out

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %genpd_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %genpd_data, align 4
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call2 = call fastcc i32 @rockchip_pm_add_one_domain(ptr noundef %pmu, ptr noundef nonnull %np.098)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pmu, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.17, ptr noundef nonnull %np.098, i32 noundef %call2) #10
  br label %err_out

if.end9:                                          ; preds = %if.end
  %call.i.i78 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.098, ptr noundef nonnull @.str.27, ptr noundef nonnull %idx, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i78)
  %tobool11.not = icmp sgt i32 %call.i.i78, -1
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pmu, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.28, ptr noundef nonnull %np.098, i32 noundef %call.i.i78) #10
  br label %err_out

if.end17:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %genpd_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %genpd_data, align 4
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx, align 4
  %arrayidx20 = getelementptr ptr, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx20, align 4
  %call21 = call i32 @pm_genpd_add_subdomain(ptr noundef %8, ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body29, label %do.end26

do.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pmu, align 4
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 10
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 8
  %name28 = getelementptr inbounds %struct.generic_pm_domain, ptr %18, i32 0, i32 10
  %23 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name28, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.68, ptr noundef %22, ptr noundef %24, i32 noundef %call21) #10
  br label %err_out

do.body29:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pm_add_subdomain.__UNIQUE_ID_ddebug174, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_pm_add_subdomain, %if.then34)) #7
          to label %for.inc [label %if.then34], !srcloc !288

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pmu, align 4
  %name36 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 10
  %27 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name36, align 8
  %name37 = getelementptr inbounds %struct.generic_pm_domain, ptr %18, i32 0, i32 10
  %29 = ptrtoint ptr %name37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name37, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pm_add_subdomain.__UNIQUE_ID_ddebug174, ptr noundef %26, ptr noundef nonnull @.str.70, ptr noundef %28, ptr noundef %30) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %do.body29
  %call42 = call fastcc i32 @rockchip_pm_add_subdomain(ptr noundef %pmu, ptr noundef nonnull %np.098)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  %call43 = call ptr @of_get_next_child(ptr noundef %parent, ptr noundef nonnull %np.098) #7
  %cmp.not = icmp eq ptr %call43, null
  br i1 %cmp.not, label %for.inc.cleanup44_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup44_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

err_out:                                          ; preds = %do.end26, %do.end15, %do.end7, %do.end
  %error.0.ph = phi i32 [ %call21, %do.end26 ], [ %call.i.i78, %do.end15 ], [ %call2, %do.end7 ], [ %call.i.i, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  call void @of_node_put(ptr noundef nonnull %np.098) #7
  br label %cleanup44

cleanup44:                                        ; preds = %err_out, %for.inc.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ %error.0.ph, %err_out ], [ 0, %entry.cleanup44_crit_edge ], [ 0, %for.inc.cleanup44_crit_edge ]
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
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pd_power(ptr noundef readonly %pd, i1 noundef zeroext %power_on) unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu1 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu1, align 4
  %mutex = getelementptr inbounds %struct.rockchip_pmu, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %2 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !289
  %info.i = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 1
  %5 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i, align 8
  %status_mask.i = getelementptr inbounds %struct.rockchip_domain_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %status_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i.i, align 4, !annotation !289
  %regmap.i.i = getelementptr inbounds %struct.rockchip_pmu, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i, align 4
  %info2.i.i = getelementptr inbounds %struct.rockchip_pmu, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %info2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info2.i.i, align 4
  %idle_offset.i.i = getelementptr inbounds %struct.rockchip_pmu_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %idle_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idle_offset.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %15, ptr noundef nonnull %val.i.i) #7
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i.i, align 4
  %idle_mask.i.i = getelementptr inbounds %struct.rockchip_domain_info, ptr %6, i32 0, i32 4
  %18 = ptrtoint ptr %idle_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idle_mask.i.i, align 4
  %and.i.i = and i32 %19, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %19)
  %cmp.i.i = icmp ne i32 %and.i.i, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %rockchip_pmu_domain_is_on.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.rockchip_pmu, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %info2.i = getelementptr inbounds %struct.rockchip_pmu, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info2.i, align 4
  %status_offset.i = getelementptr inbounds %struct.rockchip_pmu_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %status_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status_offset.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %21, i32 noundef %25, ptr noundef nonnull %val.i) #7
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  %28 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info.i, align 8
  %status_mask5.i = getelementptr inbounds %struct.rockchip_domain_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %status_mask5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status_mask5.i, align 4
  %and.i = and i32 %31, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br label %rockchip_pmu_domain_is_on.exit

rockchip_pmu_domain_is_on.exit:                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i1 [ %cmp.i.i, %if.then.i ], [ %tobool.not.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %32 = xor i1 %retval.0.i, %power_on
  br i1 %32, label %if.then, label %rockchip_pmu_domain_is_on.exit.cleanup_crit_edge

rockchip_pmu_domain_is_on.exit.cleanup_crit_edge: ; preds = %rockchip_pmu_domain_is_on.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %rockchip_pmu_domain_is_on.exit
  %num_clks = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 6
  %33 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 7
  %35 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clks, align 8
  %call4 = call i32 @clk_bulk_enable(i32 noundef %34, ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.44) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  br i1 %power_on, label %if.then16.critedge, label %if.then10

if.then10:                                        ; preds = %if.end
  %num_qos.i = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 3
  %39 = ptrtoint ptr %num_qos.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_qos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1.i = icmp sgt i32 %40, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %if.then10.rockchip_pmu_save_qos.exit_crit_edge

if.then10.rockchip_pmu_save_qos.exit_crit_edge:   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_pmu_save_qos.exit

for.body.lr.ph.i:                                 ; preds = %if.then10
  %qos_regmap.i = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 4
  %qos_save_regs.i = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 5
  %arrayidx6.i = getelementptr %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 5, i32 1
  %arrayidx12.i = getelementptr %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 5, i32 2
  %arrayidx18.i = getelementptr %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 5, i32 3
  %arrayidx24.i = getelementptr %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 5, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %qos_regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qos_regmap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %42, i32 %i.02.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %qos_save_regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qos_save_regs.i, align 8
  %arrayidx2.i = getelementptr i32, ptr %46, i32 %i.02.i
  %call.i = call i32 @regmap_read(ptr noundef %44, i32 noundef 8, ptr noundef %arrayidx2.i) #7
  %47 = ptrtoint ptr %qos_regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %qos_regmap.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %48, i32 %i.02.i
  %49 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx4.i, align 4
  %51 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %52, i32 %i.02.i
  %call8.i = call i32 @regmap_read(ptr noundef %50, i32 noundef 12, ptr noundef %arrayidx7.i) #7
  %53 = ptrtoint ptr %qos_regmap.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %qos_regmap.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %54, i32 %i.02.i
  %55 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx10.i, align 4
  %57 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx12.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %58, i32 %i.02.i
  %call14.i = call i32 @regmap_read(ptr noundef %56, i32 noundef 16, ptr noundef %arrayidx13.i) #7
  %59 = ptrtoint ptr %qos_regmap.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %qos_regmap.i, align 4
  %arrayidx16.i = getelementptr ptr, ptr %60, i32 %i.02.i
  %61 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx16.i, align 4
  %63 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx18.i, align 4
  %arrayidx19.i = getelementptr i32, ptr %64, i32 %i.02.i
  %call20.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 20, ptr noundef %arrayidx19.i) #7
  %65 = ptrtoint ptr %qos_regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %qos_regmap.i, align 4
  %arrayidx22.i = getelementptr ptr, ptr %66, i32 %i.02.i
  %67 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx22.i, align 4
  %69 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx24.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %70, i32 %i.02.i
  %call26.i = call i32 @regmap_read(ptr noundef %68, i32 noundef 24, ptr noundef %arrayidx25.i) #7
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %71 = ptrtoint ptr %num_qos.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_qos.i, align 8
  %cmp.i42 = icmp slt i32 %inc.i, %72
  br i1 %cmp.i42, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rockchip_pmu_save_qos.exit_crit_edge

for.body.i.rockchip_pmu_save_qos.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_pmu_save_qos.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rockchip_pmu_save_qos.exit:                       ; preds = %for.body.i.rockchip_pmu_save_qos.exit_crit_edge, %if.then10.rockchip_pmu_save_qos.exit_crit_edge
  call fastcc void @rockchip_pmu_set_idle_request(ptr noundef %pd, i1 noundef zeroext true)
  call fastcc void @rockchip_do_pmu_set_power_domain(ptr noundef %pd, i1 noundef zeroext false)
  br label %if.end19

if.then16.critedge:                               ; preds = %if.end
  call fastcc void @rockchip_do_pmu_set_power_domain(ptr noundef %pd, i1 noundef zeroext true)
  call fastcc void @rockchip_pmu_set_idle_request(ptr noundef %pd, i1 noundef zeroext false)
  %num_qos.i43 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 3
  %73 = ptrtoint ptr %num_qos.i43 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_qos.i43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp1.i44 = icmp sgt i32 %74, 0
  br i1 %cmp1.i44, label %for.body.lr.ph.i51, label %if.then16.critedge.if.end19_crit_edge

if.then16.critedge.if.end19_crit_edge:            ; preds = %if.then16.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body.lr.ph.i51:                               ; preds = %if.then16.critedge
  %qos_regmap.i45 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 4
  %qos_save_regs.i46 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 5
  %arrayidx6.i47 = getelementptr %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 5, i32 1
  %arrayidx12.i48 = getelementptr %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 5, i32 2
  %arrayidx18.i49 = getelementptr %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 5, i32 3
  %arrayidx24.i50 = getelementptr %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 5, i32 4
  br label %for.body.i70

for.body.i70:                                     ; preds = %for.body.i70.for.body.i70_crit_edge, %for.body.lr.ph.i51
  %i.02.i52 = phi i32 [ 0, %for.body.lr.ph.i51 ], [ %inc.i68, %for.body.i70.for.body.i70_crit_edge ]
  %75 = ptrtoint ptr %qos_regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %qos_regmap.i45, align 4
  %arrayidx.i53 = getelementptr ptr, ptr %76, i32 %i.02.i52
  %77 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i53, align 4
  %79 = ptrtoint ptr %qos_save_regs.i46 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %qos_save_regs.i46, align 8
  %arrayidx2.i54 = getelementptr i32, ptr %80, i32 %i.02.i52
  %81 = ptrtoint ptr %arrayidx2.i54 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx2.i54, align 4
  %call.i55 = call i32 @regmap_write(ptr noundef %78, i32 noundef 8, i32 noundef %82) #7
  %83 = ptrtoint ptr %qos_regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %qos_regmap.i45, align 4
  %arrayidx4.i56 = getelementptr ptr, ptr %84, i32 %i.02.i52
  %85 = ptrtoint ptr %arrayidx4.i56 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx4.i56, align 4
  %87 = ptrtoint ptr %arrayidx6.i47 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx6.i47, align 4
  %arrayidx7.i57 = getelementptr i32, ptr %88, i32 %i.02.i52
  %89 = ptrtoint ptr %arrayidx7.i57 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx7.i57, align 4
  %call8.i58 = call i32 @regmap_write(ptr noundef %86, i32 noundef 12, i32 noundef %90) #7
  %91 = ptrtoint ptr %qos_regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %qos_regmap.i45, align 4
  %arrayidx10.i59 = getelementptr ptr, ptr %92, i32 %i.02.i52
  %93 = ptrtoint ptr %arrayidx10.i59 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx10.i59, align 4
  %95 = ptrtoint ptr %arrayidx12.i48 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx12.i48, align 8
  %arrayidx13.i60 = getelementptr i32, ptr %96, i32 %i.02.i52
  %97 = ptrtoint ptr %arrayidx13.i60 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx13.i60, align 4
  %call14.i61 = call i32 @regmap_write(ptr noundef %94, i32 noundef 16, i32 noundef %98) #7
  %99 = ptrtoint ptr %qos_regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %qos_regmap.i45, align 4
  %arrayidx16.i62 = getelementptr ptr, ptr %100, i32 %i.02.i52
  %101 = ptrtoint ptr %arrayidx16.i62 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx16.i62, align 4
  %103 = ptrtoint ptr %arrayidx18.i49 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx18.i49, align 4
  %arrayidx19.i63 = getelementptr i32, ptr %104, i32 %i.02.i52
  %105 = ptrtoint ptr %arrayidx19.i63 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx19.i63, align 4
  %call20.i64 = call i32 @regmap_write(ptr noundef %102, i32 noundef 20, i32 noundef %106) #7
  %107 = ptrtoint ptr %qos_regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %qos_regmap.i45, align 4
  %arrayidx22.i65 = getelementptr ptr, ptr %108, i32 %i.02.i52
  %109 = ptrtoint ptr %arrayidx22.i65 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx22.i65, align 4
  %111 = ptrtoint ptr %arrayidx24.i50 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx24.i50, align 8
  %arrayidx25.i66 = getelementptr i32, ptr %112, i32 %i.02.i52
  %113 = ptrtoint ptr %arrayidx25.i66 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx25.i66, align 4
  %call26.i67 = call i32 @regmap_write(ptr noundef %110, i32 noundef 24, i32 noundef %114) #7
  %inc.i68 = add nuw nsw i32 %i.02.i52, 1
  %115 = ptrtoint ptr %num_qos.i43 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_qos.i43, align 8
  %cmp.i69 = icmp slt i32 %inc.i68, %116
  br i1 %cmp.i69, label %for.body.i70.for.body.i70_crit_edge, label %for.body.i70.if.end19_crit_edge

for.body.i70.if.end19_crit_edge:                  ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body.i70.for.body.i70_crit_edge:              ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i70

if.end19:                                         ; preds = %for.body.i70.if.end19_crit_edge, %if.then16.critedge.if.end19_crit_edge, %rockchip_pmu_save_qos.exit
  %117 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_clks, align 4
  %119 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %clks, align 8
  call void @clk_bulk_disable(i32 noundef %118, ptr noundef %120) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end, %rockchip_pmu_domain_is_on.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %if.end19 ], [ 0, %rockchip_pmu_domain_is_on.exit.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pd_power_off(ptr noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rockchip_pd_power(ptr noundef %domain, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pd_power_on(ptr noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rockchip_pd_power(ptr noundef %domain, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pd_attach_dev(ptr nocapture noundef readonly %genpd, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pd_attach_dev.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_pd_attach_dev, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %genpd, i32 0, i32 10
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pd_attach_dev.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @pm_clk_create(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %while.cond.preheader, label %do.end8

while.cond.preheader:                             ; preds = %do.end
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  br label %while.cond

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %call3) #10
  br label %cleanup

while.cond:                                       ; preds = %do.end30.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %inc, %do.end30.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %inc = add i32 %i.0, 1
  %call10 = tail call ptr @of_clk_get(ptr noundef %3, i32 noundef %i.0) #7
  %tobool11.not = icmp eq ptr %call10, null
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool11.not, %cmp.i
  br i1 %or.cond, label %while.cond.cleanup_crit_edge, label %do.body15

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body15:                                        ; preds = %while.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pd_attach_dev.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_pd_attach_dev, %if.then27)) #7
          to label %do.end30 [label %if.then27], !srcloc !288

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pd_attach_dev.__UNIQUE_ID_ddebug171, ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull %call10) #7
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body15
  %call31 = tail call i32 @pm_clk_add_clk(ptr noundef %dev, ptr noundef nonnull %call10) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end30.while.cond_crit_edge, label %do.end36

do.end30.while.cond_crit_edge:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.end36:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call31) #10
  tail call void @clk_put(ptr noundef nonnull %call10) #7
  tail call void @pm_clk_destroy(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %while.cond.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ %call3, %do.end8 ], [ %call31, %do.end36 ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_pd_detach_dev(ptr nocapture noundef readonly %genpd, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pd_detach_dev.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_pd_detach_dev, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %genpd, i32 0, i32 10
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pd_detach_dev.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @pm_clk_destroy(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_pmu_set_idle_request(ptr nocapture noundef readonly %pd, i1 noundef zeroext %idle) unnamed_addr #2 align 64 {
entry:
  %val.i17 = alloca i32, align 4
  %val.i8 = alloca i32, align 4
  %val.i2 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %pmu2 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 2
  %2 = ptrtoint ptr %pmu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu2, align 4
  %req_mask = getelementptr inbounds %struct.rockchip_domain_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %req_w_mask = getelementptr inbounds %struct.rockchip_domain_info, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %req_w_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req_w_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %regmap10 = getelementptr inbounds %struct.rockchip_pmu, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap10, align 4
  %info11 = getelementptr inbounds %struct.rockchip_pmu, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %info11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info11, align 4
  %req_offset12 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %req_offset12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req_offset12, align 4
  br i1 %tobool.not, label %if.else9, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %or = select i1 %idle, i32 %5, i32 0
  %cond = or i32 %7, %or
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %13, i32 noundef %cond) #7
  br label %if.end17

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %cond15 = sext i1 %idle to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %13, i32 noundef %5, i32 noundef %cond15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else9, %if.then3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !292
  br i1 %idle, label %cond.true19, label %if.end17.cond.end21_crit_edge

if.end17.cond.end21_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end21

cond.true19:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %ack_mask = getelementptr inbounds %struct.rockchip_domain_info, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %ack_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ack_mask, align 4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true19, %if.end17.cond.end21_crit_edge
  %cond22 = phi i32 [ %15, %cond.true19 ], [ 0, %if.end17.cond.end21_crit_edge ]
  %call23 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call23, 10000000
  %regmap.i = getelementptr inbounds %struct.rockchip_pmu, ptr %3, i32 0, i32 1
  %info.i = getelementptr inbounds %struct.rockchip_pmu, ptr %3, i32 0, i32 2
  %ack_mask26 = getelementptr inbounds %struct.rockchip_domain_info, ptr %1, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %cond.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !289
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %19 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info.i, align 4
  %ack_offset.i = getelementptr inbounds %struct.rockchip_pmu_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ack_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ack_offset.i, align 4
  %call.i1 = call i32 @regmap_read(ptr noundef %18, i32 noundef %22, ptr noundef nonnull %val.i) #7
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %25 = ptrtoint ptr %ack_mask26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ack_mask26, align 4
  %and = and i32 %26, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cond22)
  %cmp27 = icmp eq i32 %and, %cond22
  br i1 %cmp27, label %for.cond.for.end_crit_edge, label %land.lhs.true

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call31 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call31, %add.i
  br i1 %cmp3.i, label %if.then34, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i2) #7
  %27 = ptrtoint ptr %val.i2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i2, align 4, !annotation !289
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %30 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info.i, align 4
  %ack_offset.i5 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ack_offset.i5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ack_offset.i5, align 4
  %call.i6 = call i32 @regmap_read(ptr noundef %29, i32 noundef %33, ptr noundef nonnull %val.i2) #7
  %34 = ptrtoint ptr %val.i2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i2) #7
  br label %for.end

for.end:                                          ; preds = %if.then34, %for.cond.for.end_crit_edge
  %val.0 = phi i32 [ %35, %if.then34 ], [ %24, %for.cond.for.end_crit_edge ]
  %36 = ptrtoint ptr %ack_mask26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ack_mask26, align 4
  %and48 = and i32 %37, %val.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and48, i32 %cond22)
  %cmp49 = icmp eq i32 %and48, %cond22
  br i1 %cmp49, label %if.end53, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.46, ptr noundef %41, i32 noundef %val.0) #10
  br label %cleanup

if.end53:                                         ; preds = %for.end
  %call57 = call i64 @ktime_get() #7
  %add.i7 = add i64 %call57, 10000000
  br label %for.cond59

for.cond59:                                       ; preds = %land.lhs.true70.for.cond59_crit_edge, %if.end53
  %42 = ptrtoint ptr %pmu2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pmu2, align 4
  %44 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i8) #7
  %46 = ptrtoint ptr %val.i8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %val.i8, align 4, !annotation !289
  %regmap.i10 = getelementptr inbounds %struct.rockchip_pmu, ptr %43, i32 0, i32 1
  %47 = ptrtoint ptr %regmap.i10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i10, align 4
  %info2.i = getelementptr inbounds %struct.rockchip_pmu, ptr %43, i32 0, i32 2
  %49 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %info2.i, align 4
  %idle_offset.i = getelementptr inbounds %struct.rockchip_pmu_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %idle_offset.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %idle_offset.i, align 4
  %call.i11 = call i32 @regmap_read(ptr noundef %48, i32 noundef %52, ptr noundef nonnull %val.i8) #7
  %53 = ptrtoint ptr %val.i8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val.i8, align 4
  %idle_mask.i = getelementptr inbounds %struct.rockchip_domain_info, ptr %45, i32 0, i32 4
  %55 = ptrtoint ptr %idle_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %idle_mask.i, align 4
  %and.i = and i32 %56, %54
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %56)
  %cmp.i12 = icmp eq i32 %and.i, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i8) #7
  %57 = xor i1 %cmp.i12, %idle
  br i1 %57, label %land.lhs.true70, label %for.cond59.for.end91_crit_edge

for.cond59.for.end91_crit_edge:                   ; preds = %for.cond59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end91

land.lhs.true70:                                  ; preds = %for.cond59
  %call71 = call i64 @ktime_get() #7
  %cmp3.i14 = icmp sgt i64 %call71, %add.i7
  br i1 %cmp3.i14, label %if.then75, label %land.lhs.true70.for.cond59_crit_edge

land.lhs.true70.for.cond59_crit_edge:             ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond59

if.then75:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %pmu2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pmu2, align 4
  %60 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i17) #7
  %62 = ptrtoint ptr %val.i17 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %val.i17, align 4, !annotation !289
  %regmap.i20 = getelementptr inbounds %struct.rockchip_pmu, ptr %59, i32 0, i32 1
  %63 = ptrtoint ptr %regmap.i20 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i20, align 4
  %info2.i21 = getelementptr inbounds %struct.rockchip_pmu, ptr %59, i32 0, i32 2
  %65 = ptrtoint ptr %info2.i21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %info2.i21, align 4
  %idle_offset.i22 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %idle_offset.i22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %idle_offset.i22, align 4
  %call.i23 = call i32 @regmap_read(ptr noundef %64, i32 noundef %68, ptr noundef nonnull %val.i17) #7
  %69 = ptrtoint ptr %val.i17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val.i17, align 4
  %idle_mask.i24 = getelementptr inbounds %struct.rockchip_domain_info, ptr %61, i32 0, i32 4
  %71 = ptrtoint ptr %idle_mask.i24 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idle_mask.i24, align 4
  %and.i25 = and i32 %72, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i25, i32 %72)
  %cmp.i26 = icmp eq i32 %and.i25, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i17) #7
  br label %for.end91

for.end91:                                        ; preds = %if.then75, %for.cond59.for.end91_crit_edge
  %is_idle.0.in = phi i1 [ %cmp.i26, %if.then75 ], [ %cmp.i12, %for.cond59.for.end91_crit_edge ]
  %73 = xor i1 %is_idle.0.in, %idle
  br i1 %73, label %do.end104, label %for.end91.cleanup_crit_edge

for.end91.cleanup_crit_edge:                      ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end104:                                        ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #9
  %conv94 = zext i1 %is_idle.0.in to i32
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %3, align 4
  %name106 = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %76 = ptrtoint ptr %name106 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name106, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.49, ptr noundef %77, i32 noundef %conv94) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %for.end91.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_do_pmu_set_power_domain(ptr nocapture noundef readonly %pd, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  %val.i.i94 = alloca i32, align 4
  %val.i95 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu1 = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu1, align 4
  %info = getelementptr inbounds %struct.rockchip_pm_domain, ptr %pd, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %pwr_mask = getelementptr inbounds %struct.rockchip_domain_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pwr_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwr_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %pwr_w_mask = getelementptr inbounds %struct.rockchip_domain_info, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %pwr_w_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwr_w_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %regmap14 = getelementptr inbounds %struct.rockchip_pmu, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap14, align 4
  %info15 = getelementptr inbounds %struct.rockchip_pmu, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %info15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info15, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  br i1 %tobool.not, label %if.else13, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %or = select i1 %on, i32 0, i32 %5
  %cond = or i32 %7, %or
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %13, i32 noundef %cond) #7
  br label %if.end22

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %not.on = xor i1 %on, true
  %cond20 = sext i1 %not.on to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %13, i32 noundef %5, i32 noundef %cond20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end22

if.end22:                                         ; preds = %if.else13, %if.then4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !293
  %call23 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call23, 10000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end22
  %14 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pmu1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !289
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 8
  %status_mask.i = getelementptr inbounds %struct.rockchip_domain_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %status_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i.i, align 4, !annotation !289
  %regmap.i.i = getelementptr inbounds %struct.rockchip_pmu, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i.i, align 4
  %info2.i.i = getelementptr inbounds %struct.rockchip_pmu, ptr %15, i32 0, i32 2
  %24 = ptrtoint ptr %info2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info2.i.i, align 4
  %idle_offset.i.i = getelementptr inbounds %struct.rockchip_pmu_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %idle_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idle_offset.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %23, i32 noundef %27, ptr noundef nonnull %val.i.i) #7
  %28 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i.i, align 4
  %idle_mask.i.i = getelementptr inbounds %struct.rockchip_domain_info, ptr %18, i32 0, i32 4
  %30 = ptrtoint ptr %idle_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %idle_mask.i.i, align 4
  %and.i.i = and i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %31)
  %cmp.i.i = icmp ne i32 %and.i.i, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %rockchip_pmu_domain_is_on.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.rockchip_pmu, ptr %15, i32 0, i32 1
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %info2.i = getelementptr inbounds %struct.rockchip_pmu, ptr %15, i32 0, i32 2
  %34 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info2.i, align 4
  %status_offset.i = getelementptr inbounds %struct.rockchip_pmu_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %status_offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status_offset.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %33, i32 noundef %37, ptr noundef nonnull %val.i) #7
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i, align 4
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 8
  %status_mask5.i = getelementptr inbounds %struct.rockchip_domain_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %status_mask5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status_mask5.i, align 4
  %and.i = and i32 %43, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br label %rockchip_pmu_domain_is_on.exit

rockchip_pmu_domain_is_on.exit:                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i1 [ %cmp.i.i, %if.then.i ], [ %tobool.not.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %44 = xor i1 %retval.0.i, %on
  br i1 %44, label %land.lhs.true, label %rockchip_pmu_domain_is_on.exit.for.end_crit_edge

rockchip_pmu_domain_is_on.exit.for.end_crit_edge: ; preds = %rockchip_pmu_domain_is_on.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %rockchip_pmu_domain_is_on.exit
  %call35 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call35, %add.i
  br i1 %cmp3.i, label %if.then39, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then39:                                        ; preds = %land.lhs.true
  %45 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pmu1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i95) #7
  %47 = ptrtoint ptr %val.i95 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %val.i95, align 4, !annotation !289
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info, align 8
  %status_mask.i98 = getelementptr inbounds %struct.rockchip_domain_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %status_mask.i98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status_mask.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i99 = icmp eq i32 %51, 0
  br i1 %cmp.i99, label %if.then.i107, label %if.end.i115

if.then.i107:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i94) #7
  %52 = ptrtoint ptr %val.i.i94 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %val.i.i94, align 4, !annotation !289
  %regmap.i.i100 = getelementptr inbounds %struct.rockchip_pmu, ptr %46, i32 0, i32 1
  %53 = ptrtoint ptr %regmap.i.i100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i.i100, align 4
  %info2.i.i101 = getelementptr inbounds %struct.rockchip_pmu, ptr %46, i32 0, i32 2
  %55 = ptrtoint ptr %info2.i.i101 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %info2.i.i101, align 4
  %idle_offset.i.i102 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %idle_offset.i.i102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %idle_offset.i.i102, align 4
  %call.i.i103 = call i32 @regmap_read(ptr noundef %54, i32 noundef %58, ptr noundef nonnull %val.i.i94) #7
  %59 = ptrtoint ptr %val.i.i94 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i.i94, align 4
  %idle_mask.i.i104 = getelementptr inbounds %struct.rockchip_domain_info, ptr %49, i32 0, i32 4
  %61 = ptrtoint ptr %idle_mask.i.i104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %idle_mask.i.i104, align 4
  %and.i.i105 = and i32 %62, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i105, i32 %62)
  %cmp.i.i106 = icmp ne i32 %and.i.i105, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i94) #7
  br label %rockchip_pmu_domain_is_on.exit117

if.end.i115:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i108 = getelementptr inbounds %struct.rockchip_pmu, ptr %46, i32 0, i32 1
  %63 = ptrtoint ptr %regmap.i108 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i108, align 4
  %info2.i109 = getelementptr inbounds %struct.rockchip_pmu, ptr %46, i32 0, i32 2
  %65 = ptrtoint ptr %info2.i109 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %info2.i109, align 4
  %status_offset.i110 = getelementptr inbounds %struct.rockchip_pmu_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %status_offset.i110 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %status_offset.i110, align 4
  %call3.i111 = call i32 @regmap_read(ptr noundef %64, i32 noundef %68, ptr noundef nonnull %val.i95) #7
  %69 = ptrtoint ptr %val.i95 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val.i95, align 4
  %71 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %info, align 8
  %status_mask5.i112 = getelementptr inbounds %struct.rockchip_domain_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %status_mask5.i112 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %status_mask5.i112, align 4
  %and.i113 = and i32 %74, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.not.i114 = icmp eq i32 %and.i113, 0
  br label %rockchip_pmu_domain_is_on.exit117

rockchip_pmu_domain_is_on.exit117:                ; preds = %if.end.i115, %if.then.i107
  %retval.0.i116 = phi i1 [ %cmp.i.i106, %if.then.i107 ], [ %tobool.not.i114, %if.end.i115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i95) #7
  br label %for.end

for.end:                                          ; preds = %rockchip_pmu_domain_is_on.exit117, %rockchip_pmu_domain_is_on.exit.for.end_crit_edge
  %is_on.0.in = phi i1 [ %retval.0.i116, %rockchip_pmu_domain_is_on.exit117 ], [ %retval.0.i, %rockchip_pmu_domain_is_on.exit.for.end_crit_edge ]
  %75 = xor i1 %is_on.0.in, %on
  br i1 %75, label %do.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv55 = zext i1 %is_on.0.in to i32
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %pd, i32 0, i32 10
  %78 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.51, ptr noundef %79, i32 noundef %conv55) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add_clk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277}
!llvm.module.flags = !{!279, !280, !281, !282, !283, !284, !285, !286}
!llvm.ident = !{!287}

!0 = !{ptr @__initcall__kmod_pm_domains__176_1083_rockchip_pm_domain_drv_register2, !1, !"__initcall__kmod_pm_domains__176_1083_rockchip_pm_domain_drv_register2", i1 false, i1 false}
!1 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 1083, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 1068, i32 13}
!4 = !{ptr @rockchip_pm_domain_driver, !5, !"rockchip_pm_domain_driver", i1 false, i1 false}
!5 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 1065, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 642, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rockchip_pm_domain_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @rockchip_pm_domain_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 648, i32 3}
!16 = !{ptr @rockchip_pm_domain_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rockchip_pm_domain_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @rockchip_pm_domain_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 661, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 670, i32 3}
!23 = !{ptr @rockchip_pm_domain_probe._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rockchip_pm_domain_probe._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 676, i32 3}
!27 = !{ptr @rockchip_pm_domain_probe._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rockchip_pm_domain_probe._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 696, i32 4}
!31 = !{ptr @rockchip_pm_domain_probe._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rockchip_pm_domain_probe._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 704, i32 4}
!35 = !{ptr @rockchip_pm_domain_probe._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rockchip_pm_domain_probe._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 712, i32 3}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rockchip_pm_domain_probe.__UNIQUE_ID_ddebug175, !38, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 718, i32 3}
!43 = !{ptr @rockchip_pm_domain_probe._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rockchip_pm_domain_probe._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 399, i32 37}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 401, i32 3}
!49 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rockchip_pm_add_one_domain._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rockchip_pm_add_one_domain._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 408, i32 3}
!54 = !{ptr @rockchip_pm_add_one_domain._entry.30, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rockchip_pm_add_one_domain._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 415, i32 3}
!58 = !{ptr @rockchip_pm_add_one_domain._entry.33, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rockchip_pm_add_one_domain._entry_ptr.35, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 434, i32 3}
!62 = !{ptr @rockchip_pm_add_one_domain.__UNIQUE_ID_ddebug173, !61, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 443, i32 4}
!65 = !{ptr @rockchip_pm_add_one_domain._entry.37, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rockchip_pm_add_one_domain._entry_ptr.39, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 454, i32 49}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 495, i32 3}
!71 = !{ptr @rockchip_pm_add_one_domain._entry.41, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rockchip_pm_add_one_domain._entry_ptr.43, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 309, i32 4}
!75 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rockchip_pd_power._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @rockchip_pd_power._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 189, i32 3}
!80 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rockchip_pmu_set_idle_request._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @rockchip_pmu_set_idle_request._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 198, i32 3}
!85 = !{ptr @rockchip_pmu_set_idle_request._entry.48, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rockchip_pmu_set_idle_request._entry_ptr.50, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 292, i32 3}
!89 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @rockchip_do_pmu_set_power_domain._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @rockchip_do_pmu_set_power_domain._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 358, i32 2}
!94 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @rockchip_pd_attach_dev.__UNIQUE_ID_ddebug170, !93, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 362, i32 3}
!98 = !{ptr @rockchip_pd_attach_dev._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @rockchip_pd_attach_dev._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 368, i32 3}
!102 = !{ptr @rockchip_pd_attach_dev.__UNIQUE_ID_ddebug171, !101, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 371, i32 4}
!105 = !{ptr @rockchip_pd_attach_dev._entry.57, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rockchip_pd_attach_dev._entry_ptr.59, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 384, i32 2}
!109 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @rockchip_pd_detach_dev.__UNIQUE_ID_ddebug172, !108, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!111 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 587, i32 4}
!113 = !{ptr @rockchip_pm_add_subdomain._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @rockchip_pm_add_subdomain._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @rockchip_pm_add_subdomain._entry.63, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 596, i32 4}
!117 = !{ptr @rockchip_pm_add_subdomain._entry_ptr.64, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @rockchip_pm_add_subdomain._entry.65, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 603, i32 4}
!120 = !{ptr @rockchip_pm_add_subdomain._entry_ptr.66, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 612, i32 4}
!123 = !{ptr @rockchip_pm_add_subdomain._entry.67, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @rockchip_pm_add_subdomain._entry_ptr.69, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 616, i32 4}
!127 = !{ptr @rockchip_pm_add_subdomain.__UNIQUE_ID_ddebug174, !126, !"__UNIQUE_ID_ddebug174", i1 false, i1 false}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 534, i32 3}
!130 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @rockchip_pm_remove_one_domain._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @rockchip_pm_remove_one_domain._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @rockchip_pm_domain_dt_match, !134, !"rockchip_pm_domain_dt_match", i1 false, i1 false}
!134 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 1013, i32 34}
!135 = !{ptr @px30_pmu, !136, !"px30_pmu", i1 false, i1 false}
!136 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 867, i32 39}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 730, i32 19}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 731, i32 21}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 732, i32 20}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 733, i32 23}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 734, i32 19}
!147 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 735, i32 18}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 736, i32 18}
!151 = !{ptr @.str.80, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 737, i32 19}
!153 = !{ptr @px30_pm_domains, !154, !"px30_pm_domains", i1 false, i1 false}
!154 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 729, i32 42}
!155 = !{ptr @rk3036_pmu, !156, !"rk3036_pmu", i1 false, i1 false}
!156 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 878, i32 39}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 741, i32 21}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 742, i32 21}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 743, i32 21}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 744, i32 21}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 747, i32 21}
!167 = !{ptr @rk3036_pm_domains, !168, !"rk3036_pm_domains", i1 false, i1 false}
!168 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 740, i32 42}
!169 = !{ptr @rk3066_pmu, !170, !"rk3066_pmu", i1 false, i1 false}
!170 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 887, i32 39}
!171 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 752, i32 22}
!173 = !{ptr @.str.87, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 755, i32 21}
!175 = !{ptr @rk3066_pm_domains, !176, !"rk3066_pm_domains", i1 false, i1 false}
!176 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 750, i32 42}
!177 = !{ptr @rk3128_pmu, !178, !"rk3128_pmu", i1 false, i1 false}
!178 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 898, i32 39}
!179 = !{ptr @rk3128_pm_domains, !180, !"rk3128_pm_domains", i1 false, i1 false}
!180 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 758, i32 42}
!181 = !{ptr @rk3188_pmu, !182, !"rk3188_pmu", i1 false, i1 false}
!182 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 909, i32 39}
!183 = !{ptr @rk3188_pm_domains, !184, !"rk3188_pm_domains", i1 false, i1 false}
!184 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 766, i32 42}
!185 = !{ptr @rk3228_pmu, !186, !"rk3228_pmu", i1 false, i1 false}
!186 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 920, i32 39}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 777, i32 21}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 780, i32 21}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 782, i32 23}
!193 = !{ptr @rk3228_pm_domains, !194, !"rk3228_pm_domains", i1 false, i1 false}
!194 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 774, i32 42}
!195 = !{ptr @rk3288_pmu, !196, !"rk3288_pmu", i1 false, i1 false}
!196 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 929, i32 39}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 790, i32 21}
!199 = !{ptr @rk3288_pm_domains, !200, !"rk3288_pm_domains", i1 false, i1 false}
!200 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 788, i32 42}
!201 = !{ptr @rk3328_pmu, !202, !"rk3328_pmu", i1 false, i1 false}
!202 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 946, i32 39}
!203 = !{ptr @rk3328_pm_domains, !204, !"rk3328_pm_domains", i1 false, i1 false}
!204 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 795, i32 42}
!205 = !{ptr @rk3366_pmu, !206, !"rk3366_pmu", i1 false, i1 false}
!206 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 955, i32 39}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 812, i32 23}
!209 = !{ptr @rk3366_pm_domains, !210, !"rk3366_pm_domains", i1 false, i1 false}
!210 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 807, i32 42}
!211 = !{ptr @rk3368_pmu, !212, !"rk3368_pmu", i1 false, i1 false}
!212 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 972, i32 39}
!213 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 821, i32 22}
!215 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 822, i32 22}
!217 = !{ptr @rk3368_pm_domains, !218, !"rk3368_pm_domains", i1 false, i1 false}
!218 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 817, i32 42}
!219 = !{ptr @rk3399_pmu, !220, !"rk3399_pmu", i1 false, i1 false}
!220 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 989, i32 39}
!221 = !{ptr @.str.95, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 826, i32 22}
!223 = !{ptr @.str.96, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 827, i32 22}
!225 = !{ptr @.str.97, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 828, i32 21}
!227 = !{ptr @.str.98, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 829, i32 21}
!229 = !{ptr @.str.99, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 830, i32 21}
!231 = !{ptr @.str.100, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 831, i32 23}
!233 = !{ptr @.str.101, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 832, i32 23}
!235 = !{ptr @.str.102, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 841, i32 21}
!237 = !{ptr @.str.103, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 842, i32 21}
!239 = !{ptr @.str.104, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 843, i32 21}
!241 = !{ptr @.str.105, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 844, i32 21}
!243 = !{ptr @.str.106, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 845, i32 21}
!245 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 847, i32 21}
!247 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 848, i32 21}
!249 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 849, i32 21}
!251 = !{ptr @.str.110, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 850, i32 21}
!253 = !{ptr @.str.111, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 851, i32 20}
!255 = !{ptr @.str.112, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 852, i32 26}
!257 = !{ptr @.str.113, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 833, i32 23}
!259 = !{ptr @.str.114, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 836, i32 23}
!261 = !{ptr @.str.115, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 837, i32 21}
!263 = !{ptr @.str.116, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 838, i32 21}
!265 = !{ptr @.str.117, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 839, i32 21}
!267 = !{ptr @rk3399_pm_domains, !268, !"rk3399_pm_domains", i1 false, i1 false}
!268 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 825, i32 42}
!269 = !{ptr @rk3568_pmu, !270, !"rk3568_pmu", i1 false, i1 false}
!270 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 1002, i32 39}
!271 = !{ptr @.str.118, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 856, i32 21}
!273 = !{ptr @.str.119, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 863, i32 23}
!275 = !{ptr @.str.120, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 864, i32 21}
!277 = !{ptr @rk3568_pm_domains, !278, !"rk3568_pm_domains", i1 false, i1 false}
!278 = !{!"../drivers/soc/rockchip/pm_domains.c", i32 855, i32 42}
!279 = !{i32 1, !"wchar_size", i32 2}
!280 = !{i32 1, !"min_enum_size", i32 4}
!281 = !{i32 8, !"branch-target-enforcement", i32 0}
!282 = !{i32 8, !"sign-return-address", i32 0}
!283 = !{i32 8, !"sign-return-address-all", i32 0}
!284 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!285 = !{i32 7, !"uwtable", i32 1}
!286 = !{i32 7, !"frame-pointer", i32 2}
!287 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!288 = !{i64 2148181850, i64 2148181855, i64 2148181868, i64 2148181912, i64 2148181946, i64 2148181967}
!289 = !{!"auto-init"}
!290 = !{!"branch_weights", i32 1, i32 2000}
!291 = !{i8 0, i8 2}
!292 = !{i64 2152674013}
!293 = !{i64 2152681654}
