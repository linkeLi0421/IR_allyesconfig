; ModuleID = '/llk/IR_all_yes/drivers/soc/imx/gpc.c_pt.bc'
source_filename = "../drivers/soc/imx/gpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.imx_pm_domain = type { %struct.generic_pm_domain, ptr, ptr, [7 x ptr], i32, i32, i8, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.84 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.84 = type { %struct.mutex }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.genpd_power_state = type { i64, i64, i64, i64, i64, ptr, i64, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.imx_gpc_dt_data = type { i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_gpc__288_240_imx_pgc_power_domain_driver_init6 = internal global ptr @imx_pgc_power_domain_driver_init, section ".initcall6.init", align 4
@__initcall__kmod_gpc__289_554_imx_gpc_driver_init6 = internal global ptr @imx_gpc_driver_init, section ".initcall6.init", align 4
@imx_pgc_power_domain_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_pgc_power_domain_probe, ptr @imx_pgc_power_domain_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @imx_pgc_power_domain_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx-pgc-pd\00", [21 x i8] zeroinitializer }, align 32
@imx_pgc_power_domain_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"imx-pgc-power-domain", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@imx_pgc_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"more than %d clocks\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_pgc_get_clocks\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/soc/imx/gpc.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_pgc_get_clocks._entry_ptr = internal global ptr @imx_pgc_get_clocks._entry, section ".printk_index", align 4
@imx_gpc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_gpc_probe, ptr @imx_gpc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_gpc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-gpc\00", [24 x i8] zeroinitializer }, align 32
@imx_gpc_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_dt_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6qp-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6qp_dt_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sl_dt_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_dt_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pgc\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#power-domain-cells\00", [44 x i8] zeroinitializer }, align 32
@imx_gpc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@imx_gpc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 684, ptr @access_table, ptr @access_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"gpc:426:(&imx_gpc_regmap_config)->lock\00", [57 x i8] zeroinitializer }, align 32
@imx_gpc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init regmap: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx_gpc_probe\00", [18 x i8] zeroinitializer }, align 32
@imx_gpc_probe._entry_ptr = internal global ptr @imx_gpc_probe._entry, section ".printk_index", align 4
@imx_gpc_domains = internal global { [4 x %struct.imx_pm_domain], [1408 x i8] } { [4 x %struct.imx_pm_domain] [%struct.imx_pm_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.16, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, [7 x ptr] zeroinitializer, i32 0, i32 0, i8 0, i32 0 }, %struct.imx_pm_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.17, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @imx6_pm_domain_power_off, ptr @imx6_pm_domain_power_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr @imx6_pm_domain_pu_state, ptr null, i32 1, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, [7 x ptr] zeroinitializer, i32 0, i32 608, i8 0, i32 0 }, %struct.imx_pm_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.18, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @imx6_pm_domain_power_off, ptr @imx6_pm_domain_power_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, [7 x ptr] zeroinitializer, i32 0, i32 576, i8 4, i32 0 }, %struct.imx_pm_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.19, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @imx6_pm_domain_power_off, ptr @imx6_pm_domain_power_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, [7 x ptr] zeroinitializer, i32 0, i32 512, i8 6, i32 0 }], [1408 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx-pgc-power-domain\00", [43 x i8] zeroinitializer }, align 32
@access_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @yes_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@yes_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 512, i32 524 }, %struct.regmap_range { i32 608, i32 620 }, %struct.regmap_range { i32 576, i32 588 }], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ARM\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PU\00", [29 x i8] zeroinitializer }, align 32
@imx6_pm_domain_pu_state = internal global { %struct.genpd_power_state, [32 x i8] } { %struct.genpd_power_state { i64 25000, i64 2000000, i64 0, i64 0, i64 0, ptr null, i64 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DISPLAY\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx6_pm_domain_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: failed to enable regulator: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx6_pm_domain_power_on\00", [40 x i8] zeroinitializer }, align 32
@imx6_pm_domain_power_on._entry_ptr = internal global ptr @imx6_pm_domain_power_on._entry, section ".printk_index", align 4
@imx6_pm_domain_power_on._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013powerup request on domain %s timed out\0A\00", [54 x i8] zeroinitializer }, align 32
@imx6_pm_domain_power_on._entry_ptr.24 = internal global ptr @imx6_pm_domain_power_on._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pu\00", [29 x i8] zeroinitializer }, align 32
@imx_gpc_onecell_data = internal global { %struct.genpd_onecell_data, [20 x i8] } { %struct.genpd_onecell_data { ptr @imx_gpc_onecell_domains, i32 2, ptr null }, [20 x i8] zeroinitializer }, align 32
@imx_gpc_onecell_domains = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @imx_gpc_domains, ptr getelementptr (i8, ptr @imx_gpc_domains, i64 1408)], [24 x i8] zeroinitializer }, align 32
@imx6q_dt_data = internal constant { %struct.imx_gpc_dt_data, [24 x i8] } { %struct.imx_gpc_dt_data { i32 2, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@imx6qp_dt_data = internal constant { %struct.imx_gpc_dt_data, [24 x i8] } { %struct.imx_gpc_dt_data { i32 2, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@imx6sl_dt_data = internal constant { %struct.imx_gpc_dt_data, [24 x i8] } { %struct.imx_gpc_dt_data { i32 3, i8 0, i8 1 }, [24 x i8] zeroinitializer }, align 32
@imx6sx_dt_data = internal constant { %struct.imx_gpc_dt_data, [24 x i8] } { %struct.imx_gpc_dt_data { i32 4, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"imx_pgc_power_domain_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 232, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 234, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"imx_pgc_power_domain_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 227, i32 40 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 167, i32 52 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 139, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"imx_gpc_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 546, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 548, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"imx_gpc_dt_ids\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 320, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 414, i32 53 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 417, i32 48 }
@___asan_gen_.71 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"imx_gpc_regmap_config\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 340, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 425, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 429, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"imx_gpc_domains\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 252, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 466, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 472, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 480, i32 36 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"access_table\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 335, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"yes_ranges\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 328, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 255, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 261, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant [24 x i8] c"imx6_pm_domain_pu_state\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 247, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 272, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 281, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 96, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 118, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 372, i32 45 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"imx_gpc_onecell_data\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 355, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant [24 x i8] c"imx_gpc_onecell_domains\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 350, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"imx6q_dt_data\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 296, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"imx6qp_dt_data\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 302, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"imx6sl_dt_data\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 308, i32 37 }
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"imx6sx_dt_data\00", align 1
@___asan_gen_.156 = private constant [25 x i8] c"../drivers/soc/imx/gpc.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 314, i32 37 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__initcall__kmod_gpc__288_240_imx_pgc_power_domain_driver_init6, ptr @__initcall__kmod_gpc__289_554_imx_gpc_driver_init6, ptr @imx6_pm_domain_power_on._entry, ptr @imx6_pm_domain_power_on._entry.22, ptr @imx6_pm_domain_power_on._entry_ptr, ptr @imx6_pm_domain_power_on._entry_ptr.24, ptr @imx_gpc_probe._entry, ptr @imx_gpc_probe._entry_ptr, ptr @imx_pgc_get_clocks._entry, ptr @imx_pgc_get_clocks._entry_ptr, ptr @imx_pgc_power_domain_driver, ptr @.str, ptr @imx_pgc_power_domain_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @imx_gpc_driver, ptr @.str.7, ptr @imx_gpc_dt_ids, ptr @.str.8, ptr @.str.9, ptr @imx_gpc_probe._key, ptr @imx_gpc_regmap_config, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @imx_gpc_domains, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @access_table, ptr @yes_ranges, ptr @.str.16, ptr @.str.17, ptr @imx6_pm_domain_pu_state, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @imx_gpc_onecell_data, ptr @imx_gpc_onecell_domains, ptr @imx6q_dt_data, ptr @imx6qp_dt_data, ptr @imx6sl_dt_data, ptr @imx6sx_dt_data], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_power_domain_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_power_domain_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_domains to i32), i32 5632, i32 7040, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @access_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yes_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pm_domain_pu_state to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pm_domain_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pm_domain_power_on._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_onecell_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_onecell_domains to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_dt_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6qp_dt_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sl_dt_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sx_dt_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pgc_power_domain_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_pgc_power_domain_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_gpc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_gpc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pgc_power_domain_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %supply.i = getelementptr inbounds %struct.imx_pm_domain, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %supply.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %supply.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.then.if.end9.i_crit_edge

if.then.if.end9.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then.i:                                        ; preds = %if.then
  %5 = ptrtoint ptr %call.i to i32
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp.i, label %if.then5.i, label %if.then.i.imx_pgc_parse_dt.exit_crit_edge

if.then.i.imx_pgc_parse_dt.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_pgc_parse_dt.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %supply.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %supply.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.then.if.end9.i_crit_edge
  %call10.i = tail call fastcc i32 @imx_pgc_get_clocks(ptr noundef %dev, ptr noundef %1) #5
  br label %imx_pgc_parse_dt.exit

imx_pgc_parse_dt.exit:                            ; preds = %if.end9.i, %if.then.i.imx_pgc_parse_dt.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end9.i ], [ %5, %if.then.i.imx_pgc_parse_dt.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool3.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool3.not, label %imx_pgc_parse_dt.exit.if.end5_crit_edge, label %imx_pgc_parse_dt.exit.cleanup_crit_edge

imx_pgc_parse_dt.exit.cleanup_crit_edge:          ; preds = %imx_pgc_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

imx_pgc_parse_dt.exit.if.end5_crit_edge:          ; preds = %imx_pgc_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %imx_pgc_parse_dt.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %power_on to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power_on, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 %8(ptr noundef %1) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end5.if.end12_crit_edge
  %call14 = tail call i32 @pm_genpd_init(ptr noundef %1, ptr noundef null, i1 noundef zeroext false) #5
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call17 = tail call i32 @of_genpd_add_provider_simple(ptr noundef %10, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %genpd_err

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %call21 = tail call ptr @device_link_add(ptr noundef %dev, ptr noundef %12, i32 noundef 2) #5
  br label %cleanup

genpd_err:                                        ; preds = %if.end12
  %call23 = tail call i32 @pm_genpd_remove(ptr noundef %1) #5
  %num_clks.i = getelementptr inbounds %struct.imx_pm_domain, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_clks.i, align 4
  %i.04.i = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.04.i)
  %cmp5.i = icmp sgt i32 %i.04.i, -1
  br i1 %cmp5.i, label %genpd_err.for.body.i_crit_edge, label %genpd_err.cleanup_crit_edge

genpd_err.cleanup_crit_edge:                      ; preds = %genpd_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

genpd_err.for.body.i_crit_edge:                   ; preds = %genpd_err
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %genpd_err.for.body.i_crit_edge
  %i.06.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.04.i, %genpd_err.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx_pm_domain, ptr %1, i32 0, i32 3, i32 %i.06.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_put(ptr noundef %16) #5
  %i.0.i = add nsw i32 %i.06.i, -1
  %cmp.i41.not = icmp eq i32 %i.06.i, 0
  br i1 %cmp.i41.not, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %genpd_err.cleanup_crit_edge, %if.end20, %imx_pgc_parse_dt.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ %retval.0.i, %imx_pgc_parse_dt.exit.cleanup_crit_edge ], [ %call17, %genpd_err.cleanup_crit_edge ], [ %call17, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pgc_power_domain_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_genpd_del_provider(ptr noundef %3) #5
  %call = tail call i32 @pm_genpd_remove(ptr noundef %1) #5
  %num_clks.i = getelementptr inbounds %struct.imx_pm_domain, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks.i, align 4
  %i.04.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.04.i)
  %cmp5.i = icmp sgt i32 %i.04.i, -1
  br i1 %cmp5.i, label %entry.for.body.i_crit_edge, label %entry.imx_pgc_put_clocks.exit_crit_edge

entry.imx_pgc_put_clocks.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_pgc_put_clocks.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.06.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.04.i, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx_pm_domain, ptr %1, i32 0, i32 3, i32 %i.06.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_put(ptr noundef %7) #5
  %i.0.i = add nsw i32 %i.06.i, -1
  %cmp.i.not = icmp eq i32 %i.06.i, 0
  br i1 %cmp.i.not, label %for.body.i.imx_pgc_put_clocks.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.imx_pgc_put_clocks.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_pgc_put_clocks.exit

imx_pgc_put_clocks.exit:                          ; preds = %for.body.i.imx_pgc_put_clocks.exit_crit_edge, %entry.imx_pgc_put_clocks.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_pgc_get_clocks(ptr noundef %dev, ptr nocapture noundef %domain) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call26 = tail call ptr @of_clk_get(ptr noundef %1, i32 noundef 0) #5
  %cmp.i27 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %entry.for.end_crit_edge, label %if.end.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.preheader:                                 ; preds = %entry
  %arrayidx = getelementptr %struct.imx_pm_domain, ptr %domain, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call26, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_clk_get(ptr noundef %4, i32 noundef 1) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.preheader.for.end_crit_edge, label %if.end.1

if.end.preheader.for.end_crit_edge:               ; preds = %if.end.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

while.body.preheader:                             ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 7) #8
  %5 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.6, align 4
  tail call void @clk_put(ptr noundef %6) #5
  %7 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.5, align 4
  tail call void @clk_put(ptr noundef %8) #5
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.4, align 4
  tail call void @clk_put(ptr noundef %10) #5
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.3, align 4
  tail call void @clk_put(ptr noundef %12) #5
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2, align 4
  tail call void @clk_put(ptr noundef %14) #5
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_put(ptr noundef %16) #5
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_put(ptr noundef %18) #5
  br label %cleanup7

if.end.1:                                         ; preds = %if.end.preheader
  %arrayidx.1 = getelementptr %struct.imx_pm_domain, ptr %domain, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %arrayidx.1, align 4
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call.1 = tail call ptr @of_clk_get(ptr noundef %21, i32 noundef 2) #5
  %cmp.i.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end.1.for.end_crit_edge, label %if.end.2

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.2:                                         ; preds = %if.end.1
  %arrayidx.2 = getelementptr %struct.imx_pm_domain, ptr %domain, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.1, ptr %arrayidx.2, align 4
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call.2 = tail call ptr @of_clk_get(ptr noundef %24, i32 noundef 3) #5
  %cmp.i.2 = icmp ugt ptr %call.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.end.2.for.end_crit_edge, label %if.end.3

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.3:                                         ; preds = %if.end.2
  %arrayidx.3 = getelementptr %struct.imx_pm_domain, ptr %domain, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.2, ptr %arrayidx.3, align 4
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call.3 = tail call ptr @of_clk_get(ptr noundef %27, i32 noundef 4) #5
  %cmp.i.3 = icmp ugt ptr %call.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.end.3.for.end_crit_edge, label %if.end.4

if.end.3.for.end_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.4:                                         ; preds = %if.end.3
  %arrayidx.4 = getelementptr %struct.imx_pm_domain, ptr %domain, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.3, ptr %arrayidx.4, align 4
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call.4 = tail call ptr @of_clk_get(ptr noundef %30, i32 noundef 5) #5
  %cmp.i.4 = icmp ugt ptr %call.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %if.end.4.for.end_crit_edge, label %if.end.5

if.end.4.for.end_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.5:                                         ; preds = %if.end.4
  %arrayidx.5 = getelementptr %struct.imx_pm_domain, ptr %domain, i32 0, i32 3, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.4, ptr %arrayidx.5, align 4
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.5 = tail call ptr @of_clk_get(ptr noundef %33, i32 noundef 6) #5
  %cmp.i.5 = icmp ugt ptr %call.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %if.end.5.for.end_crit_edge, label %if.end.6

if.end.5.for.end_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.6:                                         ; preds = %if.end.5
  %arrayidx.6 = getelementptr %struct.imx_pm_domain, ptr %domain, i32 0, i32 3, i32 6
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.5, ptr %arrayidx.6, align 4
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %call.6 = tail call ptr @of_clk_get(ptr noundef %36, i32 noundef 7) #5
  %cmp.i.6 = icmp ugt ptr %call.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6, label %if.end.6.for.end_crit_edge, label %while.body.preheader

if.end.6.for.end_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.6.for.end_crit_edge, %if.end.5.for.end_crit_edge, %if.end.4.for.end_crit_edge, %if.end.3.for.end_crit_edge, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %if.end.preheader.for.end_crit_edge ], [ 2, %if.end.1.for.end_crit_edge ], [ 3, %if.end.2.for.end_crit_edge ], [ 4, %if.end.3.for.end_crit_edge ], [ 5, %if.end.4.for.end_crit_edge ], [ 6, %if.end.5.for.end_crit_edge ], [ 7, %if.end.6.for.end_crit_edge ]
  %num_clks = getelementptr inbounds %struct.imx_pm_domain, ptr %domain, i32 0, i32 4
  %37 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %i.0.lcssa, ptr %num_clks, align 4
  br label %cleanup7

cleanup7:                                         ; preds = %for.end, %while.body.preheader
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %while.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_gpc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %domain_index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @imx_gpc_dt_ids, ptr noundef %dev) #5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.8) #5
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  %tobool.not = icmp eq ptr %call2, null
  %or.cond = select i1 %tobool.i.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %entry.cleanup74_crit_edge, label %if.end

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call6 to i32
  br label %cleanup74

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call6, ptr noundef nonnull @imx_gpc_regmap_config, ptr noundef nonnull @imx_gpc_probe._key, ptr noundef nonnull @.str.10) #5
  %cmp.i125 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %7) #8
  br label %cleanup74

if.end17:                                         ; preds = %if.end10
  %err009619_present = getelementptr inbounds %struct.imx_gpc_dt_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %err009619_present to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %err009619_present, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not = icmp eq i8 %9, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %10 = load i32, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 0, i32 32), align 4
  %or = or i32 %10, 32
  store i32 %or, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 0, i32 32), align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %err006287_present = getelementptr inbounds %struct.imx_gpc_dt_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %err006287_present to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %err006287_present, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not = icmp eq i8 %12, 0
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %13 = load i32, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 2, i32 0, i32 32), align 4
  %or23 = or i32 %13, 4
  store i32 %or23, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 2, i32 0, i32 32), align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  br i1 %tobool.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end24
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp63.not.i = icmp eq i32 %15, 0
  br i1 %cmp63.not.i, label %for.end22.i.thread, label %if.then26.for.body.i_crit_edge

if.then26.for.body.i_crit_edge:                   ; preds = %if.then26
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then26.for.body.i_crit_edge
  %i.064.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then26.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %i.064.i
  %regmap1.i = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %i.064.i, i32 1
  %16 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call12, ptr %regmap1.i, align 8
  %ipg_rate_mhz.i = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %i.064.i, i32 7
  %17 = ptrtoint ptr %ipg_rate_mhz.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 66, ptr %ipg_rate_mhz.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.064.i)
  %cmp2.i = icmp eq i32 %i.064.i, 1
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i126 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.25) #5
  store ptr %call.i126, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 2), align 4
  %cmp.i.i = icmp ugt ptr %call.i126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call.i126 to i32
  br label %cleanup74

if.end.i:                                         ; preds = %if.then.i
  %call8.i = tail call fastcc i32 @imx_pgc_get_clocks(ptr noundef %dev, ptr noundef %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.end.i.cleanup74_crit_edge

if.end.i.cleanup74_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %power_on.i = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx.i, i32 0, i32 19
  %19 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %power_on.i, align 4
  %call12.i = tail call i32 %20(ptr noundef %arrayidx.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.for.body16.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.body16.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.inc.i.for.body16.i_crit_edge
  %i.167.i = phi i32 [ %inc21.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.inc.i.for.body16.i_crit_edge ]
  %arrayidx17.i = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %i.167.i
  %call19.i = tail call i32 @pm_genpd_init(ptr noundef %arrayidx17.i, ptr noundef null, i1 noundef zeroext false) #5
  %inc21.i = add nuw i32 %i.167.i, 1
  %exitcond72.not.i = icmp eq i32 %inc21.i, %15
  br i1 %exitcond72.not.i, label %for.end22.i, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16.i

for.end22.i:                                      ; preds = %for.body16.i
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call23.i = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %22, ptr noundef nonnull @imx_gpc_onecell_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %for.end22.i.cleanup74_crit_edge, label %for.cond27.preheader.i

for.end22.i.cleanup74_crit_edge:                  ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

for.end22.i.thread:                               ; preds = %if.then26
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call23.i163 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %24, ptr noundef nonnull @imx_gpc_onecell_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i163)
  %tobool24.not.i164 = icmp eq i32 %call23.i163, 0
  br i1 %tobool24.not.i164, label %for.end22.i.thread.cleanup74_crit_edge, label %for.end22.i.thread.for.end35.i_crit_edge

for.end22.i.thread.for.end35.i_crit_edge:         ; preds = %for.end22.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35.i

for.end22.i.thread.cleanup74_crit_edge:           ; preds = %for.end22.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

for.cond27.preheader.i:                           ; preds = %for.end22.i
  br i1 %cmp63.not.i, label %for.cond27.preheader.i.for.end35.i_crit_edge, label %for.cond27.preheader.i.for.body29.i_crit_edge

for.cond27.preheader.i.for.body29.i_crit_edge:    ; preds = %for.cond27.preheader.i
  br label %for.body29.i

for.cond27.preheader.i.for.end35.i_crit_edge:     ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35.i

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %for.cond27.preheader.i.for.body29.i_crit_edge
  %i.269.i = phi i32 [ %inc34.i, %for.body29.i.for.body29.i_crit_edge ], [ 0, %for.cond27.preheader.i.for.body29.i_crit_edge ]
  %arrayidx30.i = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %i.269.i
  %call32.i = tail call i32 @pm_genpd_remove(ptr noundef %arrayidx30.i) #5
  %inc34.i = add nuw i32 %i.269.i, 1
  %exitcond73.not.i = icmp eq i32 %inc34.i, %15
  br i1 %exitcond73.not.i, label %for.body29.i.for.end35.i_crit_edge, label %for.body29.i.for.body29.i_crit_edge

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29.i

for.body29.i.for.end35.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35.i

for.end35.i:                                      ; preds = %for.body29.i.for.end35.i_crit_edge, %for.cond27.preheader.i.for.end35.i_crit_edge, %for.end22.i.thread.for.end35.i_crit_edge
  %call23.i165167 = phi i32 [ %call23.i, %for.cond27.preheader.i.for.end35.i_crit_edge ], [ %call23.i163, %for.end22.i.thread.for.end35.i_crit_edge ], [ %call23.i, %for.body29.i.for.end35.i_crit_edge ]
  %25 = load i32, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 4), align 4
  %i.04.i.i = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.04.i.i)
  %cmp5.i.i = icmp sgt i32 %i.04.i.i, -1
  br i1 %cmp5.i.i, label %for.end35.i.for.body.i.i_crit_edge, label %for.end35.i.cleanup74_crit_edge

for.end35.i.cleanup74_crit_edge:                  ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

for.end35.i.for.body.i.i_crit_edge:               ; preds = %for.end35.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end35.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %i.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %i.04.i.i, %for.end35.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 3, i32 %i.06.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @clk_put(ptr noundef %27) #5
  %i.0.i.i = add nsw i32 %i.06.i.i, -1
  %cmp.i60.not.i = icmp eq i32 %i.06.i.i, 0
  br i1 %cmp.i60.not.i, label %for.body.i.i.cleanup74_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.cleanup74_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup74

if.else:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %domain_index) #5
  %28 = ptrtoint ptr %domain_index to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %domain_index, align 4, !annotation !95
  %call33 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #5
  %cmp.i127 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %call33 to i32
  br label %cleanup.thread

if.end37:                                         ; preds = %if.else
  %call38 = tail call i32 @clk_get_rate(ptr noundef %call33) #5
  %div = udiv i32 %call38, 1000000
  %call39 = tail call ptr @of_get_next_child(ptr noundef nonnull %call2, ptr noundef null) #5
  %cmp.not147 = icmp eq ptr %call39, null
  br i1 %cmp.not147, label %if.end37.cleanup_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  br label %for.body

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end37.for.body_crit_edge
  %np.0148 = phi ptr [ %call67, %for.inc.for.body_crit_edge ], [ %call39, %if.end37.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.0148, ptr noundef nonnull @.str.14, ptr noundef nonnull %domain_index, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool41.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %np.0148) #5
  br label %cleanup.thread

if.end43:                                         ; preds = %for.body
  %30 = ptrtoint ptr %domain_index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %domain_index, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp45.not = icmp slt i32 %31, %33
  br i1 %cmp45.not, label %if.end47, label %if.end43.for.inc_crit_edge

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end47:                                         ; preds = %if.end43
  %call48 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.15, i32 noundef %31) #5
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %np.0148) #5
  br label %cleanup.thread

if.end51:                                         ; preds = %if.end47
  %34 = ptrtoint ptr %domain_index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %domain_index, align 4
  %arrayidx = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 %35
  %call52 = call i32 @platform_device_add_data(ptr noundef nonnull %call48, ptr noundef %arrayidx, i32 noundef 1408) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  call void @platform_device_put(ptr noundef nonnull %call48) #5
  call void @of_node_put(ptr noundef nonnull %np.0148) #5
  br label %cleanup.thread

if.end55:                                         ; preds = %if.end51
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %call48, i32 0, i32 3, i32 7
  %36 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platform_data, align 8
  %regmap57 = getelementptr inbounds %struct.imx_pm_domain, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %regmap57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call12, ptr %regmap57, align 8
  %ipg_rate_mhz58 = getelementptr inbounds %struct.imx_pm_domain, ptr %37, i32 0, i32 7
  %39 = ptrtoint ptr %ipg_rate_mhz58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div, ptr %ipg_rate_mhz58, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %call48, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev, ptr %parent, align 8
  %of_node62 = getelementptr inbounds %struct.platform_device, ptr %call48, i32 0, i32 3, i32 27
  %41 = ptrtoint ptr %of_node62 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %np.0148, ptr %of_node62, align 8
  %call63 = call i32 @platform_device_add(ptr noundef nonnull %call48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end55.for.inc_crit_edge, label %if.then65

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then65:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  call void @platform_device_put(ptr noundef nonnull %call48) #5
  call void @of_node_put(ptr noundef nonnull %np.0148) #5
  br label %cleanup.thread

for.inc:                                          ; preds = %if.end55.for.inc_crit_edge, %if.end43.for.inc_crit_edge
  %call67 = call ptr @of_get_next_child(ptr noundef nonnull %call2, ptr noundef nonnull %np.0148) #5
  %cmp.not = icmp eq ptr %call67, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then65, %if.then54, %if.then50, %if.then42, %if.then35
  %retval.0.ph = phi i32 [ %29, %if.then35 ], [ %call.i.i, %if.then42 ], [ -12, %if.then50 ], [ %call52, %if.then54 ], [ %call63, %if.then65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %domain_index) #5
  br label %cleanup74

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end37.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %domain_index) #5
  br label %cleanup74

cleanup74:                                        ; preds = %cleanup, %cleanup.thread, %for.body.i.i.cleanup74_crit_edge, %for.end35.i.cleanup74_crit_edge, %for.end22.i.thread.cleanup74_crit_edge, %for.end22.i.cleanup74_crit_edge, %if.end.i.cleanup74_crit_edge, %if.then5.i, %if.then14, %if.then8, %entry.cleanup74_crit_edge
  %retval.1 = phi i32 [ %6, %if.then8 ], [ %7, %if.then14 ], [ 0, %entry.cleanup74_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %18, %if.then5.i ], [ %call23.i165167, %for.end35.i.cleanup74_crit_edge ], [ 0, %for.end22.i.cleanup74_crit_edge ], [ 0, %cleanup ], [ 0, %for.end22.i.thread.cleanup74_crit_edge ], [ %call23.i165167, %for.body.i.i.cleanup74_crit_edge ], [ %call8.i, %if.end.i.cleanup74_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_gpc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.8) #5
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  %tobool.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool.i.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.then5, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then5:                                         ; preds = %if.end
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  tail call void @of_genpd_del_provider(ptr noundef %5) #5
  %call8 = tail call i32 @pm_genpd_remove(ptr noundef getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1)) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  %6 = load i32, ptr getelementptr inbounds ([4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 4), align 4
  %i.04.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.04.i)
  %cmp5.i = icmp sgt i32 %i.04.i, -1
  br i1 %cmp5.i, label %if.end11.for.body.i_crit_edge, label %if.end11.imx_pgc_put_clocks.exit_crit_edge

if.end11.imx_pgc_put_clocks.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_pgc_put_clocks.exit

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %i.06.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.04.i, %if.end11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.imx_pm_domain], ptr @imx_gpc_domains, i32 0, i32 1, i32 3, i32 %i.06.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_put(ptr noundef %8) #5
  %i.0.i = add nsw i32 %i.06.i, -1
  %cmp.i.not = icmp eq i32 %i.06.i, 0
  br i1 %cmp.i.not, label %for.body.i.imx_pgc_put_clocks.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.imx_pgc_put_clocks.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx_pgc_put_clocks.exit

imx_pgc_put_clocks.exit:                          ; preds = %for.body.i.imx_pgc_put_clocks.exit_crit_edge, %if.end11.imx_pgc_put_clocks.exit_crit_edge
  %call12 = tail call i32 @pm_genpd_remove(ptr noundef nonnull @imx_gpc_domains) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %imx_pgc_put_clocks.exit.if.end16_crit_edge, label %imx_pgc_put_clocks.exit.cleanup_crit_edge

imx_pgc_put_clocks.exit.cleanup_crit_edge:        ; preds = %imx_pgc_put_clocks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

imx_pgc_put_clocks.exit.if.end16_crit_edge:       ; preds = %imx_pgc_put_clocks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %imx_pgc_put_clocks.exit.if.end16_crit_edge, %if.end.if.end16_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %imx_pgc_put_clocks.exit.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ %call8, %if.then5.cleanup_crit_edge ], [ %call12, %imx_pgc_put_clocks.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6_pm_domain_power_off(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !95
  %regmap = getelementptr inbounds %struct.imx_pm_domain, ptr %genpd, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %reg_offs = getelementptr inbounds %struct.imx_pm_domain, ptr %genpd, i32 0, i32 5
  %3 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_offs, align 8
  %add = add i32 %4, 8
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 8
  %9 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_offs, align 8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %cntr_pdn_bit = getelementptr inbounds %struct.imx_pm_domain, ptr %genpd, i32 0, i32 6
  %11 = ptrtoint ptr %cntr_pdn_bit to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cntr_pdn_bit, align 4
  %conv57 = zext i8 %12 to i32
  %shl = shl nuw i32 1, %conv57
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl, ptr %val, align 4
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 8
  %call.i58 = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 0, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %and = and i32 %6, 63
  %add9 = add nsw i32 %and, -1
  %shr = lshr i32 %6, 8
  %and2 = and i32 %shr, 63
  %add10 = add nsw i32 %add9, %and2
  %ipg_rate_mhz = getelementptr inbounds %struct.imx_pm_domain, ptr %genpd, i32 0, i32 7
  %16 = ptrtoint ptr %ipg_rate_mhz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ipg_rate_mhz, align 8
  %sub = add i32 %add10, %17
  %div = udiv i32 %sub, %17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %18(i32 noundef %div) #5
  %supply = getelementptr inbounds %struct.imx_pm_domain, ptr %genpd, i32 0, i32 2
  %19 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %supply, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = call i32 @regulator_disable(ptr noundef nonnull %20) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6_pm_domain_power_on(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !95
  %supply = getelementptr inbounds %struct.imx_pm_domain, ptr %genpd, i32 0, i32 2
  %1 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %supply, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @regulator_enable(ptr noundef nonnull %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %call2) #8
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %num_clks = getelementptr inbounds %struct.imx_pm_domain, ptr %genpd, i32 0, i32 4
  %3 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp119 = icmp sgt i32 %4, 0
  br i1 %cmp119, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

for.body:                                         ; preds = %clk_prepare_enable.exit.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %clk_prepare_enable.exit.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.imx_pm_domain, ptr %genpd, i32 0, i32 3, i32 %i.0120
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %6) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %for.body.clk_prepare_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %7 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_clks, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %clk_prepare_enable.exit.for.body_crit_edge, label %clk_prepare_enable.exit.for.end_crit_edge

clk_prepare_enable.exit.for.end_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

clk_prepare_enable.exit.for.body_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %clk_prepare_enable.exit.for.end_crit_edge, %if.end6.for.end_crit_edge
  %regmap = getelementptr inbounds %struct.imx_pm_domain, ptr %genpd, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  %reg_offs = getelementptr inbounds %struct.imx_pm_domain, ptr %genpd, i32 0, i32 5
  %11 = ptrtoint ptr %reg_offs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_offs, align 8
  %call.i106 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %cntr_pdn_bit = getelementptr inbounds %struct.imx_pm_domain, ptr %genpd, i32 0, i32 6
  %13 = ptrtoint ptr %cntr_pdn_bit to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cntr_pdn_bit, align 4
  %conv = sext i8 %14 to i32
  %add9 = add nsw i32 %conv, 1
  %shl = shl nuw i32 1, %add9
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 8
  %call.i107 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call12 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call12, 50000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 116) #5
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 8
  %call29121 = call i32 @regmap_read(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29121)
  %tobool30.not122 = icmp eq i32 %call29121, 0
  br i1 %tobool30.not122, label %for.end.lor.lhs.false_crit_edge, label %for.end.do.end59_crit_edge

for.end.do.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end59

for.end.lor.lhs.false_crit_edge:                  ; preds = %for.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then44.lor.lhs.false_crit_edge, %for.end.lor.lhs.false_crit_edge
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and = and i32 %20, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call35 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call35, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call35, %add.i
  br i1 %cmp3.i, label %for.end47, label %if.then44

if.then44:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 8
  %call29 = call i32 @regmap_read(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %val) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then44.lor.lhs.false_crit_edge, label %if.then44.do.end59_crit_edge

if.then44.do.end59_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end59

if.then44.lor.lhs.false_crit_edge:                ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end47:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 8
  %call41 = call i32 @regmap_read(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool49.not = icmp eq i32 %call41, 0
  br i1 %tobool49.not, label %for.end47.lor.rhs_crit_edge, label %for.end47.do.end59_crit_edge

for.end47.do.end59_crit_edge:                     ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end59

for.end47.lor.rhs_crit_edge:                      ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end47.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %and50 = and i32 %26, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %lor.rhs.if.end62_crit_edge, label %lor.rhs.do.end59_crit_edge

lor.rhs.do.end59_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end59

lor.rhs.if.end62_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

do.end59:                                         ; preds = %lor.rhs.do.end59_crit_edge, %for.end47.do.end59_crit_edge, %if.then44.do.end59_crit_edge, %for.end.do.end59_crit_edge
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %genpd, i32 0, i32 10
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %28) #8
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %lor.rhs.if.end62_crit_edge
  call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #5
  %29 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp65123 = icmp sgt i32 %30, 0
  br i1 %cmp65123, label %if.end62.for.body67_crit_edge, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end62.for.body67_crit_edge:                    ; preds = %if.end62
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %if.end62.for.body67_crit_edge
  %i.1124 = phi i32 [ %inc71, %for.body67.for.body67_crit_edge ], [ 0, %if.end62.for.body67_crit_edge ]
  %arrayidx69 = getelementptr %struct.imx_pm_domain, ptr %genpd, i32 0, i32 3, i32 %i.1124
  %31 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx69, align 4
  call void @clk_disable(ptr noundef %32) #5
  call void @clk_unprepare(ptr noundef %32) #5
  %inc71 = add nuw nsw i32 %i.1124, 1
  %33 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_clks, align 4
  %cmp65 = icmp slt i32 %inc71, %34
  br i1 %cmp65, label %for.body67.for.body67_crit_edge, label %for.body67.cleanup_crit_edge

for.body67.cleanup_crit_edge:                     ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body67

cleanup:                                          ; preds = %for.body67.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end62.cleanup_crit_edge ], [ 0, %for.body67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_gpc__288_240_imx_pgc_power_domain_driver_init6, !1, !"__initcall__kmod_gpc__288_240_imx_pgc_power_domain_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/imx/gpc.c", i32 240, i32 1}
!2 = !{ptr @__initcall__kmod_gpc__289_554_imx_gpc_driver_init6, !3, !"__initcall__kmod_gpc__289_554_imx_gpc_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/soc/imx/gpc.c", i32 554, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/imx/gpc.c", i32 234, i32 11}
!6 = !{ptr @imx_pgc_power_domain_driver, !7, !"imx_pgc_power_domain_driver", i1 false, i1 false}
!7 = !{!"../drivers/soc/imx/gpc.c", i32 232, i32 31}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/imx/gpc.c", i32 167, i32 52}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/imx/gpc.c", i32 139, i32 4}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @imx_pgc_get_clocks._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @imx_pgc_get_clocks._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @imx_pgc_power_domain_id, !19, !"imx_pgc_power_domain_id", i1 false, i1 false}
!19 = !{!"../drivers/soc/imx/gpc.c", i32 227, i32 40}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/imx/gpc.c", i32 548, i32 11}
!22 = !{ptr @imx_gpc_driver, !23, !"imx_gpc_driver", i1 false, i1 false}
!23 = !{!"../drivers/soc/imx/gpc.c", i32 546, i32 31}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/imx/gpc.c", i32 414, i32 53}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/imx/gpc.c", i32 417, i32 48}
!28 = !{ptr @imx_gpc_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/soc/imx/gpc.c", i32 425, i32 11}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/imx/gpc.c", i32 429, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @imx_gpc_probe._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @imx_gpc_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/imx/gpc.c", i32 466, i32 38}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/imx/gpc.c", i32 472, i32 35}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/imx/gpc.c", i32 480, i32 36}
!42 = !{ptr @imx_gpc_regmap_config, !43, !"imx_gpc_regmap_config", i1 false, i1 false}
!43 = !{!"../drivers/soc/imx/gpc.c", i32 340, i32 35}
!44 = !{ptr @access_table, !45, !"access_table", i1 false, i1 false}
!45 = !{!"../drivers/soc/imx/gpc.c", i32 335, i32 41}
!46 = !{ptr @yes_ranges, !47, !"yes_ranges", i1 false, i1 false}
!47 = !{!"../drivers/soc/imx/gpc.c", i32 328, i32 34}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/imx/gpc.c", i32 255, i32 12}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/imx/gpc.c", i32 261, i32 12}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/imx/gpc.c", i32 272, i32 12}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/imx/gpc.c", i32 281, i32 12}
!56 = !{ptr @imx_gpc_domains, !57, !"imx_gpc_domains", i1 false, i1 false}
!57 = !{!"../drivers/soc/imx/gpc.c", i32 252, i32 29}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/imx/gpc.c", i32 96, i32 4}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @imx6_pm_domain_power_on._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @imx6_pm_domain_power_on._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/imx/gpc.c", i32 118, i32 3}
!65 = !{ptr @imx6_pm_domain_power_on._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @imx6_pm_domain_power_on._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @imx6_pm_domain_pu_state, !68, !"imx6_pm_domain_pu_state", i1 false, i1 false}
!68 = !{!"../drivers/soc/imx/gpc.c", i32 247, i32 33}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/imx/gpc.c", i32 372, i32 45}
!71 = !{ptr @imx_gpc_onecell_data, !72, !"imx_gpc_onecell_data", i1 false, i1 false}
!72 = !{!"../drivers/soc/imx/gpc.c", i32 355, i32 34}
!73 = !{ptr @imx_gpc_onecell_domains, !74, !"imx_gpc_onecell_domains", i1 false, i1 false}
!74 = !{!"../drivers/soc/imx/gpc.c", i32 350, i32 34}
!75 = !{ptr @imx_gpc_dt_ids, !76, !"imx_gpc_dt_ids", i1 false, i1 false}
!76 = !{!"../drivers/soc/imx/gpc.c", i32 320, i32 34}
!77 = !{ptr @imx6q_dt_data, !78, !"imx6q_dt_data", i1 false, i1 false}
!78 = !{!"../drivers/soc/imx/gpc.c", i32 296, i32 37}
!79 = !{ptr @imx6qp_dt_data, !80, !"imx6qp_dt_data", i1 false, i1 false}
!80 = !{!"../drivers/soc/imx/gpc.c", i32 302, i32 37}
!81 = !{ptr @imx6sl_dt_data, !82, !"imx6sl_dt_data", i1 false, i1 false}
!82 = !{!"../drivers/soc/imx/gpc.c", i32 308, i32 37}
!83 = !{ptr @imx6sx_dt_data, !84, !"imx6sx_dt_data", i1 false, i1 false}
!84 = !{!"../drivers/soc/imx/gpc.c", i32 314, i32 37}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
!95 = !{!"auto-init"}
