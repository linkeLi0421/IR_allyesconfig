; ModuleID = '/llk/IR_all_yes/drivers/mfd/qcom-pm8xxx.c_pt.bc'
source_filename = "../drivers/mfd/qcom-pm8xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_irq_data = type { i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.pm_irq_chip = type { ptr, %struct.spinlock, ptr, i32, i32, ptr, [0 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_qcom_pm8xxx__187_613_pm8xxx_init4 = internal global ptr @pm8xxx_init, section ".initcall4.init", align 4
@pm8xxx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm8xxx_probe, ptr @pm8xxx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm8xxx_exit = internal global ptr @pm8xxx_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [41 x i8] c"qcom_pm8xxx.file=drivers/mfd/qcom-pm8xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [27 x i8] c"qcom_pm8xxx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [46 x i8] c"qcom_pm8xxx.description=PMIC 8xxx core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version191 = internal constant [24 x i8] c"qcom_pm8xxx.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom_pm8xxx\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias192 = internal constant [39 x i8] c"qcom_pm8xxx.alias=platform:pm8xxx-core\00", section ".modinfo", align 1
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pm8xxx-core\00", [20 x i8] zeroinitializer }, align 32
@pm8xxx_id_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8018\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8xxx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8xxx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8821\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8821_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8xxx_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@pm8xxx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 519, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No matching driver data found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pm8xxx_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/qcom-pm8xxx.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8xxx_probe._entry_ptr = internal global ptr @pm8xxx_probe._entry, section ".printk_index", align 4
@pm8xxx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ssbi_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @ssbi_reg_read, ptr @ssbi_reg_write, ptr null, i8 1, i32 1023, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"qcom_pm8xxx:528:(&ssbi_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@pm8xxx_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Failed to read hw rev reg %d:rc=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@pm8xxx_probe._entry_ptr.12 = internal global ptr @pm8xxx_probe._entry.10, section ".printk_index", align 4
@pm8xxx_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: PMIC revision 1: %02X\0A\00", [35 x i8] zeroinitializer }, align 32
@pm8xxx_probe._entry_ptr.15 = internal global ptr @pm8xxx_probe._entry.13, section ".printk_index", align 4
@pm8xxx_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Failed to read hw rev 2 reg %d:rc=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@pm8xxx_probe._entry_ptr.18 = internal global ptr @pm8xxx_probe._entry.16, section ".printk_index", align 4
@pm8xxx_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: PMIC revision 2: %02X\0A\00", [35 x i8] zeroinitializer }, align 32
@pm8xxx_probe._entry_ptr.21 = internal global ptr @pm8xxx_probe._entry.19, section ".printk_index", align 4
@pm8xxx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&chip->pm_irq_lock\00", [45 x i8] zeroinitializer }, align 32
@pm8xxx_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_irq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @irq_domain_translate_twocell, ptr null }, [52 x i8] zeroinitializer }, align 32
@pm8xxx_data = internal constant { %struct.pm_irq_data, [20 x i8] } { %struct.pm_irq_data { i32 256, ptr @pm8xxx_irq_chip, ptr @pm8xxx_irq_handler }, [20 x i8] zeroinitializer }, align 32
@pm8821_data = internal constant { %struct.pm_irq_data, [20 x i8] } { %struct.pm_irq_data { i32 112, ptr @pm8821_irq_chip, ptr @pm8821_irq_handler }, [20 x i8] zeroinitializer }, align 32
@pm8xxx_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_irq_mask_ack, ptr @pm8xxx_irq_unmask, ptr null, ptr null, ptr null, ptr @pm8xxx_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_irq_get_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm8xxx\00", [25 x i8] zeroinitializer }, align 32
@pm8xxx_config_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed Selecting Block %d rc=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm8xxx_config_irq\00", [46 x i8] zeroinitializer }, align 32
@pm8xxx_config_irq._entry_ptr = internal global ptr @pm8xxx_config_irq._entry, section ".printk_index", align 4
@pm8xxx_config_irq._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Failed Configuring IRQ rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@pm8xxx_config_irq._entry_ptr.28 = internal global ptr @pm8xxx_config_irq._entry.26, section ".printk_index", align 4
@pm8xxx_irq_get_irqchip_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.29, ptr @.str.6, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pm8xxx_irq_get_irqchip_state\00", [35 x i8] zeroinitializer }, align 32
@pm8xxx_irq_get_irqchip_state._entry_ptr = internal global ptr @pm8xxx_irq_get_irqchip_state._entry, section ".printk_index", align 4
@pm8xxx_irq_get_irqchip_state._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.6, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Failed Reading Status rc=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@pm8xxx_irq_get_irqchip_state._entry_ptr.32 = internal global ptr @pm8xxx_irq_get_irqchip_state._entry.30, section ".printk_index", align 4
@pm8xxx_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Can't read root status ret=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm8xxx_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@pm8xxx_irq_handler._entry_ptr = internal global ptr @pm8xxx_irq_handler._entry, section ".printk_index", align 4
@pm8xxx_irq_master_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to read master %d ret=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pm8xxx_irq_master_handler\00", [38 x i8] zeroinitializer }, align 32
@pm8xxx_irq_master_handler._entry_ptr = internal global ptr @pm8xxx_irq_master_handler._entry, section ".printk_index", align 4
@pm8xxx_irq_master_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.6, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: master bit set in root but no blocks: %d\00", [49 x i8] zeroinitializer }, align 32
@pm8xxx_irq_master_handler._entry_ptr.39 = internal global ptr @pm8xxx_irq_master_handler._entry.37, section ".printk_index", align 4
@pm8xxx_irq_block_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed reading %d block ret=%d\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm8xxx_irq_block_handler\00", [39 x i8] zeroinitializer }, align 32
@pm8xxx_irq_block_handler._entry_ptr = internal global ptr @pm8xxx_irq_block_handler._entry, section ".printk_index", align 4
@pm8xxx_irq_block_handler._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.6, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: block bit set in master but no irqs: %d\00", [50 x i8] zeroinitializer }, align 32
@pm8xxx_irq_block_handler._entry_ptr.44 = internal global ptr @pm8xxx_irq_block_handler._entry.42, section ".printk_index", align 4
@pm8xxx_read_block_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.45, ptr @.str.6, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pm8xxx_read_block_irq\00", [42 x i8] zeroinitializer }, align 32
@pm8xxx_read_block_irq._entry_ptr = internal global ptr @pm8xxx_read_block_irq._entry, section ".printk_index", align 4
@pm8xxx_read_block_irq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.45, ptr @.str.6, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_read_block_irq._entry_ptr.47 = internal global ptr @pm8xxx_read_block_irq._entry.46, section ".printk_index", align 4
@pm8821_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8821_irq_mask_ack, ptr @pm8821_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8821_irq_get_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm8821\00", [25 x i8] zeroinitializer }, align 32
@pm8821_irq_mask_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.6, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Failed to mask IRQ:%d rc=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm8821_irq_mask_ack\00", [44 x i8] zeroinitializer }, align 32
@pm8821_irq_mask_ack._entry_ptr = internal global ptr @pm8821_irq_mask_ack._entry, section ".printk_index", align 4
@pm8821_irq_mask_ack._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.6, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Failed to CLEAR IRQ:%d rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@pm8821_irq_mask_ack._entry_ptr.53 = internal global ptr @pm8821_irq_mask_ack._entry.51, section ".printk_index", align 4
@pm8821_irq_unmask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.6, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Failed to read/write unmask IRQ:%d rc=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm8821_irq_unmask\00", [46 x i8] zeroinitializer }, align 32
@pm8821_irq_unmask._entry_ptr = internal global ptr @pm8821_irq_unmask._entry, section ".printk_index", align 4
@pm8821_irq_get_irqchip_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.6, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Reading Status of IRQ %d failed rc=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pm8821_irq_get_irqchip_state\00", [35 x i8] zeroinitializer }, align 32
@pm8821_irq_get_irqchip_state._entry_ptr = internal global ptr @pm8821_irq_get_irqchip_state._entry, section ".printk_index", align 4
@pm8821_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.6, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to read master 0 ret=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm8821_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@pm8821_irq_handler._entry_ptr = internal global ptr @pm8821_irq_handler._entry, section ".printk_index", align 4
@pm8821_irq_handler._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.6, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to read master 1 ret=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@pm8821_irq_handler._entry_ptr.62 = internal global ptr @pm8821_irq_handler._entry.60, section ".printk_index", align 4
@pm8821_irq_block_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.6, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Reading block %d failed ret=%d\00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm8821_irq_block_handler\00", [39 x i8] zeroinitializer }, align 32
@pm8821_irq_block_handler._entry_ptr = internal global ptr @pm8821_irq_block_handler._entry, section ".printk_index", align 4
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"pm8xxx_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 600, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 623, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 604, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"pm8xxx_id_table\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 499, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 519, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"ssbi_regmap_config\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 478, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 527, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 535, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 538, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 544, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 548, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 562, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [22 x i8] c"pm8xxx_irq_domain_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 391, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"pm8xxx_data\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 487, i32 33 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"pm8821_data\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 493, i32 33 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"pm8xxx_irq_chip\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 354, i32 24 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 355, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 110, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 117, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 337, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 343, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 180, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 156, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 160, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 130, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 134, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 90, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 96, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [16 x i8] c"pm8821_irq_chip\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 470, i32 24 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 471, i32 11 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 413, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 421, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 440, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 461, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 239, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 254, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [29 x i8] c"../drivers/mfd/qcom-pm8xxx.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 204, i32 3 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__UNIQUE_ID_version191, ptr @__exitcall_pm8xxx_exit, ptr @__initcall__kmod_qcom_pm8xxx__187_613_pm8xxx_init4, ptr @__modver_attr, ptr @pm8821_irq_block_handler._entry, ptr @pm8821_irq_block_handler._entry_ptr, ptr @pm8821_irq_get_irqchip_state._entry, ptr @pm8821_irq_get_irqchip_state._entry_ptr, ptr @pm8821_irq_handler._entry, ptr @pm8821_irq_handler._entry.60, ptr @pm8821_irq_handler._entry_ptr, ptr @pm8821_irq_handler._entry_ptr.62, ptr @pm8821_irq_mask_ack._entry, ptr @pm8821_irq_mask_ack._entry.51, ptr @pm8821_irq_mask_ack._entry_ptr, ptr @pm8821_irq_mask_ack._entry_ptr.53, ptr @pm8821_irq_unmask._entry, ptr @pm8821_irq_unmask._entry_ptr, ptr @pm8xxx_config_irq._entry, ptr @pm8xxx_config_irq._entry.26, ptr @pm8xxx_config_irq._entry_ptr, ptr @pm8xxx_config_irq._entry_ptr.28, ptr @pm8xxx_exit, ptr @pm8xxx_irq_block_handler._entry, ptr @pm8xxx_irq_block_handler._entry.42, ptr @pm8xxx_irq_block_handler._entry_ptr, ptr @pm8xxx_irq_block_handler._entry_ptr.44, ptr @pm8xxx_irq_get_irqchip_state._entry, ptr @pm8xxx_irq_get_irqchip_state._entry.30, ptr @pm8xxx_irq_get_irqchip_state._entry_ptr, ptr @pm8xxx_irq_get_irqchip_state._entry_ptr.32, ptr @pm8xxx_irq_handler._entry, ptr @pm8xxx_irq_handler._entry_ptr, ptr @pm8xxx_irq_master_handler._entry, ptr @pm8xxx_irq_master_handler._entry.37, ptr @pm8xxx_irq_master_handler._entry_ptr, ptr @pm8xxx_irq_master_handler._entry_ptr.39, ptr @pm8xxx_probe._entry, ptr @pm8xxx_probe._entry.10, ptr @pm8xxx_probe._entry.13, ptr @pm8xxx_probe._entry.16, ptr @pm8xxx_probe._entry.19, ptr @pm8xxx_probe._entry_ptr, ptr @pm8xxx_probe._entry_ptr.12, ptr @pm8xxx_probe._entry_ptr.15, ptr @pm8xxx_probe._entry_ptr.18, ptr @pm8xxx_probe._entry_ptr.21, ptr @pm8xxx_read_block_irq._entry, ptr @pm8xxx_read_block_irq._entry.46, ptr @pm8xxx_read_block_irq._entry_ptr, ptr @pm8xxx_read_block_irq._entry_ptr.47, ptr @pm8xxx_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pm8xxx_id_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pm8xxx_probe._key, ptr @ssbi_regmap_config, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @pm8xxx_probe.__key, ptr @.str.22, ptr @pm8xxx_irq_domain_ops, ptr @pm8xxx_data, ptr @pm8821_data, ptr @pm8xxx_irq_chip, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @pm8821_irq_chip, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_id_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssbi_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8821_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_config_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_config_irq._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_irq_get_irqchip_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_irq_get_irqchip_state._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_irq_master_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_irq_master_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_irq_block_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_irq_block_handler._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_read_block_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_read_block_irq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8821_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8821_irq_mask_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8821_irq_mask_ack._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8821_irq_unmask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8821_irq_get_irqchip_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8821_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8821_irq_handler._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8821_irq_block_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8xxx_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8xxx_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !158
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %call7 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef %2, ptr noundef nonnull @ssbi_regmap_config, ptr noundef nonnull @pm8xxx_probe._key, ptr noundef nonnull @.str.9) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call12 = call i32 @regmap_read(ptr noundef %call7, i32 noundef 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end23, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef %call12) #10
  br label %cleanup

do.end23:                                         ; preds = %if.end11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef %5) #10
  %call26 = call i32 @regmap_read(ptr noundef %call7, i32 noundef 232, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end37, label %do.end31

do.end31:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, i32 noundef 232, i32 noundef %call26) #10
  br label %cleanup

do.end37:                                         ; preds = %do.end23
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.5, i32 noundef %7) #10
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call, align 4
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %9, i32 64) #7
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %spec.select.i, i32 noundef 3520) #7
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %do.end37.cleanup_crit_edge, label %if.end45

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %do.end37
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %call.i, align 4
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call, align 4
  %sub = add i32 %13, 7
  %div = sdiv i32 %sub, 8
  %num_blocks = getelementptr inbounds %struct.pm_irq_chip, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %num_blocks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %num_blocks, align 4
  %sub50 = add nsw i32 %div, 7
  %div51129 = lshr i32 %sub50, 3
  %num_masters = getelementptr inbounds %struct.pm_irq_chip, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %num_masters to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div51129, ptr %num_masters, align 4
  %pm_irq_data = getelementptr inbounds %struct.pm_irq_chip, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %pm_irq_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %pm_irq_data, align 4
  %pm_irq_lock = getelementptr inbounds %struct.pm_irq_chip, ptr %call.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %pm_irq_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @pm8xxx_probe.__key, i16 noundef signext 3) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %20, i32 noundef %20, i32 noundef 0, ptr noundef nonnull @pm8xxx_irq_domain_ops, ptr noundef nonnull %call.i) #7
  %irqdomain = getelementptr inbounds %struct.pm_irq_chip, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %irqdomain to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1.i, ptr %irqdomain, align 4
  %tobool60.not = icmp eq ptr %call1.i, null
  br i1 %tobool60.not, label %if.end45.cleanup_crit_edge, label %if.end62

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %if.end45
  %irq_handler = getelementptr inbounds %struct.pm_irq_data, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_handler, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end62.dev_name.exit_crit_edge

if.end62.dev_name.exit_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end62.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i ], [ %25, %if.end62.dev_name.exit_crit_edge ]
  %call.i130 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call2, ptr noundef %23, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool67.not = icmp eq i32 %call.i130, 0
  br i1 %tobool67.not, label %if.end69, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end69:                                         ; preds = %dev_name.exit
  %call70 = call i32 @irq_set_irq_wake(i32 noundef %call2, i32 noundef 1) #7
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %call74 = call i32 @of_platform_populate(ptr noundef %29, ptr noundef null, ptr noundef null, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end69.cleanup_crit_edge, label %if.then76

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irqdomain, align 4
  call void @irq_domain_remove(ptr noundef %31) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end69.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %do.end37.cleanup_crit_edge, %do.end31, %do.end17, %if.then9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %3, %if.then9 ], [ %call12, %do.end17 ], [ %call26, %do.end31 ], [ -22, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %do.end37.cleanup_crit_edge ], [ -19, %if.end45.cleanup_crit_edge ], [ %call.i130, %dev_name.exit.cleanup_crit_edge ], [ %call74, %if.then76 ], [ 0, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @pm8xxx_remove_child) #7
  %irqdomain = getelementptr inbounds %struct.pm_irq_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irqdomain, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssbi_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #7
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %v, align 1, !annotation !158
  %conv = trunc i32 %reg to i16
  %call = call i32 @ssbi_read(ptr noundef %context, i16 noundef zeroext %conv, ptr noundef nonnull %v, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %v, align 1
  %conv1 = zext i8 %2 to i32
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv1, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #7
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssbi_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #5 align 64 {
entry:
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #7
  %conv = trunc i32 %val to i8
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %v, align 1
  %conv1 = trunc i32 %reg to i16
  %call = call i32 @ssbi_write(ptr noundef %context, i16 noundef zeroext %conv1, ptr noundef nonnull %v, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssbi_read(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssbi_write(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef %data) #2 align 64 {
entry:
  %hwirq = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwirq) #7
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hwirq, align 4, !annotation !158
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #7
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %type, align 4, !annotation !158
  %call = call i32 @irq_domain_translate_twocell(ptr noundef %domain, ptr noundef %data, ptr noundef nonnull %hwirq, ptr noundef nonnull %type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp13.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp13.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pm_irq_data.i = getelementptr inbounds %struct.pm_irq_chip, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %i.014, %virq
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %add1 = add i32 %5, %i.014
  %6 = ptrtoint ptr %pm_irq_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pm_irq_data.i, align 4
  %irq_chip.i = getelementptr inbounds %struct.pm_irq_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_chip.i, align 4
  call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add, i32 noundef %add1, ptr noundef %9, ptr noundef %1, ptr noundef nonnull @handle_level_irq, ptr noundef null, ptr noundef null) #7
  call void @irq_modify_status(i32 noundef %add, i32 noundef 0, i32 noundef 1024) #7
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwirq) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_translate_twocell(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_remove_child(ptr noundef %dev, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %bits.i.i = alloca i32, align 4
  %blockbits.i = alloca i32, align 4
  %root = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root) #7
  %0 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %root, align 4, !annotation !158
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 443, ptr noundef nonnull %root) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %root, align 4
  %shr = lshr i32 %4, 1
  %num_masters = getelementptr inbounds %struct.pm_irq_chip, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %num_masters to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_masters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16.not = icmp eq i32 %6, 0
  br i1 %cmp16.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %pm_irq_lock.i.i.i = getelementptr inbounds %struct.pm_irq_chip, ptr %data, i32 0, i32 1
  %irqdomain.i.i = getelementptr inbounds %struct.pm_irq_chip, ptr %data, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.017
  %and = and i32 %shl, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blockbits.i) #7
  %7 = ptrtoint ptr %blockbits.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %blockbits.i, align 4, !annotation !158
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %add.i = add i32 %i.017, 444
  %call.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.i, ptr noundef nonnull %blockbits.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %i.017, i32 noundef %call.i) #10
  br label %pm8xxx_irq_master_handler.exit

if.end.i:                                         ; preds = %if.then3
  %10 = ptrtoint ptr %blockbits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blockbits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %do.end6.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %mul.i = shl i32 %i.017, 3
  br label %for.body.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %i.017) #10
  br label %pm8xxx_irq_master_handler.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.01.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %blockbits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blockbits.i, align 4
  %shl.i = shl nuw nsw i32 1, %i.01.i
  %and.i = and i32 %13, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i
  %add12.i = add nuw nsw i32 %i.01.i, %mul.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i.i) #7
  %14 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %bits.i.i, align 4, !annotation !158
  call void @_raw_spin_lock(ptr noundef %pm_irq_lock.i.i.i) #7
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %call.i.i.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 448, i32 noundef %add12.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.45, i32 noundef %add12.i, i32 noundef %call.i.i.i) #10
  br label %do.end.i.i

if.end.i.i.i:                                     ; preds = %if.then11.i
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %call3.i.i.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 449, ptr noundef nonnull %bits.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i, label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.45, i32 noundef %call3.i.i.i) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end8.i.i.i, %do.end.i.i.i
  %rc.0.i.ph.i.i = phi i32 [ %call3.i.i.i, %do.end8.i.i.i ], [ %call.i.i.i, %do.end.i.i.i ]
  call void @_raw_spin_unlock(ptr noundef %pm_irq_lock.i.i.i) #7
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %add12.i, i32 noundef %rc.0.i.ph.i.i) #10
  br label %pm8xxx_irq_block_handler.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.i
  call void @_raw_spin_unlock(ptr noundef %pm_irq_lock.i.i.i) #7
  %19 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bits.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool2.not.i.i, label %do.end6.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %mul.i.i = shl i32 %add12.i, 3
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i.i, label %for.cond.preheader.i.i.for.inc.i.i_crit_edge, label %if.then11.i.i

for.cond.preheader.i.i.for.inc.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %add12.i) #10
  br label %pm8xxx_irq_block_handler.exit.i

if.then11.i.i:                                    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %irqdomain.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irqdomain.i.i, align 4
  %call12.i.i = call i32 @generic_handle_domain_irq(ptr noundef %22, i32 noundef %mul.i.i) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then11.i.i, %for.cond.preheader.i.i.for.inc.i.i_crit_edge
  %23 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits.i.i, align 4
  %and.1.i.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool10.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool10.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then11.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

if.then11.1.i.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.1.i.i = or i32 %mul.i.i, 1
  %25 = ptrtoint ptr %irqdomain.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irqdomain.i.i, align 4
  %call12.1.i.i = call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %add.1.i.i) #7
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then11.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %27 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bits.i.i, align 4
  %and.2.i.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool10.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool10.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then11.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

if.then11.2.i.i:                                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.2.i.i = or i32 %mul.i.i, 2
  %29 = ptrtoint ptr %irqdomain.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irqdomain.i.i, align 4
  %call12.2.i.i = call i32 @generic_handle_domain_irq(ptr noundef %30, i32 noundef %add.2.i.i) #7
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then11.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %31 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bits.i.i, align 4
  %and.3.i.i = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool10.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool10.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.then11.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i.i

if.then11.3.i.i:                                  ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.3.i.i = or i32 %mul.i.i, 3
  %33 = ptrtoint ptr %irqdomain.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irqdomain.i.i, align 4
  %call12.3.i.i = call i32 @generic_handle_domain_irq(ptr noundef %34, i32 noundef %add.3.i.i) #7
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then11.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %35 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bits.i.i, align 4
  %and.4.i.i = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool10.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool10.not.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.then11.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i.i

if.then11.4.i.i:                                  ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.4.i.i = or i32 %mul.i.i, 4
  %37 = ptrtoint ptr %irqdomain.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irqdomain.i.i, align 4
  %call12.4.i.i = call i32 @generic_handle_domain_irq(ptr noundef %38, i32 noundef %add.4.i.i) #7
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.then11.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %39 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bits.i.i, align 4
  %and.5.i.i = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool10.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool10.not.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge, label %if.then11.5.i.i

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i.i

if.then11.5.i.i:                                  ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.5.i.i = or i32 %mul.i.i, 5
  %41 = ptrtoint ptr %irqdomain.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irqdomain.i.i, align 4
  %call12.5.i.i = call i32 @generic_handle_domain_irq(ptr noundef %42, i32 noundef %add.5.i.i) #7
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.then11.5.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %43 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bits.i.i, align 4
  %and.6.i.i = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool10.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %tobool10.not.6.i.i, label %for.inc.5.i.i.for.inc.6.i.i_crit_edge, label %if.then11.6.i.i

for.inc.5.i.i.for.inc.6.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i.i

if.then11.6.i.i:                                  ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.6.i.i = or i32 %mul.i.i, 6
  %45 = ptrtoint ptr %irqdomain.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %irqdomain.i.i, align 4
  %call12.6.i.i = call i32 @generic_handle_domain_irq(ptr noundef %46, i32 noundef %add.6.i.i) #7
  br label %for.inc.6.i.i

for.inc.6.i.i:                                    ; preds = %if.then11.6.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge
  %47 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bits.i.i, align 4
  %and.7.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool10.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %tobool10.not.7.i.i, label %for.inc.6.i.i.pm8xxx_irq_block_handler.exit.i_crit_edge, label %if.then11.7.i.i

for.inc.6.i.i.pm8xxx_irq_block_handler.exit.i_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm8xxx_irq_block_handler.exit.i

if.then11.7.i.i:                                  ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.7.i.i = or i32 %mul.i.i, 7
  %49 = ptrtoint ptr %irqdomain.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %irqdomain.i.i, align 4
  %call12.7.i.i = call i32 @generic_handle_domain_irq(ptr noundef %50, i32 noundef %add.7.i.i) #7
  br label %pm8xxx_irq_block_handler.exit.i

pm8xxx_irq_block_handler.exit.i:                  ; preds = %if.then11.7.i.i, %for.inc.6.i.i.pm8xxx_irq_block_handler.exit.i_crit_edge, %do.end6.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %pm8xxx_irq_block_handler.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.inc.i.pm8xxx_irq_master_handler.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.pm8xxx_irq_master_handler.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm8xxx_irq_master_handler.exit

pm8xxx_irq_master_handler.exit:                   ; preds = %for.inc.i.pm8xxx_irq_master_handler.exit_crit_edge, %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blockbits.i) #7
  br label %for.inc

for.inc:                                          ; preds = %pm8xxx_irq_master_handler.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.017, 1
  %51 = ptrtoint ptr %num_masters to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_masters, align 4
  %cmp = icmp ult i32 %inc, %52
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_irq_mask_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %div12 = lshr i32 %3, 3
  %arrayidx = getelementptr %struct.pm_irq_chip, ptr %1, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = or i8 %5, 14
  %conv6 = and i32 %div12, 255
  %conv7 = zext i8 %6 to i32
  %call8 = tail call fastcc i32 @pm8xxx_config_irq(ptr noundef %1, i32 noundef %conv6, i32 noundef %conv7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %div9 = lshr i32 %3, 3
  %arrayidx = getelementptr %struct.pm_irq_chip, ptr %1, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv3 = and i32 %div9, 255
  %conv4 = zext i8 %5 to i32
  %call5 = tail call fastcc i32 @pm8xxx_config_irq(ptr noundef %1, i32 noundef %conv3, i32 noundef %conv4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %call1.tr = trunc i32 %3 to i8
  %4 = shl i8 %call1.tr, 4
  %5 = and i8 %4, 112
  %conv2 = or i8 %5, 6
  %arrayidx = getelementptr %struct.pm_irq_chip, ptr %1, i32 0, i32 6, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %arrayidx, align 1
  %and = and i32 %flow_type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and4 = and i32 %flow_type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = or i8 %5, 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %and12 = and i32 %flow_type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end41_crit_edge, label %if.then14

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = and i8 %10, -3
  br label %if.end41.sink.split

if.else:                                          ; preds = %entry
  %and26 = and i32 %flow_type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else34, label %if.then28

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %12 = or i8 %5, 3
  br label %if.end41.sink.split

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i8 %5, 5
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.else34, %if.then28, %if.then14
  %.sink = phi i8 [ %12, %if.then28 ], [ %13, %if.else34 ], [ %11, %if.then14 ]
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %arrayidx, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.end.if.end41_crit_edge
  %div69 = lshr i32 %3, 3
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %17 = or i8 %16, 8
  %conv47 = and i32 %div69, 255
  %conv48 = zext i8 %17 to i32
  %call49 = tail call fastcc i32 @pm8xxx_config_irq(ptr noundef %1, i32 noundef %conv47, i32 noundef %conv48)
  ret i32 %call49
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_irq_get_irqchip_state(ptr nocapture noundef readonly %d, i32 noundef %which, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #7
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bits, align 4, !annotation !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %which)
  %cmp.not = icmp eq i32 %which, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %div36 = lshr i32 %3, 3
  %rem = and i32 %3, 7
  %pm_irq_lock = getelementptr inbounds %struct.pm_irq_chip, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %pm_irq_lock) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %conv2 = and i32 %div36, 255
  %call3 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 448, i32 noundef %conv2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.29, i32 noundef %conv2, i32 noundef %call3) #10
  br label %bail

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 451, ptr noundef nonnull %bits) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %call9) #10
  br label %bail

if.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits, align 4
  %shl = shl nuw nsw i32 1, %rem
  %and = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool18 to i8
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %state, align 1
  br label %bail

bail:                                             ; preds = %if.end17, %do.end14, %do.end
  %rc.0 = phi i32 [ %call3, %do.end ], [ %call9, %do.end14 ], [ 0, %if.end17 ]
  call void @_raw_spin_unlock(ptr noundef %pm_irq_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %bail, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %bail ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8xxx_config_irq(ptr noundef %chip, i32 noundef %bp, i32 noundef %cp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_irq_lock = getelementptr inbounds %struct.pm_irq_chip, ptr %chip, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %pm_irq_lock) #7
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 448, i32 noundef %bp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %bp, i32 noundef %call) #10
  br label %bail

if.end:                                           ; preds = %entry
  %or = or i32 %cp, 128
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 450, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.bail_crit_edge, label %do.end8

if.end.bail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bail

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %call3) #10
  br label %bail

bail:                                             ; preds = %do.end8, %if.end.bail_crit_edge, %do.end
  %rc.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ], [ 0, %if.end.bail_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %pm_irq_lock) #7
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8821_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %master = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %master) #7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %master, align 4, !annotation !158
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 304, ptr noundef nonnull %master) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %master, align 4
  %and = and i32 %4, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %4 to i8
  call fastcc void @pm8821_irq_master_handler(ptr noundef %data, i32 noundef 0, i8 noundef zeroext %conv)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %master, align 4
  %and5 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call10 = call i32 @regmap_read(ptr noundef %8, i32 noundef 432, ptr noundef nonnull %master) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef %call10) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %master, align 4
  %conv19 = trunc i32 %10 to i8
  call fastcc void @pm8821_irq_master_handler(ptr noundef %data, i32 noundef 1, i8 noundef zeroext %conv19)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end15, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end15 ], [ 1, %if.end18 ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %master) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8821_irq_mask_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %div65 = lshr i32 %3, 3
  %rem = and i32 %3, 7
  %rem6.lhs.trunc = trunc i32 %div65 to i8
  %rem667 = urem i8 %rem6.lhs.trunc, 7
  %rem6.zext = zext i8 %rem667 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = and i32 %3, 2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %6)
  %7 = icmp ult i32 %6, 56
  %cond.v = select i1 %7, i32 312, i32 440
  %cond = or i32 %cond.v, %rem6.zext
  %shl = shl nuw nsw i32 1, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %cond, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %3, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %cond31.v = select i1 %7, i32 305, i32 433
  %cond31 = add nuw nsw i32 %cond31.v, %rem6.zext
  %call.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %cond31, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool35.not = icmp eq i32 %call.i66, 0
  br i1 %tobool35.not, label %if.end.cleanup_crit_edge, label %do.end39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %3, i32 noundef %call.i66) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8821_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %div26 = lshr i32 %3, 3
  %rem = and i32 %3, 7
  %rem6.lhs.trunc = trunc i32 %div26 to i8
  %rem627 = urem i8 %rem6.lhs.trunc, 7
  %rem6.zext = zext i8 %rem627 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = and i32 %3, 2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %6)
  %7 = icmp ult i32 %6, 56
  %cond.v = select i1 %7, i32 312, i32 440
  %cond = or i32 %cond.v, %rem6.zext
  %shl = shl nuw nsw i32 1, %rem
  %neg = xor i32 %shl, -1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %cond, i32 noundef %shl, i32 noundef %neg, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %3, i32 noundef %call.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8821_irq_get_irqchip_state(ptr nocapture noundef readonly %d, i32 noundef %which, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #7
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bits, align 4, !annotation !158
  %.frozen = freeze i32 %3
  %div = sdiv i32 %.frozen, 8
  %conv2 = and i32 %div, 255
  %rem7.lhs.trunc = trunc i32 %div to i8
  %rem736 = urem i8 %rem7.lhs.trunc, 7
  %rem7.zext = zext i8 %rem736 to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv2)
  %7 = icmp ult i32 %conv2, 7
  %cond.v = select i1 %7, i32 319, i32 447
  %cond = add nuw nsw i32 %cond.v, %rem7.zext
  %call16 = call i32 @regmap_read(ptr noundef %6, i32 noundef %cond, ptr noundef nonnull %bits) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %3, i32 noundef %call16) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = mul i32 %div, 8
  %rem.decomposed = sub i32 %.frozen, %8
  %9 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits, align 4
  %conv18 = and i32 %rem.decomposed, 255
  %shl = shl nuw i32 1, %conv18
  %and = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool19 to i8
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #7
  ret i32 %call16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm8821_irq_master_handler(ptr nocapture noundef readonly %chip, i32 noundef %master, i8 noundef zeroext %master_val) unnamed_addr #5 align 64 {
entry:
  %bits.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %master_val to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master)
  %cmp.i = icmp eq i32 %master, 0
  %cond.v.i = select i1 %cmp.i, i32 304, i32 432
  %mul.i = mul i32 %master, 7
  %sub.i = add i32 %mul.i, 536870911
  %irqdomain.i = getelementptr inbounds %struct.pm_irq_chip, ptr %chip, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %block.04 = phi i32 [ 1, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %block.04
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i) #7
  %0 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bits.i, align 4, !annotation !158
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %cond.i = add nuw nsw i32 %block.04, %cond.v.i
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %cond.i, ptr noundef nonnull %bits.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %block.04, i32 noundef %call.i) #10
  br label %pm8821_irq_block_handler.exit

if.end.i:                                         ; preds = %if.then
  %add5.i = add i32 %sub.i, %block.04
  %mul9.i = shl i32 %add5.i, 3
  %3 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bits.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then8.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irqdomain.i, align 4
  %call11.i = call i32 @generic_handle_domain_irq(ptr noundef %6, i32 noundef %mul9.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %if.end.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bits.i, align 4
  %and.1.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool7.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool7.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then8.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then8.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %add10.1.i = or i32 %mul9.i, 1
  %9 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irqdomain.i, align 4
  %call11.1.i = call i32 @generic_handle_domain_irq(ptr noundef %10, i32 noundef %add10.1.i) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then8.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %11 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bits.i, align 4
  %and.2.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool7.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool7.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then8.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then8.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %add10.2.i = or i32 %mul9.i, 2
  %13 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irqdomain.i, align 4
  %call11.2.i = call i32 @generic_handle_domain_irq(ptr noundef %14, i32 noundef %add10.2.i) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then8.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %15 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bits.i, align 4
  %and.3.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool7.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool7.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then8.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.then8.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %add10.3.i = or i32 %mul9.i, 3
  %17 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irqdomain.i, align 4
  %call11.3.i = call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %add10.3.i) #7
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then8.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %19 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bits.i, align 4
  %and.4.i = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool7.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool7.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then8.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

if.then8.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %add10.4.i = or i32 %mul9.i, 4
  %21 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irqdomain.i, align 4
  %call11.4.i = call i32 @generic_handle_domain_irq(ptr noundef %22, i32 noundef %add10.4.i) #7
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then8.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %23 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits.i, align 4
  %and.5.i = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool7.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool7.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then8.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

if.then8.5.i:                                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %add10.5.i = or i32 %mul9.i, 5
  %25 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irqdomain.i, align 4
  %call11.5.i = call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %add10.5.i) #7
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then8.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %27 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bits.i, align 4
  %and.6.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool7.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool7.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then8.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

if.then8.6.i:                                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %add10.6.i = or i32 %mul9.i, 6
  %29 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irqdomain.i, align 4
  %call11.6.i = call i32 @generic_handle_domain_irq(ptr noundef %30, i32 noundef %add10.6.i) #7
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then8.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %31 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bits.i, align 4
  %and.7.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool7.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool7.not.7.i, label %for.inc.6.i.pm8821_irq_block_handler.exit_crit_edge, label %if.then8.7.i

for.inc.6.i.pm8821_irq_block_handler.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm8821_irq_block_handler.exit

if.then8.7.i:                                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %add10.7.i = or i32 %mul9.i, 7
  %33 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irqdomain.i, align 4
  %call11.7.i = call i32 @generic_handle_domain_irq(ptr noundef %34, i32 noundef %add10.7.i) #7
  br label %pm8821_irq_block_handler.exit

pm8821_irq_block_handler.exit:                    ; preds = %if.then8.7.i, %for.inc.6.i.pm8821_irq_block_handler.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i) #7
  br label %for.inc

for.inc:                                          ; preds = %pm8821_irq_block_handler.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %block.04, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__initcall__kmod_qcom_pm8xxx__187_613_pm8xxx_init4, !1, !"__initcall__kmod_qcom_pm8xxx__187_613_pm8xxx_init4", i1 false, i1 false}
!1 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 613, i32 1}
!2 = !{ptr @__exitcall_pm8xxx_exit, !3, !"__exitcall_pm8xxx_exit", i1 false, i1 false}
!3 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 619, i32 1}
!4 = !{ptr @__UNIQUE_ID_file188, !5, !"__UNIQUE_ID_file188", i1 false, i1 false}
!5 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 621, i32 1}
!6 = !{ptr @__UNIQUE_ID_license189, !5, !"__UNIQUE_ID_license189", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description190, !8, !"__UNIQUE_ID_description190", i1 false, i1 false}
!8 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 622, i32 1}
!9 = !{ptr @__UNIQUE_ID_version191, !10, !"__UNIQUE_ID_version191", i1 false, i1 false}
!10 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 623, i32 1}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__modver_attr, !10, !"__modver_attr", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias192, !16, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!16 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 624, i32 1}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 604, i32 11}
!19 = !{ptr @pm8xxx_driver, !20, !"pm8xxx_driver", i1 false, i1 false}
!20 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 600, i32 31}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 519, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pm8xxx_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @pm8xxx_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @pm8xxx_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 527, i32 11}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 535, i32 3}
!34 = !{ptr @pm8xxx_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pm8xxx_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 538, i32 2}
!38 = !{ptr @pm8xxx_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pm8xxx_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 544, i32 3}
!42 = !{ptr @pm8xxx_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pm8xxx_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 548, i32 2}
!46 = !{ptr @pm8xxx_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pm8xxx_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @pm8xxx_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 562, i32 2}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ssbi_regmap_config, !52, !"ssbi_regmap_config", i1 false, i1 false}
!52 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 478, i32 35}
!53 = !{ptr @pm8xxx_irq_domain_ops, !54, !"pm8xxx_irq_domain_ops", i1 false, i1 false}
!54 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 391, i32 36}
!55 = !{ptr @pm8xxx_id_table, !56, !"pm8xxx_id_table", i1 false, i1 false}
!56 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 499, i32 34}
!57 = !{ptr @pm8xxx_data, !58, !"pm8xxx_data", i1 false, i1 false}
!58 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 487, i32 33}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 355, i32 11}
!61 = !{ptr @pm8xxx_irq_chip, !62, !"pm8xxx_irq_chip", i1 false, i1 false}
!62 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 354, i32 24}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 110, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pm8xxx_config_irq._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @pm8xxx_config_irq._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 117, i32 3}
!70 = !{ptr @pm8xxx_config_irq._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @pm8xxx_config_irq._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 337, i32 3}
!74 = !{ptr @pm8xxx_irq_get_irqchip_state._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pm8xxx_irq_get_irqchip_state._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 343, i32 3}
!78 = !{ptr @pm8xxx_irq_get_irqchip_state._entry.30, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pm8xxx_irq_get_irqchip_state._entry_ptr.32, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 180, i32 3}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pm8xxx_irq_handler._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @pm8xxx_irq_handler._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 156, i32 3}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @pm8xxx_irq_master_handler._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @pm8xxx_irq_master_handler._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 160, i32 3}
!92 = !{ptr @pm8xxx_irq_master_handler._entry.37, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @pm8xxx_irq_master_handler._entry_ptr.39, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 130, i32 3}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @pm8xxx_irq_block_handler._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @pm8xxx_irq_block_handler._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 134, i32 3}
!101 = !{ptr @pm8xxx_irq_block_handler._entry.42, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @pm8xxx_irq_block_handler._entry_ptr.44, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 90, i32 3}
!105 = !{ptr @pm8xxx_read_block_irq._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @pm8xxx_read_block_irq._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @pm8xxx_read_block_irq._entry.46, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 96, i32 3}
!109 = !{ptr @pm8xxx_read_block_irq._entry_ptr.47, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @pm8821_data, !111, !"pm8821_data", i1 false, i1 false}
!111 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 493, i32 33}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 471, i32 11}
!114 = !{ptr @pm8821_irq_chip, !115, !"pm8821_irq_chip", i1 false, i1 false}
!115 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 470, i32 24}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 413, i32 3}
!118 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @pm8821_irq_mask_ack._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @pm8821_irq_mask_ack._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 421, i32 3}
!123 = !{ptr @pm8821_irq_mask_ack._entry.51, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @pm8821_irq_mask_ack._entry_ptr.53, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 440, i32 3}
!127 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pm8821_irq_unmask._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @pm8821_irq_unmask._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 461, i32 3}
!132 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @pm8821_irq_get_irqchip_state._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @pm8821_irq_get_irqchip_state._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 239, i32 3}
!137 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @pm8821_irq_handler._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @pm8821_irq_handler._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 254, i32 3}
!142 = !{ptr @pm8821_irq_handler._entry.60, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @pm8821_irq_handler._entry_ptr.62, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mfd/qcom-pm8xxx.c", i32 204, i32 3}
!146 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @pm8821_irq_block_handler._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @pm8821_irq_block_handler._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{!"auto-init"}
