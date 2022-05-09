; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-ingenic.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-ingenic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ingenic_chip_info = type { i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.ingenic_pinctrl = type { ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.group_desc = type { ptr, ptr, i32, ptr }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.ingenic_gpio_chip = type { ptr, %struct.gpio_chip, %struct.irq_chip, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pinctrl_ingenic__233_4337_ingenic_pinctrl_drv_register4 = internal global ptr @ingenic_pinctrl_drv_register, section ".initcall4.init", align 4
@ingenic_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ingenic_pinctrl_of_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl-ingenic\00", [16 x i8] zeroinitializer }, align 32
@ingenic_pinctrl_of_matches = internal constant { [18 x %struct.of_device_id], [888 x i8] } { [18 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4730-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4750-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4755-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760b-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4775-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000e-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1500-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1830-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x2000-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x2000e-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x2100-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [888 x i8] zeroinitializer }, align 32
@ingenic_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 4158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unsupported SoC\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ingenic_pinctrl_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pinctrl/pinctrl-ingenic.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ingenic_pinctrl_probe._entry_ptr = internal global ptr @ingenic_pinctrl_probe._entry, section ".printk_index", align 4
@ingenic_pinctrl_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ingenic_pinctrl_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pinctrl_ingenic:4173:(&regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@ingenic_pinctrl_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 4175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to create regmap\0A\00", [39 x i8] zeroinitializer }, align 32
@ingenic_pinctrl_probe._entry_ptr.9 = internal global ptr @ingenic_pinctrl_probe._entry.7, section ".printk_index", align 4
@ingenic_pctlops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinconf_generic_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@ingenic_pmxops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @ingenic_pinmux_set_mux, ptr null, ptr null, ptr @ingenic_pinmux_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ingenic_confops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @ingenic_pinconf_get, ptr @ingenic_pinconf_set, ptr @ingenic_pinconf_group_get, ptr @ingenic_pinconf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"P%c%d\00", [26 x i8] zeroinitializer }, align 32
@ingenic_pinctrl_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 4207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register pinctrl\0A\00", [36 x i8] zeroinitializer }, align 32
@ingenic_pinctrl_probe._entry_ptr.13 = internal global ptr @ingenic_pinctrl_probe._entry.11, section ".printk_index", align 4
@ingenic_pinctrl_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 4218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to register group %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ingenic_pinctrl_probe._entry_ptr.16 = internal global ptr @ingenic_pinctrl_probe._entry.14, section ".printk_index", align 4
@ingenic_pinctrl_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 4231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register function %s\0A\00", [32 x i8] zeroinitializer }, align 32
@ingenic_pinctrl_probe._entry_ptr.19 = internal global ptr @ingenic_pinctrl_probe._entry.17, section ".printk_index", align 4
@ingenic_gpio_of_matches = internal constant [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4730-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4750-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4755-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4775-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1830-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x2000-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x2100-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@ingenic_pinmux_set_mux.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 3, i8 -106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl_ingenic\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ingenic_pinmux_set_mux\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable function %s group %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ingenic_pinmux_set_pin_fn.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 3, i8 -117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ingenic_pinmux_set_pin_fn\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set pin P%c%u to function %u\0A\00", [34 x i8] zeroinitializer }, align 32
@ingenic_pinmux_gpio_set_direction.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 3, i8 -99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ingenic_pinmux_gpio_set_direction\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set pin P%c%u to %sput\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@ingenic_pinconf_set.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 3, i8 -41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ingenic_pinconf_set\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"disable pull-over for pin P%c%u\0A\00", [63 x i8] zeroinitializer }, align 32
@ingenic_pinconf_set.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.29, ptr @.str.3, ptr @.str.31, i8 3, i8 -39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set pull-up for pin P%c%u\0A\00", [37 x i8] zeroinitializer }, align 32
@ingenic_pinconf_set.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.29, ptr @.str.3, ptr @.str.32, i8 3, i8 -37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"set pull-down for pin P%c%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ingenic_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 4074, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot read \22reg\22 property: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ingenic_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@ingenic_gpio_probe._entry_ptr = internal global ptr @ingenic_gpio_probe._entry, section ".printk_index", align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO%c\00", [25 x i8] zeroinitializer }, align 32
@ingenic_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ingenic_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 5, i64 14, i64 24]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 5, i64 14, i64 17, i64 24]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 5, i64 14, i64 17, i64 24]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"ingenic_pinctrl_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4325, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4327, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"ingenic_pinctrl_of_matches\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4253, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4158, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [30 x i8] c"ingenic_pinctrl_regmap_config\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4040, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4173, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4175, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"ingenic_pctlops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 3597, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"ingenic_pmxops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 3724, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"ingenic_confops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4032, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4200, i32 47 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4207, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4217, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4230, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 3674, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 3630, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 3699, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 3933, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 3941, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 3949, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4072, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4074, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4085, i32 51 }
@___asan_gen_.168 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.172 = private constant [37 x i8] c"../drivers/pinctrl/pinctrl-ingenic.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4137, i32 8 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__initcall__kmod_pinctrl_ingenic__233_4337_ingenic_pinctrl_drv_register4, ptr @ingenic_gpio_probe._entry, ptr @ingenic_gpio_probe._entry_ptr, ptr @ingenic_pinctrl_probe._entry, ptr @ingenic_pinctrl_probe._entry.11, ptr @ingenic_pinctrl_probe._entry.14, ptr @ingenic_pinctrl_probe._entry.17, ptr @ingenic_pinctrl_probe._entry.7, ptr @ingenic_pinctrl_probe._entry_ptr, ptr @ingenic_pinctrl_probe._entry_ptr.13, ptr @ingenic_pinctrl_probe._entry_ptr.16, ptr @ingenic_pinctrl_probe._entry_ptr.19, ptr @ingenic_pinctrl_probe._entry_ptr.9, ptr @ingenic_pinctrl_driver, ptr @.str, ptr @ingenic_pinctrl_of_matches, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ingenic_pinctrl_regmap_config, ptr @ingenic_pinctrl_probe._key, ptr @.str.6, ptr @.str.8, ptr @ingenic_pctlops, ptr @ingenic_pmxops, ptr @ingenic_confops, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @ingenic_gpio_probe.lock_key, ptr @ingenic_gpio_probe.request_key], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pinctrl_of_matches to i32), i32 3528, i32 4416, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pinctrl_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pinctrl_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pinctrl_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pctlops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pmxops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_confops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pinctrl_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pinctrl_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_pinctrl_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pinctrl_drv_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ingenic_pinctrl_driver, ptr noundef nonnull @ingenic_pinctrl_probe, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pinctrl_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %regmap_config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_config) #7
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup109

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup109_crit_edge, label %if.end5

if.end.cleanup109_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call6 to i32
  br label %cleanup109

if.end10:                                         ; preds = %if.end5
  %1 = call ptr @memcpy(ptr %regmap_config, ptr @ingenic_pinctrl_regmap_config, i32 172)
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %reg_offset = getelementptr inbounds %struct.ingenic_chip_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_offset, align 4
  %mul = mul i32 %5, %3
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 19
  %6 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %max_register, align 4
  %call11 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call6, ptr noundef nonnull %regmap_config, ptr noundef nonnull @ingenic_pinctrl_probe._key, ptr noundef nonnull @.str.6) #7
  %map = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %map, align 4
  %cmp.i203 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup109

if.end20:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %call.i, align 4
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %info, align 4
  %call.i204 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #7
  %tobool24.not = icmp eq ptr %call.i204, null
  br i1 %tobool24.not, label %if.end20.cleanup109_crit_edge, label %if.end26

if.end20.cleanup109_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.end26:                                         ; preds = %if.end20
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.dev_name.exit_crit_edge

if.end26.dev_name.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end26.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end.i ], [ %14, %if.end26.dev_name.exit_crit_edge ]
  %17 = ptrtoint ptr %call.i204 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i, ptr %call.i204, align 4
  %owner = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i204, i32 0, i32 6
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %owner, align 4
  %pctlops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i204, i32 0, i32 3
  %19 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ingenic_pctlops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i204, i32 0, i32 4
  %20 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ingenic_pmxops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i204, i32 0, i32 5
  %21 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ingenic_confops, ptr %confops, align 4
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call, align 4
  %mul29 = shl i32 %23, 5
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i204, i32 0, i32 2
  %24 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul29, ptr %npins, align 4
  %25 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul29, i32 12) #7
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !93

devm_kcalloc.exit.thread:                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pdesc207 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %pdesc207 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pdesc207, align 4
  %pins208 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i204, i32 0, i32 1
  %28 = ptrtoint ptr %pins208 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pins208, align 4
  br label %cleanup109

devm_kcalloc.exit:                                ; preds = %dev_name.exit
  %29 = extractvalue { i32, i1 } %25, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %29, i32 noundef 3520) #7
  %pdesc = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %pdesc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i, ptr %pdesc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i204, i32 0, i32 1
  %31 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i, ptr %pins, align 4
  %tobool34.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool34.not, label %devm_kcalloc.exit.cleanup109_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup109_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %32 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp213.not = icmp eq i32 %33, 0
  br i1 %cmp213.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0214 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %34 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdesc, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %35, i32 %i.0214
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.0214, ptr %arrayidx, align 4
  %div202 = lshr i32 %i.0214, 5
  %add = add nuw nsw i32 %div202, 65
  %rem = and i32 %i.0214, 31
  %call39 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, i32 noundef %add, i32 noundef %rem) #7
  %37 = ptrtoint ptr %pdesc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdesc, align 4
  %name42 = getelementptr %struct.pinctrl_pin_desc, ptr %38, i32 %i.0214, i32 1
  %39 = ptrtoint ptr %name42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call39, ptr %name42, align 4
  %inc = add nuw i32 %i.0214, 1
  %40 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call43 = call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef nonnull %call.i204, ptr noundef nonnull %call.i) #7
  %pctl = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call43, ptr %pctl, align 4
  %cmp.i205 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %do.end49, label %for.cond53.preheader

for.cond53.preheader:                             ; preds = %for.end
  %num_groups = getelementptr inbounds %struct.ingenic_chip_info, ptr %call, i32 0, i32 4
  %43 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp54215.not = icmp eq i32 %44, 0
  br i1 %cmp54215.not, label %for.cond53.preheader.for.cond71.preheader_crit_edge, label %for.body55.lr.ph

for.cond53.preheader.for.cond71.preheader_crit_edge: ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond71.preheader

for.body55.lr.ph:                                 ; preds = %for.cond53.preheader
  %groups = getelementptr inbounds %struct.ingenic_chip_info, ptr %call, i32 0, i32 3
  br label %for.body55

do.end49:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  %45 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pctl, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %cleanup109

for.cond53:                                       ; preds = %for.body55
  %inc69 = add nuw i32 %i.1216, 1
  %48 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_groups, align 4
  %cmp54 = icmp ult i32 %inc69, %49
  br i1 %cmp54, label %for.cond53.for.body55_crit_edge, label %for.cond53.for.cond71.preheader_crit_edge

for.cond53.for.cond71.preheader_crit_edge:        ; preds = %for.cond53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond71.preheader

for.cond53.for.body55_crit_edge:                  ; preds = %for.cond53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55

for.cond71.preheader:                             ; preds = %for.cond53.for.cond71.preheader_crit_edge, %for.cond53.preheader.for.cond71.preheader_crit_edge
  %num_functions = getelementptr inbounds %struct.ingenic_chip_info, ptr %call, i32 0, i32 6
  %50 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_functions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp72217.not = icmp eq i32 %51, 0
  br i1 %cmp72217.not, label %for.cond71.preheader.for.end91_crit_edge, label %for.body73.lr.ph

for.cond71.preheader.for.end91_crit_edge:         ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end91

for.body73.lr.ph:                                 ; preds = %for.cond71.preheader
  %functions = getelementptr inbounds %struct.ingenic_chip_info, ptr %call, i32 0, i32 5
  br label %for.body73

for.body55:                                       ; preds = %for.cond53.for.body55_crit_edge, %for.body55.lr.ph
  %i.1216 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc69, %for.cond53.for.body55_crit_edge ]
  %52 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %groups, align 4
  %arrayidx56 = getelementptr %struct.group_desc, ptr %53, i32 %i.1216
  %54 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pctl, align 4
  %56 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx56, align 4
  %pins59 = getelementptr %struct.group_desc, ptr %53, i32 %i.1216, i32 1
  %58 = ptrtoint ptr %pins59 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pins59, align 4
  %num_pins = getelementptr %struct.group_desc, ptr %53, i32 %i.1216, i32 2
  %60 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_pins, align 4
  %data = getelementptr %struct.group_desc, ptr %53, i32 %i.1216, i32 3
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %call60 = call i32 @pinctrl_generic_add_group(ptr noundef %55, ptr noundef %57, ptr noundef %59, i32 noundef %61, ptr noundef %63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %cleanup.thread, label %for.cond53

cleanup.thread:                                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %65) #10
  br label %cleanup109

for.cond71:                                       ; preds = %for.body73
  %inc90 = add nuw i32 %i.2218, 1
  %66 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_functions, align 4
  %cmp72 = icmp ult i32 %inc90, %67
  br i1 %cmp72, label %for.cond71.for.body73_crit_edge, label %for.cond71.for.end91_crit_edge

for.cond71.for.end91_crit_edge:                   ; preds = %for.cond71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end91

for.cond71.for.body73_crit_edge:                  ; preds = %for.cond71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body73

for.body73:                                       ; preds = %for.cond71.for.body73_crit_edge, %for.body73.lr.ph
  %i.2218 = phi i32 [ 0, %for.body73.lr.ph ], [ %inc90, %for.cond71.for.body73_crit_edge ]
  %68 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %functions, align 4
  %arrayidx74 = getelementptr %struct.function_desc, ptr %69, i32 %i.2218
  %70 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pctl, align 4
  %72 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx74, align 4
  %group_names = getelementptr %struct.function_desc, ptr %69, i32 %i.2218, i32 1
  %74 = ptrtoint ptr %group_names to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %group_names, align 4
  %num_group_names = getelementptr %struct.function_desc, ptr %69, i32 %i.2218, i32 2
  %76 = ptrtoint ptr %num_group_names to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_group_names, align 4
  %data77 = getelementptr %struct.function_desc, ptr %69, i32 %i.2218, i32 3
  %78 = ptrtoint ptr %data77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data77, align 4
  %call78 = call i32 @pinmux_generic_add_function(ptr noundef %71, ptr noundef %73, ptr noundef %75, i32 noundef %77, ptr noundef %79) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %cleanup86.thread, label %for.cond71

cleanup86.thread:                                 ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx74, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %81) #10
  br label %cleanup109

for.end91:                                        ; preds = %for.cond71.for.end91_crit_edge, %for.cond71.preheader.for.end91_crit_edge
  %82 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %84 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %85 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %of_node, align 8
  %call93 = call ptr @of_get_next_child(ptr noundef %86, ptr noundef null) #7
  %cmp95.not219 = icmp eq ptr %call93, null
  br i1 %cmp95.not219, label %for.end91.cleanup109_crit_edge, label %for.end91.for.body96_crit_edge

for.end91.for.body96_crit_edge:                   ; preds = %for.end91
  br label %for.body96

for.end91.cleanup109_crit_edge:                   ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

for.body96:                                       ; preds = %for.inc105.for.body96_crit_edge, %for.end91.for.body96_crit_edge
  %node.0220 = phi ptr [ %call107, %for.inc105.for.body96_crit_edge ], [ %call93, %for.end91.for.body96_crit_edge ]
  %call97 = call ptr @of_match_node(ptr noundef nonnull @ingenic_gpio_of_matches, ptr noundef nonnull %node.0220) #7
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %for.body96.for.inc105_crit_edge, label %if.then99

for.body96.for.inc105_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

if.then99:                                        ; preds = %for.body96
  %call100 = call fastcc i32 @ingenic_gpio_probe(ptr noundef nonnull %call.i, ptr noundef nonnull %node.0220) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then99.for.inc105_crit_edge, label %if.then102

if.then99.for.inc105_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %node.0220) #7
  br label %cleanup109

for.inc105:                                       ; preds = %if.then99.for.inc105_crit_edge, %for.body96.for.inc105_crit_edge
  %87 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %of_node, align 8
  %call107 = call ptr @of_get_next_child(ptr noundef %88, ptr noundef nonnull %node.0220) #7
  %cmp95.not = icmp eq ptr %call107, null
  br i1 %cmp95.not, label %for.inc105.cleanup109_crit_edge, label %for.inc105.for.body96_crit_edge

for.inc105.for.body96_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body96

for.inc105.cleanup109_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

cleanup109:                                       ; preds = %for.inc105.cleanup109_crit_edge, %if.then102, %for.end91.cleanup109_crit_edge, %cleanup86.thread, %cleanup.thread, %do.end49, %devm_kcalloc.exit.cleanup109_crit_edge, %devm_kcalloc.exit.thread, %if.end20.cleanup109_crit_edge, %do.end17, %if.then8, %if.end.cleanup109_crit_edge, %do.end
  %retval.4 = phi i32 [ %0, %if.then8 ], [ %10, %do.end17 ], [ %47, %do.end49 ], [ %call100, %if.then102 ], [ -22, %do.end ], [ -12, %if.end.cleanup109_crit_edge ], [ -12, %if.end20.cleanup109_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup109_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call60, %cleanup.thread ], [ %call78, %cleanup86.thread ], [ 0, %for.end91.cleanup109_crit_edge ], [ 0, %for.inc105.cleanup109_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config) #7
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ingenic_gpio_probe(ptr noundef %jzpc, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %bank = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %jzpc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jzpc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank) #7
  %2 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bank, align 4, !annotation !94
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.33, ptr noundef nonnull %bank, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %call.i.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 496, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %jzpc, ptr %call.i, align 4
  %4 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank, align 4
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %reg_offset = getelementptr inbounds %struct.ingenic_chip_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_offset, align 4
  %mul = mul i32 %9, %5
  %reg_base = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %reg_base, align 4
  %add = add i32 %5, 65
  %call7 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.36, i32 noundef %add) #7
  %gc = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %gc, align 4
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bank, align 4
  %mul13 = shl i32 %13, 5
  %base = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 19
  %14 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul13, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 20
  %15 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 32, ptr %ngpio, align 4
  %parent = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %parent, align 4
  %of_node = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 39
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node, ptr %of_node, align 4
  %owner = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %owner, align 4
  %set = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 12
  %19 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ingenic_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ingenic_gpio_get, ptr %get, align 4
  %direction_input = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ingenic_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 9
  %22 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ingenic_gpio_direction_output, ptr %direction_output, align 4
  %get_direction = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 7
  %23 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ingenic_gpio_get_direction, ptr %get_direction, align 4
  %request = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %call26 = call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call26, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end12.cleanup_crit_edge, label %if.end30

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end12
  %27 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gc, align 4
  %irq_chip = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %name, align 4
  %irq_enable = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %irq_enable to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ingenic_gpio_irq_enable, ptr %irq_enable, align 4
  %irq_disable = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %irq_disable to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ingenic_gpio_irq_disable, ptr %irq_disable, align 4
  %irq_unmask = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 9
  %32 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ingenic_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_mask = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 7
  %33 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ingenic_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_ack = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 6
  %34 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ingenic_gpio_irq_ack, ptr %irq_ack, align 4
  %irq_set_type = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 13
  %35 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ingenic_gpio_irq_set_type, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 14
  %36 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ingenic_gpio_irq_set_wake, ptr %irq_set_wake, align 4
  %irq_request_resources = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 22
  %37 = ptrtoint ptr %irq_request_resources to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ingenic_gpio_irq_request, ptr %irq_request_resources, align 4
  %irq_release_resources = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 23
  %38 = ptrtoint ptr %irq_release_resources to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ingenic_gpio_irq_release, ptr %irq_release_resources, align 4
  %flags = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 2, i32 33
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %flags, align 4
  %irq44 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37
  %40 = ptrtoint ptr %irq44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %irq_chip, ptr %irq44, align 4
  %parent_handler = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37, i32 13
  %41 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ingenic_gpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37, i32 15
  %42 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 4, i32 noundef 3520) #7
  %parents = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37, i32 16
  %43 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool48.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool48.not, label %if.end30.cleanup_crit_edge, label %if.end50

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %46 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %call5.i.i, align 4
  %default_type = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37, i32 10
  %47 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37, i32 9
  %48 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @handle_level_irq, ptr %handler, align 4
  %call54 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %1, ptr noundef %gc, ptr noundef nonnull %call.i, ptr noundef nonnull @ingenic_gpio_probe.lock_key, ptr noundef nonnull @ingenic_gpio_probe.request_key) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end30.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ], [ %call54, %if.end50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %call1 = tail call ptr @pinmux_generic_get_function(ptr noundef %pctldev, i32 noundef %selector) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctldev, i32 noundef %group) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ingenic_pinmux_set_mux.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ingenic_pinmux_set_mux, %do.end)) #7
          to label %if.then11 [label %do.end], !srcloc !95

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call1, align 4
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ingenic_pinmux_set_mux.__UNIQUE_ID_ddebug228, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %3, ptr noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %data = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  %cmp = icmp ult ptr %7, inttoptr (i32 4 to ptr)
  %num_pins = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1558.not = icmp eq i32 %10, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %do.end
  br i1 %cmp1558.not, label %for.cond18.preheader.cleanup_crit_edge, label %for.body21.lr.ph

for.cond18.preheader.cleanup_crit_edge:           ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body21.lr.ph:                                 ; preds = %for.cond18.preheader
  %pins22 = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 1
  br label %for.body21

for.cond.preheader:                               ; preds = %do.end
  br i1 %cmp1558.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pins = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 %i.059
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  tail call fastcc void @ingenic_pinmux_set_pin_fn(ptr noundef %call, i32 noundef %14, i32 noundef %8)
  %inc = add nuw i32 %i.059, 1
  %15 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_pins, align 4
  %cmp15 = icmp ult i32 %inc, %16
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.body21.lr.ph
  %i.157 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc27, %for.body21.for.body21_crit_edge ]
  %17 = ptrtoint ptr %pins22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pins22, align 4
  %arrayidx23 = getelementptr i32, ptr %18, i32 %i.157
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr i8, ptr %7, i32 %i.157
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx24, align 1
  %conv = zext i8 %22 to i32
  tail call fastcc void @ingenic_pinmux_set_pin_fn(ptr noundef %call, i32 noundef %20, i32 noundef %conv)
  %inc27 = add nuw i32 %i.157, 1
  %23 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_pins, align 4
  %cmp20 = icmp ult i32 %inc27, %24
  br i1 %cmp20, label %for.body21.for.body21_crit_edge, label %for.body21.cleanup_crit_edge

for.body21.cleanup_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

cleanup:                                          ; preds = %for.body21.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %for.cond18.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond18.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %for.body21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pinmux_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %pin, i1 noundef zeroext %input) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ingenic_pinmux_gpio_set_direction.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ingenic_pinmux_gpio_set_direction, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div63 = lshr i32 %pin, 5
  %rem = and i32 %pin, 31
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add = add nuw nsw i32 %div63, 65
  %cond = select i1 %input, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ingenic_pinmux_gpio_set_direction.__UNIQUE_ID_ddebug229, ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %add, i32 noundef %rem, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp ugt i32 %5, 8
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %map.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %reg_offset.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_offset.i, align 4
  %mul.i = mul i32 %9, 7
  %rem.i = and i32 %pin, 31
  %add3.i = add i32 %mul.i, 24
  %shl.i = shl nuw i32 1, %rem.i
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add3.i, i32 noundef %shl.i) #7
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 4
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %reg_offset.i66 = getelementptr inbounds %struct.ingenic_chip_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %reg_offset.i66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_offset.i66, align 4
  %mul.i67 = mul i32 %15, 7
  %add3.i69 = add i32 %mul.i67, 36
  %call.i71 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add3.i69, i32 noundef %shl.i) #7
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i, align 4
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %reg_offset.i74 = getelementptr inbounds %struct.ingenic_chip_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %reg_offset.i74 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_offset.i74, align 4
  %cond.i = select i1 %input, i32 52, i32 56
  %mul.i75 = mul i32 %21, 7
  %add3.i77 = add i32 %mul.i75, %cond.i
  %call.i79 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %add3.i77, i32 noundef %shl.i) #7
  %22 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i, align 4
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %reg_offset.i82 = getelementptr inbounds %struct.ingenic_chip_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %reg_offset.i82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_offset.i82, align 4
  %mul.i83 = mul i32 %27, 7
  %add.i = add i32 %mul.i83, 240
  %div2.i = lshr i32 %pin, 5
  %call.i84 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %add.i, i32 noundef %div2.i) #7
  br label %if.end28

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp11 = icmp ugt i32 %5, 5
  br i1 %cmp11, label %ingenic_config_pin.exit, label %if.else14

ingenic_config_pin.exit:                          ; preds = %if.else
  %rem.i85 = and i32 %pin, 31
  %div53.i = lshr i32 %pin, 5
  %map4.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %map4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map4.i, align 4
  %reg_offset6.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %reg_offset6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_offset6.i, align 4
  %mul7.i = mul i32 %31, %div53.i
  %add21.i = add i32 %mul7.i, 24
  %shl22.i = shl nuw i32 1, %rem.i85
  %call23.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add21.i, i32 noundef %shl22.i) #7
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 4
  %version.i90 = getelementptr inbounds %struct.ingenic_chip_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %version.i90 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %version.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i91 = icmp eq i32 %35, 0
  %36 = ptrtoint ptr %map4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map4.i, align 4
  %reg_offset6.i93 = getelementptr inbounds %struct.ingenic_chip_info, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %reg_offset6.i93 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_offset6.i93, align 4
  %mul7.i94 = mul i32 %39, %div53.i
  br i1 %cmp.not.i91, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %ingenic_config_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i95 = add i32 %mul7.i94, 36
  %call.i97 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %add3.i95, i32 noundef %shl22.i) #7
  br label %ingenic_config_pin.exit98

if.else.i:                                        ; preds = %ingenic_config_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i = add i32 %mul7.i94, 32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %add8.i, i32 noundef %shl22.i, i32 noundef %shl22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_config_pin.exit98

ingenic_config_pin.exit98:                        ; preds = %if.else.i, %if.then1.i
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 4
  %version.i102 = getelementptr inbounds %struct.ingenic_chip_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %version.i102 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %version.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.not.i103 = icmp eq i32 %43, 0
  %44 = ptrtoint ptr %map4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map4.i, align 4
  %reg_offset6.i105 = getelementptr inbounds %struct.ingenic_chip_info, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %reg_offset6.i105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg_offset6.i105, align 4
  %mul7.i106 = mul i32 %47, %div53.i
  br i1 %input, label %if.then.i, label %if.else11.i

if.then.i:                                        ; preds = %ingenic_config_pin.exit98
  br i1 %cmp.not.i103, label %if.else.i114, label %if.then1.i110

if.then1.i110:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i107 = add i32 %mul7.i106, 52
  %call.i109 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef %add3.i107, i32 noundef %shl22.i) #7
  br label %if.end28

if.else.i114:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i111 = add i32 %mul7.i106, 48
  %call.i.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %add8.i111, i32 noundef %shl22.i, i32 noundef %shl22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end28

if.else11.i:                                      ; preds = %ingenic_config_pin.exit98
  br i1 %cmp.not.i103, label %if.else24.i122, label %if.then15.i118

if.then15.i118:                                   ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i115 = add i32 %mul7.i106, 56
  %call23.i117 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef %add21.i115, i32 noundef %shl22.i) #7
  br label %if.end28

if.else24.i122:                                   ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i119 = add i32 %mul7.i106, 48
  %call.i54.i121 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %add29.i119, i32 noundef %shl22.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end28

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp17.not = icmp eq i32 %5, 0
  %rem.i187 = and i32 %pin, 31
  %div53.i188 = lshr i32 %pin, 5
  %map4.i192 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %48 = ptrtoint ptr %map4.i192 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map4.i192, align 4
  %reg_offset6.i193 = getelementptr inbounds %struct.ingenic_chip_info, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %reg_offset6.i193 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg_offset6.i193, align 4
  %mul7.i194 = mul i32 %51, %div53.i188
  br i1 %cmp17.not, label %ingenic_config_pin.exit204, label %ingenic_config_pin.exit141

ingenic_config_pin.exit141:                       ; preds = %if.else14
  %add21.i133 = add i32 %mul7.i194, 88
  %shl22.i134 = shl nuw i32 1, %rem.i187
  %call23.i135 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %add21.i133, i32 noundef %shl22.i134) #7
  %52 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %info, align 4
  %version.i145 = getelementptr inbounds %struct.ingenic_chip_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %version.i145 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %version.i145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not.i146 = icmp eq i32 %55, 0
  %56 = ptrtoint ptr %map4.i192 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map4.i192, align 4
  %reg_offset6.i148 = getelementptr inbounds %struct.ingenic_chip_info, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %reg_offset6.i148 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_offset6.i148, align 4
  %mul7.i149 = mul i32 %59, %div53.i188
  br i1 %input, label %if.else11.i159, label %if.then.i150

if.then.i150:                                     ; preds = %ingenic_config_pin.exit141
  br i1 %cmp.not.i146, label %if.else.i158, label %if.then1.i154

if.then1.i154:                                    ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i151 = add i32 %mul7.i149, 100
  %call.i153 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef %add3.i151, i32 noundef %shl22.i134) #7
  br label %ingenic_config_pin.exit168

if.else.i158:                                     ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i155 = add i32 %mul7.i149, 96
  %call.i.i157 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef %add8.i155, i32 noundef %shl22.i134, i32 noundef %shl22.i134, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_config_pin.exit168

if.else11.i159:                                   ; preds = %ingenic_config_pin.exit141
  br i1 %cmp.not.i146, label %if.else24.i167, label %if.then15.i163

if.then15.i163:                                   ; preds = %if.else11.i159
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i160 = add i32 %mul7.i149, 104
  %call23.i162 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef %add21.i160, i32 noundef %shl22.i134) #7
  br label %ingenic_config_pin.exit168

if.else24.i167:                                   ; preds = %if.else11.i159
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i164 = add i32 %mul7.i149, 96
  %call.i54.i166 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef %add29.i164, i32 noundef %shl22.i134, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_config_pin.exit168

ingenic_config_pin.exit168:                       ; preds = %if.else24.i167, %if.then15.i163, %if.else.i158, %if.then1.i154
  %60 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info, align 4
  %version.i172 = getelementptr inbounds %struct.ingenic_chip_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %version.i172 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %version.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i173 = icmp eq i32 %63, 0
  %64 = ptrtoint ptr %map4.i192 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %map4.i192, align 4
  %reg_offset6.i175 = getelementptr inbounds %struct.ingenic_chip_info, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %reg_offset6.i175 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reg_offset6.i175, align 4
  %mul7.i176 = mul i32 %67, %div53.i188
  br i1 %cmp.not.i173, label %if.else24.i185, label %if.then15.i181

if.then15.i181:                                   ; preds = %ingenic_config_pin.exit168
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i178 = add i32 %mul7.i176, 72
  %call23.i180 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef %add21.i178, i32 noundef %shl22.i134) #7
  br label %if.end28

if.else24.i185:                                   ; preds = %ingenic_config_pin.exit168
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i182 = add i32 %mul7.i176, 64
  %call.i54.i184 = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef %add29.i182, i32 noundef %shl22.i134, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end28

ingenic_config_pin.exit204:                       ; preds = %if.else14
  %add29.i200 = add i32 %mul7.i194, 32
  %shl30.i201 = shl nuw i32 1, %rem.i187
  %call.i54.i202 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %add29.i200, i32 noundef %shl30.i201, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %68 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %info, align 4
  %version.i208 = getelementptr inbounds %struct.ingenic_chip_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %version.i208 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %version.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.not.i209 = icmp eq i32 %71, 0
  %72 = ptrtoint ptr %map4.i192 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map4.i192, align 4
  %reg_offset6.i211 = getelementptr inbounds %struct.ingenic_chip_info, ptr %69, i32 0, i32 1
  %74 = ptrtoint ptr %reg_offset6.i211 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reg_offset6.i211, align 4
  %mul7.i212 = mul i32 %75, %div53.i188
  br i1 %input, label %if.else11.i222, label %if.then.i213

if.then.i213:                                     ; preds = %ingenic_config_pin.exit204
  br i1 %cmp.not.i209, label %if.else.i221, label %if.then1.i217

if.then1.i217:                                    ; preds = %if.then.i213
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i214 = add i32 %mul7.i212, 8
  %call.i216 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef %add3.i214, i32 noundef %shl30.i201) #7
  br label %ingenic_config_pin.exit231

if.else.i221:                                     ; preds = %if.then.i213
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i218 = add i32 %mul7.i212, 4
  %call.i.i220 = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef %add8.i218, i32 noundef %shl30.i201, i32 noundef %shl30.i201, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_config_pin.exit231

if.else11.i222:                                   ; preds = %ingenic_config_pin.exit204
  br i1 %cmp.not.i209, label %if.else24.i230, label %if.then15.i226

if.then15.i226:                                   ; preds = %if.else11.i222
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i223 = add i32 %mul7.i212, 12
  %call23.i225 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef %add21.i223, i32 noundef %shl30.i201) #7
  br label %ingenic_config_pin.exit231

if.else24.i230:                                   ; preds = %if.else11.i222
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i227 = add i32 %mul7.i212, 4
  %call.i54.i229 = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef %add29.i227, i32 noundef %shl30.i201, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_config_pin.exit231

ingenic_config_pin.exit231:                       ; preds = %if.else24.i230, %if.then15.i226, %if.else.i221, %if.then1.i217
  %rem1.i = and i32 %pin, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %cmp.not.not.i = icmp eq i32 %rem1.i, 0
  %..i = select i1 %cmp.not.not.i, i32 16, i32 20
  %rem.i232 = shl i32 %pin, 1
  %mul.i233 = and i32 %rem.i232, 30
  %shl.i234 = shl nuw i32 3, %mul.i233
  %76 = ptrtoint ptr %map4.i192 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map4.i192, align 4
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info, align 4
  %reg_offset.i237 = getelementptr inbounds %struct.ingenic_chip_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %reg_offset.i237 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %reg_offset.i237, align 4
  %mul4.i = mul i32 %81, %div53.i188
  %add.i238 = add i32 %mul4.i, %..i
  %call.i.i239 = tail call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef %add.i238, i32 noundef %shl.i234, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end28

if.end28:                                         ; preds = %ingenic_config_pin.exit231, %if.else24.i185, %if.then15.i181, %if.else24.i122, %if.then15.i118, %if.else.i114, %if.then1.i110, %if.then7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ingenic_pinmux_set_pin_fn(ptr noundef readonly %jzpc, i32 noundef %pin, i32 noundef %func) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ingenic_pinmux_set_pin_fn.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ingenic_pinmux_set_pin_fn, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div = sdiv i32 %pin, 32
  %0 = mul i32 %div, 32
  %rem.decomposed = sub i32 %pin, %0
  %1 = ptrtoint ptr %jzpc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %jzpc, align 4
  %add = add nsw i32 %div, 65
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ingenic_pinmux_set_pin_fn.__UNIQUE_ID_ddebug227, ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %add, i32 noundef %rem.decomposed, i32 noundef %func) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 4
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp = icmp ugt i32 %6, 8
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %map.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 1
  %7 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i, align 4
  %reg_offset.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_offset.i, align 4
  %mul.i = mul i32 %10, 7
  %rem.i = and i32 %pin, 31
  %add3.i = add i32 %mul.i, 24
  %shl.i = shl nuw i32 1, %rem.i
  %call.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %add3.i, i32 noundef %shl.i) #7
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 4
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %reg_offset.i3 = getelementptr inbounds %struct.ingenic_chip_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %reg_offset.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_offset.i3, align 4
  %mul.i4 = mul i32 %16, 7
  %add3.i6 = add i32 %mul.i4, 40
  %call.i8 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %add3.i6, i32 noundef %shl.i) #7
  %and = and i32 %func, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %17 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i, align 4
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 4
  %reg_offset.i11 = getelementptr inbounds %struct.ingenic_chip_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %reg_offset.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_offset.i11, align 4
  %cond.i = select i1 %tobool5.not, i32 56, i32 52
  %mul.i12 = mul i32 %22, 7
  %add3.i14 = add i32 %mul.i12, %cond.i
  %call.i16 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %add3.i14, i32 noundef %shl.i) #7
  %and6 = and i32 %func, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %23 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i, align 4
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 4
  %reg_offset.i19 = getelementptr inbounds %struct.ingenic_chip_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %reg_offset.i19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_offset.i19, align 4
  %cond.i21 = select i1 %tobool7.not, i32 72, i32 68
  %mul.i22 = mul i32 %28, 7
  %add3.i24 = add i32 %mul.i22, %cond.i21
  %call.i26 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef %add3.i24, i32 noundef %shl.i) #7
  %29 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i, align 4
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 4
  %reg_offset.i29 = getelementptr inbounds %struct.ingenic_chip_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %reg_offset.i29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_offset.i29, align 4
  %mul.i30 = mul i32 %34, 7
  %add.i = add i32 %mul.i30, 240
  %div2.i = lshr i32 %pin, 5
  %call.i31 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef %add.i, i32 noundef %div2.i) #7
  br label %if.end28

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp10 = icmp ugt i32 %6, 5
  br i1 %cmp10, label %ingenic_config_pin.exit, label %if.else16

ingenic_config_pin.exit:                          ; preds = %if.else
  %rem.i32 = and i32 %pin, 31
  %div53.i = lshr i32 %pin, 5
  %map4.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 1
  %35 = ptrtoint ptr %map4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map4.i, align 4
  %reg_offset6.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %4, i32 0, i32 1
  %37 = ptrtoint ptr %reg_offset6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_offset6.i, align 4
  %mul7.i = mul i32 %38, %div53.i
  %add21.i = add i32 %mul7.i, 24
  %shl22.i = shl nuw i32 1, %rem.i32
  %call23.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef %add21.i, i32 noundef %shl22.i) #7
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info, align 4
  %version.i37 = getelementptr inbounds %struct.ingenic_chip_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %version.i37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %version.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not.i38 = icmp eq i32 %42, 0
  %43 = ptrtoint ptr %map4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map4.i, align 4
  %reg_offset6.i40 = getelementptr inbounds %struct.ingenic_chip_info, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %reg_offset6.i40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg_offset6.i40, align 4
  %mul7.i41 = mul i32 %46, %div53.i
  br i1 %cmp.not.i38, label %if.else24.i49, label %if.then15.i45

if.then15.i45:                                    ; preds = %ingenic_config_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i42 = add i32 %mul7.i41, 40
  %call23.i44 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef %add21.i42, i32 noundef %shl22.i) #7
  br label %ingenic_config_pin.exit50

if.else24.i49:                                    ; preds = %ingenic_config_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i46 = add i32 %mul7.i41, 32
  %call.i54.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef %add29.i46, i32 noundef %shl22.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_config_pin.exit50

ingenic_config_pin.exit50:                        ; preds = %if.else24.i49, %if.then15.i45
  %and12 = and i32 %func, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %47 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %info, align 4
  %version.i54 = getelementptr inbounds %struct.ingenic_chip_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %version.i54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %version.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.not.i55 = icmp eq i32 %50, 0
  %51 = ptrtoint ptr %map4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map4.i, align 4
  %reg_offset6.i57 = getelementptr inbounds %struct.ingenic_chip_info, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %reg_offset6.i57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg_offset6.i57, align 4
  %mul7.i58 = mul i32 %54, %div53.i
  br i1 %tobool13.not, label %if.else11.i, label %if.then.i

if.then.i:                                        ; preds = %ingenic_config_pin.exit50
  br i1 %cmp.not.i55, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i59 = add i32 %mul7.i58, 52
  %call.i61 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef %add3.i59, i32 noundef %shl22.i) #7
  br label %ingenic_config_pin.exit70

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i = add i32 %mul7.i58, 48
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %add8.i, i32 noundef %shl22.i, i32 noundef %shl22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_config_pin.exit70

if.else11.i:                                      ; preds = %ingenic_config_pin.exit50
  br i1 %cmp.not.i55, label %if.else24.i69, label %if.then15.i65

if.then15.i65:                                    ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i62 = add i32 %mul7.i58, 56
  %call23.i64 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef %add21.i62, i32 noundef %shl22.i) #7
  br label %ingenic_config_pin.exit70

if.else24.i69:                                    ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i66 = add i32 %mul7.i58, 48
  %call.i54.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %add29.i66, i32 noundef %shl22.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_config_pin.exit70

ingenic_config_pin.exit70:                        ; preds = %if.else24.i69, %if.then15.i65, %if.else.i, %if.then1.i
  %and14 = and i32 %func, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %55 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %info, align 4
  %version.i74 = getelementptr inbounds %struct.ingenic_chip_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %version.i74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %version.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.not.i75 = icmp eq i32 %58, 0
  %59 = ptrtoint ptr %map4.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map4.i, align 4
  %reg_offset6.i77 = getelementptr inbounds %struct.ingenic_chip_info, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %reg_offset6.i77 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reg_offset6.i77, align 4
  %mul7.i78 = mul i32 %62, %div53.i
  br i1 %tobool15.not, label %if.else11.i88, label %if.then.i79

if.then.i79:                                      ; preds = %ingenic_config_pin.exit70
  br i1 %cmp.not.i75, label %if.else.i87, label %if.then1.i83

if.then1.i83:                                     ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i80 = add i32 %mul7.i78, 68
  %call.i82 = tail call i32 @regmap_write(ptr noundef %60, i32 noundef %add3.i80, i32 noundef %shl22.i) #7
  br label %if.end28

if.else.i87:                                      ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i84 = add i32 %mul7.i78, 64
  %call.i.i86 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %add8.i84, i32 noundef %shl22.i, i32 noundef %shl22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end28

if.else11.i88:                                    ; preds = %ingenic_config_pin.exit70
  br i1 %cmp.not.i75, label %if.else24.i96, label %if.then15.i92

if.then15.i92:                                    ; preds = %if.else11.i88
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i89 = add i32 %mul7.i78, 72
  %call23.i91 = tail call i32 @regmap_write(ptr noundef %60, i32 noundef %add21.i89, i32 noundef %shl22.i) #7
  br label %if.end28

if.else24.i96:                                    ; preds = %if.else11.i88
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i93 = add i32 %mul7.i78, 64
  %call.i54.i95 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %add29.i93, i32 noundef %shl22.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end28

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19.not = icmp eq i32 %6, 0
  %rem.i170 = and i32 %pin, 31
  %div53.i171 = lshr i32 %pin, 5
  %map4.i175 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 1
  %63 = ptrtoint ptr %map4.i175 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map4.i175, align 4
  %reg_offset6.i176 = getelementptr inbounds %struct.ingenic_chip_info, ptr %4, i32 0, i32 1
  %65 = ptrtoint ptr %reg_offset6.i176 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg_offset6.i176, align 4
  %mul7.i177 = mul i32 %66, %div53.i171
  br i1 %cmp19.not, label %ingenic_config_pin.exit187, label %ingenic_config_pin.exit115

ingenic_config_pin.exit115:                       ; preds = %if.else16
  %add3.i107 = add i32 %mul7.i177, 68
  %shl.i108 = shl nuw i32 1, %rem.i170
  %call.i109 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef %add3.i107, i32 noundef %shl.i108) #7
  %and21 = and i32 %func, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %67 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %info, align 4
  %version.i119 = getelementptr inbounds %struct.ingenic_chip_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %version.i119 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %version.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.not.i120 = icmp eq i32 %70, 0
  %71 = ptrtoint ptr %map4.i175 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %map4.i175, align 4
  %reg_offset6.i122 = getelementptr inbounds %struct.ingenic_chip_info, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %reg_offset6.i122 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %reg_offset6.i122, align 4
  %mul7.i123 = mul i32 %74, %div53.i171
  br i1 %tobool22.not, label %if.else11.i133, label %if.then.i124

if.then.i124:                                     ; preds = %ingenic_config_pin.exit115
  br i1 %cmp.not.i120, label %if.else.i132, label %if.then1.i128

if.then1.i128:                                    ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i125 = add i32 %mul7.i123, 116
  %call.i127 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef %add3.i125, i32 noundef %shl.i108) #7
  br label %ingenic_config_pin.exit142

if.else.i132:                                     ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i129 = add i32 %mul7.i123, 112
  %call.i.i131 = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef %add8.i129, i32 noundef %shl.i108, i32 noundef %shl.i108, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_config_pin.exit142

if.else11.i133:                                   ; preds = %ingenic_config_pin.exit115
  br i1 %cmp.not.i120, label %if.else24.i141, label %if.then15.i137

if.then15.i137:                                   ; preds = %if.else11.i133
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i134 = add i32 %mul7.i123, 120
  %call23.i136 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef %add21.i134, i32 noundef %shl.i108) #7
  br label %ingenic_config_pin.exit142

if.else24.i141:                                   ; preds = %if.else11.i133
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i138 = add i32 %mul7.i123, 112
  %call.i54.i140 = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef %add29.i138, i32 noundef %shl.i108, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_config_pin.exit142

ingenic_config_pin.exit142:                       ; preds = %if.else24.i141, %if.then15.i137, %if.else.i132, %if.then1.i128
  %and23 = and i32 %func, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %75 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %info, align 4
  %version.i146 = getelementptr inbounds %struct.ingenic_chip_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %version.i146 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %version.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.not.i147 = icmp eq i32 %78, 0
  %79 = ptrtoint ptr %map4.i175 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map4.i175, align 4
  %reg_offset6.i149 = getelementptr inbounds %struct.ingenic_chip_info, ptr %76, i32 0, i32 1
  %81 = ptrtoint ptr %reg_offset6.i149 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %reg_offset6.i149, align 4
  %mul7.i150 = mul i32 %82, %div53.i171
  br i1 %tobool24.not, label %if.else11.i160, label %if.then.i151

if.then.i151:                                     ; preds = %ingenic_config_pin.exit142
  br i1 %cmp.not.i147, label %if.else.i159, label %if.then1.i155

if.then1.i155:                                    ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i152 = add i32 %mul7.i150, 84
  %call.i154 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef %add3.i152, i32 noundef %shl.i108) #7
  br label %if.end28

if.else.i159:                                     ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i156 = add i32 %mul7.i150, 80
  %call.i.i158 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef %add8.i156, i32 noundef %shl.i108, i32 noundef %shl.i108, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end28

if.else11.i160:                                   ; preds = %ingenic_config_pin.exit142
  br i1 %cmp.not.i147, label %if.else24.i168, label %if.then15.i164

if.then15.i164:                                   ; preds = %if.else11.i160
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i161 = add i32 %mul7.i150, 88
  %call23.i163 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef %add21.i161, i32 noundef %shl.i108) #7
  br label %if.end28

if.else24.i168:                                   ; preds = %if.else11.i160
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i165 = add i32 %mul7.i150, 80
  %call.i54.i167 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef %add29.i165, i32 noundef %shl.i108, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end28

ingenic_config_pin.exit187:                       ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i183 = add i32 %mul7.i177, 32
  %shl30.i184 = shl nuw i32 1, %rem.i170
  %call.i54.i185 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef %add29.i183, i32 noundef %shl30.i184, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %rem1.i = and i32 %pin, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %cmp.not.not.i = icmp eq i32 %rem1.i, 0
  %..i = select i1 %cmp.not.not.i, i32 16, i32 20
  %rem.i188 = shl i32 %pin, 1
  %mul.i189 = and i32 %rem.i188, 30
  %shl.i190 = shl nuw i32 3, %mul.i189
  %83 = ptrtoint ptr %map4.i175 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map4.i175, align 4
  %85 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %info, align 4
  %reg_offset.i193 = getelementptr inbounds %struct.ingenic_chip_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %reg_offset.i193 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reg_offset.i193, align 4
  %mul4.i = mul i32 %88, %div53.i171
  %add.i194 = add i32 %mul4.i, %..i
  %conv6.i = and i32 %func, 255
  %shl8.i = shl i32 %conv6.i, %mul.i189
  %call.i.i195 = tail call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef %add.i194, i32 noundef %shl.i190, i32 noundef %shl8.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end28

if.end28:                                         ; preds = %ingenic_config_pin.exit187, %if.else24.i168, %if.then15.i164, %if.else.i159, %if.then1.i155, %if.else24.i96, %if.then15.i92, %if.else.i87, %if.then1.i83, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #5 align 64 {
entry:
  %val.i297 = alloca i32, align 4
  %val.i285 = alloca i32, align 4
  %val.i273 = alloca i32, align 4
  %val.i261 = alloca i32, align 4
  %val.i249 = alloca i32, align 4
  %val.i237 = alloca i32, align 4
  %val.i225 = alloca i32, align 4
  %val.i213 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %bias = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %rem = and i32 %pin, 31
  %div211 = lshr i32 %pin, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bias) #7
  %2 = ptrtoint ptr %bias to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bias, align 4, !annotation !94
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %6)
  %cmp = icmp ugt i32 %6, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !94
  %map.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 4
  %reg_offset.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_offset.i, align 4
  %mul.i = mul i32 %11, %div211
  %add.i = add i32 %mul.i, 128
  %call.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.i, ptr noundef nonnull %val.i) #7
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %shl.i = shl nuw i32 1, %rem
  %and.i212 = and i32 %13, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i212)
  %tobool.i.not = icmp eq i32 %and.i212, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br i1 %tobool.i.not, label %if.then.land.end_crit_edge, label %land.lhs.true

if.then.land.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true:                                    ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i213) #7
  %14 = ptrtoint ptr %val.i213 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i213, align 4, !annotation !94
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 4
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  %reg_offset.i218 = getelementptr inbounds %struct.ingenic_chip_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %reg_offset.i218 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_offset.i218, align 4
  %mul.i219 = mul i32 %20, %div211
  %add.i220 = add i32 %mul.i219, 144
  %call.i221 = call i32 @regmap_read(ptr noundef %16, i32 noundef %add.i220, ptr noundef nonnull %val.i213) #7
  %21 = ptrtoint ptr %val.i213 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i213, align 4
  %and.i223 = and i32 %22, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i223)
  %tobool.i224.not = icmp eq i32 %and.i223, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i213) #7
  br i1 %tobool.i224.not, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info, align 4
  %pull_ups = getelementptr inbounds %struct.ingenic_chip_info, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %pull_ups to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pull_ups, align 4
  %arrayidx = getelementptr i32, ptr %26, i32 %div211
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %and = and i32 %28, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %if.then.land.end_crit_edge
  %29 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %if.then.land.end_crit_edge ], [ %tobool, %land.rhs ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i225) #7
  %30 = ptrtoint ptr %val.i225 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i225, align 4, !annotation !94
  %31 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i, align 4
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info, align 4
  %reg_offset.i230 = getelementptr inbounds %struct.ingenic_chip_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %reg_offset.i230 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_offset.i230, align 4
  %mul.i231 = mul i32 %36, %div211
  %add.i232 = add i32 %mul.i231, 144
  %call.i233 = call i32 @regmap_read(ptr noundef %32, i32 noundef %add.i232, ptr noundef nonnull %val.i225) #7
  %37 = ptrtoint ptr %val.i225 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i225, align 4
  %and.i235 = and i32 %38, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i235)
  %tobool.i236.not = icmp eq i32 %and.i235, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i225) #7
  br i1 %tobool.i236.not, label %land.end.if.end95_crit_edge, label %land.lhs.true6

land.end.if.end95_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

land.lhs.true6:                                   ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i237) #7
  %39 = ptrtoint ptr %val.i237 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %val.i237, align 4, !annotation !94
  %40 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map.i, align 4
  %42 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info, align 4
  %reg_offset.i242 = getelementptr inbounds %struct.ingenic_chip_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %reg_offset.i242 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_offset.i242, align 4
  %mul.i243 = mul i32 %45, %div211
  %add.i244 = add i32 %mul.i243, 128
  %call.i245 = call i32 @regmap_read(ptr noundef %41, i32 noundef %add.i244, ptr noundef nonnull %val.i237) #7
  %46 = ptrtoint ptr %val.i237 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i237, align 4
  %and.i247 = and i32 %47, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i247)
  %tobool.i248.not = icmp eq i32 %and.i247, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i237) #7
  br i1 %tobool.i248.not, label %land.rhs8, label %land.lhs.true6.if.end95_crit_edge

land.lhs.true6.if.end95_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

land.rhs8:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info, align 4
  %pull_downs = getelementptr inbounds %struct.ingenic_chip_info, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %pull_downs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pull_downs, align 4
  %arrayidx10 = getelementptr i32, ptr %51, i32 %div211
  %52 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx10, align 4
  %and12 = and i32 %53, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13 = icmp ne i32 %and12, 0
  br label %if.end95

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %6)
  %cmp18 = icmp eq i32 %6, 11
  br i1 %cmp18, label %if.then19, label %if.else54

if.then19:                                        ; preds = %if.else
  %rem20 = shl i32 %pin, 1
  %mul = and i32 %rem20, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rem)
  %cmp21 = icmp ult i32 %rem, 16
  %map = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %54 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map, align 4
  %reg_offset = getelementptr inbounds %struct.ingenic_chip_info, ptr %4, i32 0, i32 1
  %56 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reg_offset, align 4
  %mul24 = mul i32 %57, %div211
  %. = select i1 %cmp21, i32 272, i32 288
  %add31 = add i32 %mul24, %.
  %call32 = call i32 @regmap_read(ptr noundef %55, i32 noundef %add31, ptr noundef nonnull %bias) #7
  %58 = ptrtoint ptr %bias to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bias, align 4
  %shr = lshr i32 %59, %mul
  %and33 = and i32 %shr, 3
  store i32 %and33, ptr %bias, align 4
  %60 = zext i32 %and33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and33, label %if.then19.if.end95_crit_edge [
    i32 1, label %land.end42.thread
    i32 2, label %land.rhs45
  ]

if.then19.if.end95_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

land.end42.thread:                                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %info, align 4
  %pull_ups37 = getelementptr inbounds %struct.ingenic_chip_info, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %pull_ups37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pull_ups37, align 4
  %arrayidx38 = getelementptr i32, ptr %64, i32 %div211
  %65 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx38, align 4
  %shl39 = shl nuw i32 1, %rem
  %and40 = and i32 %66, %shl39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41 = icmp ne i32 %and40, 0
  br label %if.end95

land.rhs45:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %info, align 4
  %pull_downs47 = getelementptr inbounds %struct.ingenic_chip_info, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %pull_downs47 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pull_downs47, align 4
  %arrayidx48 = getelementptr i32, ptr %70, i32 %div211
  %71 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx48, align 4
  %shl49 = shl nuw i32 1, %rem
  %and50 = and i32 %72, %shl49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51 = icmp ne i32 %and50, 0
  br label %if.end95

if.else54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp57 = icmp ugt i32 %6, 5
  br i1 %cmp57, label %if.then58, label %if.else61

if.then58:                                        ; preds = %if.else54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i249) #7
  %73 = ptrtoint ptr %val.i249 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %val.i249, align 4, !annotation !94
  %map.i252 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %74 = ptrtoint ptr %map.i252 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map.i252, align 4
  %reg_offset.i254 = getelementptr inbounds %struct.ingenic_chip_info, ptr %4, i32 0, i32 1
  %76 = ptrtoint ptr %reg_offset.i254 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %reg_offset.i254, align 4
  %mul.i255 = mul i32 %77, %div211
  %add.i256 = add i32 %mul.i255, 112
  %call.i257 = call i32 @regmap_read(ptr noundef %75, i32 noundef %add.i256, ptr noundef nonnull %val.i249) #7
  %78 = ptrtoint ptr %val.i249 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i249, align 4
  %shl.i258 = shl nuw i32 1, %rem
  %and.i259 = and i32 %79, %shl.i258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i259)
  %tobool.i260.not = icmp eq i32 %and.i259, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i249) #7
  br i1 %tobool.i260.not, label %if.then58.land.rhs85_crit_edge, label %if.then58.if.end95_crit_edge

if.then58.if.end95_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then58.land.rhs85_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs85

if.else61:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp64.not = icmp eq i32 %6, 0
  br i1 %cmp64.not, label %if.end73, label %if.then65

if.then65:                                        ; preds = %if.else61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i261) #7
  %80 = ptrtoint ptr %val.i261 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %val.i261, align 4, !annotation !94
  %map.i264 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %81 = ptrtoint ptr %map.i264 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map.i264, align 4
  %reg_offset.i266 = getelementptr inbounds %struct.ingenic_chip_info, ptr %4, i32 0, i32 1
  %83 = ptrtoint ptr %reg_offset.i266 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reg_offset.i266, align 4
  %mul.i267 = mul i32 %84, %div211
  %add.i268 = add i32 %mul.i267, 48
  %call.i269 = call i32 @regmap_read(ptr noundef %82, i32 noundef %add.i268, ptr noundef nonnull %val.i261) #7
  %85 = ptrtoint ptr %val.i261 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i261, align 4
  %shl.i270 = shl nuw i32 1, %rem
  %and.i271 = and i32 %86, %shl.i270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i271)
  %tobool.i272.not = icmp eq i32 %and.i271, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i261) #7
  br i1 %tobool.i272.not, label %if.then65.land.rhs85_crit_edge, label %if.then65.if.end95_crit_edge

if.then65.if.end95_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then65.land.rhs85_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs85

if.end73:                                         ; preds = %if.else61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i273) #7
  %87 = ptrtoint ptr %val.i273 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %val.i273, align 4, !annotation !94
  %map.i276 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %88 = ptrtoint ptr %map.i276 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %map.i276, align 4
  %reg_offset.i278 = getelementptr inbounds %struct.ingenic_chip_info, ptr %4, i32 0, i32 1
  %90 = ptrtoint ptr %reg_offset.i278 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %reg_offset.i278, align 4
  %mul.i279 = mul i32 %91, %div211
  %add.i280 = add i32 %mul.i279, 12
  %call.i281 = call i32 @regmap_read(ptr noundef %89, i32 noundef %add.i280, ptr noundef nonnull %val.i273) #7
  %92 = ptrtoint ptr %val.i273 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val.i273, align 4
  %shl.i282 = shl nuw i32 1, %rem
  %and.i283 = and i32 %93, %shl.i282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool.i284.not = icmp eq i32 %and.i283, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i273) #7
  br i1 %tobool.i284.not, label %if.end73.if.end95_crit_edge, label %if.end73.land.rhs85_crit_edge

if.end73.land.rhs85_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs85

if.end73.if.end95_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

land.rhs85:                                       ; preds = %if.end73.land.rhs85_crit_edge, %if.then65.land.rhs85_crit_edge, %if.then58.land.rhs85_crit_edge
  %shl79.pre-phi = phi i32 [ %shl.i270, %if.then65.land.rhs85_crit_edge ], [ %shl.i258, %if.then58.land.rhs85_crit_edge ], [ %shl.i282, %if.end73.land.rhs85_crit_edge ]
  %94 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %info, align 4
  %pull_ups77 = getelementptr inbounds %struct.ingenic_chip_info, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %pull_ups77 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pull_ups77, align 4
  %arrayidx78 = getelementptr i32, ptr %97, i32 %div211
  %98 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx78, align 4
  %and80 = and i32 %99, %shl79.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81 = icmp ne i32 %and80, 0
  %pull_downs87 = getelementptr inbounds %struct.ingenic_chip_info, ptr %95, i32 0, i32 8
  %100 = ptrtoint ptr %pull_downs87 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pull_downs87, align 4
  %arrayidx88 = getelementptr i32, ptr %101, i32 %div211
  %102 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx88, align 4
  %and90 = and i32 %103, %shl79.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91 = icmp ne i32 %and90, 0
  br label %if.end95

if.end95:                                         ; preds = %land.rhs85, %if.end73.if.end95_crit_edge, %if.then65.if.end95_crit_edge, %if.then58.if.end95_crit_edge, %land.rhs45, %land.end42.thread, %if.then19.if.end95_crit_edge, %land.rhs8, %land.lhs.true6.if.end95_crit_edge, %land.end.if.end95_crit_edge
  %pullup.0.in = phi i1 [ %29, %land.rhs8 ], [ %29, %land.lhs.true6.if.end95_crit_edge ], [ %29, %land.end.if.end95_crit_edge ], [ false, %land.rhs45 ], [ %tobool81, %land.rhs85 ], [ %tobool41, %land.end42.thread ], [ false, %if.end73.if.end95_crit_edge ], [ false, %if.then58.if.end95_crit_edge ], [ false, %if.then65.if.end95_crit_edge ], [ false, %if.then19.if.end95_crit_edge ]
  %pulldown.0.in = phi i1 [ %tobool13, %land.rhs8 ], [ false, %land.lhs.true6.if.end95_crit_edge ], [ false, %land.end.if.end95_crit_edge ], [ %tobool51, %land.rhs45 ], [ %tobool91, %land.rhs85 ], [ false, %land.end42.thread ], [ false, %if.end73.if.end95_crit_edge ], [ false, %if.then58.if.end95_crit_edge ], [ false, %if.then65.if.end95_crit_edge ], [ false, %if.then19.if.end95_crit_edge ]
  %trunc = trunc i32 %1 to i8
  %104 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %trunc, label %if.end95.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %sw.bb100
    i8 3, label %sw.bb104
    i8 14, label %sw.bb108
    i8 24, label %sw.bb124
  ]

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end95
  %brmerge = select i1 %pullup.0.in, i1 true, i1 %pulldown.0.in
  br i1 %brmerge, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog.thread_crit_edge

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb100:                                         ; preds = %if.end95
  br i1 %pullup.0.in, label %sw.bb100.sw.epilog.thread_crit_edge, label %sw.bb100.cleanup_crit_edge

sw.bb100.cleanup_crit_edge:                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb100.sw.epilog.thread_crit_edge:              ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

sw.bb104:                                         ; preds = %if.end95
  br i1 %pulldown.0.in, label %sw.bb104.sw.epilog.thread_crit_edge, label %sw.bb104.cleanup_crit_edge

sw.bb104.cleanup_crit_edge:                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb104.sw.epilog.thread_crit_edge:              ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

sw.bb108:                                         ; preds = %if.end95
  %105 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %info, align 4
  %version110 = getelementptr inbounds %struct.ingenic_chip_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %version110 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %version110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %108)
  %cmp111 = icmp ugt i32 %108, 11
  br i1 %cmp111, label %sw.bb108.sw.epilog_crit_edge, label %if.else113

sw.bb108.sw.epilog_crit_edge:                     ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else113:                                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %108)
  %cmp116 = icmp eq i32 %108, 11
  br i1 %cmp116, label %if.else113.sw.epilog_crit_edge, label %if.else113.cleanup_crit_edge

if.else113.cleanup_crit_edge:                     ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else113.sw.epilog_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end95
  %109 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %info, align 4
  %version126 = getelementptr inbounds %struct.ingenic_chip_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %version126 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %version126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %112)
  %cmp127 = icmp ugt i32 %112, 11
  br i1 %cmp127, label %sw.bb124.if.end136_crit_edge, label %if.else129

sw.bb124.if.end136_crit_edge:                     ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.else129:                                       ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %112)
  %cmp132 = icmp eq i32 %112, 11
  br i1 %cmp132, label %if.else129.if.end136_crit_edge, label %if.else129.cleanup_crit_edge

if.else129.cleanup_crit_edge:                     ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else129.if.end136_crit_edge:                   ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.end136:                                        ; preds = %if.else129.if.end136_crit_edge, %sw.bb124.if.end136_crit_edge
  %reg.1 = phi i32 [ 208, %sw.bb124.if.end136_crit_edge ], [ 336, %if.else129.if.end136_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i297) #7
  %113 = ptrtoint ptr %val.i297 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %val.i297, align 4, !annotation !94
  %map.i300 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %114 = ptrtoint ptr %map.i300 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %map.i300, align 4
  %reg_offset.i302 = getelementptr inbounds %struct.ingenic_chip_info, ptr %110, i32 0, i32 1
  %116 = ptrtoint ptr %reg_offset.i302 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %reg_offset.i302, align 4
  %mul.i303 = mul i32 %117, %div211
  %add.i304 = add i32 %mul.i303, %reg.1
  %call.i305 = call i32 @regmap_read(ptr noundef %115, i32 noundef %add.i304, ptr noundef nonnull %val.i297) #7
  %118 = ptrtoint ptr %val.i297 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val.i297, align 4
  %shl.i306 = shl nuw i32 1, %rem
  %and.i307 = and i32 %119, %shl.i306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i307)
  %tobool.i308.not = icmp eq i32 %and.i307, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i297) #7
  br i1 %tobool.i308.not, label %if.end136._crit_edge, label %if.end136.sw.epilog.thread_crit_edge

if.end136.sw.epilog.thread_crit_edge:             ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end136._crit_edge:                             ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %127

sw.epilog:                                        ; preds = %if.else113.sw.epilog_crit_edge, %sw.bb108.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 224, %sw.bb108.sw.epilog_crit_edge ], [ 352, %if.else113.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i285) #7
  %120 = ptrtoint ptr %val.i285 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %val.i285, align 4, !annotation !94
  %map.i288 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %121 = ptrtoint ptr %map.i288 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %map.i288, align 4
  %reg_offset.i290 = getelementptr inbounds %struct.ingenic_chip_info, ptr %106, i32 0, i32 1
  %123 = ptrtoint ptr %reg_offset.i290 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %reg_offset.i290, align 4
  %mul.i291 = mul i32 %124, %div211
  %add.i292 = add i32 %mul.i291, %reg.0
  %call.i293 = call i32 @regmap_read(ptr noundef %122, i32 noundef %add.i292, ptr noundef nonnull %val.i285) #7
  %125 = ptrtoint ptr %val.i285 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %val.i285, align 4
  %shl.i294 = shl nuw i32 1, %rem
  %and.i295 = and i32 %126, %shl.i294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i295)
  %tobool.i296.not = icmp eq i32 %and.i295, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i285) #7
  br i1 %tobool.i296.not, label %sw.epilog._crit_edge, label %sw.epilog.sw.epilog.thread_crit_edge

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %127

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %if.end136.sw.epilog.thread_crit_edge, %sw.bb104.sw.epilog.thread_crit_edge, %sw.bb100.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge
  br label %127

127:                                              ; preds = %sw.epilog.thread, %sw.epilog._crit_edge, %if.end136._crit_edge
  %128 = phi i32 [ 256, %sw.epilog.thread ], [ 0, %sw.epilog._crit_edge ], [ 0, %if.end136._crit_edge ]
  %or.i = or i32 %128, %and.i
  %129 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %127, %if.else129.cleanup_crit_edge, %if.else113.cleanup_crit_edge, %sw.bb104.cleanup_crit_edge, %sw.bb100.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end95.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %127 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb100.cleanup_crit_edge ], [ -22, %sw.bb104.cleanup_crit_edge ], [ -22, %if.else113.cleanup_crit_edge ], [ -22, %if.else129.cleanup_crit_edge ], [ -524, %if.end95.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bias) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %rem = and i32 %pin, 31
  %div134 = lshr i32 %pin, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp205.not = icmp eq i32 %num_configs, 0
  br i1 %cmp205.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond2.preheader:                              ; preds = %for.inc
  %info80 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 4
  br i1 %cmp205.not, label %for.cond2.preheader.cleanup_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.cleanup_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %map4.i.i165 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %call, i32 0, i32 1
  %shl.i.i170 = shl nuw i32 1, %rem
  %add63 = add nuw nsw i32 %div134, 65
  br label %for.body4

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cfg.0206 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %cfg.0206
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %trunc203 = trunc i32 %1 to i8
  %2 = zext i8 %trunc203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %trunc203, label %for.body.cleanup_crit_edge [
    i8 1, label %for.body.for.inc_crit_edge
    i8 5, label %for.body.for.inc_crit_edge220
    i8 3, label %for.body.for.inc_crit_edge221
    i8 14, label %for.body.for.inc_crit_edge222
    i8 17, label %for.body.for.inc_crit_edge223
    i8 24, label %for.body.for.inc_crit_edge224
  ]

for.body.for.inc_crit_edge224:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.for.inc_crit_edge223:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.for.inc_crit_edge222:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.for.inc_crit_edge221:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.for.inc_crit_edge220:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge220, %for.body.for.inc_crit_edge221, %for.body.for.inc_crit_edge222, %for.body.for.inc_crit_edge223, %for.body.for.inc_crit_edge224
  %inc = add nuw i32 %cfg.0206, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body4:                                        ; preds = %for.inc86.for.body4_crit_edge, %for.body4.lr.ph
  %cfg.1208 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc87, %for.inc86.for.body4_crit_edge ]
  %arrayidx5 = getelementptr i32, ptr %configs, i32 %cfg.1208
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  %trunc = trunc i32 %4 to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %trunc, label %for.body4.for.inc86_crit_edge [
    i8 1, label %do.body
    i8 5, label %sw.bb14
    i8 3, label %sw.bb39
    i8 14, label %sw.bb67
    i8 17, label %sw.bb73
    i8 24, label %sw.bb79
  ]

for.body4.for.inc86_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc86

do.body:                                          ; preds = %for.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ingenic_pinconf_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ingenic_pinconf_set, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !95

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ingenic_pinconf_set.__UNIQUE_ID_ddebug230, ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef %add63, i32 noundef %rem) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  tail call fastcc void @ingenic_set_bias(ptr noundef %call, i32 noundef %pin, i32 noundef 0)
  br label %for.inc86

sw.bb14:                                          ; preds = %for.body4
  %8 = ptrtoint ptr %info80 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info80, align 4
  %pull_ups = getelementptr inbounds %struct.ingenic_chip_info, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %pull_ups to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pull_ups, align 4
  %arrayidx15 = getelementptr i32, ptr %11, i32 %div134
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15, align 4
  %and = and i32 %13, %shl.i.i170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %sw.bb14.cleanup_crit_edge, label %do.body19

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body19:                                        ; preds = %sw.bb14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ingenic_pinconf_set.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ingenic_pinconf_set, %do.end38)) #7
          to label %if.then33 [label %do.end38], !srcloc !95

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ingenic_pinconf_set.__UNIQUE_ID_ddebug231, ptr noundef %15, ptr noundef nonnull @.str.31, i32 noundef %add63, i32 noundef %rem) #7
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.body19
  tail call fastcc void @ingenic_set_bias(ptr noundef %call, i32 noundef %pin, i32 noundef 1)
  br label %for.inc86

sw.bb39:                                          ; preds = %for.body4
  %16 = ptrtoint ptr %info80 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info80, align 4
  %pull_downs = getelementptr inbounds %struct.ingenic_chip_info, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %pull_downs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pull_downs, align 4
  %arrayidx41 = getelementptr i32, ptr %19, i32 %div134
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx41, align 4
  %and43 = and i32 %21, %shl.i.i170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %sw.bb39.cleanup_crit_edge, label %do.body47

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body47:                                        ; preds = %sw.bb39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ingenic_pinconf_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ingenic_pinconf_set, %do.end66)) #7
          to label %if.then61 [label %do.end66], !srcloc !95

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ingenic_pinconf_set.__UNIQUE_ID_ddebug232, ptr noundef %23, ptr noundef nonnull @.str.32, i32 noundef %add63, i32 noundef %rem) #7
  br label %do.end66

do.end66:                                         ; preds = %if.then61, %do.body47
  tail call fastcc void @ingenic_set_bias(ptr noundef %call, i32 noundef %pin, i32 noundef 2)
  br label %for.inc86

sw.bb67:                                          ; preds = %for.body4
  %24 = ptrtoint ptr %info80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info80, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %27)
  %cmp69 = icmp ult i32 %27, 11
  br i1 %cmp69, label %sw.bb67.cleanup_crit_edge, label %if.end71

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool72.not = icmp ult i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %27)
  %cmp.i.not = icmp eq i32 %27, 11
  %28 = ptrtoint ptr %map4.i.i165 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map4.i.i165, align 4
  %reg_offset6.i12.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %reg_offset6.i12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_offset6.i12.i, align 4
  %mul7.i13.i = mul i32 %31, %div134
  br i1 %cmp.i.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end71
  br i1 %tobool72.not, label %if.then15.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i.i = add i32 %mul7.i13.i, 228
  %call.i.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add3.i.i, i32 noundef %shl.i.i170) #7
  br label %for.inc86

if.then15.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i.i = add i32 %mul7.i13.i, 232
  %call23.i.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add21.i.i, i32 noundef %shl.i.i170) #7
  br label %for.inc86

if.else.i:                                        ; preds = %if.end71
  br i1 %tobool72.not, label %if.then15.i27.i, label %if.then1.i18.i

if.then1.i18.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i15.i = add i32 %mul7.i13.i, 356
  %call.i17.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add3.i15.i, i32 noundef %shl.i.i170) #7
  br label %for.inc86

if.then15.i27.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i24.i = add i32 %mul7.i13.i, 360
  %call23.i26.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add21.i24.i, i32 noundef %shl.i.i170) #7
  br label %for.inc86

sw.bb73:                                          ; preds = %for.body4
  %call74 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %pin) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %sw.bb73.cleanup_crit_edge

sw.bb73.cleanup_crit_edge:                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool78.not = icmp ult i32 %4, 256
  %32 = ptrtoint ptr %info80 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info80, align 4
  %version.i143 = getelementptr inbounds %struct.ingenic_chip_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %version.i143 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %version.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp.i144 = icmp ugt i32 %35, 5
  br i1 %cmp.i144, label %if.then.i150, label %if.else.i159

if.then.i150:                                     ; preds = %if.end77
  %36 = ptrtoint ptr %map4.i.i165 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map4.i.i165, align 4
  %reg_offset6.i.i148 = getelementptr inbounds %struct.ingenic_chip_info, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %reg_offset6.i.i148 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_offset6.i.i148, align 4
  %mul7.i.i149 = mul i32 %39, %div134
  br i1 %tobool78.not, label %if.then15.i.i158, label %if.then1.i.i154

if.then1.i.i154:                                  ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i.i151 = add i32 %mul7.i.i149, 68
  %call.i.i153 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %add3.i.i151, i32 noundef %shl.i.i170) #7
  br label %for.inc86

if.then15.i.i158:                                 ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i.i155 = add i32 %mul7.i.i149, 72
  %call23.i.i157 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %add21.i.i155, i32 noundef %shl.i.i170) #7
  br label %for.inc86

if.else.i159:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp3.not.i = icmp eq i32 %35, 0
  %40 = ptrtoint ptr %map4.i.i165 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map4.i.i165, align 4
  %reg_offset6.i50.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %33, i32 0, i32 1
  %42 = ptrtoint ptr %reg_offset6.i50.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_offset6.i50.i, align 4
  %mul7.i51.i = mul i32 %43, %div134
  br i1 %cmp3.not.i, label %if.else6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i159
  br i1 %tobool78.not, label %if.then15.i38.i, label %if.then1.i29.i

if.then1.i29.i:                                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i26.i = add i32 %mul7.i51.i, 20
  %call.i28.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %add3.i26.i, i32 noundef %shl.i.i170) #7
  br label %for.inc86

if.then15.i38.i:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i35.i = add i32 %mul7.i51.i, 24
  %call23.i37.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %add21.i35.i, i32 noundef %shl.i.i170) #7
  br label %for.inc86

if.else6.i:                                       ; preds = %if.else.i159
  br i1 %tobool78.not, label %if.else24.i67.i, label %if.else.i59.i

if.else.i59.i:                                    ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i58.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %mul7.i51.i, i32 noundef %shl.i.i170, i32 noundef %shl.i.i170, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc86

if.else24.i67.i:                                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i54.i66.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %mul7.i51.i, i32 noundef %shl.i.i170, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc86

sw.bb79:                                          ; preds = %for.body4
  %44 = ptrtoint ptr %info80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info80, align 4
  %version81 = getelementptr inbounds %struct.ingenic_chip_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %version81 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %version81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %47)
  %cmp82 = icmp ult i32 %47, 11
  br i1 %cmp82, label %sw.bb79.cleanup_crit_edge, label %if.end84

sw.bb79.cleanup_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end84:                                         ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %47)
  %cmp.i162.not = icmp eq i32 %47, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool.not.i = icmp ult i32 %4, 256
  %48 = ptrtoint ptr %map4.i.i165 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map4.i.i165, align 4
  %reg_offset6.i12.i179 = getelementptr inbounds %struct.ingenic_chip_info, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %reg_offset6.i12.i179 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg_offset6.i12.i179, align 4
  %mul7.i13.i180 = mul i32 %51, %div134
  br i1 %cmp.i162.not, label %if.else.i181, label %if.then.i168

if.then.i168:                                     ; preds = %if.end84
  br i1 %tobool.not.i, label %if.then15.i.i176, label %if.then1.i.i172

if.then1.i.i172:                                  ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i.i169 = add i32 %mul7.i13.i180, 212
  %call.i.i171 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %add3.i.i169, i32 noundef %shl.i.i170) #7
  br label %for.inc86

if.then15.i.i176:                                 ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i.i173 = add i32 %mul7.i13.i180, 216
  %call23.i.i175 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %add21.i.i173, i32 noundef %shl.i.i170) #7
  br label %for.inc86

if.else.i181:                                     ; preds = %if.end84
  br i1 %tobool.not.i, label %if.then15.i27.i195, label %if.then1.i18.i186

if.then1.i18.i186:                                ; preds = %if.else.i181
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i15.i183 = add i32 %mul7.i13.i180, 340
  %call.i17.i185 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %add3.i15.i183, i32 noundef %shl.i.i170) #7
  br label %for.inc86

if.then15.i27.i195:                               ; preds = %if.else.i181
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i24.i192 = add i32 %mul7.i13.i180, 344
  %call23.i26.i194 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %add21.i24.i192, i32 noundef %shl.i.i170) #7
  br label %for.inc86

for.inc86:                                        ; preds = %if.then15.i27.i195, %if.then1.i18.i186, %if.then15.i.i176, %if.then1.i.i172, %if.else24.i67.i, %if.else.i59.i, %if.then15.i38.i, %if.then1.i29.i, %if.then15.i.i158, %if.then1.i.i154, %if.then15.i27.i, %if.then1.i18.i, %if.then15.i.i, %if.then1.i.i, %do.end66, %do.end38, %do.end, %for.body4.for.inc86_crit_edge
  %inc87 = add nuw i32 %cfg.1208, 1
  %exitcond215.not = icmp eq i32 %inc87, %num_configs
  br i1 %exitcond215.not, label %for.inc86.cleanup_crit_edge, label %for.inc86.for.body4_crit_edge

for.inc86.for.body4_crit_edge:                    ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.inc86.cleanup_crit_edge:                      ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc86.cleanup_crit_edge, %sw.bb79.cleanup_crit_edge, %sw.bb73.cleanup_crit_edge, %sw.bb67.cleanup_crit_edge, %sw.bb39.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond2.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond2.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ -22, %sw.bb39.cleanup_crit_edge ], [ -22, %sw.bb67.cleanup_crit_edge ], [ %call74, %sw.bb73.cleanup_crit_edge ], [ -22, %sw.bb79.cleanup_crit_edge ], [ 0, %for.inc86.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pinconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %config) #5 align 64 {
entry:
  %pins = alloca ptr, align 4
  %npins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #7
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pins, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npins) #7
  %1 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %npins, align 4, !annotation !94
  %call = call i32 @pinctrl_generic_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr noundef nonnull %pins, ptr noundef nonnull %npins) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %old.022 = phi i32 [ %11, %if.end8.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.021 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.021
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 @ingenic_pinconf_get(ptr noundef %pctldev, i32 noundef %7, ptr noundef %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.021)
  %tobool5.not = icmp eq i32 %i.021, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %land.lhs.true

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %old.022, i32 %9)
  %cmp6.not = icmp eq i32 %old.022, %9
  br i1 %cmp6.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config, align 4
  %inc = add nuw i32 %i.021, 1
  %12 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ], [ -524, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npins) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_pinconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #5 align 64 {
entry:
  %pins = alloca ptr, align 4
  %npins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #7
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pins, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npins) #7
  %1 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %npins, align 4, !annotation !94
  %call = call i32 @pinctrl_generic_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr noundef nonnull %pins, ptr noundef nonnull %npins) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.015, 1
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %i.015
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 @ingenic_pinconf_set(ptr noundef %pctldev, i32 noundef %9, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call1, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npins) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ingenic_set_bias(ptr noundef readonly %jzpc, i32 noundef %pin, i32 noundef %bias) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 4
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %cmp = icmp ugt i32 %3, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = zext i32 %bias to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %bias, label %ingenic_config_pin.exit155 [
    i32 1, label %ingenic_config_pin.exit
    i32 2, label %ingenic_config_pin.exit121
  ]

ingenic_config_pin.exit:                          ; preds = %if.then
  %rem.i = and i32 %pin, 31
  %div53.i = lshr i32 %pin, 5
  %map4.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 1
  %5 = ptrtoint ptr %map4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map4.i, align 4
  %reg_offset6.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %reg_offset6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_offset6.i, align 4
  %mul7.i = mul i32 %8, %div53.i
  %add21.i = add i32 %mul7.i, 152
  %shl22.i = shl nuw i32 1, %rem.i
  %call23.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %add21.i, i32 noundef %shl22.i) #7
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %version.i99 = getelementptr inbounds %struct.ingenic_chip_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %version.i99 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i100 = icmp eq i32 %12, 0
  %13 = ptrtoint ptr %map4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map4.i, align 4
  %reg_offset6.i102 = getelementptr inbounds %struct.ingenic_chip_info, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %reg_offset6.i102 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_offset6.i102, align 4
  %mul7.i103 = mul i32 %16, %div53.i
  br i1 %cmp.not.i100, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %ingenic_config_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i = add i32 %mul7.i103, 132
  %call.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %add3.i, i32 noundef %shl22.i) #7
  br label %if.end51

if.else.i:                                        ; preds = %ingenic_config_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i = add i32 %mul7.i103, 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %add8.i, i32 noundef %shl22.i, i32 noundef %shl22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end51

ingenic_config_pin.exit121:                       ; preds = %if.then
  %rem.i105 = and i32 %pin, 31
  %div53.i106 = lshr i32 %pin, 5
  %map4.i110 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 1
  %17 = ptrtoint ptr %map4.i110 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map4.i110, align 4
  %reg_offset6.i111 = getelementptr inbounds %struct.ingenic_chip_info, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %reg_offset6.i111 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_offset6.i111, align 4
  %mul7.i112 = mul i32 %20, %div53.i106
  %add21.i113 = add i32 %mul7.i112, 136
  %shl22.i114 = shl nuw i32 1, %rem.i105
  %call23.i115 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %add21.i113, i32 noundef %shl22.i114) #7
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %version.i125 = getelementptr inbounds %struct.ingenic_chip_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %version.i125 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %version.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i126 = icmp eq i32 %24, 0
  %25 = ptrtoint ptr %map4.i110 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map4.i110, align 4
  %reg_offset6.i128 = getelementptr inbounds %struct.ingenic_chip_info, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %reg_offset6.i128 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_offset6.i128, align 4
  %mul7.i129 = mul i32 %28, %div53.i106
  br i1 %cmp.not.i126, label %if.else.i137, label %if.then1.i133

if.then1.i133:                                    ; preds = %ingenic_config_pin.exit121
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i130 = add i32 %mul7.i129, 148
  %call.i132 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %add3.i130, i32 noundef %shl22.i114) #7
  br label %if.end51

if.else.i137:                                     ; preds = %ingenic_config_pin.exit121
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i134 = add i32 %mul7.i129, 144
  %call.i.i136 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %add8.i134, i32 noundef %shl22.i114, i32 noundef %shl22.i114, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end51

ingenic_config_pin.exit155:                       ; preds = %if.then
  %rem.i139 = and i32 %pin, 31
  %div53.i140 = lshr i32 %pin, 5
  %map4.i144 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 1
  %29 = ptrtoint ptr %map4.i144 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map4.i144, align 4
  %reg_offset6.i145 = getelementptr inbounds %struct.ingenic_chip_info, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %reg_offset6.i145 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_offset6.i145, align 4
  %mul7.i146 = mul i32 %32, %div53.i140
  %add21.i147 = add i32 %mul7.i146, 136
  %shl22.i148 = shl nuw i32 1, %rem.i139
  %call23.i149 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef %add21.i147, i32 noundef %shl22.i148) #7
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info, align 4
  %version.i159 = getelementptr inbounds %struct.ingenic_chip_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %version.i159 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %version.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not.i160 = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %map4.i144 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map4.i144, align 4
  %reg_offset6.i162 = getelementptr inbounds %struct.ingenic_chip_info, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %reg_offset6.i162 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_offset6.i162, align 4
  %mul7.i163 = mul i32 %40, %div53.i140
  br i1 %cmp.not.i160, label %if.else24.i171, label %if.then15.i167

if.then15.i167:                                   ; preds = %ingenic_config_pin.exit155
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i164 = add i32 %mul7.i163, 152
  %call23.i166 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %add21.i164, i32 noundef %shl22.i148) #7
  br label %if.end51

if.else24.i171:                                   ; preds = %ingenic_config_pin.exit155
  call void @__sanitizer_cov_trace_pc() #9
  %add29.i168 = add i32 %mul7.i163, 144
  %call.i54.i170 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %add29.i168, i32 noundef %shl22.i148, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end51

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %cmp5 = icmp eq i32 %3, 11
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %rem = and i32 %pin, 16
  %rem7 = shl i32 %pin, 1
  %mul = and i32 %rem7, 30
  %div95 = lshr i32 %pin, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8.not.not = icmp eq i32 %rem, 0
  %map = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 1
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 4
  %reg_offset = getelementptr inbounds %struct.ingenic_chip_info, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_offset, align 4
  %mul11 = mul i32 %44, %div95
  br i1 %cmp8.not.not, label %if.then9, label %if.else19

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %mul11, 280
  %shl = shl nuw i32 3, %mul
  %call = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %add, i32 noundef %shl) #7
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 4
  %47 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %info, align 4
  %reg_offset14 = getelementptr inbounds %struct.ingenic_chip_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %reg_offset14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_offset14, align 4
  %mul15 = mul i32 %50, %div95
  %add16 = add i32 %mul15, 276
  %shl17 = shl i32 %bias, %mul
  %call18 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef %add16, i32 noundef %shl17) #7
  br label %if.end51

if.else19:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %add24 = add i32 %mul11, 296
  %shl25 = shl nuw i32 3, %mul
  %call26 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %add24, i32 noundef %shl25) #7
  %51 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map, align 4
  %53 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %info, align 4
  %reg_offset29 = getelementptr inbounds %struct.ingenic_chip_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %reg_offset29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg_offset29, align 4
  %mul30 = mul i32 %56, %div95
  %add31 = add i32 %mul30, 292
  %shl32 = shl i32 %bias, %mul
  %call33 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef %add31, i32 noundef %shl32) #7
  br label %if.end51

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp37 = icmp ugt i32 %3, 5
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bias)
  %tobool.not = icmp eq i32 %bias, 0
  %rem.i173 = and i32 %pin, 31
  %div53.i174 = lshr i32 %pin, 5
  %map4.i178 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 1
  %57 = ptrtoint ptr %map4.i178 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map4.i178, align 4
  %reg_offset6.i179 = getelementptr inbounds %struct.ingenic_chip_info, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %reg_offset6.i179 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_offset6.i179, align 4
  %mul7.i180 = mul i32 %60, %div53.i174
  br i1 %tobool.not, label %if.then1.i184, label %if.then15.i192

if.then1.i184:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i181 = add i32 %mul7.i180, 116
  %shl.i182 = shl nuw i32 1, %rem.i173
  %call.i183 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef %add3.i181, i32 noundef %shl.i182) #7
  br label %if.end51

if.then15.i192:                                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i189 = add i32 %mul7.i180, 120
  %shl22.i190 = shl nuw i32 1, %rem.i173
  %call23.i191 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef %add21.i189, i32 noundef %shl22.i190) #7
  br label %if.end51

if.else39:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp42.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bias)
  %tobool47.not = icmp eq i32 %bias, 0
  %rem.i225 = and i32 %pin, 31
  %div53.i226 = lshr i32 %pin, 5
  %map4.i230 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %jzpc, i32 0, i32 1
  %61 = ptrtoint ptr %map4.i230 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map4.i230, align 4
  %reg_offset6.i231 = getelementptr inbounds %struct.ingenic_chip_info, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %reg_offset6.i231 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reg_offset6.i231, align 4
  %mul7.i232 = mul i32 %64, %div53.i226
  br i1 %cmp42.not, label %if.else46, label %if.then43

if.then43:                                        ; preds = %if.else39
  br i1 %tobool47.not, label %if.then1.i210, label %if.then15.i219

if.then1.i210:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i207 = add i32 %mul7.i232, 52
  %shl.i208 = shl nuw i32 1, %rem.i225
  %call.i209 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef %add3.i207, i32 noundef %shl.i208) #7
  br label %if.end51

if.then15.i219:                                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %add21.i216 = add i32 %mul7.i232, 56
  %shl22.i217 = shl nuw i32 1, %rem.i225
  %call23.i218 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef %add21.i216, i32 noundef %shl22.i217) #7
  br label %if.end51

if.else46:                                        ; preds = %if.else39
  %add29.i247 = add i32 %mul7.i232, 12
  %shl30.i248 = shl nuw i32 1, %rem.i225
  br i1 %tobool47.not, label %if.else24.i250, label %if.else.i241

if.else.i241:                                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i240 = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef %add29.i247, i32 noundef %shl30.i248, i32 noundef %shl30.i248, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end51

if.else24.i250:                                   ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  %call.i54.i249 = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef %add29.i247, i32 noundef %shl30.i248, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end51

if.end51:                                         ; preds = %if.else24.i250, %if.else.i241, %if.then15.i219, %if.then1.i210, %if.then15.i192, %if.then1.i184, %if.else19, %if.then9, %if.else24.i171, %if.then15.i167, %if.else.i137, %if.then1.i133, %if.else.i, %if.then1.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %info.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %version.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.i = icmp ugt i32 %5, 5
  br i1 %cmp.i, label %ingenic_gpio_set_bit.exit.i, label %if.else.i

ingenic_gpio_set_bit.exit.i:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %map16.i.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %map16.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map16.i.i, align 4
  %reg_base17.i.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %reg_base17.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_base17.i.i, align 4
  %conv18.i.i = select i1 %tobool.not.i, i32 72, i32 68
  %add19.i.i = add i32 %9, %conv18.i.i
  %conv20.i.i = and i32 %offset, 255
  %shl21.i.i = shl nuw i32 1, %conv20.i.i
  %call22.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add19.i.i, i32 noundef %shl21.i.i) #7
  br label %ingenic_gpio_set_value.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not.i = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool11.not.i = icmp eq i32 %value, 0
  %map.i48.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %map.i48.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i48.i, align 4
  %reg_base.i49.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %reg_base.i49.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_base.i49.i, align 4
  br i1 %cmp5.not.i, label %ingenic_gpio_set_bit.exit64.i, label %ingenic_gpio_set_bit.exit44.i

ingenic_gpio_set_bit.exit44.i:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv18.i38.i = select i1 %tobool11.not.i, i32 24, i32 20
  %add19.i39.i = add i32 %13, %conv18.i38.i
  %conv20.i40.i = and i32 %offset, 255
  %shl21.i41.i = shl nuw i32 1, %conv20.i40.i
  %call22.i42.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add19.i39.i, i32 noundef %shl21.i41.i) #7
  br label %ingenic_gpio_set_value.exit

ingenic_gpio_set_bit.exit64.i:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv2.i50.i = and i32 %offset, 255
  %shl.i51.i = shl nuw i32 1, %conv2.i50.i
  %spec.select.i52.i = select i1 %tobool11.not.i, i32 0, i32 %shl.i51.i
  %call.i.i53.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef %shl.i51.i, i32 noundef %spec.select.i52.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_gpio_set_value.exit

ingenic_gpio_set_value.exit:                      ; preds = %ingenic_gpio_set_bit.exit64.i, %ingenic_gpio_set_bit.exit44.i, %ingenic_gpio_set_bit.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_gpio_get(ptr noundef %gc, i32 noundef %offset) #5 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i.i, align 4, !annotation !94
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %map.i.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map.i.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_base.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val.i.i) #7
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %conv.i = and i32 %offset, 255
  %9 = lshr i32 %8, %conv.i
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_gpio_direction_input(ptr nocapture noundef readonly %gc, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ingenic_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value)
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_gpio_get_direction(ptr noundef %gc, i32 noundef %offset) #5 align 64 {
entry:
  %val.i70 = alloca i32, align 4
  %val.i58 = alloca i32, align 4
  %val.i46 = alloca i32, align 4
  %val.i34 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, %offset
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp = icmp ugt i32 %7, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rem.i = and i32 %add, 31
  %div3.i = lshr i32 %add, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !94
  %map.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i, align 4
  %reg_offset.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_offset.i, align 4
  %mul.i = mul i32 %12, %div3.i
  %add.i = add i32 %mul.i, 16
  %call.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %add.i, ptr noundef nonnull %val.i) #7
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %shl.i = shl nuw i32 1, %rem.i
  %and.i = and i32 %14, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i34) #7
  %15 = ptrtoint ptr %val.i34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val.i34, align 4, !annotation !94
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i, align 4
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %reg_offset.i39 = getelementptr inbounds %struct.ingenic_chip_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %reg_offset.i39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_offset.i39, align 4
  %mul.i40 = mul i32 %21, %div3.i
  %add.i41 = add i32 %mul.i40, 48
  %call.i42 = call i32 @regmap_read(ptr noundef %17, i32 noundef %add.i41, ptr noundef nonnull %val.i34) #7
  %22 = ptrtoint ptr %val.i34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i34) #7
  %24 = lshr i32 %23, %rem.i
  %25 = and i32 %24, 1
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  %rem.i47 = and i32 %add, 31
  %div3.i48 = lshr i32 %add, 5
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i46) #7
  %26 = ptrtoint ptr %val.i46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val.i46, align 4, !annotation !94
  %map.i49 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %map.i49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i49, align 4
  %reg_offset.i51 = getelementptr inbounds %struct.ingenic_chip_info, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %reg_offset.i51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_offset.i51, align 4
  %mul.i52 = mul i32 %30, %div3.i48
  %add.i53 = add i32 %mul.i52, 4
  %call.i54 = call i32 @regmap_read(ptr noundef %28, i32 noundef %add.i53, ptr noundef nonnull %val.i46) #7
  %31 = ptrtoint ptr %val.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i46, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i46) #7
  %33 = xor i32 %32, -1
  %34 = lshr i32 %33, %rem.i47
  %35 = and i32 %34, 1
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i58) #7
  %36 = ptrtoint ptr %val.i58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i58, align 4, !annotation !94
  %map.i61 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %map.i61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i61, align 4
  %reg_offset.i63 = getelementptr inbounds %struct.ingenic_chip_info, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %reg_offset.i63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_offset.i63, align 4
  %mul.i64 = mul i32 %40, %div3.i48
  %add.i65 = add i32 %mul.i64, 80
  %call.i66 = call i32 @regmap_read(ptr noundef %38, i32 noundef %add.i65, ptr noundef nonnull %val.i58) #7
  %41 = ptrtoint ptr %val.i58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i58, align 4
  %shl.i67 = shl nuw i32 1, %rem.i47
  %and.i68 = and i32 %42, %shl.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.i69.not = icmp eq i32 %and.i68, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i58) #7
  br i1 %tobool.i69.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i70) #7
  %43 = ptrtoint ptr %val.i70 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %val.i70, align 4, !annotation !94
  %44 = ptrtoint ptr %map.i61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i61, align 4
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info, align 4
  %reg_offset.i75 = getelementptr inbounds %struct.ingenic_chip_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %reg_offset.i75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg_offset.i75, align 4
  %mul.i76 = mul i32 %49, %div3.i48
  %add.i77 = add i32 %mul.i76, 96
  %call.i78 = call i32 @regmap_read(ptr noundef %45, i32 noundef %add.i77, ptr noundef nonnull %val.i70) #7
  %50 = ptrtoint ptr %val.i70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i70, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i70) #7
  %52 = xor i32 %51, -1
  %53 = lshr i32 %52, %rem.i47
  %54 = and i32 %53, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end13.cleanup_crit_edge, %if.then8, %lor.lhs.false, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ %35, %if.then8 ], [ 1, %if.end13.cleanup_crit_edge ], [ %54, %if.end16 ], [ %25, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_gpio_irq_enable(ptr nocapture noundef readonly %irqd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1, align 4
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp = icmp ugt i32 %9, 5
  br i1 %cmp, label %ingenic_gpio_set_bit.exit, label %if.else

ingenic_gpio_set_bit.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %map16.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %map16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map16.i, align 4
  %reg_base17.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %12 = ptrtoint ptr %reg_base17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_base17.i, align 4
  %add19.i = add i32 %13, 20
  %conv20.i = and i32 %3, 255
  %shl21.i = shl nuw i32 1, %conv20.i
  %call22.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add19.i, i32 noundef %shl21.i) #7
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not = icmp eq i32 %9, 0
  %map.i41 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %map.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i41, align 4
  %reg_base.i42 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %16 = ptrtoint ptr %reg_base.i42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_base.i42, align 4
  br i1 %cmp5.not, label %ingenic_gpio_set_bit.exit55, label %ingenic_gpio_set_bit.exit37

ingenic_gpio_set_bit.exit37:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add19.i32 = add i32 %17, 84
  %conv20.i33 = and i32 %3, 255
  %shl21.i34 = shl nuw i32 1, %conv20.i33
  %call22.i35 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %add19.i32, i32 noundef %shl21.i34) #7
  br label %if.end11

ingenic_gpio_set_bit.exit55:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.i43 = add i32 %17, 32
  %conv2.i44 = and i32 %3, 255
  %shl.i45 = shl nuw i32 1, %conv2.i44
  %call.i.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add.i43, i32 noundef %shl.i45, i32 noundef %shl.i45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end11

if.end11:                                         ; preds = %ingenic_gpio_set_bit.exit55, %ingenic_gpio_set_bit.exit37, %ingenic_gpio_set_bit.exit
  %18 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip_data.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %19) #7
  %20 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwirq, align 4
  %22 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call1.i, align 4
  %info.i56 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %info.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info.i56, align 4
  %version.i57 = getelementptr inbounds %struct.ingenic_chip_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %version.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %version.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 0
  %map.i10.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %map.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map.i10.i, align 4
  %reg_base.i11.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1.i, i32 0, i32 4
  %30 = ptrtoint ptr %reg_base.i11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_base.i11.i, align 4
  br i1 %cmp.not.i, label %ingenic_gpio_set_bit.exit24.i, label %ingenic_gpio_set_bit.exit.i

ingenic_gpio_set_bit.exit.i:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %add19.i.i = add i32 %31, 40
  %conv20.i.i = and i32 %21, 255
  %shl21.i.i = shl nuw i32 1, %conv20.i.i
  %call22.i.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add19.i.i, i32 noundef %shl21.i.i) #7
  br label %ingenic_gpio_irq_unmask.exit

ingenic_gpio_set_bit.exit24.i:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %add.i12.i = add i32 %31, 36
  %conv2.i13.i = and i32 %21, 255
  %shl.i14.i = shl nuw i32 1, %conv2.i13.i
  %call.i.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %add.i12.i, i32 noundef %shl.i14.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_gpio_irq_unmask.exit

ingenic_gpio_irq_unmask.exit:                     ; preds = %ingenic_gpio_set_bit.exit24.i, %ingenic_gpio_set_bit.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_gpio_irq_disable(ptr nocapture noundef readonly %irqd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %5) #7
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %8 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call1.i, align 4
  %info.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info.i, align 4
  %version.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  %map.i10.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %map.i10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i10.i, align 4
  %reg_base.i11.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1.i, i32 0, i32 4
  %16 = ptrtoint ptr %reg_base.i11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_base.i11.i, align 4
  %add.i12.i = add i32 %17, 36
  %conv2.i13.i = and i32 %7, 255
  %shl.i14.i = shl nuw i32 1, %conv2.i13.i
  br i1 %cmp.not.i, label %ingenic_gpio_set_bit.exit24.i, label %ingenic_gpio_set_bit.exit.i

ingenic_gpio_set_bit.exit.i:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call22.i.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %add.i12.i, i32 noundef %shl.i14.i) #7
  br label %ingenic_gpio_irq_mask.exit

ingenic_gpio_set_bit.exit24.i:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add.i12.i, i32 noundef %shl.i14.i, i32 noundef %shl.i14.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %ingenic_gpio_irq_mask.exit

ingenic_gpio_irq_mask.exit:                       ; preds = %ingenic_gpio_set_bit.exit24.i, %ingenic_gpio_set_bit.exit.i
  %18 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call1, align 4
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp = icmp ugt i32 %23, 5
  br i1 %cmp, label %ingenic_gpio_set_bit.exit, label %if.else

ingenic_gpio_set_bit.exit:                        ; preds = %ingenic_gpio_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %map16.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %map16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map16.i, align 4
  %reg_base17.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %26 = ptrtoint ptr %reg_base17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_base17.i, align 4
  %add19.i = add i32 %27, 24
  %conv20.i = and i32 %3, 255
  %shl21.i = shl nuw i32 1, %conv20.i
  %call22.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %add19.i, i32 noundef %shl21.i) #7
  br label %if.end11

if.else:                                          ; preds = %ingenic_gpio_irq_mask.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp5.not = icmp eq i32 %23, 0
  %map.i43 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %map.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map.i43, align 4
  %reg_base.i44 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %30 = ptrtoint ptr %reg_base.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_base.i44, align 4
  br i1 %cmp5.not, label %ingenic_gpio_set_bit.exit57, label %ingenic_gpio_set_bit.exit39

ingenic_gpio_set_bit.exit39:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add19.i34 = add i32 %31, 88
  %conv20.i35 = and i32 %3, 255
  %shl21.i36 = shl nuw i32 1, %conv20.i35
  %call22.i37 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add19.i34, i32 noundef %shl21.i36) #7
  br label %if.end11

ingenic_gpio_set_bit.exit57:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.i45 = add i32 %31, 32
  %conv2.i46 = and i32 %3, 255
  %shl.i47 = shl nuw i32 1, %conv2.i46
  %call.i.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %add.i45, i32 noundef %shl.i47, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end11

if.end11:                                         ; preds = %ingenic_gpio_set_bit.exit57, %ingenic_gpio_set_bit.exit39, %ingenic_gpio_set_bit.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_gpio_irq_unmask(ptr nocapture noundef readonly %irqd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1, align 4
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  %map.i10 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %map.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i10, align 4
  %reg_base.i11 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %12 = ptrtoint ptr %reg_base.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_base.i11, align 4
  br i1 %cmp.not, label %ingenic_gpio_set_bit.exit24, label %ingenic_gpio_set_bit.exit

ingenic_gpio_set_bit.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add19.i = add i32 %13, 40
  %conv20.i = and i32 %3, 255
  %shl21.i = shl nuw i32 1, %conv20.i
  %call22.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add19.i, i32 noundef %shl21.i) #7
  br label %if.end

ingenic_gpio_set_bit.exit24:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.i12 = add i32 %13, 36
  %conv2.i13 = and i32 %3, 255
  %shl.i14 = shl nuw i32 1, %conv2.i13
  %call.i.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add.i12, i32 noundef %shl.i14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %ingenic_gpio_set_bit.exit24, %ingenic_gpio_set_bit.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_gpio_irq_mask(ptr nocapture noundef readonly %irqd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1, align 4
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  %map.i10 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %map.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i10, align 4
  %reg_base.i11 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %12 = ptrtoint ptr %reg_base.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_base.i11, align 4
  %add.i12 = add i32 %13, 36
  %conv2.i13 = and i32 %3, 255
  %shl.i14 = shl nuw i32 1, %conv2.i13
  br i1 %cmp.not, label %ingenic_gpio_set_bit.exit24, label %ingenic_gpio_set_bit.exit

ingenic_gpio_set_bit.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call22.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add.i12, i32 noundef %shl.i14) #7
  br label %if.end

ingenic_gpio_set_bit.exit24:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add.i12, i32 noundef %shl.i14, i32 noundef %shl.i14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %ingenic_gpio_set_bit.exit24, %ingenic_gpio_set_bit.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_gpio_irq_ack(ptr nocapture noundef readonly %irqd) #5 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call1, align 4
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %13)
  %cmp3 = icmp ult i32 %13, 12
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %3 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i.i, align 4, !annotation !94
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call1, align 4
  %map.i.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %19 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_base.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %val.i.i) #7
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %conv.i = and i32 %3, 255
  %shl.i = shl nuw i32 1, %conv.i
  %and.i43 = and i32 %22, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.i.not = icmp eq i32 %and.i43, 0
  %. = select i1 %tobool.i.not, i32 4, i32 8
  call fastcc void @irq_set_type(ptr noundef %call1, i8 noundef zeroext %conv, i32 noundef %.)
  br label %if.end8

if.end8:                                          ; preds = %if.then, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %23 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call1, align 4
  %info10 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %info10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info10, align 4
  %version11 = getelementptr inbounds %struct.ingenic_chip_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %version11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp12 = icmp ugt i32 %28, 5
  br i1 %cmp12, label %ingenic_gpio_set_bit.exit, label %if.else16

ingenic_gpio_set_bit.exit:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %map16.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %map16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map16.i, align 4
  %reg_base17.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %31 = ptrtoint ptr %reg_base17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_base17.i, align 4
  %add19.i = add i32 %32, 88
  %conv20.i = and i32 %3, 255
  %shl21.i = shl nuw i32 1, %conv20.i
  %call22.i = call i32 @regmap_write(ptr noundef %30, i32 noundef %add19.i, i32 noundef %shl21.i) #7
  br label %if.end27

if.else16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp20.not = icmp eq i32 %28, 0
  %map.i67 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %24, i32 0, i32 1
  %33 = ptrtoint ptr %map.i67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i67, align 4
  %reg_base.i68 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %35 = ptrtoint ptr %reg_base.i68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_base.i68, align 4
  br i1 %cmp20.not, label %ingenic_gpio_set_bit.exit81, label %ingenic_gpio_set_bit.exit63

ingenic_gpio_set_bit.exit63:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  %add19.i58 = add i32 %36, 20
  %conv20.i59 = and i32 %3, 255
  %shl21.i60 = shl nuw i32 1, %conv20.i59
  %call22.i61 = call i32 @regmap_write(ptr noundef %34, i32 noundef %add19.i58, i32 noundef %shl21.i60) #7
  br label %if.end27

ingenic_gpio_set_bit.exit81:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  %add.i69 = add i32 %36, 40
  %conv2.i70 = and i32 %3, 255
  %shl.i71 = shl nuw i32 1, %conv2.i70
  %call.i.i72 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %add.i69, i32 noundef %shl.i71, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end27

if.end27:                                         ; preds = %ingenic_gpio_set_bit.exit81, %ingenic_gpio_set_bit.exit63, %ingenic_gpio_set_bit.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_gpio_irq_set_type(ptr nocapture noundef readonly %irqd, i32 noundef %type) #5 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %type, label %sw.default [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge22
    i32 2, label %entry.sw.epilog_crit_edge23
    i32 4, label %entry.sw.epilog.thread_crit_edge
    i32 8, label %entry.sw.epilog.thread_crit_edge24
  ]

entry.sw.epilog.thread_crit_edge24:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

entry.sw.epilog_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %entry.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge24
  %common.i.i17 = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 3
  %3 = ptrtoint ptr %common.i.i17 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common.i.i17, align 4
  %handle_irq.i18 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %handle_irq.i18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @handle_level_irq, ptr %handle_irq.i18, align 4
  br label %if.end

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge22, %entry.sw.epilog_crit_edge23
  %handle_bad_irq.sink = phi ptr [ @handle_bad_irq, %sw.default ], [ @handle_edge_irq, %entry.sw.epilog_crit_edge ], [ @handle_edge_irq, %entry.sw.epilog_crit_edge22 ], [ @handle_edge_irq, %entry.sw.epilog_crit_edge23 ]
  %common.i.i19 = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 3
  %6 = ptrtoint ptr %common.i.i19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i.i19, align 4
  %handle_irq.i20 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %handle_irq.i20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %handle_bad_irq.sink, ptr %handle_irq.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp = icmp eq i32 %type, 3
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call1, align 4
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %cmp3 = icmp ult i32 %14, 12
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %15 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hwirq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i.i, align 4, !annotation !94
  %18 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call1, align 4
  %map.i.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %22 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_base.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %val.i.i) #7
  %24 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %conv.i = and i32 %16, 255
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %25, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.i.not, i32 4, i32 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.epilog.if.end_crit_edge, %sw.epilog.thread
  %type.addr.0 = phi i32 [ %cond, %if.then ], [ 3, %land.lhs.true.if.end_crit_edge ], [ %type, %sw.epilog.if.end_crit_edge ], [ %type, %sw.epilog.thread ]
  %hwirq6 = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %26 = ptrtoint ptr %hwirq6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hwirq6, align 4
  %conv7 = trunc i32 %27 to i8
  call fastcc void @irq_set_type(ptr noundef %call1, i8 noundef zeroext %conv7, i32 noundef %type.addr.0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_gpio_irq_set_wake(ptr nocapture noundef readonly %irqd, i32 noundef %on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %irq = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call2 = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef %on) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_gpio_irq_request(ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %add.i = add i32 %5, %3
  %call.i = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %call3 = tail call i32 @gpiochip_reqres_irq(ptr noundef %1, i32 noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_gpio_irq_release(ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %1, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_gpio_irq_handler(ptr noundef %desc) #5 align 64 {
entry:
  %val.i33 = alloca i32, align 4
  %val.i28 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %flag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag) #7
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i.chained_irq_enter.exit.sink.split_crit_edge

if.end.i.chained_irq_enter.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit.sink.split

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  tail call void %9(ptr noundef %irq_data) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.else.i.chained_irq_enter.exit.sink.split_crit_edge

if.else.i.chained_irq_enter.exit.sink.split_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit.sink.split

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit.sink.split:                ; preds = %if.else.i.chained_irq_enter.exit.sink.split_crit_edge, %if.end.i.chained_irq_enter.exit.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.end.i.chained_irq_enter.exit.sink.split_crit_edge ], [ %11, %if.else.i.chained_irq_enter.exit.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %irq_data) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %chained_irq_enter.exit.sink.split, %if.else.i.chained_irq_enter.exit_crit_edge, %entry.chained_irq_enter.exit_crit_edge
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call1, align 4
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp = icmp ugt i32 %17, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i, align 4, !annotation !94
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call1, align 4
  %map.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i, align 4
  %reg_base.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_base.i, align 4
  %add.i = add i32 %24, 80
  %call.i = call i32 @regmap_read(ptr noundef %22, i32 noundef %add.i, ptr noundef nonnull %val.i) #7
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %27 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %flag, align 4
  br label %if.end12

if.else:                                          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.not = icmp eq i32 %17, 0
  br i1 %cmp7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i28) #7
  %28 = ptrtoint ptr %val.i28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i28, align 4, !annotation !94
  %29 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call1, align 4
  %map.i29 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %map.i29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i29, align 4
  %reg_base.i30 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %33 = ptrtoint ptr %reg_base.i30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_base.i30, align 4
  %add.i31 = add i32 %34, 128
  %call.i32 = call i32 @regmap_read(ptr noundef %32, i32 noundef %add.i31, ptr noundef nonnull %val.i28) #7
  %35 = ptrtoint ptr %val.i28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i28) #7
  %37 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %flag, align 4
  br label %if.end12

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i33) #7
  %38 = ptrtoint ptr %val.i33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val.i33, align 4, !annotation !94
  %39 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call1, align 4
  %map.i34 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %map.i34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map.i34, align 4
  %reg_base.i35 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %call1, i32 0, i32 4
  %43 = ptrtoint ptr %reg_base.i35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_base.i35, align 4
  %add.i36 = add i32 %44, 40
  %call.i37 = call i32 @regmap_read(ptr noundef %42, i32 noundef %add.i36, ptr noundef nonnull %val.i33) #7
  %45 = ptrtoint ptr %val.i33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i33, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i33) #7
  %47 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %flag, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8, %if.then
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %flag, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call13)
  %cmp1442 = icmp ult i32 %call13, 32
  br i1 %cmp1442, label %for.body.lr.ph, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ %call13, %for.body.lr.ph ], [ %call16, %for.body.for.body_crit_edge ]
  %48 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %domain, align 4
  %call15 = call i32 @generic_handle_domain_irq(ptr noundef %49, i32 noundef %i.043) #7
  %add = add nuw nsw i32 %i.043, 1
  %call16 = call i32 @_find_next_bit_be(ptr noundef nonnull %flag, i32 noundef 32, i32 noundef %add) #7
  %cmp14 = icmp ult i32 %call16, 32
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end12.for.end_crit_edge
  %50 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i39 = icmp eq ptr %51, null
  br i1 %tobool.not.i39, label %if.else.i40, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i40:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %52 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i40, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %53, %if.else.i40 ], [ %51, %for.end.chained_irq_exit.exit_crit_edge ]
  call void %.sink.i(ptr noundef %irq_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_set_type(ptr noundef readonly %jzgc, i8 noundef zeroext %offset, i32 noundef %type) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast = trunc i32 %switch.tableidx to i4
  %switch.downshift = lshr i4 -7, %switch.cast
  %1 = and i4 %switch.downshift, 1
  %2 = sext i4 %1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.masked = icmp ne i4 %1, 0
  %switch.cast207 = trunc i32 %switch.tableidx to i4
  %switch.downshift209 = lshr i4 3, %switch.cast207
  %3 = and i4 %switch.downshift209, 1
  %4 = sext i4 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.masked210 = icmp ne i4 %3, 0
  %switch.cast211 = trunc i32 %switch.tableidx to i4
  %5 = sext i4 %switch.cast211 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.masked214 = icmp eq i4 %switch.cast211, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %val1.0.off0 = phi i1 [ %switch.masked, %switch.lookup ], [ false, %entry.sw.epilog_crit_edge ]
  %val2.0.off0 = phi i1 [ %switch.masked210, %switch.lookup ], [ false, %entry.sw.epilog_crit_edge ]
  %val3.0.off0 = phi i1 [ %switch.masked214, %switch.lookup ], [ false, %entry.sw.epilog_crit_edge ]
  %6 = ptrtoint ptr %jzgc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jzgc, align 4
  %info = getelementptr inbounds %struct.ingenic_pinctrl, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %version = getelementptr inbounds %struct.ingenic_chip_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp = icmp ugt i32 %11, 5
  br i1 %cmp, label %if.end14, label %if.else

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.not = icmp eq i32 %11, 0
  br i1 %cmp8.not, label %ingenic_gpio_set_bit.exit, label %if.else.ingenic_gpio_set_bit.exit173_crit_edge

if.else.ingenic_gpio_set_bit.exit173_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_gpio_set_bit.exit173

ingenic_gpio_set_bit.exit:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %map.i = getelementptr inbounds %struct.ingenic_pinctrl, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 4
  %reg_base.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %jzgc, i32 0, i32 4
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_base.i, align 4
  %add.i = add i32 %15, 4
  %conv2.i = zext i8 %offset to i32
  %shl.i = shl nuw i32 1, %conv2.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %shl = select i1 %val2.0.off0, i32 2, i32 0
  %conv12 = zext i1 %val1.0.off0 to i32
  %or = or i32 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %offset)
  %cmp.i75 = icmp ult i8 %offset, 16
  %..i = select i1 %cmp.i75, i32 24, i32 28
  %16 = shl i8 %offset, 1
  %17 = and i8 %16, 30
  %mul.i = zext i8 %17 to i32
  %shl.i76 = shl nuw i32 3, %mul.i
  %18 = ptrtoint ptr %jzgc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %jzgc, align 4
  %map.i77 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %map.i77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i77, align 4
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_base.i, align 4
  %add.i79 = add i32 %23, %..i
  %shl9.i = shl i32 %or, %mul.i
  %call.i.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %add.i79, i32 noundef %shl.i76, i32 noundef %shl9.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.end14:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %11)
  %cmp18 = icmp ugt i32 %11, 11
  br i1 %cmp18, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.end14
  %map.i81 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %map.i81 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map.i81, align 4
  %reg_offset.i = getelementptr inbounds %struct.ingenic_chip_info, ptr %9, i32 0, i32 1
  %26 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_offset.i, align 4
  %mul.i83 = mul i32 %27, 7
  %conv6.i = select i1 %val1.0.off0, i32 68, i32 72
  %add7.i = add i32 %mul.i83, %conv6.i
  %conv8.i = zext i8 %offset to i32
  %shl.i84 = shl nuw i32 1, %conv8.i
  %call.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %add7.i, i32 noundef %shl.i84) #7
  %28 = ptrtoint ptr %jzgc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %jzgc, align 4
  %map.i87 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %map.i87 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map.i87, align 4
  %info.i88 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %29, i32 0, i32 4
  %32 = ptrtoint ptr %info.i88 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info.i88, align 4
  %reg_offset.i89 = getelementptr inbounds %struct.ingenic_chip_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %reg_offset.i89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_offset.i89, align 4
  %mul.i90 = mul i32 %35, 7
  %conv6.i91 = select i1 %val2.0.off0, i32 52, i32 56
  %add7.i92 = add i32 %mul.i90, %conv6.i91
  %call.i95 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %add7.i92, i32 noundef %shl.i84) #7
  %36 = ptrtoint ptr %jzgc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %jzgc, align 4
  %map.i96 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %map.i96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map.i96, align 4
  %info.i97 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %info.i97 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info.i97, align 4
  %reg_offset.i98 = getelementptr inbounds %struct.ingenic_chip_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %reg_offset.i98 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_offset.i98, align 4
  %mul.i99 = mul i32 %43, 7
  %add.i100 = add i32 %mul.i99, 240
  %base.i = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %jzgc, i32 0, i32 1, i32 19
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base.i, align 4
  %div.i = sdiv i32 %45, 32
  %call.i101 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef %add.i100, i32 noundef %div.i) #7
  %46 = ptrtoint ptr %jzgc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %jzgc, align 4
  %info.i102 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %info.i102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info.i102, align 4
  %version.i103 = getelementptr inbounds %struct.ingenic_chip_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %version.i103 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %version.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i104 = icmp eq i32 %51, 0
  %map.i105 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %map.i105 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map.i105, align 4
  %reg_base.i106 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %jzgc, i32 0, i32 4
  %54 = ptrtoint ptr %reg_base.i106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg_base.i106, align 4
  br i1 %cmp.i104, label %if.then.i111, label %if.end.i120

if.then.i111:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %add.i107 = add i32 %55, 112
  %spec.select.i = select i1 %val3.0.off0, i32 %shl.i84, i32 0
  %call.i.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %add.i107, i32 noundef %shl.i84, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.end.i120:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %conv18.i = select i1 %val3.0.off0, i32 116, i32 120
  %add19.i116 = add i32 %55, %conv18.i
  %call22.i119 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef %add19.i116, i32 noundef %shl.i84) #7
  br label %cleanup

if.else24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp28 = icmp ugt i32 %11, 8
  br i1 %cmp28, label %if.then30, label %if.else24.ingenic_gpio_set_bit.exit173_crit_edge

if.else24.ingenic_gpio_set_bit.exit173_crit_edge: ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_gpio_set_bit.exit173

if.then30:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %map.i124 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %7, i32 0, i32 1
  %56 = ptrtoint ptr %map.i124 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map.i124, align 4
  %reg_offset.i126 = getelementptr inbounds %struct.ingenic_chip_info, ptr %9, i32 0, i32 1
  %58 = ptrtoint ptr %reg_offset.i126 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_offset.i126, align 4
  %mul.i127 = mul i32 %59, 7
  %conv6.i128 = select i1 %val1.0.off0, i32 68, i32 72
  %add7.i129 = add i32 %mul.i127, %conv6.i128
  %conv8.i130 = zext i8 %offset to i32
  %shl.i131 = shl nuw i32 1, %conv8.i130
  %call.i132 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef %add7.i129, i32 noundef %shl.i131) #7
  %60 = ptrtoint ptr %jzgc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %jzgc, align 4
  %map.i135 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %map.i135 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %map.i135, align 4
  %info.i136 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %61, i32 0, i32 4
  %64 = ptrtoint ptr %info.i136 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %info.i136, align 4
  %reg_offset.i137 = getelementptr inbounds %struct.ingenic_chip_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %reg_offset.i137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reg_offset.i137, align 4
  %mul.i138 = mul i32 %67, 7
  %conv6.i139 = select i1 %val2.0.off0, i32 52, i32 56
  %add7.i140 = add i32 %mul.i138, %conv6.i139
  %call.i143 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef %add7.i140, i32 noundef %shl.i131) #7
  %68 = ptrtoint ptr %jzgc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %jzgc, align 4
  %map.i144 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %map.i144 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map.i144, align 4
  %info.i145 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %69, i32 0, i32 4
  %72 = ptrtoint ptr %info.i145 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %info.i145, align 4
  %reg_offset.i146 = getelementptr inbounds %struct.ingenic_chip_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %reg_offset.i146 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reg_offset.i146, align 4
  %mul.i147 = mul i32 %75, 7
  %add.i148 = add i32 %mul.i147, 240
  %base.i149 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %jzgc, i32 0, i32 1, i32 19
  %76 = ptrtoint ptr %base.i149 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %base.i149, align 4
  %div.i150 = sdiv i32 %77, 32
  %call.i151 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef %add.i148, i32 noundef %div.i150) #7
  br label %cleanup

ingenic_gpio_set_bit.exit173:                     ; preds = %if.else24.ingenic_gpio_set_bit.exit173_crit_edge, %if.else.ingenic_gpio_set_bit.exit173_crit_edge
  %reg1.0200206 = phi i8 [ 48, %if.else24.ingenic_gpio_set_bit.exit173_crit_edge ], [ 112, %if.else.ingenic_gpio_set_bit.exit173_crit_edge ]
  %reg2.0201205 = phi i32 [ 64, %if.else24.ingenic_gpio_set_bit.exit173_crit_edge ], [ 96, %if.else.ingenic_gpio_set_bit.exit173_crit_edge ]
  %reg.addr.0.v.i163 = select i1 %val1.0.off0, i32 4, i32 8
  %reg.addr.0.i164 = or i32 %reg2.0201205, %reg.addr.0.v.i163
  %map16.i165 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %7, i32 0, i32 1
  %78 = ptrtoint ptr %map16.i165 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %map16.i165, align 4
  %reg_base17.i166 = getelementptr inbounds %struct.ingenic_gpio_chip, ptr %jzgc, i32 0, i32 4
  %80 = ptrtoint ptr %reg_base17.i166 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %reg_base17.i166, align 4
  %add19.i168 = add i32 %reg.addr.0.i164, %81
  %conv20.i169 = zext i8 %offset to i32
  %shl21.i170 = shl nuw i32 1, %conv20.i169
  %call22.i171 = tail call i32 @regmap_write(ptr noundef %79, i32 noundef %add19.i168, i32 noundef %shl21.i170) #7
  %82 = ptrtoint ptr %jzgc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %jzgc, align 4
  %info.i174 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %info.i174 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %info.i174, align 4
  %version.i175 = getelementptr inbounds %struct.ingenic_chip_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %version.i175 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %version.i175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i176 = icmp eq i32 %87, 0
  br i1 %cmp.i176, label %if.then.i185, label %if.end.i195

if.then.i185:                                     ; preds = %ingenic_gpio_set_bit.exit173
  call void @__sanitizer_cov_trace_pc() #9
  %map.i177 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %83, i32 0, i32 1
  %88 = ptrtoint ptr %map.i177 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %map.i177, align 4
  %90 = ptrtoint ptr %reg_base17.i166 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %reg_base17.i166, align 4
  %conv.i179 = zext i8 %reg1.0200206 to i32
  %add.i180 = add i32 %91, %conv.i179
  %spec.select.i183 = select i1 %val2.0.off0, i32 %shl21.i170, i32 0
  %call.i.i184 = tail call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef %add.i180, i32 noundef %shl21.i170, i32 noundef %spec.select.i183, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.end.i195:                                      ; preds = %ingenic_gpio_set_bit.exit173
  call void @__sanitizer_cov_trace_pc() #9
  %reg.addr.0.v.i186 = select i1 %val2.0.off0, i8 4, i8 8
  %reg.addr.0.i187 = or i8 %reg1.0200206, %reg.addr.0.v.i186
  %map16.i188 = getelementptr inbounds %struct.ingenic_pinctrl, ptr %83, i32 0, i32 1
  %92 = ptrtoint ptr %map16.i188 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %map16.i188, align 4
  %94 = ptrtoint ptr %reg_base17.i166 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %reg_base17.i166, align 4
  %conv18.i190 = zext i8 %reg.addr.0.i187 to i32
  %add19.i191 = add i32 %95, %conv18.i190
  %call22.i194 = tail call i32 @regmap_write(ptr noundef %93, i32 noundef %add19.i191, i32 noundef %shl21.i170) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i195, %if.then.i185, %if.then30, %if.end.i120, %if.then.i111, %ingenic_gpio_set_bit.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !58, !60, !62, !63, !64, !66, !67, !69, !70, !72, !74, !76, !77, !78, !79, !81, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_pinctrl_ingenic__233_4337_ingenic_pinctrl_drv_register4, !1, !"__initcall__kmod_pinctrl_ingenic__233_4337_ingenic_pinctrl_drv_register4", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4337, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4327, i32 11}
!4 = !{ptr @ingenic_pinctrl_driver, !5, !"ingenic_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4325, i32 31}
!6 = !{ptr @ingenic_pinctrl_of_matches, !7, !"ingenic_pinctrl_of_matches", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4253, i32 34}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4158, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ingenic_pinctrl_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @ingenic_pinctrl_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @ingenic_pinctrl_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4173, i32 14}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4175, i32 3}
!21 = !{ptr @ingenic_pinctrl_probe._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ingenic_pinctrl_probe._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4200, i32 47}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4207, i32 3}
!27 = !{ptr @ingenic_pinctrl_probe._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ingenic_pinctrl_probe._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4217, i32 4}
!31 = !{ptr @ingenic_pinctrl_probe._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ingenic_pinctrl_probe._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4230, i32 4}
!35 = !{ptr @ingenic_pinctrl_probe._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ingenic_pinctrl_probe._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @ingenic_pinctrl_regmap_config, !38, !"ingenic_pinctrl_regmap_config", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4040, i32 35}
!39 = !{ptr @ingenic_pctlops, !40, !"ingenic_pctlops", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 3597, i32 33}
!41 = !{ptr @ingenic_pmxops, !42, !"ingenic_pmxops", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 3724, i32 32}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 3674, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ingenic_pinmux_set_mux.__UNIQUE_ID_ddebug228, !44, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 3630, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ingenic_pinmux_set_pin_fn.__UNIQUE_ID_ddebug227, !49, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 3699, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ingenic_pinmux_gpio_set_direction.__UNIQUE_ID_ddebug229, !53, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!56 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ingenic_confops, !59, !"ingenic_confops", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4032, i32 33}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 3933, i32 4}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ingenic_pinconf_set.__UNIQUE_ID_ddebug230, !61, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 3941, i32 4}
!66 = !{ptr @ingenic_pinconf_set.__UNIQUE_ID_ddebug231, !65, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 3949, i32 4}
!69 = !{ptr @ingenic_pinconf_set.__UNIQUE_ID_ddebug232, !68, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!70 = !{ptr @ingenic_gpio_of_matches, !71, !"ingenic_gpio_of_matches", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4046, i32 34}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4072, i32 35}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4074, i32 3}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ingenic_gpio_probe._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ingenic_gpio_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4085, i32 51}
!81 = !{ptr @ingenic_gpio_probe.lock_key, !82, !"lock_key", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/pinctrl-ingenic.c", i32 4137, i32 8}
!83 = !{ptr @ingenic_gpio_probe.request_key, !82, !"request_key", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{!"auto-init"}
!95 = !{i64 2148482291, i64 2148482296, i64 2148482309, i64 2148482353, i64 2148482387, i64 2148482408}
