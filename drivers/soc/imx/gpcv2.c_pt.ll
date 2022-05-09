; ModuleID = '/llk/IR_all_yes/drivers/soc/imx/gpcv2.c_pt.bc'
source_filename = "../drivers/soc/imx/gpcv2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.imx_pgc_domain_data = type { ptr, i32, ptr }
%struct.imx_pgc_domain = type { %struct.generic_pm_domain, ptr, ptr, ptr, ptr, i32, i32, %struct.anon.86, i32, i8, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.84 = type { %struct.mutex }
%struct.anon.86 = type { i32, i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }

@__initcall__kmod_gpcv2__289_1023_imx_pgc_domain_driver_init6 = internal global ptr @imx_pgc_domain_driver_init, section ".initcall6.init", align 4
@__initcall__kmod_gpcv2__290_1134_imx_gpc_driver_init6 = internal global ptr @imx_gpc_driver_init, section ".initcall6.init", align 4
@imx_pgc_domain_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_pgc_domain_probe, ptr @imx_pgc_domain_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_pgc_domain_pm_ops, ptr null, ptr null }, ptr @imx_pgc_domain_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-pgc\00", [24 x i8] zeroinitializer }, align 32
@imx_pgc_domain_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_pgc_domain_suspend, ptr @imx_pgc_domain_resume, ptr @imx_pgc_domain_suspend, ptr @imx_pgc_domain_resume, ptr @imx_pgc_domain_suspend, ptr @imx_pgc_domain_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_pgc_domain_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"imx-pgc-domain\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get domain's regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get domain's clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get domain's resets\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_pgc_domain_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 935, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to init power domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_pgc_domain_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/soc/imx/gpcv2.c\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_pgc_domain_probe._entry_ptr = internal global ptr @imx_pgc_domain_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&domain->genpd.mlock\00", [43 x i8] zeroinitializer }, align 32
@imx_pgc_domain_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.7, i32 946, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add genpd provider\0A\00", [34 x i8] zeroinitializer }, align 32
@imx_pgc_domain_probe._entry_ptr.14 = internal global ptr @imx_pgc_domain_probe._entry.12, section ".printk_index", align 4
@imx_gpc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_gpcv2_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_gpcv2_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx-gpcv2\00", [22 x i8] zeroinitializer }, align 32
@imx_gpcv2_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7_pgc_domain_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mm_pgc_domain_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mn-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mn_pgc_domain_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-gpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8m_pgc_domain_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pgc\00", [28 x i8] zeroinitializer }, align 32
@imx_gpcv2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 1046, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No power domains specified in DT\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx_gpcv2_probe\00", [16 x i8] zeroinitializer }, align 32
@imx_gpcv2_probe._entry_ptr = internal global ptr @imx_gpcv2_probe._entry, section ".printk_index", align 4
@imx_gpcv2_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gpcv2:1054:(&regmap_config)->lock\00", [62 x i8] zeroinitializer }, align 32
@imx_gpcv2_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.7, i32 1057, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init regmap (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@imx_gpcv2_probe._entry_ptr.22 = internal global ptr @imx_gpcv2_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@imx_gpcv2_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.7, i32 1071, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read 'reg' property\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_gpcv2_probe._entry_ptr.26 = internal global ptr @imx_gpcv2_probe._entry.24, section ".printk_index", align 4
@imx_gpcv2_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.18, ptr @.str.7, i32 1079, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Domain index %d is out of bounds\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_gpcv2_probe._entry_ptr.30 = internal global ptr @imx_gpcv2_probe._entry.27, section ".printk_index", align 4
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx-pgc-domain\00", [17 x i8] zeroinitializer }, align 32
@imx_gpcv2_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.7, i32 1086, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate platform device\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_gpcv2_probe._entry_ptr.34 = internal global ptr @imx_gpcv2_probe._entry.32, section ".printk_index", align 4
@imx_pgc_power_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.7, i32 236, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_pgc_power_up\00", [47 x i8] zeroinitializer }, align 32
@imx_pgc_power_up._entry_ptr = internal global ptr @imx_pgc_power_up._entry, section ".printk_index", align 4
@imx_pgc_power_up._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.7, i32 244, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable reset clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_pgc_power_up._entry_ptr.39 = internal global ptr @imx_pgc_power_up._entry.37, section ".printk_index", align 4
@imx_pgc_power_up._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.7, i32 263, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to command PGC\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_pgc_power_up._entry_ptr.42 = internal global ptr @imx_pgc_power_up._entry.40, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx_pgc_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.43, ptr @.str.7, i32 325, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_pgc_power_down\00", [45 x i8] zeroinitializer }, align 32
@imx_pgc_power_down._entry_ptr = internal global ptr @imx_pgc_power_down._entry, section ".printk_index", align 4
@imx_pgc_power_down._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.7, i32 340, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to power down ADB400\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_pgc_power_down._entry_ptr.46 = internal global ptr @imx_pgc_power_down._entry.44, section ".printk_index", align 4
@imx_pgc_power_down._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.43, ptr @.str.7, i32 364, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@imx_pgc_power_down._entry_ptr.48 = internal global ptr @imx_pgc_power_down._entry.47, section ".printk_index", align 4
@imx_pgc_power_down._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.7, i32 375, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to disable regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_pgc_power_down._entry_ptr.51 = internal global ptr @imx_pgc_power_down._entry.49, section ".printk_index", align 4
@imx7_pgc_domain_data = internal constant { %struct.imx_pgc_domain_data, [20 x i8] } { %struct.imx_pgc_domain_data { ptr @imx7_pgc_domains, i32 3, ptr @imx7_access_table }, [20 x i8] zeroinitializer }, align 32
@imx8mm_pgc_domain_data = internal constant { %struct.imx_pgc_domain_data, [20 x i8] } { %struct.imx_pgc_domain_data { ptr @imx8mm_pgc_domains, i32 12, ptr @imx8mm_access_table }, [20 x i8] zeroinitializer }, align 32
@imx8mn_pgc_domain_data = internal constant { %struct.imx_pgc_domain_data, [20 x i8] } { %struct.imx_pgc_domain_data { ptr @imx8mn_pgc_domains, i32 5, ptr @imx8mn_access_table }, [20 x i8] zeroinitializer }, align 32
@imx8m_pgc_domain_data = internal constant { %struct.imx_pgc_domain_data, [20 x i8] } { %struct.imx_pgc_domain_data { ptr @imx8m_pgc_domains, i32 11, ptr @imx8m_access_table }, [20 x i8] zeroinitializer }, align 32
@imx7_pgc_domains = internal constant { [3 x %struct.imx_pgc_domain], [1056 x i8] } { [3 x %struct.imx_pgc_domain] [%struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.52, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 65536, %struct.anon.86 { i32 1, i32 4, i32 0, i32 0 }, i32 1000000, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.53, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 131072, %struct.anon.86 { i32 2, i32 8, i32 0, i32 0 }, i32 1000000, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.54, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1048576, %struct.anon.86 { i32 16, i32 64, i32 0, i32 0 }, i32 1200000, i8 0, ptr null }], [1056 x i8] zeroinitializer }, align 32
@imx7_access_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @imx7_yes_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mipi-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb-hsic-phy\00", [19 x i8] zeroinitializer }, align 32
@imx7_yes_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 444 }, %struct.regmap_range { i32 3072, i32 3084 }, %struct.regmap_range { i32 3136, i32 3148 }, %struct.regmap_range { i32 3328, i32 3340 }], [32 x i8] zeroinitializer }, align 32
@imx8mm_pgc_domains = internal constant { [12 x %struct.imx_pgc_domain], [4224 x i8] } { [12 x %struct.imx_pgc_domain] [%struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.55, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, %struct.anon.86 { i32 0, i32 0, i32 96, i32 25165824 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.56, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 131072, %struct.anon.86 { i32 2, i32 8, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.57, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 262144, %struct.anon.86 { i32 4, i32 16, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.58, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 524288, %struct.anon.86 { i32 8, i32 32, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.59, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 8388608, %struct.anon.86 { i32 128, i32 512, i32 2048, i32 536870912 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.60, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 37748736, %struct.anon.86 { i32 576, i32 2304, i32 1536, i32 402653184 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.61, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 16777216, %struct.anon.86 { i32 256, i32 1024, i32 256, i32 67108864 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.62, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 134217728, %struct.anon.86 { i32 2048, i32 8192, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.63, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 268435456, %struct.anon.86 { i32 4096, i32 16384, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.64, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 536870912, %struct.anon.86 { i32 8192, i32 32768, i32 0, i32 0 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.65, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 67108864, %struct.anon.86 { i32 1024, i32 4096, i32 128, i32 33554432 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.66, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 65536, %struct.anon.86 { i32 1, i32 4, i32 0, i32 0 }, i32 0, i8 0, ptr null }], [4224 x i8] zeroinitializer }, align 32
@imx8mm_access_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @imx8mm_yes_ranges, i32 14, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hsiomix\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-otg1\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-otg2\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpumix\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vpumix\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vpu-g1\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vpu-g2\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vpu-h1\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dispmix\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mipi\00", [27 x i8] zeroinitializer }, align 32
@imx8mm_yes_ranges = internal constant { [14 x %struct.regmap_range], [48 x i8] } { [14 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 508 }, %struct.regmap_range { i32 3072, i32 3084 }, %struct.regmap_range { i32 3136, i32 3148 }, %struct.regmap_range { i32 3200, i32 3212 }, %struct.regmap_range { i32 3264, i32 3276 }, %struct.regmap_range { i32 3392, i32 3404 }, %struct.regmap_range { i32 3456, i32 3468 }, %struct.regmap_range { i32 3520, i32 3532 }, %struct.regmap_range { i32 3584, i32 3596 }, %struct.regmap_range { i32 3648, i32 3660 }, %struct.regmap_range { i32 3712, i32 3724 }, %struct.regmap_range { i32 3776, i32 3788 }, %struct.regmap_range { i32 3840, i32 3852 }, %struct.regmap_range { i32 3904, i32 3916 }], [48 x i8] zeroinitializer }, align 32
@imx8mn_pgc_domains = internal constant { [5 x %struct.imx_pgc_domain], [1760 x i8] } { [5 x %struct.imx_pgc_domain] [%struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.55, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, %struct.anon.86 { i32 0, i32 0, i32 32, i32 8388608 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.57, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 262144, %struct.anon.86 { i32 4, i32 16, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.59, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 8388608, %struct.anon.86 { i32 128, i32 512, i32 2560, i32 671088640 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.65, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 67108864, %struct.anon.86 { i32 1024, i32 4096, i32 128, i32 33554432 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.66, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 65536, %struct.anon.86 { i32 1, i32 4, i32 0, i32 0 }, i32 0, i8 0, ptr null }], [1760 x i8] zeroinitializer }, align 32
@imx8mn_access_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @imx8mn_yes_ranges, i32 6, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@imx8mn_yes_ranges = internal constant { [6 x %struct.regmap_range], [48 x i8] } { [6 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 508 }, %struct.regmap_range { i32 3072, i32 3084 }, %struct.regmap_range { i32 3200, i32 3212 }, %struct.regmap_range { i32 3392, i32 3404 }, %struct.regmap_range { i32 3520, i32 3532 }, %struct.regmap_range { i32 3712, i32 3724 }], [48 x i8] zeroinitializer }, align 32
@imx8m_pgc_domains = internal constant { [11 x %struct.imx_pgc_domain], [3872 x i8] } { [11 x %struct.imx_pgc_domain] [%struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.66, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 65536, %struct.anon.86 { i32 1, i32 4, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.67, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 131072, %struct.anon.86 { i32 2, i32 8, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.57, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 262144, %struct.anon.86 { i32 4, i32 16, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.58, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 524288, %struct.anon.86 { i32 8, i32 32, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.68, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2097152, %struct.anon.86 { i32 32, i32 256, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.60, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 8388608, %struct.anon.86 { i32 128, i32 512, i32 64, i32 67108864 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.69, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 16777216, %struct.anon.86 { i32 256, i32 1024, i32 32, i32 33554432 }, i32 0, i8 1, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.70, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 67108864, %struct.anon.86 { i32 1024, i32 4096, i32 16, i32 16777216 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.71, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 134217728, %struct.anon.86 { i32 2048, i32 8192, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.72, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 268435456, %struct.anon.86 { i32 4096, i32 16384, i32 0, i32 0 }, i32 0, i8 0, ptr null }, %struct.imx_pgc_domain { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.73, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.84 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, i32 0, i32 536870912, %struct.anon.86 { i32 8192, i32 32768, i32 0, i32 0 }, i32 0, i8 0, ptr null }], [3872 x i8] zeroinitializer }, align 32
@imx8m_access_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @imx8m_yes_ranges, i32 12, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcie1\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ddr1\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpu\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"disp\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mipi-csi1\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mipi-csi2\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcie2\00", [26 x i8] zeroinitializer }, align 32
@imx8m_yes_ranges = internal constant { [12 x %struct.regmap_range], [32 x i8] } { [12 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 508 }, %struct.regmap_range { i32 3072, i32 3084 }, %struct.regmap_range { i32 3136, i32 3148 }, %struct.regmap_range { i32 3200, i32 3212 }, %struct.regmap_range { i32 3264, i32 3276 }, %struct.regmap_range { i32 3392, i32 3404 }, %struct.regmap_range { i32 3520, i32 3532 }, %struct.regmap_range { i32 3584, i32 3596 }, %struct.regmap_range { i32 3712, i32 3724 }, %struct.regmap_range { i32 3776, i32 3788 }, %struct.regmap_range { i32 3840, i32 3852 }, %struct.regmap_range { i32 3904, i32 3916 }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"imx_pgc_domain_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1014, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1016, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"imx_pgc_domain_pm_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1005, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"imx_pgc_domain_id\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1009, i32 40 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 907, i32 63 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 911, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 920, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 925, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 935, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 940, i32 50 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 941, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 946, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"imx_gpc_driver\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1127, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1129, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"imx_gpcv2_dt_ids\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1119, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1044, i32 46 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1046, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1054, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1057, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1069, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1071, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1077, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1083, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1086, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 236, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 244, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 263, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 325, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 340, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 364, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 375, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant [21 x i8] c"imx7_pgc_domain_data\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 445, i32 41 }
@___asan_gen_.233 = private unnamed_addr constant [23 x i8] c"imx8mm_pgc_domain_data\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 803, i32 41 }
@___asan_gen_.236 = private unnamed_addr constant [23 x i8] c"imx8mn_pgc_domain_data\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 894, i32 41 }
@___asan_gen_.239 = private unnamed_addr constant [22 x i8] c"imx8m_pgc_domain_data\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 613, i32 41 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"imx7_pgc_domains\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 391, i32 36 }
@___asan_gen_.245 = private unnamed_addr constant [18 x i8] c"imx7_access_table\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 440, i32 41 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 394, i32 17 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 406, i32 17 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 418, i32 17 }
@___asan_gen_.257 = private unnamed_addr constant [16 x i8] c"imx7_yes_ranges\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 429, i32 34 }
@___asan_gen_.260 = private unnamed_addr constant [19 x i8] c"imx8mm_pgc_domains\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 619, i32 36 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c"imx8mm_access_table\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 798, i32 41 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 622, i32 12 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 635, i32 12 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 646, i32 12 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 657, i32 12 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 668, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 682, i32 12 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 695, i32 12 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 709, i32 12 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 720, i32 12 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 731, i32 12 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 743, i32 12 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 757, i32 12 }
@___asan_gen_.302 = private unnamed_addr constant [18 x i8] c"imx8mm_yes_ranges\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 767, i32 34 }
@___asan_gen_.305 = private unnamed_addr constant [19 x i8] c"imx8mn_pgc_domains\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 809, i32 36 }
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c"imx8mn_access_table\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 889, i32 41 }
@___asan_gen_.311 = private unnamed_addr constant [18 x i8] c"imx8mn_yes_ranges\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 874, i32 34 }
@___asan_gen_.314 = private unnamed_addr constant [18 x i8] c"imx8m_pgc_domains\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 451, i32 36 }
@___asan_gen_.317 = private unnamed_addr constant [19 x i8] c"imx8m_access_table\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 608, i32 41 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 465, i32 12 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 498, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 522, i32 12 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 536, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 549, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 560, i32 12 }
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 571, i32 12 }
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"imx8m_yes_ranges\00", align 1
@___asan_gen_.342 = private constant [27 x i8] c"../drivers/soc/imx/gpcv2.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 581, i32 34 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__initcall__kmod_gpcv2__289_1023_imx_pgc_domain_driver_init6, ptr @__initcall__kmod_gpcv2__290_1134_imx_gpc_driver_init6, ptr @imx_gpcv2_probe._entry, ptr @imx_gpcv2_probe._entry.20, ptr @imx_gpcv2_probe._entry.24, ptr @imx_gpcv2_probe._entry.27, ptr @imx_gpcv2_probe._entry.32, ptr @imx_gpcv2_probe._entry_ptr, ptr @imx_gpcv2_probe._entry_ptr.22, ptr @imx_gpcv2_probe._entry_ptr.26, ptr @imx_gpcv2_probe._entry_ptr.30, ptr @imx_gpcv2_probe._entry_ptr.34, ptr @imx_pgc_domain_probe._entry, ptr @imx_pgc_domain_probe._entry.12, ptr @imx_pgc_domain_probe._entry_ptr, ptr @imx_pgc_domain_probe._entry_ptr.14, ptr @imx_pgc_power_down._entry, ptr @imx_pgc_power_down._entry.44, ptr @imx_pgc_power_down._entry.47, ptr @imx_pgc_power_down._entry.49, ptr @imx_pgc_power_down._entry_ptr, ptr @imx_pgc_power_down._entry_ptr.46, ptr @imx_pgc_power_down._entry_ptr.48, ptr @imx_pgc_power_down._entry_ptr.51, ptr @imx_pgc_power_up._entry, ptr @imx_pgc_power_up._entry.37, ptr @imx_pgc_power_up._entry.40, ptr @imx_pgc_power_up._entry_ptr, ptr @imx_pgc_power_up._entry_ptr.39, ptr @imx_pgc_power_up._entry_ptr.42, ptr @imx_pgc_domain_driver, ptr @.str, ptr @imx_pgc_domain_pm_ops, ptr @imx_pgc_domain_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @imx_gpc_driver, ptr @.str.15, ptr @imx_gpcv2_dt_ids, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @imx_gpcv2_probe._key, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.50, ptr @imx7_pgc_domain_data, ptr @imx8mm_pgc_domain_data, ptr @imx8mn_pgc_domain_data, ptr @imx8m_pgc_domain_data, ptr @imx7_pgc_domains, ptr @imx7_access_table, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @imx7_yes_ranges, ptr @imx8mm_pgc_domains, ptr @imx8mm_access_table, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @imx8mm_yes_ranges, ptr @imx8mn_pgc_domains, ptr @imx8mn_access_table, ptr @imx8mn_yes_ranges, ptr @imx8m_pgc_domains, ptr @imx8m_access_table, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @imx8m_yes_ranges], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_domain_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_domain_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_domain_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_domain_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_domain_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_gpcv2_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_power_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_power_up._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_power_up._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_power_down._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_power_down._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pgc_power_down._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_pgc_domain_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_pgc_domain_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_pgc_domain_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_pgc_domain_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_pgc_domains to i32), i32 4224, i32 5280, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_access_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_yes_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_pgc_domains to i32), i32 16896, i32 21120, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_access_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mm_yes_ranges to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_pgc_domains to i32), i32 7040, i32 8800, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_access_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_yes_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_pgc_domains to i32), i32 15488, i32 19360, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_access_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_yes_ranges to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pgc_domain_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_pgc_domain_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_gpc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_gpc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pgc_domain_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %dev2 = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 8
  %call = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %regulator = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %call, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.then.if.end19_crit_edge, label %if.then8

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 8
  %call12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %4, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %voltage = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %voltage, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else.if.end19_crit_edge, label %if.then13

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @regulator_set_voltage(ptr noundef %call, i32 noundef %8, i32 noundef %8) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.else.if.end19_crit_edge, %if.then.if.end19_crit_edge
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 8
  %clks = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 4
  %call21 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %10, ptr noundef %clks) #6
  %num_clks = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call21, ptr %num_clks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp23 = icmp slt i32 %call21, 0
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 8
  br i1 %cmp23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %13, i32 noundef %call21, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %call.i = tail call ptr @devm_reset_control_array_get(ptr noundef %13, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %reset = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %reset, align 8
  %cmp.i134 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 8
  br i1 %cmp.i134, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call.i to i32
  %call37 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %16, i32 noundef %17, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  tail call void @pm_runtime_enable(ptr noundef %16) #6
  %map = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool40.not = icmp eq i32 %19, 0
  br i1 %tobool40.not, label %if.end38.if.end47_crit_edge, label %if.then41

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 8
  %call.i135 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 236, i32 noundef %19, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end38.if.end47_crit_edge
  %call48 = tail call i32 @pm_genpd_init(ptr noundef %1, ptr noundef null, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  %22 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2, align 8
  br i1 %tobool49.not, label %if.end52, label %do.end

do.end:                                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.5) #9
  br label %out_domain_unmap

if.end52:                                         ; preds = %if.end47
  %of_node = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call.i136 = tail call ptr @of_find_property(ptr noundef %25, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i136, null
  br i1 %tobool.i.not, label %if.end52.if.end63_crit_edge, label %if.then55

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %dep_map = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 40, i32 0, i32 5
  %26 = ptrtoint ptr %dep_map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dep_map, align 4
  %wait_type_inner = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 40, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.11, ptr noundef %27, i32 noundef 1, i8 noundef zeroext %29, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %if.end52.if.end63_crit_edge
  %30 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev2, align 8
  %of_node65 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %of_node65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node65, align 8
  %call67 = tail call i32 @of_genpd_add_provider_simple(ptr noundef %33, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end63.cleanup_crit_edge, label %do.end72

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end72:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.13) #9
  %call76 = tail call i32 @pm_genpd_remove(ptr noundef %1) #6
  br label %out_domain_unmap

out_domain_unmap:                                 ; preds = %do.end72, %do.end
  %ret.0 = phi i32 [ %call48, %do.end ], [ %call67, %do.end72 ]
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool79.not = icmp eq i32 %37, 0
  br i1 %tobool79.not, label %out_domain_unmap.if.end85_crit_edge, label %if.then80

out_domain_unmap.if.end85_crit_edge:              ; preds = %out_domain_unmap
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then80:                                        ; preds = %out_domain_unmap
  call void @__sanitizer_cov_trace_pc() #8
  %regmap81 = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %regmap81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap81, align 8
  %call.i137 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 236, i32 noundef %37, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %out_domain_unmap.if.end85_crit_edge
  %40 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev2, align 8
  tail call void @__pm_runtime_disable(ptr noundef %41, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end63.cleanup_crit_edge, %if.then33, %if.then24, %if.then8
  %retval.0 = phi i32 [ %call12, %if.then8 ], [ %call27, %if.then24 ], [ %call37, %if.then33 ], [ %ret.0, %if.end85 ], [ 0, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pgc_domain_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %dev1 = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  tail call void @of_genpd_del_provider(ptr noundef %5) #6
  %call = tail call i32 @pm_genpd_remove(ptr noundef %1) #6
  %map = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.imx_pgc_domain, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 236, i32 noundef %7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pgc_domain_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !187
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pgc_domain_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_gpcv2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regmap_config = alloca %struct.regmap_config, align 4
  %domain_index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_config) #6
  %0 = call ptr @memset(ptr %regmap_config, i32 0, i32 172)
  %reg_bits = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 1
  %1 = ptrtoint ptr %reg_bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %reg_bits, align 4
  %reg_stride = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 2
  %2 = ptrtoint ptr %reg_stride to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %reg_stride, align 4
  %val_bits = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 4
  %3 = ptrtoint ptr %val_bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %val_bits, align 4
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 19
  %4 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %max_register, align 4
  %wr_table = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 20
  %reg_access_table = getelementptr inbounds %struct.imx_pgc_domain_data, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %reg_access_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_access_table, align 4
  %7 = ptrtoint ptr %wr_table to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %wr_table, align 4
  %rd_table = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 21
  %8 = load ptr, ptr %reg_access_table, align 4
  %9 = ptrtoint ptr %rd_table to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %rd_table, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.16) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %cleanup59

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call5 to i32
  br label %cleanup59

if.end9:                                          ; preds = %if.end
  %call10 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call5, ptr noundef nonnull %regmap_config, ptr noundef nonnull @imx_gpcv2_probe._key, ptr noundef nonnull @.str.19) #6
  %cmp.i109 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %13) #9
  br label %cleanup59

if.end17:                                         ; preds = %if.end9
  %call18 = call ptr @of_get_next_child(ptr noundef nonnull %call4, ptr noundef null) #6
  %cmp.not122 = icmp eq ptr %call18, null
  br i1 %cmp.not122, label %if.end17.cleanup59_crit_edge, label %for.body.lr.ph

if.end17.cleanup59_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

for.body.lr.ph:                                   ; preds = %if.end17
  %domains_num = getelementptr inbounds %struct.imx_pgc_domain_data, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.0123 = phi ptr [ %call18, %for.body.lr.ph ], [ %call58, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %domain_index) #6
  %14 = ptrtoint ptr %domain_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %domain_index, align 4, !annotation !189
  %call19 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %np.0123) #6
  br i1 %call19, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.0123, ptr noundef nonnull @.str.23, ptr noundef nonnull %domain_index, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool23.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  br label %cleanup.thread

if.end28:                                         ; preds = %if.end21
  %15 = ptrtoint ptr %domain_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %domain_index, align 4
  %17 = ptrtoint ptr %domains_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %domains_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp29.not = icmp ult i32 %16, %18
  br i1 %cmp29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %16) #9
  br label %for.inc

if.end34:                                         ; preds = %if.end28
  %call35 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.31, i32 noundef %16) #6
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  br label %cleanup.thread

if.end41:                                         ; preds = %if.end34
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %21 = ptrtoint ptr %domain_index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %domain_index, align 4
  %arrayidx = getelementptr %struct.imx_pgc_domain, ptr %20, i32 %22
  %call42 = call i32 @platform_device_add_data(ptr noundef nonnull %call35, ptr noundef %arrayidx, i32 noundef 1408) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void @platform_device_put(ptr noundef nonnull %call35) #6
  br label %cleanup.thread

if.end45:                                         ; preds = %if.end41
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %call35, i32 0, i32 3, i32 7
  %23 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data, align 8
  %regmap47 = getelementptr inbounds %struct.imx_pgc_domain, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %regmap47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call10, ptr %regmap47, align 8
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %24, i32 0, i32 19
  %26 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @imx_pgc_power_up, ptr %power_on, align 4
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %24, i32 0, i32 18
  %27 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @imx_pgc_power_down, ptr %power_off, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %call35, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %parent, align 8
  %of_node51 = getelementptr inbounds %struct.platform_device, ptr %call35, i32 0, i32 3, i32 27
  %29 = ptrtoint ptr %of_node51 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %np.0123, ptr %of_node51, align 8
  %call52 = call i32 @platform_device_add(ptr noundef nonnull %call35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end45.for.inc_crit_edge, label %if.then54

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void @platform_device_put(ptr noundef nonnull %call35) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then54, %if.then44, %do.end40, %do.end27
  %retval.1.ph = phi i32 [ %call.i.i, %do.end27 ], [ %call42, %if.then44 ], [ %call52, %if.then54 ], [ -12, %do.end40 ]
  call void @of_node_put(ptr noundef nonnull %np.0123) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %domain_index) #6
  br label %cleanup59

for.inc:                                          ; preds = %if.end45.for.inc_crit_edge, %do.end33, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %domain_index) #6
  %call58 = call ptr @of_get_next_child(ptr noundef nonnull %call4, ptr noundef nonnull %np.0123) #6
  %cmp.not = icmp eq ptr %call58, null
  br i1 %cmp.not, label %for.inc.cleanup59_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup59_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

cleanup59:                                        ; preds = %for.inc.cleanup59_crit_edge, %cleanup.thread, %if.end17.cleanup59_crit_edge, %if.then12, %if.then7, %do.end
  %retval.2 = phi i32 [ %12, %if.then7 ], [ %13, %if.then12 ], [ -22, %do.end ], [ %retval.1.ph, %cleanup.thread ], [ 0, %if.end17.cleanup59_crit_edge ], [ 0, %for.inc.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config) #6
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pgc_power_up(ptr noundef %genpd) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #6
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !189
  %dev = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 10
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !187
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !188
  br label %cleanup

if.end:                                           ; preds = %entry
  %regulator = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 2
  %6 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 @regulator_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then4.if.end10_crit_edge, label %do.end

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.35) #9
  br label %out_put_pm

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %num_clks = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 5
  %10 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clks, align 8
  %clks = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 4
  %12 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clks, align 4
  %call.i164 = tail call i32 @clk_bulk_prepare(i32 noundef %11, ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool.not.i = icmp eq i32 %call.i164, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.do.end16_crit_edge

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %11, ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end18, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %11, ptr noundef %13) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i, %if.end10.do.end16_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i164, %if.end10.do.end16_crit_edge ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.38) #9
  br label %out_regulator_disable

if.end18:                                         ; preds = %if.end.i
  %reset = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 3
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset, align 8
  %call19 = tail call i32 @reset_control_assert(ptr noundef %17) #6
  %bits = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 7
  %18 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %if.end18.if.end86_crit_edge, label %if.then21

if.end18.if.end86_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then21:                                        ; preds = %if.end18
  %regmap = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 8
  %call.i165 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 248, i32 noundef %19, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call27 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call27, 1000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.then21
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 8
  %call42 = call i32 @regmap_read(ptr noundef %23, i32 noundef 248, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false, label %for.cond.do.end72_crit_edge

for.cond.do.end72_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end72

lor.lhs.false:                                    ; preds = %for.cond
  %24 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_val, align 4
  %26 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bits, align 8
  %and = and i32 %27, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call50 = call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call50, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 8
  %call55 = call i32 @regmap_read(ptr noundef %29, i32 noundef 248, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool60.not = icmp eq i32 %call55, 0
  br i1 %tobool60.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end72_crit_edge

for.end.do.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end72

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %30 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_val, align 4
  %32 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bits, align 8
  %and63 = and i32 %33, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end74, label %lor.rhs.do.end72_crit_edge

lor.rhs.do.end72_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end72

do.end72:                                         ; preds = %lor.rhs.do.end72_crit_edge, %for.end.do.end72_crit_edge, %for.cond.do.end72_crit_edge
  %tobool60.not179.ph = phi i32 [ -110, %lor.rhs.do.end72_crit_edge ], [ %call55, %for.end.do.end72_crit_edge ], [ %call42, %for.cond.do.end72_crit_edge ]
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.41) #9
  %36 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_clks, align 8
  %38 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clks, align 4
  call void @clk_bulk_disable(i32 noundef %37, ptr noundef %39) #6
  call void @clk_bulk_unprepare(i32 noundef %37, ptr noundef %39) #6
  br label %out_regulator_disable

if.end74:                                         ; preds = %lor.rhs
  %pgc75 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 6
  %call76 = call i32 @_find_next_bit_be(ptr noundef %pgc75, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call76)
  %cmp78186 = icmp ult i32 %call76, 32
  br i1 %cmp78186, label %if.end74.for.body_crit_edge, label %if.end74.if.end86_crit_edge

if.end74.if.end86_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.end74.for.body_crit_edge:                      ; preds = %if.end74
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end74.for.body_crit_edge
  %pgc.0187 = phi i32 [ %call84, %for.body.for.body_crit_edge ], [ %call76, %if.end74.for.body_crit_edge ]
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 8
  %mul = shl nuw nsw i32 %pgc.0187, 6
  %add80 = add nuw nsw i32 %mul, 2048
  %call.i168 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %add80, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %add83 = add nuw nsw i32 %pgc.0187, 1
  %call84 = call i32 @_find_next_bit_be(ptr noundef %pgc75, i32 noundef 32, i32 noundef %add83) #6
  %cmp78 = icmp ult i32 %call84, 32
  br i1 %cmp78, label %for.body.for.body_crit_edge, label %for.body.if.end86_crit_edge

for.body.if.end86_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end86:                                         ; preds = %for.body.if.end86_crit_edge, %if.end74.if.end86_crit_edge, %if.end18.if.end86_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 1073740) #6
  %43 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reset, align 8
  %call88 = call i32 @reset_control_deassert(ptr noundef %44) #6
  %hskreq = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 7, i32 2
  %45 = ptrtoint ptr %hskreq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hskreq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool90.not = icmp eq i32 %46, 0
  br i1 %tobool90.not, label %if.end86.if.end98_crit_edge, label %if.then91

if.end86.if.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %regmap92 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 1
  %47 = ptrtoint ptr %regmap92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap92, align 8
  %call.i169 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 508, i32 noundef %46, i32 noundef %46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %if.end86.if.end98_crit_edge
  %keep_clocks = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 9
  %49 = ptrtoint ptr %keep_clocks to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %keep_clocks, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool99.not = icmp eq i8 %50, 0
  br i1 %tobool99.not, label %if.then100, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_clks, align 8
  %53 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clks, align 4
  call void @clk_bulk_disable(i32 noundef %52, ptr noundef %54) #6
  call void @clk_bulk_unprepare(i32 noundef %52, ptr noundef %54) #6
  br label %cleanup

out_regulator_disable:                            ; preds = %do.end72, %do.end16
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end16 ], [ %tobool60.not179.ph, %do.end72 ]
  %55 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regulator, align 4
  %cmp.i170 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %out_regulator_disable.out_put_pm_crit_edge, label %if.then108

out_regulator_disable.out_put_pm_crit_edge:       ; preds = %out_regulator_disable
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_pm

if.then108:                                       ; preds = %out_regulator_disable
  call void @__sanitizer_cov_trace_pc() #8
  %call110 = call i32 @regulator_disable(ptr noundef %56) #6
  br label %out_put_pm

out_put_pm:                                       ; preds = %if.then108, %out_regulator_disable.out_put_pm_crit_edge, %do.end
  %ret.1 = phi i32 [ %ret.0, %out_regulator_disable.out_put_pm_crit_edge ], [ %ret.0, %if.then108 ], [ %call6, %do.end ]
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 8
  %call.i171 = call i32 @__pm_runtime_idle(ptr noundef %58, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %out_put_pm, %if.then100, %if.end98.cleanup_crit_edge, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_put_pm ], [ 0, %if.then100 ], [ 0, %if.end98.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pgc_power_down(ptr noundef %genpd) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #6
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !189
  %keep_clocks = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 9
  %1 = ptrtoint ptr %keep_clocks to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %keep_clocks, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %num_clks = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 5
  %3 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_clks, align 8
  %clks = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 4
  %5 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %4, ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %4, ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %4, ptr noundef %6) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %bits = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 7
  %hskreq = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %hskreq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hskreq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end4.if.end56_crit_edge, label %if.then6

if.end4.if.end56_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then6:                                         ; preds = %if.end4
  %regmap = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %call.i225 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 508, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call10 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call10, 1000000
  %hskack = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 7, i32 3
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.then6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 8
  %call24 = call i32 @regmap_read(ptr noundef %14, i32 noundef 508, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %for.cond.out_clk_disable_crit_edge

for.cond.out_clk_disable_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk_disable

lor.lhs.false:                                    ; preds = %for.cond
  %15 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_val, align 4
  %17 = ptrtoint ptr %hskack to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hskack, align 4
  %and = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call31 = call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call31, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 8
  %call36 = call i32 @regmap_read(ptr noundef %20, i32 noundef 508, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool41.not = icmp eq i32 %call36, 0
  br i1 %tobool41.not, label %for.end.lor.rhs_crit_edge, label %for.end.out_clk_disable_crit_edge

for.end.out_clk_disable_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk_disable

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %21 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_val, align 4
  %23 = ptrtoint ptr %hskack to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hskack, align 4
  %and44 = and i32 %24, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %lor.rhs.if.end56_crit_edge, label %lor.rhs.out_clk_disable_crit_edge

lor.rhs.out_clk_disable_crit_edge:                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk_disable

lor.rhs.if.end56_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end56:                                         ; preds = %lor.rhs.if.end56_crit_edge, %if.end4.if.end56_crit_edge
  %25 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool58.not = icmp eq i32 %26, 0
  br i1 %tobool58.not, label %if.end56.if.end145_crit_edge, label %if.then59

if.end56.if.end145_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then59:                                        ; preds = %if.end56
  %pgc60 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 6
  %call61 = call i32 @_find_next_bit_be(ptr noundef %pgc60, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call61)
  %cmp63261 = icmp ult i32 %call61, 32
  br i1 %cmp63261, label %for.body.lr.ph, label %if.then59.for.end70_crit_edge

if.then59.for.end70_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end70

for.body.lr.ph:                                   ; preds = %if.then59
  %regmap64 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pgc.0262 = phi i32 [ %call61, %for.body.lr.ph ], [ %call69, %for.body.for.body_crit_edge ]
  %27 = ptrtoint ptr %regmap64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap64, align 8
  %mul = shl nuw nsw i32 %pgc.0262, 6
  %add65 = add nuw nsw i32 %mul, 2048
  %call.i227 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add65, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %add68 = add nuw nsw i32 %pgc.0262, 1
  %call69 = call i32 @_find_next_bit_be(ptr noundef %pgc60, i32 noundef 32, i32 noundef %add68) #6
  %cmp63 = icmp ult i32 %call69, 32
  br i1 %cmp63, label %for.body.for.body_crit_edge, label %for.body.for.end70_crit_edge

for.body.for.end70_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end70

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end70:                                        ; preds = %for.body.for.end70_crit_edge, %if.then59.for.end70_crit_edge
  %regmap71 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 1
  %29 = ptrtoint ptr %regmap71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap71, align 8
  %31 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bits, align 8
  %call.i228 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 260, i32 noundef %32, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call82 = call i64 @ktime_get() #6
  %add.i229 = add i64 %call82, 1000000
  br label %for.cond96

for.cond96:                                       ; preds = %land.lhs.true108.for.cond96_crit_edge, %for.end70
  %33 = ptrtoint ptr %regmap71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap71, align 8
  %call98 = call i32 @regmap_read(ptr noundef %34, i32 noundef 260, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %for.cond96.out_clk_disable_crit_edge

for.cond96.out_clk_disable_crit_edge:             ; preds = %for.cond96
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk_disable

lor.lhs.false100:                                 ; preds = %for.cond96
  %35 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_val, align 4
  %37 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bits, align 8
  %and103 = and i32 %38, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %lor.lhs.false100.lor.rhs124_crit_edge, label %land.lhs.true108

lor.lhs.false100.lor.rhs124_crit_edge:            ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs124

land.lhs.true108:                                 ; preds = %lor.lhs.false100
  %call109 = call i64 @ktime_get() #6
  %cmp3.i231 = icmp sgt i64 %call109, %add.i229
  br i1 %cmp3.i231, label %for.end121, label %land.lhs.true108.for.cond96_crit_edge

land.lhs.true108.for.cond96_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond96

for.end121:                                       ; preds = %land.lhs.true108
  %39 = ptrtoint ptr %regmap71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap71, align 8
  %call114 = call i32 @regmap_read(ptr noundef %40, i32 noundef 260, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool123.not = icmp eq i32 %call114, 0
  br i1 %tobool123.not, label %for.end121.lor.rhs124_crit_edge, label %for.end121.out_clk_disable_crit_edge

for.end121.out_clk_disable_crit_edge:             ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk_disable

for.end121.lor.rhs124_crit_edge:                  ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs124

lor.rhs124:                                       ; preds = %for.end121.lor.rhs124_crit_edge, %lor.lhs.false100.lor.rhs124_crit_edge
  %41 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_val, align 4
  %43 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bits, align 8
  %and127 = and i32 %44, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %lor.rhs124.if.end145_crit_edge, label %lor.rhs124.out_clk_disable_crit_edge

lor.rhs124.out_clk_disable_crit_edge:             ; preds = %lor.rhs124
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk_disable

lor.rhs124.if.end145_crit_edge:                   ; preds = %lor.rhs124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.end145:                                        ; preds = %lor.rhs124.if.end145_crit_edge, %if.end56.if.end145_crit_edge
  %num_clks146 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 5
  %45 = ptrtoint ptr %num_clks146 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_clks146, align 8
  %clks147 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 4
  %47 = ptrtoint ptr %clks147 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clks147, align 4
  call void @clk_bulk_disable(i32 noundef %46, ptr noundef %48) #6
  call void @clk_bulk_unprepare(i32 noundef %46, ptr noundef %48) #6
  %regulator = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 2
  %49 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regulator, align 4
  %cmp.i234 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.end145.if.end159_crit_edge, label %if.then149

if.end145.if.end159_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then149:                                       ; preds = %if.end145
  %call151 = call i32 @regulator_disable(ptr noundef %50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then149.if.end159_crit_edge, label %do.end156

if.then149.if.end159_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

do.end156:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  %dev157 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 10
  %51 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev157, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end159:                                        ; preds = %if.then149.if.end159_crit_edge, %if.end145.if.end159_crit_edge
  %dev160 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 10
  %53 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev160, align 8
  %call.i235 = call i32 @__pm_runtime_suspend(ptr noundef %54, i32 noundef 4) #6
  br label %cleanup

out_clk_disable:                                  ; preds = %lor.rhs124.out_clk_disable_crit_edge, %for.end121.out_clk_disable_crit_edge, %for.cond96.out_clk_disable_crit_edge, %lor.rhs.out_clk_disable_crit_edge, %for.end.out_clk_disable_crit_edge, %for.cond.out_clk_disable_crit_edge
  %.str.41.sink = phi ptr [ @.str.45, %for.end.out_clk_disable_crit_edge ], [ @.str.45, %lor.rhs.out_clk_disable_crit_edge ], [ @.str.41, %for.end121.out_clk_disable_crit_edge ], [ @.str.41, %lor.rhs124.out_clk_disable_crit_edge ], [ @.str.41, %for.cond96.out_clk_disable_crit_edge ], [ @.str.45, %for.cond.out_clk_disable_crit_edge ]
  %ret.0 = phi i32 [ %call36, %for.end.out_clk_disable_crit_edge ], [ -110, %lor.rhs.out_clk_disable_crit_edge ], [ %call114, %for.end121.out_clk_disable_crit_edge ], [ -110, %lor.rhs124.out_clk_disable_crit_edge ], [ %call98, %for.cond96.out_clk_disable_crit_edge ], [ %call24, %for.cond.out_clk_disable_crit_edge ]
  %dev143 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 10
  %55 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev143, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull %.str.41.sink) #9
  %57 = ptrtoint ptr %keep_clocks to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %keep_clocks, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool163.not = icmp eq i8 %58, 0
  br i1 %tobool163.not, label %if.then164, label %out_clk_disable.cleanup_crit_edge

out_clk_disable.cleanup_crit_edge:                ; preds = %out_clk_disable
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then164:                                       ; preds = %out_clk_disable
  call void @__sanitizer_cov_trace_pc() #8
  %num_clks165 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 5
  %59 = ptrtoint ptr %num_clks165 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_clks165, align 8
  %clks166 = getelementptr inbounds %struct.imx_pgc_domain, ptr %genpd, i32 0, i32 4
  %61 = ptrtoint ptr %clks166 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clks166, align 4
  call void @clk_bulk_disable(i32 noundef %60, ptr noundef %62) #6
  call void @clk_bulk_unprepare(i32 noundef %60, ptr noundef %62) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then164, %out_clk_disable.cleanup_crit_edge, %if.end159, %do.end156, %do.end
  %retval.0 = phi i32 [ 0, %if.end159 ], [ %call151, %do.end156 ], [ %retval.0.i.ph, %do.end ], [ %ret.0, %if.then164 ], [ %ret.0, %out_clk_disable.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__initcall__kmod_gpcv2__289_1023_imx_pgc_domain_driver_init6, !1, !"__initcall__kmod_gpcv2__289_1023_imx_pgc_domain_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/imx/gpcv2.c", i32 1023, i32 1}
!2 = !{ptr @__initcall__kmod_gpcv2__290_1134_imx_gpc_driver_init6, !3, !"__initcall__kmod_gpcv2__290_1134_imx_gpc_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/soc/imx/gpcv2.c", i32 1134, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/imx/gpcv2.c", i32 1016, i32 11}
!6 = !{ptr @imx_pgc_domain_driver, !7, !"imx_pgc_domain_driver", i1 false, i1 false}
!7 = !{!"../drivers/soc/imx/gpcv2.c", i32 1014, i32 31}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/imx/gpcv2.c", i32 907, i32 63}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/imx/gpcv2.c", i32 911, i32 11}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/imx/gpcv2.c", i32 920, i32 10}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/imx/gpcv2.c", i32 925, i32 10}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/imx/gpcv2.c", i32 935, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @imx_pgc_domain_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @imx_pgc_domain_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/imx/gpcv2.c", i32 940, i32 50}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/imx/gpcv2.c", i32 941, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/imx/gpcv2.c", i32 946, i32 3}
!30 = !{ptr @imx_pgc_domain_probe._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @imx_pgc_domain_probe._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @imx_pgc_domain_pm_ops, !33, !"imx_pgc_domain_pm_ops", i1 false, i1 false}
!33 = !{!"../drivers/soc/imx/gpcv2.c", i32 1005, i32 32}
!34 = !{ptr @imx_pgc_domain_id, !35, !"imx_pgc_domain_id", i1 false, i1 false}
!35 = !{!"../drivers/soc/imx/gpcv2.c", i32 1009, i32 40}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/imx/gpcv2.c", i32 1129, i32 11}
!38 = !{ptr @imx_gpc_driver, !39, !"imx_gpc_driver", i1 false, i1 false}
!39 = !{!"../drivers/soc/imx/gpcv2.c", i32 1127, i32 31}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/imx/gpcv2.c", i32 1044, i32 46}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/imx/gpcv2.c", i32 1046, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @imx_gpcv2_probe._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @imx_gpcv2_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @imx_gpcv2_probe._key, !48, !"_key", i1 false, i1 false}
!48 = !{!"../drivers/soc/imx/gpcv2.c", i32 1054, i32 11}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/imx/gpcv2.c", i32 1057, i32 3}
!52 = !{ptr @imx_gpcv2_probe._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx_gpcv2_probe._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/imx/gpcv2.c", i32 1069, i32 34}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/imx/gpcv2.c", i32 1071, i32 4}
!58 = !{ptr @imx_gpcv2_probe._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @imx_gpcv2_probe._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soc/imx/gpcv2.c", i32 1077, i32 4}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @imx_gpcv2_probe._entry.27, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @imx_gpcv2_probe._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/imx/gpcv2.c", i32 1083, i32 35}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/imx/gpcv2.c", i32 1086, i32 4}
!69 = !{ptr @imx_gpcv2_probe._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @imx_gpcv2_probe._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soc/imx/gpcv2.c", i32 236, i32 4}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @imx_pgc_power_up._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @imx_pgc_power_up._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/soc/imx/gpcv2.c", i32 244, i32 3}
!78 = !{ptr @imx_pgc_power_up._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @imx_pgc_power_up._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/soc/imx/gpcv2.c", i32 263, i32 4}
!82 = !{ptr @imx_pgc_power_up._entry.40, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @imx_pgc_power_up._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/soc/imx/gpcv2.c", i32 325, i32 4}
!86 = !{ptr @imx_pgc_power_down._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @imx_pgc_power_down._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/soc/imx/gpcv2.c", i32 340, i32 4}
!90 = !{ptr @imx_pgc_power_down._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @imx_pgc_power_down._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @imx_pgc_power_down._entry.47, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/soc/imx/gpcv2.c", i32 364, i32 4}
!94 = !{ptr @imx_pgc_power_down._entry_ptr.48, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/soc/imx/gpcv2.c", i32 375, i32 4}
!97 = !{ptr @imx_pgc_power_down._entry.49, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @imx_pgc_power_down._entry_ptr.51, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @imx_gpcv2_dt_ids, !100, !"imx_gpcv2_dt_ids", i1 false, i1 false}
!100 = !{!"../drivers/soc/imx/gpcv2.c", i32 1119, i32 34}
!101 = !{ptr @imx7_pgc_domain_data, !102, !"imx7_pgc_domain_data", i1 false, i1 false}
!102 = !{!"../drivers/soc/imx/gpcv2.c", i32 445, i32 41}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/imx/gpcv2.c", i32 394, i32 17}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/soc/imx/gpcv2.c", i32 406, i32 17}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/soc/imx/gpcv2.c", i32 418, i32 17}
!109 = !{ptr @imx7_pgc_domains, !110, !"imx7_pgc_domains", i1 false, i1 false}
!110 = !{!"../drivers/soc/imx/gpcv2.c", i32 391, i32 36}
!111 = !{ptr @imx7_access_table, !112, !"imx7_access_table", i1 false, i1 false}
!112 = !{!"../drivers/soc/imx/gpcv2.c", i32 440, i32 41}
!113 = !{ptr @imx7_yes_ranges, !114, !"imx7_yes_ranges", i1 false, i1 false}
!114 = !{!"../drivers/soc/imx/gpcv2.c", i32 429, i32 34}
!115 = !{ptr @imx8mm_pgc_domain_data, !116, !"imx8mm_pgc_domain_data", i1 false, i1 false}
!116 = !{!"../drivers/soc/imx/gpcv2.c", i32 803, i32 41}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/soc/imx/gpcv2.c", i32 622, i32 12}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/soc/imx/gpcv2.c", i32 635, i32 12}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/soc/imx/gpcv2.c", i32 646, i32 12}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/soc/imx/gpcv2.c", i32 657, i32 12}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/soc/imx/gpcv2.c", i32 668, i32 12}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/soc/imx/gpcv2.c", i32 682, i32 12}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/soc/imx/gpcv2.c", i32 695, i32 12}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/soc/imx/gpcv2.c", i32 709, i32 12}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/soc/imx/gpcv2.c", i32 720, i32 12}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/soc/imx/gpcv2.c", i32 731, i32 12}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/soc/imx/gpcv2.c", i32 743, i32 12}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/soc/imx/gpcv2.c", i32 757, i32 12}
!141 = !{ptr @imx8mm_pgc_domains, !142, !"imx8mm_pgc_domains", i1 false, i1 false}
!142 = !{!"../drivers/soc/imx/gpcv2.c", i32 619, i32 36}
!143 = !{ptr @imx8mm_access_table, !144, !"imx8mm_access_table", i1 false, i1 false}
!144 = !{!"../drivers/soc/imx/gpcv2.c", i32 798, i32 41}
!145 = !{ptr @imx8mm_yes_ranges, !146, !"imx8mm_yes_ranges", i1 false, i1 false}
!146 = !{!"../drivers/soc/imx/gpcv2.c", i32 767, i32 34}
!147 = !{ptr @imx8mn_pgc_domain_data, !148, !"imx8mn_pgc_domain_data", i1 false, i1 false}
!148 = !{!"../drivers/soc/imx/gpcv2.c", i32 894, i32 41}
!149 = !{ptr @imx8mn_pgc_domains, !150, !"imx8mn_pgc_domains", i1 false, i1 false}
!150 = !{!"../drivers/soc/imx/gpcv2.c", i32 809, i32 36}
!151 = !{ptr @imx8mn_access_table, !152, !"imx8mn_access_table", i1 false, i1 false}
!152 = !{!"../drivers/soc/imx/gpcv2.c", i32 889, i32 41}
!153 = !{ptr @imx8mn_yes_ranges, !154, !"imx8mn_yes_ranges", i1 false, i1 false}
!154 = !{!"../drivers/soc/imx/gpcv2.c", i32 874, i32 34}
!155 = !{ptr @imx8m_pgc_domain_data, !156, !"imx8m_pgc_domain_data", i1 false, i1 false}
!156 = !{!"../drivers/soc/imx/gpcv2.c", i32 613, i32 41}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/soc/imx/gpcv2.c", i32 465, i32 12}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/soc/imx/gpcv2.c", i32 498, i32 12}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/soc/imx/gpcv2.c", i32 522, i32 12}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/soc/imx/gpcv2.c", i32 536, i32 12}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/soc/imx/gpcv2.c", i32 549, i32 12}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/soc/imx/gpcv2.c", i32 560, i32 12}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/soc/imx/gpcv2.c", i32 571, i32 12}
!171 = !{ptr @imx8m_pgc_domains, !172, !"imx8m_pgc_domains", i1 false, i1 false}
!172 = !{!"../drivers/soc/imx/gpcv2.c", i32 451, i32 36}
!173 = !{ptr @imx8m_access_table, !174, !"imx8m_access_table", i1 false, i1 false}
!174 = !{!"../drivers/soc/imx/gpcv2.c", i32 608, i32 41}
!175 = !{ptr @imx8m_yes_ranges, !176, !"imx8m_yes_ranges", i1 false, i1 false}
!176 = !{!"../drivers/soc/imx/gpcv2.c", i32 581, i32 34}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i64 2148267003}
!187 = !{i64 751826, i64 751851, i64 751873, i64 751889, i64 751901, i64 751921, i64 751945, i64 751961, i64 751973}
!188 = !{i64 2148267191}
!189 = !{!"auto-init"}
!190 = !{i8 0, i8 2}
