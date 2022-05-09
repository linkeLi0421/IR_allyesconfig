; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c"
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
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.iproc_gpio = type { ptr, ptr, ptr, i32, %struct.raw_spinlock, %struct.irq_chip, %struct.gpio_chip, i32, i8, ptr, i32, ptr, %struct.pinctrl_desc }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pinctrl_iproc_gpio__233_923_iproc_gpio_init3s = internal global ptr @iproc_gpio_init, section ".initcall3s.init", align 4
@iproc_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iproc_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iproc_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iproc-gpio\00", [21 x i8] zeroinitializer }, align 32
@iproc_gpio_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-ccm-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-asiu-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-crmu-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-nsp-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-stingray-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm,iproc-nsp-gpio\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcm,iproc-stingray-gpio\00", [39 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 808, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to map I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iproc_gpio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pinctrl/bcm/pinctrl-iproc-gpio.c\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry_ptr = internal global ptr @iproc_gpio_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcm,cygnus-ccm-gpio\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 827, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missing ngpios DT property\0A\00", [36 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry_ptr.12 = internal global ptr @iproc_gpio_probe._entry.10, section ".printk_index", align 4
@iproc_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@iproc_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@iproc_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@iproc_gpio_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 881, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to add GPIO chip\0A\00", [39 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry_ptr.17 = internal global ptr @iproc_gpio_probe._entry.15, section ".printk_index", align 4
@iproc_gpio_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 888, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to register pinconf\0A\00", [36 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry_ptr.20 = internal global ptr @iproc_gpio_probe._entry.18, section ".printk_index", align 4
@iproc_gpio_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 897, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to create pinconf disable map\0A\00", [58 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry_ptr.23 = internal global ptr @iproc_gpio_probe._entry.21, section ".printk_index", align 4
@iproc_gpio_direction_input.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 84, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pinctrl_iproc_gpio\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iproc_gpio_direction_input\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio:%u set input\0A\00", [45 x i8] zeroinitializer }, align 32
@iproc_gpio_direction_output.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iproc_gpio_direction_output\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gpio:%u set output, value:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@iproc_gpio_set.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 0, i8 95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iproc_gpio_set\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpio:%u set, value:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@iproc_gpio_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 278, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid GPIO IRQ type 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iproc_gpio_irq_set_type\00", [40 x i8] zeroinitializer }, align 32
@iproc_gpio_irq_set_type._entry_ptr = internal global ptr @iproc_gpio_irq_set_type._entry, section ".printk_index", align 4
@iproc_gpio_irq_set_type.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 0, i8 74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"gpio:%u level_triggered:%d dual_edge:%d rising_or_high:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio-%d\00", [24 x i8] zeroinitializer }, align 32
@iproc_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @iproc_get_groups_count, ptr @iproc_get_group_name, ptr null, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@iproc_pconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @iproc_pin_config_get, ptr @iproc_pin_config_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@iproc_gpio_register_pinconf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 763, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to register pinctrl device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iproc_gpio_register_pinconf\00", [36 x i8] zeroinitializer }, align 32
@iproc_gpio_register_pinconf._entry_ptr = internal global ptr @iproc_gpio_register_pinconf._entry, section ".printk_index", align 4
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_grp\00", [23 x i8] zeroinitializer }, align 32
@iproc_pin_config_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 714, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid configuration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iproc_pin_config_set\00", [43 x i8] zeroinitializer }, align 32
@iproc_pin_config_set._entry_ptr = internal global ptr @iproc_pin_config_set._entry, section ".printk_index", align 4
@iproc_gpio_set_pull.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.40, ptr @.str.5, ptr @.str.41, i8 0, i8 -128, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iproc_gpio_set_pull\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpio:%u set pullup:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@iproc_gpio_set_strength.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.42, ptr @.str.5, ptr @.str.43, i8 0, i8 -113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iproc_gpio_set_strength\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gpio:%u set drive strength:%d mA\0A\00", [62 x i8] zeroinitializer }, align 32
@iproc_pinconf_disable_map = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 9, i32 1, i32 5, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"iproc_gpio_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 911, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 913, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"iproc_gpio_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 770, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 792, i32 44 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 796, i32 7 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 808, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 818, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 826, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 827, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 831, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 848, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 879, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 881, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 888, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 896, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 338, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 354, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 380, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 277, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 296, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 750, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant [16 x i8] c"iproc_pctrl_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 467, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant [16 x i8] c"iproc_pconf_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 723, i32 33 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 763, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 464, i32 9 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 714, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 515, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 572, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [26 x i8] c"iproc_pinconf_disable_map\00", align 1
@___asan_gen_.203 = private constant [44 x i8] c"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 397, i32 36 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__initcall__kmod_pinctrl_iproc_gpio__233_923_iproc_gpio_init3s, ptr @iproc_gpio_irq_set_type._entry, ptr @iproc_gpio_irq_set_type._entry_ptr, ptr @iproc_gpio_probe._entry, ptr @iproc_gpio_probe._entry.10, ptr @iproc_gpio_probe._entry.15, ptr @iproc_gpio_probe._entry.18, ptr @iproc_gpio_probe._entry.21, ptr @iproc_gpio_probe._entry_ptr, ptr @iproc_gpio_probe._entry_ptr.12, ptr @iproc_gpio_probe._entry_ptr.17, ptr @iproc_gpio_probe._entry_ptr.20, ptr @iproc_gpio_probe._entry_ptr.23, ptr @iproc_gpio_register_pinconf._entry, ptr @iproc_gpio_register_pinconf._entry_ptr, ptr @iproc_pin_config_set._entry, ptr @iproc_pin_config_set._entry_ptr, ptr @iproc_gpio_driver, ptr @.str, ptr @iproc_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @iproc_gpio_probe.__key, ptr @.str.13, ptr @.str.14, ptr @iproc_gpio_probe.lock_key, ptr @iproc_gpio_probe.request_key, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @iproc_pctrl_ops, ptr @iproc_pconf_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @iproc_pinconf_disable_map], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_register_pinconf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pin_config_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pinconf_disable_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iproc_gpio_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %disable_mask.addr.i = alloca i32, align 4
  %ngpios = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpios) #8
  %0 = ptrtoint ptr %ngpios to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ngpios, align 4, !annotation !106
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp ne i32 %call3, 0
  br label %if.end6

if.end6:                                          ; preds = %if.else, %entry.if.end6_crit_edge
  %no_pinconf.0.off0 = phi i1 [ false, %entry.if.end6_crit_edge ], [ %tobool4.not, %if.else ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 608, i32 noundef 3520) #8
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.cleanup96_crit_edge, label %if.end10

if.end6.cleanup96_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup96

if.end10:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup96

if.end18:                                         ; preds = %if.end10
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.if.end35_crit_edge, label %if.then21

if.end18.if.end35_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then21:                                        ; preds = %if.end18
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call19) #8
  %io_ctrl = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %io_ctrl, align 4
  %cmp.i178 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call22 to i32
  br label %cleanup96

if.end28:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call30 = tail call i32 @of_device_is_compatible(ptr noundef %14, ptr noundef nonnull @.str.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %. = select i1 %tobool31.not, i32 1, i32 2
  br label %if.end35

if.end35:                                         ; preds = %if.end28, %if.end18.if.end35_crit_edge
  %io_ctrl_type.0 = phi i32 [ 3, %if.end18.if.end35_crit_edge ], [ %., %if.end28 ]
  %io_ctrl_type36 = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %io_ctrl_type36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %io_ctrl_type.0, ptr %io_ctrl_type36, align 4
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef nonnull %ngpios, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool39.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool39.not, label %do.body46, label %do.end43

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  br label %cleanup96

do.body46:                                        ; preds = %if.end35
  %lock = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @iproc_gpio_probe.__key, i16 noundef signext 2) #8
  %gc49 = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6
  %base50 = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 19
  %18 = ptrtoint ptr %base50 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %base50, align 4
  %19 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ngpios, align 4
  %conv = trunc i32 %20 to i16
  %ngpio = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 20
  %21 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %ngpio, align 4
  %sub = add i32 %20, 31
  %div177 = lshr i32 %sub, 5
  %num_banks = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %num_banks to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div177, ptr %num_banks, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body46.dev_name.exit_crit_edge

do.body46.dev_name.exit_crit_edge:                ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body46.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %do.body46.dev_name.exit_crit_edge ]
  %27 = ptrtoint ptr %gc49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i, ptr %gc49, align 4
  %parent = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev1, ptr %parent, align 4
  %request = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 5
  %29 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @iproc_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @iproc_gpio_free, ptr %free, align 4
  %direction_input = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 8
  %31 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @iproc_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 9
  %32 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @iproc_gpio_direction_output, ptr %direction_output, align 4
  %get_direction = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 7
  %33 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @iproc_gpio_get_direction, ptr %get_direction, align 4
  %set = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 12
  %34 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @iproc_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 10
  %35 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @iproc_gpio_get, ptr %get, align 4
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %call.i179 = call ptr @of_find_property(ptr noundef %37, ptr noundef nonnull @.str.14, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i179, null
  %pinmux_is_supported = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 8
  %frombool = zext i1 %tobool.i to i8
  %38 = ptrtoint ptr %pinmux_is_supported to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %pinmux_is_supported, align 4
  %call54 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp = icmp sgt i32 %call54, 0
  br i1 %cmp, label %if.then56, label %dev_name.exit.if.end67_crit_edge

dev_name.exit.if.end67_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then56:                                        ; preds = %dev_name.exit
  %irqchip = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i181 = icmp eq ptr %40, null
  br i1 %tobool.not.i181, label %if.end.i182, label %if.then56.dev_name.exit184_crit_edge

if.then56.dev_name.exit184_crit_edge:             ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit184

if.end.i182:                                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit184

dev_name.exit184:                                 ; preds = %if.end.i182, %if.then56.dev_name.exit184_crit_edge
  %retval.0.i183 = phi ptr [ %42, %if.end.i182 ], [ %40, %if.then56.dev_name.exit184_crit_edge ]
  %name = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.0.i183, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 5, i32 6
  %44 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @iproc_gpio_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 5, i32 7
  %45 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @iproc_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 5, i32 9
  %46 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @iproc_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 5, i32 13
  %47 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @iproc_gpio_irq_set_type, ptr %irq_set_type, align 4
  %irq_enable = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 5, i32 4
  %48 = ptrtoint ptr %irq_enable to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @iproc_gpio_irq_unmask, ptr %irq_enable, align 4
  %irq_disable = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 5, i32 5
  %49 = ptrtoint ptr %irq_disable to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @iproc_gpio_irq_mask, ptr %irq_disable, align 4
  %irq58 = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 37
  %50 = ptrtoint ptr %irq58 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %irqchip, ptr %irq58, align 4
  %parent_handler = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 37, i32 13
  %51 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @iproc_gpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 37, i32 15
  %52 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #8
  %parents = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 37, i32 16
  %53 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool62.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool62.not, label %dev_name.exit184.cleanup96_crit_edge, label %if.end64

dev_name.exit184.cleanup96_crit_edge:             ; preds = %dev_name.exit184
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup96

if.end64:                                         ; preds = %dev_name.exit184
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call54, ptr %call5.i.i, align 4
  %default_type = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 37, i32 10
  %55 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 6, i32 37, i32 9
  %56 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @handle_bad_irq, ptr %handler, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end64, %dev_name.exit.if.end67_crit_edge
  %call68 = call i32 @gpiochip_add_data_with_key(ptr noundef %gc49, ptr noundef nonnull %call.i, ptr noundef nonnull @iproc_gpio_probe.lock_key, ptr noundef nonnull @iproc_gpio_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end74, label %if.end75

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %cleanup96

if.end75:                                         ; preds = %if.end67
  br i1 %no_pinconf.0.off0, label %if.end75.cleanup96_crit_edge, label %if.then77

if.end75.cleanup96_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup96

if.then77:                                        ; preds = %if.end75
  %pctldesc1.i = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 12
  %57 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ngpio, align 4
  %conv.i = zext i16 %58 to i32
  %59 = mul nuw nsw i32 %conv.i, 12
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %61, i32 noundef %59, i32 noundef 3520) #8
  %tobool.not.i185 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i185, label %if.then77.err_rm_gpiochip_crit_edge, label %for.cond.preheader.i

if.then77.err_rm_gpiochip_crit_edge:              ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rm_gpiochip

for.cond.preheader.i:                             ; preds = %if.then77
  %62 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp63.not.i = icmp eq i16 %63, 0
  br i1 %cmp63.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %64 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ngpio, align 4
  %conv4.i = zext i16 %65 to i32
  %cmp.i186 = icmp ult i32 %inc.i, %conv4.i
  br i1 %cmp.i186, label %for.cond.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.064.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i.i, i32 %i.064.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %i.064.i, ptr %arrayidx.i, align 4
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  %call7.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %68, i32 noundef 3264, ptr noundef nonnull @.str.34, i32 noundef %i.064.i) #8
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i.i, i32 %i.064.i, i32 1
  %69 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i, ptr %name.i, align 4
  %tobool11.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool11.not.i, label %for.body.i.err_rm_gpiochip_crit_edge, label %for.cond.i

for.body.i.err_rm_gpiochip_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rm_gpiochip

for.end.i.loopexit:                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i.le = zext i16 %65 to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv4.i.le, %for.end.i.loopexit ]
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end.i.dev_name.exit.i_crit_edge

for.end.i.dev_name.exit.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %75, %if.end.i.i ], [ %73, %for.end.i.dev_name.exit.i_crit_edge ]
  %76 = ptrtoint ptr %pctldesc1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %retval.0.i.i, ptr %pctldesc1.i, align 4
  %pctlops.i = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 12, i32 3
  %77 = ptrtoint ptr %pctlops.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @iproc_pctrl_ops, ptr %pctlops.i, align 4
  %pins17.i = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 12, i32 1
  %78 = ptrtoint ptr %pins17.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call5.i.i.i, ptr %pins17.i, align 4
  %npins.i = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 12, i32 2
  %79 = ptrtoint ptr %npins.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.lcssa.i, ptr %npins.i, align 4
  %confops.i = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 12, i32 5
  %80 = ptrtoint ptr %confops.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @iproc_pconf_ops, ptr %confops.i, align 4
  %call21.i = call ptr @devm_pinctrl_register(ptr noundef %71, ptr noundef %pctldesc1.i, ptr noundef %call.i) #8
  %pctl.i = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 11
  %81 = ptrtoint ptr %pctl.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call21.i, ptr %pctl.i, align 4
  %cmp.i.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %iproc_gpio_register_pinconf.exit, label %dev_name.exit.i.if.end84_crit_edge

dev_name.exit.i.if.end84_crit_edge:               ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

iproc_gpio_register_pinconf.exit:                 ; preds = %dev_name.exit.i
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.35) #11
  %84 = ptrtoint ptr %pctl.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pctl.i, align 4
  %86 = ptrtoint ptr %85 to i32
  %tobool79.not = icmp eq ptr %85, null
  br i1 %tobool79.not, label %iproc_gpio_register_pinconf.exit.if.end84_crit_edge, label %iproc_gpio_register_pinconf.exit.err_rm_gpiochip_crit_edge

iproc_gpio_register_pinconf.exit.err_rm_gpiochip_crit_edge: ; preds = %iproc_gpio_register_pinconf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rm_gpiochip

iproc_gpio_register_pinconf.exit.if.end84_crit_edge: ; preds = %iproc_gpio_register_pinconf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.end84:                                         ; preds = %iproc_gpio_register_pinconf.exit.if.end84_crit_edge, %dev_name.exit.i.if.end84_crit_edge
  br i1 %tobool.not, label %if.end84.cleanup96_crit_edge, label %if.then86

if.end84.cleanup96_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup96

if.then86:                                        ; preds = %if.end84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %disable_mask.addr.i)
  %87 = ptrtoint ptr %disable_mask.addr.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %disable_mask.addr.i, align 4
  %call.i188 = call i32 @_find_next_bit_be(ptr noundef nonnull %disable_mask.addr.i, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i188)
  %cmp4.i = icmp ult i32 %call.i188, 4
  br i1 %cmp4.i, label %if.then86.for.body.i191_crit_edge, label %if.then86.iproc_pinconf_disable_map_create.exit.thread_crit_edge

if.then86.iproc_pinconf_disable_map_create.exit.thread_crit_edge: ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pinconf_disable_map_create.exit.thread

if.then86.for.body.i191_crit_edge:                ; preds = %if.then86
  br label %for.body.i191

for.body.i191:                                    ; preds = %for.body.i191.for.body.i191_crit_edge, %if.then86.for.body.i191_crit_edge
  %nbits.06.i = phi i32 [ %inc.i189, %for.body.i191.for.body.i191_crit_edge ], [ 0, %if.then86.for.body.i191_crit_edge ]
  %bit.05.i = phi i32 [ %call1.i, %for.body.i191.for.body.i191_crit_edge ], [ %call.i188, %if.then86.for.body.i191_crit_edge ]
  %inc.i189 = add i32 %nbits.06.i, 1
  %add.i = add nuw nsw i32 %bit.05.i, 1
  %call1.i = call i32 @_find_next_bit_be(ptr noundef nonnull %disable_mask.addr.i, i32 noundef 4, i32 noundef %add.i) #8
  %cmp.i190 = icmp ult i32 %call1.i, 4
  br i1 %cmp.i190, label %for.body.i191.for.body.i191_crit_edge, label %for.end.i193

for.body.i191.for.body.i191_crit_edge:            ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i191

for.end.i193:                                     ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i189)
  %tobool.not.i192 = icmp eq i32 %inc.i189, 0
  br i1 %tobool.not.i192, label %for.end.i193.iproc_pinconf_disable_map_create.exit.thread_crit_edge, label %if.end.i194

for.end.i193.iproc_pinconf_disable_map_create.exit.thread_crit_edge: ; preds = %for.end.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pinconf_disable_map_create.exit.thread

if.end.i194:                                      ; preds = %for.end.i193
  %88 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i189, i32 4) #8
  %89 = extractvalue { i32, i1 } %88, 1
  br i1 %89, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !107

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #10
  %pinconf_disable2.i = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 9
  %90 = ptrtoint ptr %pinconf_disable2.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %pinconf_disable2.i, align 4
  br label %do.end92

devm_kcalloc.exit.i:                              ; preds = %if.end.i194
  %91 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call.i, align 4
  %93 = extractvalue { i32, i1 } %88, 0
  %call5.i.i.i195 = call noalias ptr @devm_kmalloc(ptr noundef %92, i32 noundef %93, i32 noundef 3520) #8
  %pinconf_disable.i = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 9
  %94 = ptrtoint ptr %pinconf_disable.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call5.i.i.i195, ptr %pinconf_disable.i, align 4
  %tobool4.not.i = icmp eq ptr %call5.i.i.i195, null
  br i1 %tobool4.not.i, label %devm_kcalloc.exit.i.do.end92_crit_edge, label %if.end6.i

devm_kcalloc.exit.i.do.end92_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

if.end6.i:                                        ; preds = %devm_kcalloc.exit.i
  %nr_pinconf_disable.i = getelementptr inbounds %struct.iproc_gpio, ptr %call.i, i32 0, i32 10
  %95 = ptrtoint ptr %nr_pinconf_disable.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %inc.i189, ptr %nr_pinconf_disable.i, align 4
  %call7.i196 = call i32 @_find_next_bit_be(ptr noundef nonnull %disable_mask.addr.i, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call7.i196)
  %cmp97.i = icmp ult i32 %call7.i196, 4
  br i1 %cmp97.i, label %if.end6.i.for.body10.i_crit_edge, label %if.end6.i.iproc_pinconf_disable_map_create.exit.thread_crit_edge

if.end6.i.iproc_pinconf_disable_map_create.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pinconf_disable_map_create.exit.thread

if.end6.i.for.body10.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %if.end6.i.for.body10.i_crit_edge
  %nbits.19.i = phi i32 [ %inc12.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %if.end6.i.for.body10.i_crit_edge ]
  %bit.18.i = phi i32 [ %call16.i, %for.body10.i.for.body10.i_crit_edge ], [ %call7.i196, %if.end6.i.for.body10.i_crit_edge ]
  %arrayidx.i197 = getelementptr [4 x i32], ptr @iproc_pinconf_disable_map, i32 0, i32 %bit.18.i
  %96 = ptrtoint ptr %arrayidx.i197 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i197, align 4
  %98 = ptrtoint ptr %pinconf_disable.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pinconf_disable.i, align 4
  %inc12.i = add i32 %nbits.19.i, 1
  %arrayidx13.i = getelementptr i32, ptr %99, i32 %nbits.19.i
  %100 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %97, ptr %arrayidx13.i, align 4
  %add15.i = add nuw nsw i32 %bit.18.i, 1
  %call16.i = call i32 @_find_next_bit_be(ptr noundef nonnull %disable_mask.addr.i, i32 noundef 4, i32 noundef %add15.i) #8
  %cmp9.i = icmp ult i32 %call16.i, 4
  br i1 %cmp9.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.iproc_pinconf_disable_map_create.exit.thread_crit_edge

for.body10.i.iproc_pinconf_disable_map_create.exit.thread_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pinconf_disable_map_create.exit.thread

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

iproc_pinconf_disable_map_create.exit.thread:     ; preds = %for.body10.i.iproc_pinconf_disable_map_create.exit.thread_crit_edge, %if.end6.i.iproc_pinconf_disable_map_create.exit.thread_crit_edge, %for.end.i193.iproc_pinconf_disable_map_create.exit.thread_crit_edge, %if.then86.iproc_pinconf_disable_map_create.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disable_mask.addr.i)
  br label %cleanup96

do.end92:                                         ; preds = %devm_kcalloc.exit.i.do.end92_crit_edge, %devm_kcalloc.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disable_mask.addr.i)
  br label %err_rm_gpiochip

err_rm_gpiochip:                                  ; preds = %do.end92, %iproc_gpio_register_pinconf.exit.err_rm_gpiochip_crit_edge, %for.body.i.err_rm_gpiochip_crit_edge, %if.then77.err_rm_gpiochip_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %do.end92 ], [ @.str.19, %if.then77.err_rm_gpiochip_crit_edge ], [ @.str.19, %iproc_gpio_register_pinconf.exit.err_rm_gpiochip_crit_edge ], [ @.str.19, %for.body.i.err_rm_gpiochip_crit_edge ]
  %ret.0 = phi i32 [ -12, %do.end92 ], [ -12, %if.then77.err_rm_gpiochip_crit_edge ], [ %86, %iproc_gpio_register_pinconf.exit.err_rm_gpiochip_crit_edge ], [ -12, %for.body.i.err_rm_gpiochip_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.22.sink) #11
  call void @gpiochip_remove(ptr noundef %gc49) #8
  br label %cleanup96

cleanup96:                                        ; preds = %err_rm_gpiochip, %iproc_pinconf_disable_map_create.exit.thread, %if.end84.cleanup96_crit_edge, %if.end75.cleanup96_crit_edge, %do.end74, %dev_name.exit184.cleanup96_crit_edge, %do.end43, %if.then25, %do.end, %if.end6.cleanup96_crit_edge
  %retval.1 = phi i32 [ %10, %do.end ], [ %12, %if.then25 ], [ -19, %do.end43 ], [ %call68, %do.end74 ], [ %ret.0, %err_rm_gpiochip ], [ -12, %if.end6.cleanup96_crit_edge ], [ 0, %if.end84.cleanup96_crit_edge ], [ 0, %if.end75.cleanup96_crit_edge ], [ -12, %dev_name.exit184.cleanup96_crit_edge ], [ 0, %iproc_pinconf_disable_map_create.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios) #8
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_request(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %pinmux_is_supported = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %pinmux_is_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pinmux_is_supported, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, %offset
  %call1 = tail call i32 @pinctrl_gpio_request(i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_gpio_free(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %pinmux_is_supported = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %pinmux_is_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pinmux_is_supported, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, %offset
  tail call void @pinctrl_gpio_free(i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_direction_input(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %lock = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %0 = shl i32 %gpio, 4
  %mul.i = and i32 %0, -512
  %add.i = or i32 %mul.i, 8
  %rem.i = and i32 %gpio, 31
  %base.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !109
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %shl.i = shl nuw i32 1, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %4, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #8, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_gpio_direction_input.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_gpio_direction_input, %do.end18)) #8
          to label %if.then [label %do.end18], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_gpio_direction_input.__UNIQUE_ID_ddebug228, ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef %gpio) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_direction_output(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %lock = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %0 = shl i32 %gpio, 4
  %mul.i = and i32 %0, -512
  %add.i = or i32 %mul.i, 8
  %rem.i = and i32 %gpio, 31
  %base.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !109
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %shl.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %4, %shl.i
  %neg.i = xor i32 %shl.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #8, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %add.i30 = or i32 %mul.i, 4
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %9, i32 %add.i30
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #8, !srcloc !109
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %or.i35 = or i32 %11, %shl.i
  %and.i37 = and i32 %11, %neg.i
  %val.0.i = select i1 %tobool.not, i32 %and.i37, i32 %or.i35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr4.i38 = getelementptr i8, ptr %14, i32 %add.i30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i38, i32 %12) #8, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_gpio_direction_output.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_gpio_direction_output, %do.end21)) #8
          to label %if.then [label %do.end21], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_gpio_direction_output.__UNIQUE_ID_ddebug229, ptr noundef %16, ptr noundef nonnull @.str.28, i32 noundef %gpio, i32 noundef %val) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_get_direction(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %0 = shl i32 %gpio, 4
  %mul = and i32 %0, -512
  %add = or i32 %mul, 8
  %rem = and i32 %gpio, 31
  %base = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %4 = xor i32 %3, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = lshr i32 %5, %rem
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_gpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %lock = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %0 = shl i32 %gpio, 4
  %mul.i = and i32 %0, -512
  %add.i = or i32 %mul.i, 4
  %rem.i = and i32 %gpio, 31
  %base.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !109
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %shl.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %4, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %4, %neg.i
  %val.0.i = select i1 %tobool.not, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #8, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_gpio_set.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_gpio_set, %do.end21)) #8
          to label %if.then [label %do.end21], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_gpio_set.__UNIQUE_ID_ddebug230, ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef %gpio, i32 noundef %val) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_get(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %0 = shl i32 %gpio, 4
  %mul = and i32 %0, -512
  %rem = and i32 %gpio, 31
  %base = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %mul
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !109
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %5 = lshr i32 %4, %rem
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = shl i32 %3, 4
  %mul = and i32 %4, -512
  %add = or i32 %mul, 36
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.iproc_gpio, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #8, !srcloc !112
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %lock = getelementptr inbounds %struct.iproc_gpio, ptr %call1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %6 = shl i32 %5, 4
  %mul.i.i = and i32 %6, -512
  %add.i.i = or i32 %mul.i.i, 24
  %rem.i.i = and i32 %5, 31
  %base.i.i = getelementptr inbounds %struct.iproc_gpio, ptr %call1.i, i32 0, i32 1
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %add.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !109
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %10, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %13, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %11) #8, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %lock = getelementptr inbounds %struct.iproc_gpio, ptr %call1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %6 = shl i32 %5, 4
  %mul.i.i = and i32 %6, -512
  %add.i.i = or i32 %mul.i.i, 24
  %rem.i.i = and i32 %5, 31
  %base.i.i = getelementptr inbounds %struct.iproc_gpio, ptr %call1.i, i32 0, i32 1
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %add.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !109
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %or.i.i = or i32 %10, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %13, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %11) #8, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %type, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.31, i32 noundef %type) #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast = trunc i32 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %switch.cast)
  %switch.masked = icmp eq i8 %switch.cast, 2
  %switch.cast88 = trunc i32 %switch.tableidx to i8
  %switch.downshift90 = lshr i8 121, %switch.cast88
  %8 = and i8 %switch.downshift90, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.masked91.not = icmp eq i8 %8, 0
  %switch.cast92 = trunc i32 %switch.tableidx to i8
  %switch.downshift94 = lshr i8 -120, %switch.cast92
  %9 = and i8 %switch.downshift94, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.masked95.not = icmp eq i8 %9, 0
  %lock = getelementptr inbounds %struct.iproc_gpio, ptr %call1, i32 0, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %10 = shl i32 %3, 4
  %mul.i = and i32 %10, -512
  %add.i = or i32 %mul.i, 12
  %rem.i = and i32 %3, 31
  %base.i = getelementptr inbounds %struct.iproc_gpio, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !109
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %shl.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %14, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %14, %neg.i
  %spec.select = select i1 %switch.masked95.not, i32 %and.i, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #8
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %17, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %15) #8, !srcloc !112
  %add.i64 = or i32 %mul.i, 16
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %19, i32 %add.i64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #8, !srcloc !109
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %or.i69 = or i32 %21, %shl.i
  %and.i71 = and i32 %21, %neg.i
  %22 = select i1 %switch.masked, i32 %or.i69, i32 %and.i71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr4.i73 = getelementptr i8, ptr %25, i32 %add.i64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i73, i32 %23) #8, !srcloc !112
  %add.i75 = or i32 %mul.i, 20
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %27, i32 %add.i75
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #8, !srcloc !109
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %or.i80 = or i32 %29, %shl.i
  %and.i82 = and i32 %29, %neg.i
  %val.0.i83 = select i1 %switch.masked91.not, i32 %and.i82, i32 %or.i80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %val.0.i83) #8
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr4.i84 = getelementptr i8, ptr %32, i32 %add.i75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i84, i32 %30) #8, !srcloc !112
  %and11 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %handle_edge_irq.sink = select i1 %tobool12.not, ptr @handle_level_irq, ptr @handle_edge_irq
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %33 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %handle_edge_irq.sink, ptr %handle_irq.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_gpio_irq_set_type.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_gpio_irq_set_type, %cleanup)) #8
          to label %if.then29 [label %cleanup], !srcloc !113

if.then29:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call1, align 4
  %38 = zext i8 %9 to i32
  %conv34 = zext i1 %switch.masked to i32
  %39 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_gpio_irq_set_type.__UNIQUE_ID_ddebug227, ptr noundef %37, ptr noundef nonnull @.str.33, i32 noundef %3, i32 noundef %38, i32 noundef %conv34, i32 noundef %39) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %switch.lookup, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then29 ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %num_banks = getelementptr inbounds %struct.iproc_gpio, ptr %call1, i32 0, i32 7
  %12 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp40.not = icmp eq i32 %13, 0
  br i1 %cmp40.not, label %chained_irq_enter.exit.for.end19_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end19_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %base = getelementptr inbounds %struct.iproc_gpio, ptr %call1, i32 0, i32 1
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val, align 4, !annotation !106
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %mul = shl i32 %i.041, 9
  %add.ptr = getelementptr i8, ptr %16, i32 32
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !109
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call6)
  %cmp838 = icmp slt i32 %call6, 32
  br i1 %cmp838, label %for.body9.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body9.lr.ph:                                  ; preds = %for.body
  %mul10 = shl i32 %i.041, 5
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %bit.039 = phi i32 [ %call6, %for.body9.lr.ph ], [ %call17, %for.body9.for.body9_crit_edge ]
  %add = add i32 %bit.039, %mul10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  call void @arm_heavy_mb() #8
  %shl = shl nuw i32 1, %bit.039
  %20 = call i32 @llvm.bswap.i32(i32 %shl)
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %22, i32 %mul
  %add.ptr14 = getelementptr i8, ptr %add.ptr13, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %20) #8, !srcloc !112
  %23 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %domain, align 4
  %call15 = call i32 @generic_handle_domain_irq(ptr noundef %24, i32 noundef %add) #8
  %add16 = add nsw i32 %bit.039, 1
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 32, i32 noundef %add16) #8
  %cmp8 = icmp slt i32 %call17, 32
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.end_crit_edge

for.body9.for.end_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.end:                                          ; preds = %for.body9.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  %inc = add nuw i32 %i.041, 1
  %25 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_banks, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end19_crit_edge

for.end.for.end19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end19:                                        ; preds = %for.end.for.end19_crit_edge, %chained_irq_enter.exit.for.end19_crit_edge
  %27 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i35 = icmp eq ptr %28, null
  br i1 %tobool.not.i35, label %if.else.i36, label %for.end19.chained_irq_exit.exit_crit_edge

for.end19.chained_irq_exit.exit_crit_edge:        ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i36:                                      ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i36, %for.end19.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %30, %if.else.i36 ], [ %28, %for.end19.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iproc_get_groups_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @iproc_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.37
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pin_config_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %disable = alloca i8, align 1
  %pull_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %disable) #8
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %disable, align 1, !annotation !106
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pull_up) #8
  %3 = ptrtoint ptr %pull_up to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %pull_up, align 1, !annotation !106
  %nr_pinconf_disable.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %nr_pinconf_disable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_pinconf_disable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %pinconf_disable.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %pinconf_disable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinconf_disable.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.if.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %7, i32 %i.010.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and.i)
  %cmp2.i = icmp eq i32 %9, %and.i
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %trunc = trunc i32 %1 to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %sw.bb5
    i8 3, label %sw.bb10
    i8 9, label %sw.bb16
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @iproc_gpio_get_pull(ptr noundef %call, i32 noundef %pin, ptr noundef nonnull %disable, ptr noundef nonnull %pull_up)
  %11 = ptrtoint ptr %disable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %disable, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %. = select i1 %tobool.not, i32 -22, i32 0
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call fastcc void @iproc_gpio_get_pull(ptr noundef %call, i32 noundef %pin, ptr noundef nonnull %disable, ptr noundef nonnull %pull_up)
  %13 = ptrtoint ptr %disable to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %disable, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %land.lhs.true, label %sw.bb5.if.else9_crit_edge

sw.bb5.if.else9_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9

land.lhs.true:                                    ; preds = %sw.bb5
  %15 = ptrtoint ptr %pull_up to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pull_up, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not = icmp eq i8 %16, 0
  br i1 %tobool7.not, label %land.lhs.true.if.else9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9

if.else9:                                         ; preds = %land.lhs.true.if.else9_crit_edge, %sw.bb5.if.else9_crit_edge
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call fastcc void @iproc_gpio_get_pull(ptr noundef %call, i32 noundef %pin, ptr noundef nonnull %disable, ptr noundef nonnull %pull_up)
  %17 = ptrtoint ptr %disable to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %disable, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool11.not = icmp eq i8 %18, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %sw.bb10.if.else15_crit_edge

sw.bb10.if.else15_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

land.lhs.true12:                                  ; preds = %sw.bb10
  %19 = ptrtoint ptr %pull_up to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pull_up, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  br i1 %tobool13.not, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.else15_crit_edge

land.lhs.true12.if.else15_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else15:                                        ; preds = %land.lhs.true12.if.else15_crit_edge, %sw.bb10.if.else15_crit_edge
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  %io_ctrl.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %io_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_ctrl.i, align 4
  %tobool.not.i39 = icmp eq ptr %22, null
  br i1 %tobool.not.i39, label %if.else.i, label %sw.bb16.if.end.i_crit_edge

sw.bb16.if.end.i_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %base2.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.bb16.if.end.i_crit_edge
  %base.0.i = phi ptr [ %24, %if.else.i ], [ %22, %sw.bb16.if.end.i_crit_edge ]
  %rem.i = and i32 %pin, 31
  %lock.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %io_ctrl_type.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 3
  %25 = shl i32 %pin, 4
  %mul15.i = and i32 %25, -512
  %shl.i = shl nuw i32 1, %rem.i
  %26 = ptrtoint ptr %io_ctrl_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_ctrl_type.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %27, label %cond.false13.i [
    i32 1, label %if.end.i.cond.end18.i_crit_edge
    i32 2, label %cond.true10.i
  ]

if.end.i.cond.end18.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end18.i

cond.true10.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end18.i

cond.false13.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add16.i = or i32 %mul15.i, 88
  br label %cond.end18.i

cond.end18.i:                                     ; preds = %cond.false13.i, %cond.true10.i, %if.end.i.cond.end18.i_crit_edge
  %cond19.i = phi i32 [ 0, %cond.true10.i ], [ %add16.i, %cond.false13.i ], [ 8, %if.end.i.cond.end18.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %base.0.i, i32 %cond19.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !109
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %and.i40 = and i32 %30, %shl.i
  %shr.i = lshr i32 %and.i40, %rem.i
  %31 = ptrtoint ptr %io_ctrl_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_ctrl_type.i, align 4
  %.off.i = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %add17.1.i = or i32 %mul15.i, 92
  %spec.select.i = select i1 %switch.i, i32 4, i32 %add17.1.i
  %add.ptr.1.i = getelementptr i8, ptr %base.0.i, i32 %spec.select.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #8, !srcloc !109
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %and.1.i = and i32 %34, %shl.i
  %shr.1.i = lshr i32 %and.1.i, %rem.i
  %35 = shl i32 %shr.1.i, 1
  %conv26.1.i = add i32 %35, %shr.i
  %36 = ptrtoint ptr %io_ctrl_type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_ctrl_type.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %37, label %cond.false13.2.i [
    i32 1, label %cond.true.2.i
    i32 2, label %cond.end18.i.iproc_gpio_get_strength.exit_crit_edge
  ]

cond.end18.i.iproc_gpio_get_strength.exit_crit_edge: ; preds = %cond.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_gpio_get_strength.exit

cond.true.2.i:                                    ; preds = %cond.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_gpio_get_strength.exit

cond.false13.2.i:                                 ; preds = %cond.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %add17.2.i = or i32 %mul15.i, 96
  br label %iproc_gpio_get_strength.exit

iproc_gpio_get_strength.exit:                     ; preds = %cond.false13.2.i, %cond.true.2.i, %cond.end18.i.iproc_gpio_get_strength.exit_crit_edge
  %cond19.2.i = phi i32 [ 0, %cond.true.2.i ], [ %add17.2.i, %cond.false13.2.i ], [ 8, %cond.end18.i.iproc_gpio_get_strength.exit_crit_edge ]
  %add.ptr.2.i = getelementptr i8, ptr %base.0.i, i32 %cond19.2.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #8, !srcloc !109
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %and.2.i = and i32 %40, %shl.i
  %shr.2.i = lshr i32 %and.2.i, %rem.i
  %41 = shl i32 %shr.2.i, 2
  %conv26.2.i = add i32 %conv26.1.i, %41
  %add28.i = shl i32 %conv26.2.i, 9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #8
  %conv = add i32 %add28.i, 512
  %shl.i41 = and i32 %conv, 16776704
  %or.i = or i32 %shl.i41, 9
  %42 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %iproc_gpio_get_strength.exit, %if.else15, %land.lhs.true12.cleanup_crit_edge, %if.else9, %land.lhs.true.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %iproc_gpio_get_strength.exit ], [ -22, %if.else15 ], [ -22, %if.else9 ], [ %., %sw.bb ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true12.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ -524, %for.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pull_up) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %disable) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pin_config_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp49.not = icmp eq i32 %num_configs, 0
  br i1 %cmp49.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %nr_pinconf_disable.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 10
  %pinconf_disable.i = getelementptr inbounds %struct.iproc_gpio, ptr %call, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.050
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %1, 255
  %2 = ptrtoint ptr %nr_pinconf_disable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_pinconf_disable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %for.body.if.end_crit_edge, label %for.body.lr.ph.i

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.body
  %4 = ptrtoint ptr %pinconf_disable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pinconf_disable.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.if.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %5, i32 %i.010.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and.i)
  %cmp2.i = icmp eq i32 %7, %and.i
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %trunc = trunc i32 %1 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %trunc, label %do.end [
    i8 1, label %sw.bb
    i8 5, label %sw.bb10
    i8 3, label %sw.bb15
    i8 9, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @iproc_gpio_set_pull(ptr noundef %call, i32 noundef %pin, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %for.inc

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @iproc_gpio_set_pull(ptr noundef %call, i32 noundef %pin, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %for.inc

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @iproc_gpio_set_pull(ptr noundef %call, i32 noundef %pin, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %for.inc

sw.bb20:                                          ; preds = %if.end
  %shr.i = lshr i32 %1, 8
  %call21 = tail call fastcc i32 @iproc_gpio_set_strength(ptr noundef %call, i32 noundef %pin, i32 noundef %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %sw.bb20.cleanup_crit_edge, label %sw.bb20.for.inc_crit_edge

sw.bb20.for.inc_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.38) #11
  br label %cleanup

for.inc:                                          ; preds = %sw.bb20.for.inc_crit_edge, %sw.bb15, %sw.bb10, %sw.bb
  %ret.1 = phi i32 [ %call21, %sw.bb20.for.inc_crit_edge ], [ 0, %sw.bb15 ], [ 0, %sw.bb10 ], [ 0, %sw.bb ]
  %inc = add nuw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %sw.bb20.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ -524, %entry.cleanup_crit_edge ], [ -524, %for.body.i.cleanup_crit_edge ], [ %ret.1, %for.inc.cleanup_crit_edge ], [ %call21, %sw.bb20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iproc_gpio_get_pull(ptr noundef %chip, i32 noundef %gpio, ptr nocapture noundef writeonly %disable, ptr nocapture noundef writeonly %pull_up) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %io_ctrl_type = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %io_ctrl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_ctrl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %io_ctrl = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_ctrl, align 4
  %rem = and i32 %gpio, 31
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !109
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %shl = shl nuw i32 1, %rem
  %and = and i32 %5, %shl
  %add.ptr8 = getelementptr i8, ptr %3, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !109
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %and13 = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %pull_up to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %pull_up, align 1
  %or = or i32 %and13, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool15.not = icmp eq i32 %or, 0
  br label %do.body23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = shl i32 %gpio, 4
  %mul.i = and i32 %9, -512
  %add.i = or i32 %mul.i, 56
  %rem.i = and i32 %gpio, 31
  %base.i = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !109
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %shl.i = shl nuw i32 1, %rem.i
  %and.i = and i32 %13, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %frombool20 = zext i1 %tobool.i.not to i8
  %14 = ptrtoint ptr %disable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool20, ptr %disable, align 1
  %add.i45 = or i32 %mul.i, 52
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %16, i32 %add.i45
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #8, !srcloc !109
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %and.i50 = and i32 %18, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.i51 = icmp ne i32 %and.i50, 0
  br label %do.body23

do.body23:                                        ; preds = %if.else, %if.then
  %tobool15.not.sink = phi i1 [ %tobool15.not, %if.then ], [ %tobool.i51, %if.else ]
  %disable.sink = phi ptr [ %disable, %if.then ], [ %pull_up, %if.else ]
  %frombool18 = zext i1 %tobool15.not.sink to i8
  %19 = ptrtoint ptr %disable.sink to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool18, ptr %disable.sink, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iproc_gpio_set_pull(ptr noundef %chip, i32 noundef %gpio, i1 noundef zeroext %disable, i1 noundef zeroext %pull_up) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %io_ctrl_type = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %io_ctrl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_ctrl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp eq i32 %1, 2
  br i1 %cmp2, label %if.then, label %if.else38

if.then:                                          ; preds = %entry
  %io_ctrl = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_ctrl, align 4
  %rem = and i32 %gpio, 31
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !109
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %add.ptr9 = getelementptr i8, ptr %3, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !109
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  %shl = shl nuw i32 1, %rem
  br i1 %disable, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %and16 = and i32 %7, %neg
  br label %do.body30

if.else:                                          ; preds = %if.then
  br i1 %pull_up, label %if.then18, label %if.else23

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %5, %shl
  %neg21 = xor i32 %shl, -1
  %and22 = and i32 %7, %neg21
  br label %do.body30

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %neg25 = xor i32 %shl, -1
  %and26 = and i32 %5, %neg25
  %or28 = or i32 %7, %shl
  br label %do.body30

do.body30:                                        ; preds = %if.else23, %if.then18, %if.then13
  %val_2.0 = phi i32 [ %and16, %if.then13 ], [ %and22, %if.then18 ], [ %or28, %if.else23 ]
  %val_1.0 = phi i32 [ %and, %if.then13 ], [ %or, %if.then18 ], [ %and26, %if.else23 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %val_1.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %val_2.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #8, !srcloc !112
  br label %do.body45

if.else38:                                        ; preds = %entry
  %10 = shl i32 %gpio, 4
  %mul.i = and i32 %10, -512
  br i1 %disable, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = or i32 %mul.i, 56
  %rem.i = and i32 %gpio, 31
  %base.i = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !109
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %shl.i = shl nuw i32 1, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %14, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %17, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %15) #8, !srcloc !112
  br label %do.body45

if.else41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %add.i2 = or i32 %mul.i, 52
  %rem.i3 = and i32 %gpio, 31
  %base.i4 = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 1
  %18 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %19, i32 %add.i2
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #8, !srcloc !109
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %shl.i6 = shl nuw i32 1, %rem.i3
  %or.i7 = or i32 %21, %shl.i6
  %neg.i8 = xor i32 %shl.i6, -1
  %and.i9 = and i32 %21, %neg.i8
  %val.0.i = select i1 %pull_up, i32 %or.i7, i32 %and.i9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  %23 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i4, align 4
  %add.ptr4.i10 = getelementptr i8, ptr %24, i32 %add.i2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i10, i32 %22) #8, !srcloc !112
  %add.i12 = or i32 %mul.i, 56
  %25 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i4, align 4
  %add.ptr.i15 = getelementptr i8, ptr %26, i32 %add.i12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #8, !srcloc !109
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %or.i17 = or i32 %28, %shl.i6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i17) #8
  %30 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i4, align 4
  %add.ptr4.i20 = getelementptr i8, ptr %31, i32 %add.i12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i20, i32 %29) #8, !srcloc !112
  br label %do.body45

do.body45:                                        ; preds = %if.else41, %if.then40, %do.body30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_gpio_set_pull.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_gpio_set_pull, %do.end67)) #8
          to label %if.then62 [label %do.end67], !srcloc !113

if.then62:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %conv64 = zext i1 %pull_up to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_gpio_set_pull.__UNIQUE_ID_ddebug231, ptr noundef %33, ptr noundef nonnull @.str.41, i32 noundef %gpio, i32 noundef %conv64) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.body45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iproc_gpio_set_strength(ptr noundef %chip, i32 noundef %gpio, i32 noundef %strength) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %strength, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %0)
  %1 = icmp ult i32 %0, 15
  %rem = and i32 %strength, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond90 = and i1 %1, %tobool.not
  br i1 %or.cond90, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_ctrl = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_ctrl, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.else, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %base6 = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end.if.end7_crit_edge
  %base.0 = phi ptr [ %5, %if.else ], [ %3, %if.end.if.end7_crit_edge ]
  %rem8 = and i32 %gpio, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_gpio_set_strength.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@iproc_gpio_set_strength, %do.body15)) #8
          to label %if.then13 [label %do.body15], !srcloc !113

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_gpio_set_strength.__UNIQUE_ID_ddebug232, ptr noundef %7, ptr noundef nonnull @.str.43, i32 noundef %gpio, i32 noundef %strength) #8
  br label %do.body15

do.body15:                                        ; preds = %if.then13, %if.end7
  %lock = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 4
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %div88 = lshr i32 %strength, 1
  %sub = add nsw i32 %div88, -1
  %io_ctrl_type = getelementptr inbounds %struct.iproc_gpio, ptr %chip, i32 0, i32 3
  %8 = shl i32 %gpio, 4
  %mul35 = and i32 %8, -512
  %shl = shl nuw i32 1, %rem8
  %neg = xor i32 %shl, -1
  %9 = ptrtoint ptr %io_ctrl_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_ctrl_type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %10, label %cond.false32 [
    i32 1, label %do.body15.cond.end38_crit_edge
    i32 2, label %cond.true29
  ]

do.body15.cond.end38_crit_edge:                   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end38

cond.true29:                                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end38

cond.false32:                                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %add36 = or i32 %mul35, 88
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false32, %cond.true29, %do.body15.cond.end38_crit_edge
  %cond39 = phi i32 [ 0, %cond.true29 ], [ %add36, %cond.false32 ], [ 8, %do.body15.cond.end38_crit_edge ]
  %add.ptr = getelementptr i8, ptr %base.0, i32 %cond39
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !109
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %and = and i32 %13, %neg
  %and43 = and i32 %sub, 1
  %shl44 = shl nuw i32 %and43, %rem8
  %or = or i32 %and, %shl44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !112
  %15 = ptrtoint ptr %io_ctrl_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_ctrl_type, align 4
  %.off = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %add37.1 = or i32 %mul35, 92
  %spec.select = select i1 %switch, i32 4, i32 %add37.1
  %add.ptr.1 = getelementptr i8, ptr %base.0, i32 %spec.select
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #8, !srcloc !109
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %and.1 = and i32 %18, %neg
  %shr.1 = lshr i32 %sub, 1
  %and43.1 = and i32 %shr.1, 1
  %shl44.1 = shl nuw i32 %and43.1, %rem8
  %or.1 = or i32 %and.1, %shl44.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %19) #8, !srcloc !112
  %20 = ptrtoint ptr %io_ctrl_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_ctrl_type, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %21, label %cond.false32.2 [
    i32 1, label %cond.true.2
    i32 2, label %cond.end38.cond.end38.2_crit_edge
  ]

cond.end38.cond.end38.2_crit_edge:                ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end38.2

cond.true.2:                                      ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end38.2

cond.false32.2:                                   ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #10
  %add37.2 = or i32 %mul35, 96
  br label %cond.end38.2

cond.end38.2:                                     ; preds = %cond.false32.2, %cond.true.2, %cond.end38.cond.end38.2_crit_edge
  %cond39.2 = phi i32 [ 0, %cond.true.2 ], [ %add37.2, %cond.false32.2 ], [ 8, %cond.end38.cond.end38.2_crit_edge ]
  %add.ptr.2 = getelementptr i8, ptr %base.0, i32 %cond39.2
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #8, !srcloc !109
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %and.2 = and i32 %24, %neg
  %shr.2 = lshr i32 %sub, 2
  %shl44.2 = shl nuw i32 %shr.2, %rem8
  %or.2 = or i32 %and.2, %shl44.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 %25) #8, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end38.2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end38.2 ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !28, !29, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !69, !71, !72, !73, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_pinctrl_iproc_gpio__233_923_iproc_gpio_init3s, !1, !"__initcall__kmod_pinctrl_iproc_gpio__233_923_iproc_gpio_init3s", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 923, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 913, i32 11}
!4 = !{ptr @iproc_gpio_driver, !5, !"iproc_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 911, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 792, i32 44}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 796, i32 7}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 808, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @iproc_gpio_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @iproc_gpio_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 818, i32 10}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 826, i32 41}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 827, i32 3}
!24 = !{ptr @iproc_gpio_probe._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @iproc_gpio_probe._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @iproc_gpio_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 831, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 848, i32 8}
!31 = !{ptr @iproc_gpio_probe.lock_key, !32, !"lock_key", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 879, i32 8}
!33 = !{ptr @iproc_gpio_probe.request_key, !32, !"request_key", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 881, i32 3}
!36 = !{ptr @iproc_gpio_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @iproc_gpio_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 888, i32 4}
!40 = !{ptr @iproc_gpio_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @iproc_gpio_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 896, i32 5}
!44 = !{ptr @iproc_gpio_probe._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @iproc_gpio_probe._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 338, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @iproc_gpio_direction_input.__UNIQUE_ID_ddebug228, !47, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 354, i32 2}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @iproc_gpio_direction_output.__UNIQUE_ID_ddebug229, !52, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 380, i32 2}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @iproc_gpio_set.__UNIQUE_ID_ddebug230, !56, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 277, i32 3}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @iproc_gpio_irq_set_type._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @iproc_gpio_irq_set_type._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 296, i32 2}
!66 = !{ptr @iproc_gpio_irq_set_type.__UNIQUE_ID_ddebug227, !65, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 750, i32 12}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 763, i32 3}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @iproc_gpio_register_pinconf._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @iproc_gpio_register_pinconf._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @iproc_pctrl_ops, !75, !"iproc_pctrl_ops", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 467, i32 33}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 464, i32 9}
!78 = !{ptr @iproc_pconf_ops, !79, !"iproc_pconf_ops", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 723, i32 33}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 714, i32 4}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @iproc_pin_config_set._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @iproc_pin_config_set._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 515, i32 2}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @iproc_gpio_set_pull.__UNIQUE_ID_ddebug231, !86, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 572, i32 2}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @iproc_gpio_set_strength.__UNIQUE_ID_ddebug232, !90, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!93 = !{ptr @iproc_pinconf_disable_map, !94, !"iproc_pinconf_disable_map", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 397, i32 36}
!95 = !{ptr @iproc_gpio_of_match, !96, !"iproc_gpio_of_match", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c", i32 770, i32 34}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i8 0, i8 2}
!109 = !{i64 4669378}
!110 = !{i64 2153992642}
!111 = !{i64 2153993016}
!112 = !{i64 4668960}
!113 = !{i64 2148713724, i64 2148713729, i64 2148713742, i64 2148713786, i64 2148713820, i64 2148713841}
!114 = !{i64 2154008256}
!115 = !{i64 2154011767}
!116 = !{i64 2153995931}
!117 = !{i64 2153994617}
!118 = !{i64 2153995237}
!119 = !{i64 2154025286}
!120 = !{i64 2154018994}
!121 = !{i64 2154019540}
!122 = !{i64 2153993981}
!123 = !{i64 2154013943}
!124 = !{i64 2154014410}
!125 = !{i64 2154015099}
!126 = !{i64 2154015489}
!127 = !{i64 2154023454}
!128 = !{i64 2154023743}
