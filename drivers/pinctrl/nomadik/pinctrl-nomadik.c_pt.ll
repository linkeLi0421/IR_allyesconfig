; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/nomadik/pinctrl-nomadik.c_pt.bc'
source_filename = "../drivers/pinctrl/nomadik/pinctrl-nomadik.c"
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nmk_cfg_param = type { ptr, i32, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.nmk_gpio_chip = type { %struct.gpio_chip, %struct.irq_chip, ptr, ptr, i32, ptr, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.nmk_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.nmk_pinctrl_soc_data = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.prcm_gpiocr_altcx_pin_desc = type { i16, [4 x %struct.prcm_gpiocr_altcx] }
%struct.prcm_gpiocr_altcx = type { i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.nmk_pingroup = type { ptr, ptr, i32, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.nmk_function = type { ptr, ptr, i32 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_pinctrl_nomadik__238_1945_nmk_gpio_init4 = internal global ptr @nmk_gpio_init, section ".initcall4.init", align 4
@__initcall__kmod_pinctrl_nomadik__239_1951_nmk_pinctrl_init1 = internal global ptr @nmk_pinctrl_init, section ".initcall1.init", align 4
@nmk_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nmk_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nmk_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@nmk_gpio_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,nomadik-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nmk_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not populate nmk chip struct\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nmk_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pinctrl/nomadik/pinctrl-nomadik.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nmk_gpio_probe._entry_ptr = internal global ptr @nmk_gpio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,supports-sleepmode\00", [42 x i8] zeroinitializer }, align 32
@nmk_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&nmk_chip->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nmk%u-%u-%u\00", [20 x i8] zeroinitializer }, align 32
@nmk_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nmk_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nmk_gpio_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1165, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chip registered\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nmk_gpio_probe._entry_ptr.12 = internal global ptr @nmk_gpio_probe._entry.9, section ".printk_index", align 4
@nmk_gpio_populate_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013populate \22%pOFn\22: device not found\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nmk_gpio_populate_chip\00", [41 x i8] zeroinitializer }, align 32
@nmk_gpio_populate_chip._entry_ptr = internal global ptr @nmk_gpio_populate_chip._entry, section ".printk_index", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-bank\00", [22 x i8] zeroinitializer }, align 32
@nmk_gpio_populate_chip._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 1035, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"populate: gpio-bank property not found\0A\00", [56 x i8] zeroinitializer }, align 32
@nmk_gpio_populate_chip._entry_ptr.18 = internal global ptr @nmk_gpio_populate_chip._entry.16, section ".printk_index", align 4
@nmk_gpio_chips = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"altA\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"altB\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"altC\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"altC1\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"altC2\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"altC3\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"altC4\00", [26 x i8] zeroinitializer }, align 32
@__const.nmk_gpio_dbg_show_one.modes = private unnamed_addr constant [8 x ptr] [ptr @.str, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], align 4
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" gpio-%-3d (%-20.20s) out %s           %s\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hi\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lo\00", [29 x i8] zeroinitializer }, align 32
@nmk_gpio_dbg_show_one.pulls = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"none        \00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pull enabled\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" gpio-%-3d (%-20.20s) in  %s %s\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" VAL %d\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"edge-rising\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"edge-falling\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"edge-undefined\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" irq-%d %s%s\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" wakeup\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nmk_gpio_slpm_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nmk_gpio_slpm_lock\00", [45 x i8] zeroinitializer }, align 32
@nmk_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nmk_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.43, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nmk_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nmk_pinctrl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl-nomadik\00", [16 x i8] zeroinitializer }, align 32
@nmk_pinctrl_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,stn8815-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,db8500-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,db8540-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@nmk_pinctrl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @nmk_pinctrl_suspend, ptr @nmk_pinctrl_resume, ptr @nmk_pinctrl_suspend, ptr @nmk_pinctrl_resume, ptr @nmk_pinctrl_suspend, ptr @nmk_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nomadik-gpio-chips\00", [45 x i8] zeroinitializer }, align 32
@nmk_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 1875, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"populate NMK GPIO %d \22%pOFn\22\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nmk_pinctrl_probe\00", [46 x i8] zeroinitializer }, align 32
@nmk_pinctrl_probe._entry_ptr = internal global ptr @nmk_pinctrl_probe._entry, section ".printk_index", align 4
@nmk_pinctrl_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 1880, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"could not populate nmk chip struct - continue anyway\0A\00", [42 x i8] zeroinitializer }, align 32
@nmk_pinctrl_probe._entry_ptr.49 = internal global ptr @nmk_pinctrl_probe._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prcm\00", [27 x i8] zeroinitializer }, align 32
@nmk_pinctrl_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.46, ptr @.str.3, i32 1892, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"No PRCM base, assuming no ALT-Cx control is available\0A\00", [41 x i8] zeroinitializer }, align 32
@nmk_pinctrl_probe._entry_ptr.53 = internal global ptr @nmk_pinctrl_probe._entry.51, section ".printk_index", align 4
@nmk_pinctrl_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.46, ptr @.str.3, i32 1894, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"missing PRCM base address\0A\00", [37 x i8] zeroinitializer }, align 32
@nmk_pinctrl_probe._entry_ptr.56 = internal global ptr @nmk_pinctrl_probe._entry.54, section ".printk_index", align 4
@nmk_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.43, ptr null, i32 0, ptr @nmk_pinctrl_ops, ptr @nmk_pinmux_ops, ptr @nmk_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@nmk_pinctrl_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.46, ptr @.str.3, i32 1905, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not register Nomadik pinctrl driver\0A\00", [53 x i8] zeroinitializer }, align 32
@nmk_pinctrl_probe._entry_ptr.59 = internal global ptr @nmk_pinctrl_probe._entry.57, section ".printk_index", align 4
@nmk_pinctrl_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.46, ptr @.str.3, i32 1910, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"initialized Nomadik pin control driver\0A\00", [56 x i8] zeroinitializer }, align 32
@nmk_pinctrl_probe._entry_ptr.62 = internal global ptr @nmk_pinctrl_probe._entry.60, section ".printk_index", align 4
@nmk_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @nmk_get_groups_cnt, ptr @nmk_get_group_name, ptr @nmk_get_group_pins, ptr @nmk_pin_dbg_show, ptr @nmk_pinctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@nmk_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @nmk_pmx_get_funcs_cnt, ptr @nmk_pmx_get_func_name, ptr @nmk_pmx_get_func_groups, ptr @nmk_pmx_set, ptr @nmk_gpio_request_enable, ptr @nmk_gpio_disable_free, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@nmk_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @nmk_pin_config_get, ptr @nmk_pin_config_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid pin offset\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"groups\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ste,config\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pins\00", [27 x i8] zeroinitializer }, align 32
@nmk_cfg_params = internal constant { [8 x %struct.nmk_cfg_param], [32 x i8] } { [8 x %struct.nmk_cfg_param] [%struct.nmk_cfg_param { ptr @.str.68, i32 0, ptr @nmk_pin_input_modes, i32 3 }, %struct.nmk_cfg_param { ptr @.str.69, i32 0, ptr @nmk_pin_output_modes, i32 3 }, %struct.nmk_cfg_param { ptr @.str.70, i32 0, ptr @nmk_pin_sleep_modes, i32 2 }, %struct.nmk_cfg_param { ptr @.str.71, i32 0, ptr @nmk_pin_sleep_input_modes, i32 4 }, %struct.nmk_cfg_param { ptr @.str.72, i32 0, ptr @nmk_pin_sleep_output_modes, i32 3 }, %struct.nmk_cfg_param { ptr @.str.73, i32 0, ptr @nmk_pin_sleep_wakeup_modes, i32 2 }, %struct.nmk_cfg_param { ptr @.str.74, i32 0, ptr @nmk_pin_gpio_modes, i32 2 }, %struct.nmk_cfg_param { ptr @.str.75, i32 0, ptr @nmk_pin_sleep_pdis_modes, i32 2 }], [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ste,input\00", [22 x i8] zeroinitializer }, align 32
@nmk_pin_input_modes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2048, i32 4096], [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ste,output\00", [21 x i8] zeroinitializer }, align 32
@nmk_pin_output_modes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16384, i32 49152, i32 16384], [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ste,sleep\00", [22 x i8] zeroinitializer }, align 32
@nmk_pin_sleep_modes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 134217728], [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ste,sleep-input\00", [16 x i8] zeroinitializer }, align 32
@nmk_pin_sleep_input_modes = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 589824, i32 655360, i32 720896, i32 524288], [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ste,sleep-output\00", [47 x i8] zeroinitializer }, align 32
@nmk_pin_sleep_output_modes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3145728, i32 5242880, i32 1048576], [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ste,sleep-wakeup\00", [47 x i8] zeroinitializer }, align 32
@nmk_pin_sleep_wakeup_modes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8192, i32 0], [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ste,gpio\00", [23 x i8] zeroinitializer }, align 32
@nmk_pin_gpio_modes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 67108864], [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ste,sleep-pull-disable\00", [41 x i8] zeroinitializer }, align 32
@nmk_pin_sleep_pdis_modes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8388608, i32 16777216], [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO%d\00", [25 x i8] zeroinitializer }, align 32
@nmk_pmx_set.slpm = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@nmk_pmx_set.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 1, i8 127, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl_nomadik\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nmk_pmx_set\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"enable group %s, %u pins\0A\00", [38 x i8] zeroinitializer }, align 32
@nmk_pmx_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.3, i32 1580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"invalid pin offset %d in group %s at index %d\0A\00", [49 x i8] zeroinitializer }, align 32
@nmk_pmx_set._entry_ptr = internal global ptr @nmk_pmx_set._entry, section ".printk_index", align 4
@nmk_pmx_set.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.3, ptr @.str.81, i8 1, i8 -117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting pin %d to altsetting %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nmk_gpio_disable_lazy_irq.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nmk_gpio_disable_lazy_irq\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%d: clearing interrupt mask\0A\00", [35 x i8] zeroinitializer }, align 32
@nmk_prcm_altcx_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PRCM GPIOCR: alternate-C%i is invalid\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nmk_prcm_altcx_set_mode\00", [40 x i8] zeroinitializer }, align 32
@nmk_prcm_altcx_set_mode._entry_ptr = internal global ptr @nmk_prcm_altcx_set_mode._entry, section ".printk_index", align 4
@nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 0, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PRCM GPIOCR: pin %i is not found\0A\00", [62 x i8] zeroinitializer }, align 32
@nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.85, ptr @.str.3, ptr @.str.87, i8 0, i8 122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"PRCM GPIOCR: pin %i: alternate-C%i has been disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@nmk_prcm_altcx_set_mode._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.85, ptr @.str.3, i32 499, ptr @.str.90, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"PRCM GPIOCR: pin %i: alternate-C%i does not exist\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nmk_prcm_altcx_set_mode._entry_ptr.91 = internal global ptr @nmk_prcm_altcx_set_mode._entry.88, section ".printk_index", align 4
@nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.85, ptr @.str.3, ptr @.str.87, i8 0, i8 -127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.85, ptr @.str.3, ptr @.str.92, i8 0, i8 -125, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"PRCM GPIOCR: pin %i: alternate-C%i has been selected\0A\00", [42 x i8] zeroinitializer }, align 32
@nmk_gpio_request_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 1635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid range\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nmk_gpio_request_enable\00", [40 x i8] zeroinitializer }, align 32
@nmk_gpio_request_enable._entry_ptr = internal global ptr @nmk_gpio_request_enable._entry, section ".printk_index", align 4
@nmk_gpio_request_enable._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.3, i32 1639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missing GPIO chip in range\0A\00", [36 x i8] zeroinitializer }, align 32
@nmk_gpio_request_enable._entry_ptr.97 = internal global ptr @nmk_gpio_request_enable._entry.95, section ".printk_index", align 4
@nmk_gpio_request_enable.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.94, ptr @.str.3, ptr @.str.98, i8 1, i8 -101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enable pin %u as GPIO\0A\00", [41 x i8] zeroinitializer }, align 32
@nmk_gpio_disable_free.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.99, ptr @.str.3, ptr @.str.100, i8 1, i8 -97, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nmk_gpio_disable_free\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disable pin %u as GPIO\0A\00", [40 x i8] zeroinitializer }, align 32
@nmk_pin_config_set.pullnames = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@nmk_pin_config_set.slpmnames = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.105, ptr @.str.106], [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"input/wakeup\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no-change/no-wakeup\00", [44 x i8] zeroinitializer }, align 32
@nmk_pin_config_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 1706, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid pin offset %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nmk_pin_config_set\00", [45 x i8] zeroinitializer }, align 32
@nmk_pin_config_set._entry_ptr = internal global ptr @nmk_pin_config_set._entry, section ".printk_index", align 4
@nmk_pin_config_set.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.108, ptr @.str.3, ptr @.str.109, i8 1, i8 -75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pin %d: sleep pull %s, dir %s, val %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"same\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@nmk_pin_config_set.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.108, ptr @.str.3, ptr @.str.115, i8 1, i8 -73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pin %d [%#lx]: pull %s, slpm %s (%s%s), lowemi %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"output \00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"nmk_gpio_driver\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1920, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1922, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"nmk_gpio_match\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1915, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1094, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1099, i32 29 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1113, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1136, i32 40 }
@___asan_gen_.158 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1159, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1165, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1031, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1034, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1035, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"nmk_gpio_chips\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 280, i32 30 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 998, i32 17 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 926, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 927, i32 22 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 928, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 929, i32 24 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 930, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 931, i32 24 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 932, i32 24 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 944, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 946, i32 16 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 947, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 947, i32 25 }
@___asan_gen_.230 = private unnamed_addr constant [6 x i8] c"pulls\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 953, i32 29 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 954, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 955, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 958, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 965, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 976, i32 15 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 978, i32 15 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 980, i32 15 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 984, i32 18 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 985, i32 29 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 985, i32 41 }
@___asan_gen_.263 = private unnamed_addr constant [19 x i8] c"nmk_gpio_slpm_lock\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 282, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant [19 x i8] c"nmk_pinctrl_driver\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1932, i32 31 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1934, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant [18 x i8] c"nmk_pinctrl_match\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1794, i32 34 }
@___asan_gen_.278 = private unnamed_addr constant [19 x i8] c"nmk_pinctrl_pm_ops\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1928, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1871, i32 34 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1873, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1878, i32 5 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1885, i32 33 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1890, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1894, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"nmk_pinctrl_desc\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1786, i32 28 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1905, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1910, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [16 x i8] c"nmk_pinctrl_ops\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1479, i32 33 }
@___asan_gen_.332 = private unnamed_addr constant [15 x i8] c"nmk_pinmux_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1666, i32 32 }
@___asan_gen_.335 = private unnamed_addr constant [16 x i8] c"nmk_pinconf_ops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1781, i32 33 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1227, i32 17 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1400, i32 36 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1404, i32 39 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1423, i32 35 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1430, i32 39 }
@___asan_gen_.353 = private unnamed_addr constant [15 x i8] c"nmk_cfg_params\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1329, i32 35 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1330, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c"nmk_pin_input_modes\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1277, i32 28 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1331, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [21 x i8] c"nmk_pin_output_modes\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1283, i32 28 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1332, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c"nmk_pin_sleep_modes\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1289, i32 28 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1333, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [26 x i8] c"nmk_pin_sleep_input_modes\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1294, i32 28 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1334, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [27 x i8] c"nmk_pin_sleep_output_modes\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1301, i32 28 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1335, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [27 x i8] c"nmk_pin_sleep_wakeup_modes\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1307, i32 28 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1336, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [19 x i8] c"nmk_pin_gpio_modes\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1312, i32 28 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1337, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [25 x i8] c"nmk_pin_sleep_pdis_modes\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1317, i32 28 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1359, i32 31 }
@___asan_gen_.407 = private unnamed_addr constant [5 x i8] c"slpm\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1521, i32 22 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1532, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1578, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1583, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 431, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 457, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 467, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 486, i32 6 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 497, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 524, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1635, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1639, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1645, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1662, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [10 x i8] c"pullnames\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1686, i32 21 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1687, i32 26 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1688, i32 24 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1689, i32 26 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1690, i32 23 }
@___asan_gen_.500 = private unnamed_addr constant [10 x i8] c"slpmnames\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1692, i32 21 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1693, i32 28 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1694, i32 30 }
@___asan_gen_.509 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1705, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1744, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.546 = private constant [45 x i8] c"../drivers/pinctrl/nomadik/pinctrl-nomadik.c\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1753, i32 3 }
@llvm.compiler.used = appending global [161 x ptr] [ptr @__initcall__kmod_pinctrl_nomadik__238_1945_nmk_gpio_init4, ptr @__initcall__kmod_pinctrl_nomadik__239_1951_nmk_pinctrl_init1, ptr @nmk_gpio_populate_chip._entry, ptr @nmk_gpio_populate_chip._entry.16, ptr @nmk_gpio_populate_chip._entry_ptr, ptr @nmk_gpio_populate_chip._entry_ptr.18, ptr @nmk_gpio_probe._entry, ptr @nmk_gpio_probe._entry.9, ptr @nmk_gpio_probe._entry_ptr, ptr @nmk_gpio_probe._entry_ptr.12, ptr @nmk_gpio_request_enable._entry, ptr @nmk_gpio_request_enable._entry.95, ptr @nmk_gpio_request_enable._entry_ptr, ptr @nmk_gpio_request_enable._entry_ptr.97, ptr @nmk_pin_config_set._entry, ptr @nmk_pin_config_set._entry_ptr, ptr @nmk_pinctrl_probe._entry, ptr @nmk_pinctrl_probe._entry.47, ptr @nmk_pinctrl_probe._entry.51, ptr @nmk_pinctrl_probe._entry.54, ptr @nmk_pinctrl_probe._entry.57, ptr @nmk_pinctrl_probe._entry.60, ptr @nmk_pinctrl_probe._entry_ptr, ptr @nmk_pinctrl_probe._entry_ptr.49, ptr @nmk_pinctrl_probe._entry_ptr.53, ptr @nmk_pinctrl_probe._entry_ptr.56, ptr @nmk_pinctrl_probe._entry_ptr.59, ptr @nmk_pinctrl_probe._entry_ptr.62, ptr @nmk_pmx_set._entry, ptr @nmk_pmx_set._entry_ptr, ptr @nmk_prcm_altcx_set_mode._entry, ptr @nmk_prcm_altcx_set_mode._entry.88, ptr @nmk_prcm_altcx_set_mode._entry_ptr, ptr @nmk_prcm_altcx_set_mode._entry_ptr.91, ptr @nmk_gpio_driver, ptr @.str, ptr @nmk_gpio_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nmk_gpio_probe.__key, ptr @.str.7, ptr @.str.8, ptr @nmk_gpio_probe.lock_key, ptr @nmk_gpio_probe.request_key, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @nmk_gpio_chips, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @nmk_gpio_dbg_show_one.pulls, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @nmk_gpio_slpm_lock, ptr @.str.42, ptr @nmk_pinctrl_driver, ptr @.str.43, ptr @nmk_pinctrl_match, ptr @nmk_pinctrl_pm_ops, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @nmk_pinctrl_desc, ptr @.str.58, ptr @.str.61, ptr @nmk_pinctrl_ops, ptr @nmk_pinmux_ops, ptr @nmk_pinconf_ops, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @nmk_cfg_params, ptr @.str.68, ptr @nmk_pin_input_modes, ptr @.str.69, ptr @nmk_pin_output_modes, ptr @.str.70, ptr @nmk_pin_sleep_modes, ptr @.str.71, ptr @nmk_pin_sleep_input_modes, ptr @.str.72, ptr @nmk_pin_sleep_output_modes, ptr @.str.73, ptr @nmk_pin_sleep_wakeup_modes, ptr @.str.74, ptr @nmk_pin_gpio_modes, ptr @.str.75, ptr @nmk_pin_sleep_pdis_modes, ptr @.str.76, ptr @nmk_pmx_set.slpm, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @nmk_pin_config_set.pullnames, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @nmk_pin_config_set.slpmnames, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_populate_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_populate_chip._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_chips to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_dbg_show_one.pulls to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_slpm_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_cfg_params to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_input_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_output_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_sleep_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_sleep_input_modes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_sleep_output_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_sleep_wakeup_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_gpio_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_sleep_pdis_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pmx_set.slpm to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pmx_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_prcm_altcx_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_prcm_altcx_set_mode._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_request_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_gpio_request_enable._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_config_set.pullnames to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_config_set.slpmnames to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_pin_config_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nmk_gpio_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_pinctrl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nmk_pinctrl_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_gpio_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call fastcc ptr @nmk_gpio_populate_chip(ptr noundef %1, ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %bank = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bank, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id, align 4
  %call6 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %tobool.i = icmp ne ptr %call.i, null
  %frombool = zext i1 %tobool.i to i8
  %sleepmode = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %sleepmode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %sleepmode, align 4
  %lock = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @nmk_gpio_probe.__key, i16 noundef signext 3) #8
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nmk_gpio_get_dir, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 8
  %10 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nmk_gpio_make_input, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 10
  %11 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nmk_gpio_get_input, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 9
  %12 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nmk_gpio_make_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 12
  %13 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nmk_gpio_set_output, ptr %set, align 4
  %dbg_show = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 16
  %14 = ptrtoint ptr %dbg_show to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nmk_gpio_dbg_show, ptr %dbg_show, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 23
  %15 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %can_sleep, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 4
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %owner, align 4
  %irqchip15 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 1
  %irq_ack = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @nmk_gpio_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 1, i32 7
  %18 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nmk_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 1, i32 9
  %19 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nmk_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 1, i32 13
  %20 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nmk_gpio_irq_set_type, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 1, i32 14
  %21 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nmk_gpio_irq_set_wake, ptr %irq_set_wake, align 4
  %irq_startup = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %irq_startup to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @nmk_gpio_irq_startup, ptr %irq_startup, align 4
  %irq_shutdown = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %irq_shutdown to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @nmk_gpio_irq_shutdown, ptr %irq_shutdown, align 4
  %flags = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 1, i32 33
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %flags, align 4
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 19
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 20
  %29 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %30 to i32
  %add = add i32 %28, -1
  %sub = add i32 %add, %conv
  %call18 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.8, i32 noundef %26, i32 noundef %28, i32 noundef %sub) #8
  %name = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call18, ptr %name, align 4
  %irq19 = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 37
  %32 = ptrtoint ptr %irq19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %irqchip15, ptr %irq19, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 37, i32 13
  %33 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nmk_gpio_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 37, i32 15
  %34 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #8
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 37, i32 16
  %35 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool24.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool24.not, label %if.end8.cleanup_crit_edge, label %if.end26

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end8
  %36 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call6, ptr %call5.i.i, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 37, i32 10
  %37 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 37, i32 9
  %38 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @handle_edge_irq, ptr %handler, align 4
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 3
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  %call28 = tail call i32 @clk_enable(ptr noundef %40) #8
  %addr = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 2
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !287
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %lowemi = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 16
  %45 = ptrtoint ptr %lowemi to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %lowemi, align 4
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %47) #8
  %of_node31 = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 39
  %48 = ptrtoint ptr %of_node31 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %1, ptr %of_node31, align 4
  %call33 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %call, ptr noundef %call, ptr noundef nonnull @nmk_gpio_probe.lock_key, ptr noundef nonnull @nmk_gpio_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end26.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ 0, %if.end36 ], [ %call6, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %call33, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nmk_gpio_populate_chip(ptr noundef %np, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !288
  %call = tail call ptr @of_find_device_by_node(ptr noundef %np) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %np) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.15, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  call void @platform_device_put(ptr noundef nonnull %call) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @platform_device_put(ptr noundef nonnull %call) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %dev14 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev14, i32 noundef 584, i32 noundef 3520) #8
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @platform_device_put(ptr noundef nonnull %call) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %bank = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %bank, align 4
  %mul = shl i32 %6, 5
  %base21 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %base21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %base21, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %9 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 32, ptr %ngpio, align 4
  %dev22 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev22, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end19.dev_name.exit_crit_edge ]
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev22, ptr %parent, align 4
  %call25 = call ptr @platform_get_resource(ptr noundef nonnull %call, i32 noundef 512, i32 noundef 0) #8
  %call27 = call ptr @devm_ioremap_resource(ptr noundef %dev14, ptr noundef %call25) #8
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @platform_device_put(ptr noundef nonnull %call) #8
  br label %cleanup

if.end31:                                         ; preds = %dev_name.exit
  %addr = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call27, ptr %addr, align 4
  %call33 = call ptr @clk_get(ptr noundef %dev22, ptr noundef null) #8
  %cmp.i90 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @platform_device_put(ptr noundef nonnull %call) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call37 = call i32 @clk_prepare(ptr noundef %call33) #8
  %clk38 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %clk38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call33, ptr %clk38, align 4
  %18 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %19)
  %cmp = icmp ugt i32 %19, 15
  br i1 %cmp, label %do.body44, label %do.end52, !prof !289

do.body44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/nomadik/pinctrl-nomadik.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1076, 0\0A.popsection", ""() #8, !srcloc !290
  unreachable

do.end52:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %arrayidx53 = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %arrayidx53, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.then35, %if.then29, %if.then17, %if.then12, %do.end8, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end8 ], [ %4, %if.then12 ], [ %call27, %if.then29 ], [ %call33, %if.then35 ], [ %call.i, %do.end52 ], [ inttoptr (i32 -12 to ptr), %if.then17 ], [ inttoptr (i32 -19 to ptr), %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_gpio_get_dir(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %1) #8
  %addr = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  %7 = xor i32 %4, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = lshr i32 %8, %offset
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_gpio_make_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  tail call void @arm_heavy_mb() #8
  %shl = shl nuw i32 1, %offset
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %addr = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !293
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_gpio_get_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %1) #8
  %addr = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !287
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  %6 = lshr i32 %5, %offset
  %7 = and i32 %6, 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_gpio_make_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !295
  tail call void @arm_heavy_mb() #8
  %shl.i = shl nuw i32 1, %offset
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %addr.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !293
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i.i = icmp eq i32 %val, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr.i, align 4
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #8, !srcloc !293
  br label %__nmk_gpio_make_output.exit

do.body1.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr5.i.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %2) #8, !srcloc !293
  br label %__nmk_gpio_make_output.exit

__nmk_gpio_make_output.exit:                      ; preds = %do.body1.i.i, %do.body.i.i
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmk_gpio_set_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %shl3.i = shl nuw i32 1, %offset
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl3.i) #8
  %addr4.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr4.i, align 4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !293
  br label %__nmk_gpio_set_output.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr5.i = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %2) #8, !srcloc !293
  br label %__nmk_gpio_set_output.exit

__nmk_gpio_set_output.exit:                       ; preds = %do.body1.i, %do.body.i
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmk_gpio_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %gpio.012 = phi i32 [ %inc2, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call fastcc void @nmk_gpio_dbg_show_one(ptr noundef %s, ptr noundef null, ptr noundef %chip, i32 noundef %i.011, i32 noundef %gpio.012)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19) #8
  %inc = add nuw nsw i32 %i.011, 1
  %inc2 = add i32 %gpio.012, 1
  %4 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmk_gpio_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !296
  tail call void @arm_heavy_mb() #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %addr = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call1, i32 0, i32 2
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !293
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmk_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nmk_gpio_irq_maskunmask(ptr noundef %d, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmk_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nmk_gpio_irq_maskunmask(ptr noundef %d, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %and.i96 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.i97.not = icmp eq i32 %and.i96, 0
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %4 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i, align 4
  %tobool.not = icmp ne ptr %5, null
  %6 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %7, %tobool.not
  br i1 %8, label %if.end10, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call11 = tail call i32 @clk_enable(ptr noundef %10) #8
  %lock = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 6
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  br i1 %tobool.i.not, label %if.then18, label %lor.lhs.false.critedge

if.then18:                                        ; preds = %if.end10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %11 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq, align 4
  %fimsc.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 14
  %edge_rising.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %edge_rising.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %edge_rising.i, align 4
  %shl.i = shl nuw i32 1, %12
  %and.i98 = and i32 %14, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i = icmp eq i32 %and.i98, 0
  br i1 %tobool.not.i, label %if.then18.if.end9.i_crit_edge, label %if.then1.i

if.then18.if.end9.i_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then1.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %rimsc.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 13
  %neg.i = xor i32 %shl.i, -1
  %15 = ptrtoint ptr %rimsc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rimsc.i, align 4
  %and7.i = and i32 %16, %neg.i
  store i32 %and7.i, ptr %rimsc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %rimsc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rimsc.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %addr.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #8, !srcloc !293
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then1.i, %if.then18.if.end9.i_crit_edge
  %edge_falling.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 9
  %22 = ptrtoint ptr %edge_falling.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %edge_falling.i, align 4
  %and11.i = and i32 %23, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.then24_crit_edge, label %if.then13.i

if.end9.i.if.then24_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg20.i = xor i32 %shl.i, -1
  %24 = ptrtoint ptr %fimsc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fimsc.i, align 4
  %and21.i = and i32 %25, %neg20.i
  store i32 %and21.i, ptr %fimsc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %fimsc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fimsc.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %addr26.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %addr26.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr26.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %30, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %28) #8, !srcloc !293
  br label %if.then24

lor.lhs.false.critedge:                           ; preds = %if.end10
  br i1 %tobool.i97.not, label %lor.lhs.false.critedge.if.end26_crit_edge, label %lor.lhs.false.critedge.if.then24_crit_edge

lor.lhs.false.critedge.if.then24_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

lor.lhs.false.critedge.if.end26_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %lor.lhs.false.critedge.if.then24_crit_edge, %if.then13.i, %if.end9.i.if.then24_crit_edge
  %hwirq25 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %31 = ptrtoint ptr %hwirq25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hwirq25, align 4
  %fwimsc.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 12
  %edge_rising.i99 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 8
  %33 = ptrtoint ptr %edge_rising.i99 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %edge_rising.i99, align 4
  %shl.i100 = shl nuw i32 1, %32
  %and.i101 = and i32 %34, %shl.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %tobool.not.i102 = icmp eq i32 %and.i101, 0
  br i1 %tobool.not.i102, label %if.then24.if.end9.i111_crit_edge, label %if.then1.i103

if.then24.if.end9.i111_crit_edge:                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i111

if.then1.i103:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %rwimsc.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 11
  %neg.i104 = xor i32 %shl.i100, -1
  %35 = ptrtoint ptr %rwimsc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rwimsc.i, align 4
  %and7.i105 = and i32 %36, %neg.i104
  store i32 %and7.i105, ptr %rwimsc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %rwimsc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rwimsc.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %addr.i106 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 2
  %40 = ptrtoint ptr %addr.i106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %41, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %39) #8, !srcloc !293
  br label %if.end9.i111

if.end9.i111:                                     ; preds = %if.then1.i103, %if.then24.if.end9.i111_crit_edge
  %edge_falling.i108 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 9
  %42 = ptrtoint ptr %edge_falling.i108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %edge_falling.i108, align 4
  %and11.i109 = and i32 %43, %shl.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i109)
  %tobool12.not.i110 = icmp eq i32 %and11.i109, 0
  br i1 %tobool12.not.i110, label %if.end9.i111.if.end26_crit_edge, label %if.then13.i112

if.end9.i111.if.end26_crit_edge:                  ; preds = %if.end9.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then13.i112:                                   ; preds = %if.end9.i111
  call void @__sanitizer_cov_trace_pc() #10
  %neg20.i113 = xor i32 %shl.i100, -1
  %44 = ptrtoint ptr %fwimsc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fwimsc.i, align 4
  %and21.i114 = and i32 %45, %neg20.i113
  store i32 %and21.i114, ptr %fwimsc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %fwimsc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fwimsc.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %addr26.i115 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 2
  %49 = ptrtoint ptr %addr26.i115 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %addr26.i115, align 4
  %add.ptr27.i116 = getelementptr i8, ptr %50, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i116, i32 %48) #8, !srcloc !293
  br label %if.end26

if.end26:                                         ; preds = %if.then13.i112, %if.end9.i111.if.end26_crit_edge, %lor.lhs.false.critedge.if.end26_crit_edge
  %hwirq27 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %51 = ptrtoint ptr %hwirq27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hwirq27, align 4
  %shl = shl nuw i32 1, %52
  %neg = xor i32 %shl, -1
  %edge_rising = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 8
  %53 = ptrtoint ptr %edge_rising to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %edge_rising, align 4
  %and28 = and i32 %54, %neg
  store i32 %and28, ptr %edge_rising, align 4
  %and29 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end26.if.end35_crit_edge, label %if.then31

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %hwirq27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hwirq27, align 4
  %shl33 = shl nuw i32 1, %56
  %or = or i32 %shl33, %and28
  %57 = ptrtoint ptr %edge_rising to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or, ptr %edge_rising, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end26.if.end35_crit_edge
  %58 = ptrtoint ptr %hwirq27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hwirq27, align 4
  %shl37 = shl nuw i32 1, %59
  %neg38 = xor i32 %shl37, -1
  %edge_falling = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 9
  %60 = ptrtoint ptr %edge_falling to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %edge_falling, align 4
  %and39 = and i32 %61, %neg38
  store i32 %and39, ptr %edge_falling, align 4
  %and40 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end35.if.end47_crit_edge, label %if.then42

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %hwirq27 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hwirq27, align 4
  %shl44 = shl nuw i32 1, %63
  %or46 = or i32 %shl44, %and39
  %64 = ptrtoint ptr %edge_falling to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or46, ptr %edge_falling, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end35.if.end47_crit_edge
  br i1 %tobool.i.not, label %if.then49, label %lor.lhs.false54.critedge

if.then49:                                        ; preds = %if.end47
  %65 = ptrtoint ptr %hwirq27 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hwirq27, align 4
  %fimsc.i119 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 14
  %67 = ptrtoint ptr %edge_rising to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %edge_rising, align 4
  %shl.i121 = shl nuw i32 1, %66
  %and.i122 = and i32 %68, %shl.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.not.i123 = icmp eq i32 %and.i122, 0
  br i1 %tobool.not.i123, label %if.then49.if.end9.i130_crit_edge, label %if.then1.i124

if.then49.if.end9.i130_crit_edge:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i130

if.then1.i124:                                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %rimsc.i118 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 13
  %69 = ptrtoint ptr %rimsc.i118 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rimsc.i118, align 4
  %or.i = or i32 %70, %shl.i121
  store i32 %or.i, ptr %rimsc.i118, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %rimsc.i118 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rimsc.i118, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  %addr.i125 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 2
  %74 = ptrtoint ptr %addr.i125 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %addr.i125, align 4
  %add.ptr.i126 = getelementptr i8, ptr %75, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %73) #8, !srcloc !293
  br label %if.end9.i130

if.end9.i130:                                     ; preds = %if.then1.i124, %if.then49.if.end9.i130_crit_edge
  %76 = ptrtoint ptr %edge_falling to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %edge_falling, align 4
  %and11.i128 = and i32 %77, %shl.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i128)
  %tobool12.not.i129 = icmp eq i32 %and11.i128, 0
  br i1 %tobool12.not.i129, label %if.end9.i130.if.then57_crit_edge, label %if.then13.i131

if.end9.i130.if.then57_crit_edge:                 ; preds = %if.end9.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.then13.i131:                                   ; preds = %if.end9.i130
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %fimsc.i119 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fimsc.i119, align 4
  %or17.i = or i32 %79, %shl.i121
  store i32 %or17.i, ptr %fimsc.i119, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %fimsc.i119 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fimsc.i119, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #8
  %addr26.i132 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 2
  %83 = ptrtoint ptr %addr26.i132 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %addr26.i132, align 4
  %add.ptr27.i133 = getelementptr i8, ptr %84, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i133, i32 %82) #8, !srcloc !293
  br label %if.then57

lor.lhs.false54.critedge:                         ; preds = %if.end47
  br i1 %tobool.i97.not, label %lor.lhs.false54.critedge.if.end59_crit_edge, label %lor.lhs.false54.critedge.if.then57_crit_edge

lor.lhs.false54.critedge.if.then57_crit_edge:     ; preds = %lor.lhs.false54.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false54.critedge.if.end59_crit_edge:      ; preds = %lor.lhs.false54.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %lor.lhs.false54.critedge.if.then57_crit_edge, %if.then13.i131, %if.end9.i130.if.then57_crit_edge
  %85 = ptrtoint ptr %hwirq27 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hwirq27, align 4
  %fwimsc.i136 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 12
  %87 = ptrtoint ptr %edge_rising to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %edge_rising, align 4
  %shl.i138 = shl nuw i32 1, %86
  %and.i139 = and i32 %88, %shl.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139)
  %tobool.not.i140 = icmp eq i32 %and.i139, 0
  br i1 %tobool.not.i140, label %if.then57.if.end9.i148_crit_edge, label %if.then1.i141

if.then57.if.end9.i148_crit_edge:                 ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i148

if.then1.i141:                                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %rwimsc.i135 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 11
  %89 = ptrtoint ptr %rwimsc.i135 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rwimsc.i135, align 4
  %or.i142 = or i32 %90, %shl.i138
  store i32 %or.i142, ptr %rwimsc.i135, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  tail call void @arm_heavy_mb() #8
  %91 = ptrtoint ptr %rwimsc.i135 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rwimsc.i135, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #8
  %addr.i143 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 2
  %94 = ptrtoint ptr %addr.i143 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %addr.i143, align 4
  %add.ptr.i144 = getelementptr i8, ptr %95, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %93) #8, !srcloc !293
  br label %if.end9.i148

if.end9.i148:                                     ; preds = %if.then1.i141, %if.then57.if.end9.i148_crit_edge
  %96 = ptrtoint ptr %edge_falling to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %edge_falling, align 4
  %and11.i146 = and i32 %97, %shl.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i146)
  %tobool12.not.i147 = icmp eq i32 %and11.i146, 0
  br i1 %tobool12.not.i147, label %if.end9.i148.if.end59_crit_edge, label %if.then13.i149

if.end9.i148.if.end59_crit_edge:                  ; preds = %if.end9.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then13.i149:                                   ; preds = %if.end9.i148
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %fwimsc.i136 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fwimsc.i136, align 4
  %or17.i150 = or i32 %99, %shl.i138
  store i32 %or17.i150, ptr %fwimsc.i136, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %fwimsc.i136 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fwimsc.i136, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #8
  %addr26.i151 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 2
  %103 = ptrtoint ptr %addr26.i151 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %addr26.i151, align 4
  %add.ptr27.i152 = getelementptr i8, ptr %104, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i152, i32 %102) #8, !srcloc !293
  br label %if.end59

if.end59:                                         ; preds = %if.then13.i149, %if.end9.i148.if.end59_crit_edge, %lor.lhs.false54.critedge.if.end59_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #8
  %105 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %106) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_gpio_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nmk_gpio_slpm_lock) #8
  %lock = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool9 = icmp ne i32 %on, 0
  tail call fastcc void @__nmk_gpio_set_wake(ptr noundef nonnull %1, i32 noundef %9, i1 noundef zeroext %tobool9)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool11.not = icmp eq i32 %on, 0
  %hwirq14 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq14, align 4
  %shl15 = shl nuw i32 1, %11
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %real_wake = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %real_wake to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %real_wake, align 4
  %or = or i32 %13, %shl15
  store i32 %or, ptr %real_wake, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl15, -1
  %real_wake16 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %real_wake16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %real_wake16, align 4
  %and = and i32 %15, %neg
  store i32 %and, ptr %real_wake16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nmk_gpio_slpm_lock, i32 noundef %call4) #8
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_gpio_irq_startup(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #8
  tail call fastcc void @nmk_gpio_irq_maskunmask(ptr noundef %d, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmk_gpio_irq_shutdown(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call fastcc void @nmk_gpio_irq_maskunmask(ptr noundef %d, i1 noundef zeroext false) #8
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmk_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %call2 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
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
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
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
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call2, i32 0, i32 3
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_enable(ptr noundef %13) #8
  %addr = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call2, i32 0, i32 2
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 72
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !299
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not23 = icmp eq i32 %16, 0
  br i1 %tobool.not23, label %chained_irq_enter.exit.while.end_crit_edge, label %while.body.lr.ph

chained_irq_enter.exit.while.end_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %chained_irq_enter.exit
  %19 = tail call i32 @llvm.bswap.i32(i32 %16)
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %status.024 = phi i32 [ %19, %while.body.lr.ph ], [ %and, %while.body.while.body_crit_edge ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %status.024, i1 true) #8, !range !300
  %21 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %domain, align 4
  %call8 = tail call i32 @generic_handle_domain_irq(ptr noundef %22, i32 noundef %20) #8
  %shl = shl nuw i32 1, %20
  %neg = xor i32 %shl, -1
  %and = and i32 %status.024, %neg
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %chained_irq_enter.exit.while.end_crit_edge
  %23 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i20 = icmp eq ptr %24, null
  br i1 %tobool.not.i20, label %if.else.i21, label %while.end.chained_irq_exit.exit_crit_edge

while.end.chained_irq_exit.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i21:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i21, %while.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %26, %if.else.i21 ], [ %24, %while.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nmk_gpio_dbg_show_one(ptr noundef %s, ptr noundef %pctldev, ptr noundef %chip, i32 noundef %offset, i32 noundef %gpio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_is_requested(ptr noundef %chip, i32 noundef %offset) #8
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %1) #8
  %addr = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !287
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !301
  %shl = shl nuw i32 1, %offset
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !302
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !287
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %and26 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %14) #8
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !287
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !304
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr, align 4
  %add.ptr6.i = getelementptr i8, ptr %20, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !287
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !305
  %and11.i = and i32 %22, %shl
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %24) #8
  %25 = lshr i32 %18, %offset
  %26 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool13.not.i = icmp eq i32 %and11.i, 0
  %cond14.i = select i1 %tobool13.not.i, i32 0, i32 2
  %or.i = or i32 %cond14.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i)
  %cmp = icmp eq i32 %or.i, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tobool32.not = icmp eq ptr %pctldev, null
  br i1 %tobool32.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i122 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef nonnull %pctldev) #8
  %prcm_base.i = getelementptr inbounds %struct.nmk_pinctrl, ptr %call.i122, i32 0, i32 3
  %27 = ptrtoint ptr %prcm_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prcm_base.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %for.cond.preheader.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader.i:                             ; preds = %if.then
  %soc.i = getelementptr inbounds %struct.nmk_pinctrl, ptr %call.i122, i32 0, i32 2
  %29 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %soc.i, align 4
  %npins_altcx.i = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %npins_altcx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %npins_altcx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp72.not.i = icmp eq i32 %32, 0
  br i1 %cmp72.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %altcx_pins.i = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %30, i32 0, i32 6
  %33 = ptrtoint ptr %altcx_pins.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %altcx_pins.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %34, i32 %i.073.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %gpio)
  %cmp2.i = icmp eq i32 %conv.i, %gpio
  br i1 %cmp2.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %32
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %i.073.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %32)
  %cmp8.i = icmp eq i32 %i.0.lcssa.i, %32
  br i1 %cmp8.i, label %for.end.i.if.end_crit_edge, label %if.end11.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end11.i:                                       ; preds = %for.end.i
  %altcx_pins13.i = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %30, i32 0, i32 6
  %37 = ptrtoint ptr %altcx_pins13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %altcx_pins13.i, align 4
  %prcm_gpiocr_registers.i = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %30, i32 0, i32 8
  %39 = ptrtoint ptr %prcm_gpiocr_registers.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prcm_gpiocr_registers.i, align 4
  %arrayidx19.i = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %38, i32 %i.0.lcssa.i, i32 1, i32 0
  %41 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.end11.i.for.inc44.i_crit_edge, label %if.then23.i

if.end11.i.for.inc44.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc44.i

if.then23.i:                                      ; preds = %if.end11.i
  %bf.lshr27.i = lshr i8 %bf.load.i, 5
  %bf.clear.i = and i8 %bf.lshr27.i, 3
  %idxprom.i = zext i8 %bf.clear.i to i32
  %arrayidx28.i = getelementptr i16, ptr %40, i32 %idxprom.i
  %42 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx28.i, align 2
  %bf.clear32.i = and i8 %bf.load.i, 31
  %conv34.i = zext i16 %43 to i32
  %add.ptr35.i = getelementptr i8, ptr %28, i32 %conv34.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #8, !srcloc !287
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  %conv38.i = zext i8 %bf.clear32.i to i32
  %shl.i123 = shl nuw i32 1, %conv38.i
  %and.i = and i32 %45, %shl.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool39.not.i, label %if.then23.i.for.inc44.i_crit_edge, label %if.then23.i.if.end_crit_edge

if.then23.i.if.end_crit_edge:                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then23.i.for.inc44.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc44.i

for.inc44.i:                                      ; preds = %if.then23.i.for.inc44.i_crit_edge, %if.end11.i.for.inc44.i_crit_edge
  %arrayidx19.1.i = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %38, i32 %i.0.lcssa.i, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.1.i = load i8, ptr %arrayidx19.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1.i)
  %bf.cast.not.1.i = icmp sgt i8 %bf.load.1.i, -1
  br i1 %bf.cast.not.1.i, label %for.inc44.i.for.inc44.1.i_crit_edge, label %if.then23.1.i

for.inc44.i.for.inc44.1.i_crit_edge:              ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc44.1.i

if.then23.1.i:                                    ; preds = %for.inc44.i
  %bf.lshr27.1.i = lshr i8 %bf.load.1.i, 5
  %bf.clear.1.i = and i8 %bf.lshr27.1.i, 3
  %idxprom.1.i = zext i8 %bf.clear.1.i to i32
  %arrayidx28.1.i = getelementptr i16, ptr %40, i32 %idxprom.1.i
  %47 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx28.1.i, align 2
  %bf.clear32.1.i = and i8 %bf.load.1.i, 31
  %49 = ptrtoint ptr %prcm_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prcm_base.i, align 4
  %conv34.1.i = zext i16 %48 to i32
  %add.ptr35.1.i = getelementptr i8, ptr %50, i32 %conv34.1.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.1.i) #8, !srcloc !287
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  %conv38.1.i = zext i8 %bf.clear32.1.i to i32
  %shl.1.i = shl nuw i32 1, %conv38.1.i
  %and.1.i = and i32 %52, %shl.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool39.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool39.not.1.i, label %if.then23.1.i.for.inc44.1.i_crit_edge, label %if.then23.1.i.if.end_crit_edge

if.then23.1.i.if.end_crit_edge:                   ; preds = %if.then23.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then23.1.i.for.inc44.1.i_crit_edge:            ; preds = %if.then23.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc44.1.i

for.inc44.1.i:                                    ; preds = %if.then23.1.i.for.inc44.1.i_crit_edge, %for.inc44.i.for.inc44.1.i_crit_edge
  %arrayidx19.2.i = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %38, i32 %i.0.lcssa.i, i32 1, i32 2
  %53 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.2.i = load i8, ptr %arrayidx19.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.2.i)
  %bf.cast.not.2.i = icmp sgt i8 %bf.load.2.i, -1
  br i1 %bf.cast.not.2.i, label %for.inc44.1.i.for.inc44.2.i_crit_edge, label %if.then23.2.i

for.inc44.1.i.for.inc44.2.i_crit_edge:            ; preds = %for.inc44.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc44.2.i

if.then23.2.i:                                    ; preds = %for.inc44.1.i
  %bf.lshr27.2.i = lshr i8 %bf.load.2.i, 5
  %bf.clear.2.i = and i8 %bf.lshr27.2.i, 3
  %idxprom.2.i = zext i8 %bf.clear.2.i to i32
  %arrayidx28.2.i = getelementptr i16, ptr %40, i32 %idxprom.2.i
  %54 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx28.2.i, align 2
  %bf.clear32.2.i = and i8 %bf.load.2.i, 31
  %56 = ptrtoint ptr %prcm_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prcm_base.i, align 4
  %conv34.2.i = zext i16 %55 to i32
  %add.ptr35.2.i = getelementptr i8, ptr %57, i32 %conv34.2.i
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.2.i) #8, !srcloc !287
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  %conv38.2.i = zext i8 %bf.clear32.2.i to i32
  %shl.2.i = shl nuw i32 1, %conv38.2.i
  %and.2.i = and i32 %59, %shl.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool39.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool39.not.2.i, label %if.then23.2.i.for.inc44.2.i_crit_edge, label %if.then23.2.i.if.end_crit_edge

if.then23.2.i.if.end_crit_edge:                   ; preds = %if.then23.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then23.2.i.for.inc44.2.i_crit_edge:            ; preds = %if.then23.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc44.2.i

for.inc44.2.i:                                    ; preds = %if.then23.2.i.for.inc44.2.i_crit_edge, %for.inc44.1.i.for.inc44.2.i_crit_edge
  %arrayidx19.3.i = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %38, i32 %i.0.lcssa.i, i32 1, i32 3
  %60 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.3.i = load i8, ptr %arrayidx19.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.3.i)
  %bf.cast.not.3.i = icmp sgt i8 %bf.load.3.i, -1
  br i1 %bf.cast.not.3.i, label %for.inc44.2.i.for.inc44.3.i_crit_edge, label %if.then23.3.i

for.inc44.2.i.for.inc44.3.i_crit_edge:            ; preds = %for.inc44.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc44.3.i

if.then23.3.i:                                    ; preds = %for.inc44.2.i
  %bf.lshr27.3.i = lshr i8 %bf.load.3.i, 5
  %bf.clear.3.i = and i8 %bf.lshr27.3.i, 3
  %idxprom.3.i = zext i8 %bf.clear.3.i to i32
  %arrayidx28.3.i = getelementptr i16, ptr %40, i32 %idxprom.3.i
  %61 = ptrtoint ptr %arrayidx28.3.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx28.3.i, align 2
  %bf.clear32.3.i = and i8 %bf.load.3.i, 31
  %63 = ptrtoint ptr %prcm_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prcm_base.i, align 4
  %conv34.3.i = zext i16 %62 to i32
  %add.ptr35.3.i = getelementptr i8, ptr %64, i32 %conv34.3.i
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.3.i) #8, !srcloc !287
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  %conv38.3.i = zext i8 %bf.clear32.3.i to i32
  %shl.3.i = shl nuw i32 1, %conv38.3.i
  %and.3.i = and i32 %66, %shl.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool39.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool39.not.3.i, label %if.then23.3.i.for.inc44.3.i_crit_edge, label %if.then23.3.i.if.end_crit_edge

if.then23.3.i.if.end_crit_edge:                   ; preds = %if.then23.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then23.3.i.for.inc44.3.i_crit_edge:            ; preds = %if.then23.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc44.3.i

for.inc44.3.i:                                    ; preds = %if.then23.3.i.for.inc44.3.i_crit_edge, %for.inc44.2.i.for.inc44.3.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %for.inc44.3.i, %if.then23.3.i.if.end_crit_edge, %if.then23.2.i.if.end_crit_edge, %if.then23.1.i.if.end_crit_edge, %if.then23.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode.0 = phi i32 [ 3, %land.lhs.true.if.end_crit_edge ], [ %or.i, %entry.if.end_crit_edge ], [ 3, %if.then.if.end_crit_edge ], [ 3, %for.end.i.if.end_crit_edge ], [ 3, %for.inc44.3.i ], [ 4, %if.then23.i.if.end_crit_edge ], [ 5, %if.then23.1.i.if.end_crit_edge ], [ 6, %if.then23.2.i.if.end_crit_edge ], [ 7, %if.then23.3.i.if.end_crit_edge ], [ 3, %for.inc.i.if.end_crit_edge ]
  br i1 %tobool.not, label %cond.end57, label %cond.end42

cond.end42:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tobool36.not = icmp eq ptr %call, null
  %..str.28 = select i1 %tobool36.not, ptr @.str.28, ptr %call
  %cond38 = select i1 %tobool27.not, ptr @.str.30, ptr @.str.29
  %arrayidx = getelementptr [8 x ptr], ptr @__const.nmk_gpio_dbg_show_one.modes, i32 0, i32 %mode.0
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, i32 noundef %gpio, ptr noundef %..str.28, ptr noundef nonnull %cond38, ptr noundef %68) #8
  br label %if.end85

cond.end57:                                       ; preds = %if.end
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 15
  %69 = ptrtoint ptr %to_irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %to_irq, align 4
  %call44 = tail call i32 %70(ptr noundef %chip, i32 noundef %offset) #8
  %71 = xor i32 %8, -1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = lshr i32 %72, %offset
  %74 = and i32 %73, 1
  %tobool47.not = icmp eq ptr %call, null
  %..str.2887 = select i1 %tobool47.not, ptr @.str.28, ptr %call
  %arrayidx52 = getelementptr [2 x ptr], ptr @nmk_gpio_dbg_show_one.pulls, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx52, align 4
  %arrayidx56 = getelementptr [8 x ptr], ptr @__const.nmk_gpio_dbg_show_one.modes, i32 0, i32 %mode.0
  %77 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx56, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %gpio, ptr noundef %..str.2887, ptr noundef %76, ptr noundef %78) #8
  %call.i124 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %clk.i125 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call.i124, i32 0, i32 3
  %79 = ptrtoint ptr %clk.i125 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk.i125, align 4
  %call1.i = tail call i32 @clk_enable(ptr noundef %80) #8
  %addr.i126 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call.i124, i32 0, i32 2
  %81 = ptrtoint ptr %addr.i126 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %addr.i126, align 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #8, !srcloc !287
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  %85 = lshr i32 %84, %offset
  %86 = and i32 %85, 1
  %87 = ptrtoint ptr %clk.i125 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk.i125, align 4
  tail call void @clk_disable(ptr noundef %88) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, i32 noundef %86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp60 = icmp sgt i32 %call44, 0
  br i1 %cmp60, label %land.lhs.true61, label %cond.end57.if.end85_crit_edge

cond.end57.if.end85_crit_edge:                    ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

land.lhs.true61:                                  ; preds = %cond.end57
  %call62 = tail call zeroext i1 @irq_has_action(i32 noundef %call44) #8
  br i1 %call62, label %if.then63, label %land.lhs.true61.if.end85_crit_edge

land.lhs.true61.if.end85_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then63:                                        ; preds = %land.lhs.true61
  %edge_rising = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call1, i32 0, i32 8
  %89 = ptrtoint ptr %edge_rising to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %edge_rising, align 4
  %and65 = and i32 %90, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else68, label %if.then63.if.end75_crit_edge

if.then63.if.end75_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.else68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %edge_falling = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call1, i32 0, i32 9
  %91 = ptrtoint ptr %edge_falling to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %edge_falling, align 4
  %and70 = and i32 %92, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %.str.38..str.37 = select i1 %tobool71.not, ptr @.str.38, ptr @.str.37
  br label %if.end75

if.end75:                                         ; preds = %if.else68, %if.then63.if.end75_crit_edge
  %trigger.0 = phi ptr [ @.str.36, %if.then63.if.end75_crit_edge ], [ %.str.38..str.37, %if.else68 ]
  %real_wake = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call1, i32 0, i32 10
  %93 = ptrtoint ptr %real_wake to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %real_wake, align 4
  %and77 = and i32 %94, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %cond83 = select i1 %tobool78.not, ptr @.str.41, ptr @.str.40
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %call44, ptr noundef nonnull %trigger.0, ptr noundef nonnull %cond83) #8
  br label %if.end85

if.end85:                                         ; preds = %if.end75, %land.lhs.true61.if.end85_crit_edge, %cond.end57.if.end85_crit_edge, %cond.end42
  %95 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %96) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_is_requested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_has_action(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nmk_gpio_irq_maskunmask(ptr nocapture noundef readonly %d, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nmk_gpio_slpm_lock) #8
  %lock = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %rimsc.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 13
  %fimsc.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 14
  %edge_rising.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %edge_rising.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %edge_rising.i, align 4
  %shl.i = shl nuw i32 1, %5
  %and.i = and i32 %7, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end9.i_crit_edge, label %if.then1.i

if.end.if.end9.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then1.i:                                       ; preds = %if.end
  br i1 %enable, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %rimsc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rimsc.i, align 4
  %or.i = or i32 %9, %shl.i
  br label %do.body.i

if.else5.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %shl.i, -1
  %10 = ptrtoint ptr %rimsc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rimsc.i, align 4
  %and7.i = and i32 %11, %neg.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.else5.i, %if.then3.i
  %storemerge46.i = phi i32 [ %and7.i, %if.else5.i ], [ %or.i, %if.then3.i ]
  %12 = ptrtoint ptr %rimsc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge46.i, ptr %rimsc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %rimsc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rimsc.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %addr.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #8, !srcloc !293
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.body.i, %if.end.if.end9.i_crit_edge
  %edge_falling.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %edge_falling.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %edge_falling.i, align 4
  %and11.i = and i32 %19, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.__nmk_gpio_irq_modify.exit_crit_edge, label %if.then13.i

if.end9.i.__nmk_gpio_irq_modify.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nmk_gpio_irq_modify.exit

if.then13.i:                                      ; preds = %if.end9.i
  br i1 %enable, label %if.then15.i, label %if.else18.i

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %fimsc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fimsc.i, align 4
  %or17.i = or i32 %21, %shl.i
  br label %do.body23.i

if.else18.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg20.i = xor i32 %shl.i, -1
  %22 = ptrtoint ptr %fimsc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fimsc.i, align 4
  %and21.i = and i32 %23, %neg20.i
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.else18.i, %if.then15.i
  %storemerge.i = phi i32 [ %and21.i, %if.else18.i ], [ %or17.i, %if.then15.i ]
  %24 = ptrtoint ptr %fimsc.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge.i, ptr %fimsc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %fimsc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fimsc.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %addr26.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %addr26.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr26.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %29, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %27) #8, !srcloc !293
  br label %__nmk_gpio_irq_modify.exit

__nmk_gpio_irq_modify.exit:                       ; preds = %do.body23.i, %if.end9.i.__nmk_gpio_irq_modify.exit_crit_edge
  %real_wake = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %real_wake to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %real_wake, align 4
  %32 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %33
  %and = and i32 %shl, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then10, label %__nmk_gpio_irq_modify.exit.if.end13_crit_edge

__nmk_gpio_irq_modify.exit.if.end13_crit_edge:    ; preds = %__nmk_gpio_irq_modify.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %__nmk_gpio_irq_modify.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__nmk_gpio_set_wake(ptr noundef nonnull %1, i32 noundef %33, i1 noundef zeroext %enable)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %__nmk_gpio_irq_modify.exit.if.end13_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nmk_gpio_slpm_lock, i32 noundef %call4) #8
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nmk_gpio_set_wake(ptr nocapture noundef %nmk_chip, i32 noundef %offset, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sleepmode = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 7
  %0 = ptrtoint ptr %sleepmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleepmode, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %2 = and i1 %tobool.not, %on
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = shl nuw i32 1, %offset
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %addr.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 2
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !287
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !308
  %shl.i = shl nuw i32 1, %offset
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %6, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %7) #8, !srcloc !293
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shl.i7.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %shl.i, %if.then ]
  %rwimsc.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 11
  %fwimsc.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 12
  %edge_rising.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 8
  %10 = ptrtoint ptr %edge_rising.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edge_rising.i, align 4
  %and.i8 = and i32 %11, %shl.i7.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i, label %if.end.if.end9.i_crit_edge, label %if.then1.i

if.end.if.end9.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then1.i:                                       ; preds = %if.end
  br i1 %on, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %rwimsc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rwimsc.i, align 4
  %or.i9 = or i32 %13, %shl.i7.pre-phi
  br label %do.body.i

if.else5.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i10 = xor i32 %shl.i7.pre-phi, -1
  %14 = ptrtoint ptr %rwimsc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rwimsc.i, align 4
  %and7.i = and i32 %15, %neg.i10
  br label %do.body.i

do.body.i:                                        ; preds = %if.else5.i, %if.then3.i
  %storemerge46.i = phi i32 [ %and7.i, %if.else5.i ], [ %or.i9, %if.then3.i ]
  %16 = ptrtoint ptr %rwimsc.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge46.i, ptr %rwimsc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %rwimsc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rwimsc.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %addr.i11 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 2
  %20 = ptrtoint ptr %addr.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %21, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %19) #8, !srcloc !293
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.body.i, %if.end.if.end9.i_crit_edge
  %edge_falling.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 9
  %22 = ptrtoint ptr %edge_falling.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %edge_falling.i, align 4
  %and11.i = and i32 %23, %shl.i7.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.__nmk_gpio_irq_modify.exit_crit_edge, label %if.then13.i

if.end9.i.__nmk_gpio_irq_modify.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nmk_gpio_irq_modify.exit

if.then13.i:                                      ; preds = %if.end9.i
  br i1 %on, label %if.then15.i, label %if.else18.i

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %fwimsc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fwimsc.i, align 4
  %or17.i = or i32 %25, %shl.i7.pre-phi
  br label %do.body23.i

if.else18.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %neg20.i = xor i32 %shl.i7.pre-phi, -1
  %26 = ptrtoint ptr %fwimsc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fwimsc.i, align 4
  %and21.i = and i32 %27, %neg20.i
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.else18.i, %if.then15.i
  %storemerge.i = phi i32 [ %and21.i, %if.else18.i ], [ %or17.i, %if.then15.i ]
  %28 = ptrtoint ptr %fwimsc.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge.i, ptr %fwimsc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %fwimsc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fwimsc.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %addr26.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 2
  %32 = ptrtoint ptr %addr26.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr26.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %33, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %31) #8, !srcloc !293
  br label %__nmk_gpio_irq_modify.exit

__nmk_gpio_irq_modify.exit:                       ; preds = %do.body23.i, %if.end9.i.__nmk_gpio_irq_modify.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i114 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @nmk_pinctrl_match, ptr noundef %dev) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %cmp = icmp eq ptr %3, null
  %cond = icmp eq ptr %3, inttoptr (i32 1 to ptr)
  br i1 %cond, label %if.then10, label %if.end6.for.body.preheader_crit_edge

if.end6.for.body.preheader_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %soc11 = getelementptr inbounds %struct.nmk_pinctrl, ptr %call.i, i32 0, i32 2
  tail call void @nmk_pinctrl_db8500_init(ptr noundef %soc11) #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then10, %if.end6.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %for.body.preheader
  %i.0125 = phi i32 [ %inc, %if.end30.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i113 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef null, i32 noundef 0, i32 noundef %i.0125, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %if.end30

of_parse_phandle.exit:                            ; preds = %for.body
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool19.not = icmp eq ptr %6, null
  br i1 %tobool19.not, label %of_parse_phandle.exit.if.end30_crit_edge, label %do.end

of_parse_phandle.exit.if.end30_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end:                                           ; preds = %of_parse_phandle.exit
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %i.0125, ptr noundef nonnull %6) #11
  %call22 = call fastcc ptr @nmk_gpio_populate_chip(ptr noundef nonnull %6, ptr noundef %pdev)
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %do.end.if.end29_crit_edge

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %do.end.if.end29_crit_edge
  call void @of_node_put(ptr noundef nonnull %6) #8
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %of_parse_phandle.exit.if.end30_crit_edge, %of_parse_phandle.exit.thread
  %inc = add nuw nsw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i114) #8
  %7 = call ptr @memset(ptr %args.i114, i32 255, i32 72)
  %call.i115 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i114) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %of_parse_phandle.exit119, label %of_parse_phandle.exit119.thread

of_parse_phandle.exit119.thread:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i114) #8
  br label %if.end35

of_parse_phandle.exit119:                         ; preds = %for.end
  %8 = ptrtoint ptr %args.i114 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i114, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i114) #8
  %tobool32.not = icmp eq ptr %9, null
  br i1 %tobool32.not, label %of_parse_phandle.exit119.if.end35_crit_edge, label %if.then33

of_parse_phandle.exit119.if.end35_crit_edge:      ; preds = %of_parse_phandle.exit119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %of_parse_phandle.exit119
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call ptr @of_iomap(ptr noundef nonnull %9, i32 noundef 0) #8
  %prcm_base = getelementptr inbounds %struct.nmk_pinctrl, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %prcm_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call34, ptr %prcm_base, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %of_parse_phandle.exit119.if.end35_crit_edge, %of_parse_phandle.exit119.thread
  %prcm_base36 = getelementptr inbounds %struct.nmk_pinctrl, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %prcm_base36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prcm_base36, align 4
  %tobool37.not = icmp eq ptr %12, null
  br i1 %tobool37.not, label %if.then38, label %if.end35.if.end50_crit_edge

if.end35.if.end50_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then38:                                        ; preds = %if.end35
  br i1 %cmp, label %do.end43, label %do.end47

do.end43:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.52) #11
  br label %if.end50

do.end47:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #11
  br label %cleanup

if.end50:                                         ; preds = %do.end43, %if.end35.if.end50_crit_edge
  %soc51 = getelementptr inbounds %struct.nmk_pinctrl, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %soc51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc51, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  store ptr %16, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @nmk_pinctrl_desc, i32 0, i32 1), align 4
  %npins = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %npins, align 4
  store i32 %18, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @nmk_pinctrl_desc, i32 0, i32 2), align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %call.i, align 4
  %call56 = call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @nmk_pinctrl_desc, ptr noundef nonnull %call.i) #8
  %pctl = getelementptr inbounds %struct.nmk_pinctrl, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call56, ptr %pctl, align 4
  %cmp.i120 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %do.end62, label %if.end66

do.end62:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #11
  %21 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pctl, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.61) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end62, %do.end47, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %do.end62 ], [ 0, %if.end66 ], [ -22, %do.end47 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nmk_pinctrl_db8500_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_get_groups_cnt(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.nmk_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %ngroups = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nmk_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.nmk_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.nmk_pingroup, ptr %3, i32 %selector
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.nmk_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.nmk_pingroup, ptr %3, i32 %selector, i32 1
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %soc, align 4
  %groups3 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %groups3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %groups3, align 4
  %npins = getelementptr %struct.nmk_pingroup, ptr %9, i32 %selector, i32 2
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins, align 4
  %12 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmk_pin_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %i.018.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %i.018.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %base.i.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset)
  %cmp1.not.i.i = icmp ugt i32 %3, %offset
  br i1 %cmp1.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %ngpio.i.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.i.i = add i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %offset)
  %cmp5.i.i = icmp ugt i32 %add.i.i, %offset
  br i1 %cmp5.i.i, label %if.end, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %if.then, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.then:                                          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i.le = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %base.i.i.le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i.le, align 4
  %sub = sub i32 %offset, %7
  tail call fastcc void @nmk_gpio_dbg_show_one(ptr noundef %s, ptr noundef %pctldev, ptr noundef nonnull %1, i32 noundef %sub, i32 noundef %offset)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_pinctrl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #2 align 64 {
entry:
  %pin_number.i.i = alloca i32, align 4
  %val.i105.i = alloca i32, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %val.i.i = alloca i32, align 4
  %function.i = alloca ptr, align 4
  %configs.i = alloca i32, align 4
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #8
  %0 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reserved_maps, align 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %map, align 4
  %2 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_maps, align 4
  %call = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #8
  %cmp.not35 = icmp eq ptr %call, null
  br i1 %cmp.not35, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.036 = phi ptr [ %call3, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function.i) #8
  %3 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %function.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs.i) #8
  %4 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %configs.i, align 4
  %call.i = call i32 @of_property_read_string(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.64, ptr noundef nonnull %function.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %for.body.if.end15.i_crit_edge

for.body.if.end15.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i:                                        ; preds = %for.body
  %call.i.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.65, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, label %if.end.i

if.then.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %call4.i = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, label %if.end7.i

if.end.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call ptr @of_find_property(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.65, ptr noundef null) #8
  %call9.i = call ptr @of_prop_next_string(ptr noundef %call8.i, ptr noundef null) #8
  %tobool.not159.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not159.i, label %if.end7.i.if.end15.i_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %group.0160.i = phi ptr [ %call14.i, %for.inc.i.for.body.i_crit_edge ], [ %call9.i, %if.end7.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_maps, align 4
  %7 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reserved_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i.i = icmp eq i32 %6, %8
  br i1 %cmp.i.i, label %for.body.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, label %for.inc.i

for.body.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %9 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %function.i, align 4
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %type.i.i = getelementptr %struct.pinctrl_map, ptr %12, i32 %6, i32 2
  %13 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %type.i.i, align 4
  %14 = load ptr, ptr %map, align 4
  %15 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_maps, align 4
  %data.i.i = getelementptr %struct.pinctrl_map, ptr %14, i32 %16, i32 4
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %group.0160.i, ptr %data.i.i, align 4
  %18 = load ptr, ptr %map, align 4
  %19 = load i32, ptr %num_maps, align 4
  %function5.i.i = getelementptr %struct.pinctrl_map, ptr %18, i32 %19, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %function5.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %10, ptr %function5.i.i, align 4
  %21 = load i32, ptr %num_maps, align 4
  %inc.i.i = add i32 %21, 1
  store i32 %inc.i.i, ptr %num_maps, align 4
  %call14.i = call ptr @of_prop_next_string(ptr noundef %call8.i, ptr noundef nonnull %group.0160.i) #8
  %tobool.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end15.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end15.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %for.inc.i.if.end15.i_crit_edge, %if.end7.i.if.end15.i_crit_edge, %for.body.if.end15.i_crit_edge
  %ret.2.i = phi i32 [ %call.i, %for.body.if.end15.i_crit_edge ], [ %call4.i, %if.end7.i.if.end15.i_crit_edge ], [ 0, %for.inc.i.if.end15.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %22 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val.i.i, align 4, !annotation !288
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end15.i
  %i.012.i.i = phi i32 [ 0, %if.end15.i ], [ %inc.i101.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %has_config.0.off011.i.i = phi i1 [ false, %if.end15.i ], [ %has_config.1.off0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %cfg.010.i.i = phi i32 [ 0, %if.end15.i ], [ %cfg.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %i.012.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.036, ptr noundef %24, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #8
  %25 = call i32 @llvm.smin.i32(i32 %call.i.i.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %25)
  %cmp1.not.i.i = icmp eq i32 %25, -22
  br i1 %cmp1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %26 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i.i, align 4
  %size.i.i.i = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %i.012.i.i, i32 3
  %28 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp4.i.i.i = icmp sgt i32 %29, %27
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.then.i.i.nmk_dt_pin_config.exit.i.i_crit_edge

if.then.i.i.nmk_dt_pin_config.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_dt_pin_config.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %choice.i.i.i = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %i.012.i.i, i32 2
  %30 = ptrtoint ptr %choice.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %choice.i.i.i, align 4
  %config7.i.i.i = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %i.012.i.i, i32 1
  %32 = ptrtoint ptr %config7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %config7.i.i.i, align 4
  %arrayidx10.i.i.i = getelementptr i32, ptr %31, i32 %27
  %34 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx10.i.i.i, align 4
  %or.i.i.i = or i32 %35, %33
  br label %nmk_dt_pin_config.exit.i.i

nmk_dt_pin_config.exit.i.i:                       ; preds = %if.then5.i.i.i, %if.then.i.i.nmk_dt_pin_config.exit.i.i_crit_edge
  %cfg.1.i.i = phi i32 [ %or.i.i.i, %if.then5.i.i.i ], [ %cfg.010.i.i, %if.then.i.i.nmk_dt_pin_config.exit.i.i_crit_edge ]
  %36 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %configs.i, align 4
  %or.i.i = or i32 %37, %cfg.1.i.i
  store i32 %or.i.i, ptr %configs.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %nmk_dt_pin_config.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %cfg.2.i.i = phi i32 [ %cfg.010.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %cfg.1.i.i, %nmk_dt_pin_config.exit.i.i ]
  %has_config.1.off0.i.i = phi i1 [ %has_config.0.off011.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ true, %nmk_dt_pin_config.exit.i.i ]
  %inc.i101.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i101.i, 8
  br i1 %exitcond.not.i.i, label %nmk_pinctrl_dt_get_config.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

nmk_pinctrl_dt_get_config.exit.i:                 ; preds = %for.inc.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %38 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i102.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.66, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i)
  %tobool.not.i.i = icmp eq i32 %call.i102.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %nmk_pinctrl_dt_get_config.exit.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  br i1 %has_config.1.off0.i.i, label %of_parse_phandle.exit.thread.i.if.then27.i_crit_edge, label %of_parse_phandle.exit.thread.i.nmk_pinctrl_dt_subnode_to_map.exit_crit_edge

of_parse_phandle.exit.thread.i.nmk_pinctrl_dt_subnode_to_map.exit_crit_edge: ; preds = %of_parse_phandle.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit

of_parse_phandle.exit.thread.i.if.then27.i_crit_edge: ; preds = %of_parse_phandle.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

of_parse_phandle.exit.i:                          ; preds = %nmk_pinctrl_dt_get_config.exit.i
  %39 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  %tobool18.not.i = icmp eq ptr %40, null
  br i1 %tobool18.not.i, label %if.end25.i, label %if.then19.i

if.then19.i:                                      ; preds = %of_parse_phandle.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i105.i) #8
  %41 = ptrtoint ptr %val.i105.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %val.i105.i, align 4, !annotation !288
  br label %for.body.i112.i

for.body.i112.i:                                  ; preds = %for.inc.i128.i.for.body.i112.i_crit_edge, %if.then19.i
  %i.012.i106.i = phi i32 [ 0, %if.then19.i ], [ %inc.i126.i, %for.inc.i128.i.for.body.i112.i_crit_edge ]
  %has_config.0.off011.i107.i = phi i1 [ false, %if.then19.i ], [ %has_config.1.off0.i125.i, %for.inc.i128.i.for.body.i112.i_crit_edge ]
  %cfg.010.i108.i = phi i32 [ 0, %if.then19.i ], [ %cfg.2.i124.i, %for.inc.i128.i.for.body.i112.i_crit_edge ]
  %arrayidx.i109.i = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %i.012.i106.i
  %42 = ptrtoint ptr %arrayidx.i109.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i109.i, align 4
  %call.i.i.i110.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %40, ptr noundef %43, ptr noundef nonnull %val.i105.i, i32 noundef 1, i32 noundef 0) #8
  %44 = call i32 @llvm.smin.i32(i32 %call.i.i.i110.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %44)
  %cmp1.not.i111.i = icmp eq i32 %44, -22
  br i1 %cmp1.not.i111.i, label %for.body.i112.i.for.inc.i128.i_crit_edge, label %if.then.i115.i

for.body.i112.i.for.inc.i128.i_crit_edge:         ; preds = %for.body.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i128.i

if.then.i115.i:                                   ; preds = %for.body.i112.i
  %45 = ptrtoint ptr %val.i105.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i105.i, align 4
  %size.i.i113.i = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %i.012.i106.i, i32 3
  %47 = ptrtoint ptr %size.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i.i113.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp4.i.i114.i = icmp sgt i32 %48, %46
  br i1 %cmp4.i.i114.i, label %if.then5.i.i120.i, label %if.then.i115.i.nmk_dt_pin_config.exit.i123.i_crit_edge

if.then.i115.i.nmk_dt_pin_config.exit.i123.i_crit_edge: ; preds = %if.then.i115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_dt_pin_config.exit.i123.i

if.then5.i.i120.i:                                ; preds = %if.then.i115.i
  call void @__sanitizer_cov_trace_pc() #10
  %choice.i.i116.i = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %i.012.i106.i, i32 2
  %49 = ptrtoint ptr %choice.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %choice.i.i116.i, align 4
  %config7.i.i117.i = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %i.012.i106.i, i32 1
  %51 = ptrtoint ptr %config7.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %config7.i.i117.i, align 4
  %arrayidx10.i.i118.i = getelementptr i32, ptr %50, i32 %46
  %53 = ptrtoint ptr %arrayidx10.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx10.i.i118.i, align 4
  %or.i.i119.i = or i32 %54, %52
  br label %nmk_dt_pin_config.exit.i123.i

nmk_dt_pin_config.exit.i123.i:                    ; preds = %if.then5.i.i120.i, %if.then.i115.i.nmk_dt_pin_config.exit.i123.i_crit_edge
  %cfg.1.i121.i = phi i32 [ %or.i.i119.i, %if.then5.i.i120.i ], [ %cfg.010.i108.i, %if.then.i115.i.nmk_dt_pin_config.exit.i123.i_crit_edge ]
  %55 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %configs.i, align 4
  %or.i122.i = or i32 %56, %cfg.1.i121.i
  store i32 %or.i122.i, ptr %configs.i, align 4
  br label %for.inc.i128.i

for.inc.i128.i:                                   ; preds = %nmk_dt_pin_config.exit.i123.i, %for.body.i112.i.for.inc.i128.i_crit_edge
  %cfg.2.i124.i = phi i32 [ %cfg.010.i108.i, %for.body.i112.i.for.inc.i128.i_crit_edge ], [ %cfg.1.i121.i, %nmk_dt_pin_config.exit.i123.i ]
  %has_config.1.off0.i125.i = phi i1 [ %has_config.0.off011.i107.i, %for.body.i112.i.for.inc.i128.i_crit_edge ], [ true, %nmk_dt_pin_config.exit.i123.i ]
  %inc.i126.i = add nuw nsw i32 %i.012.i106.i, 1
  %exitcond.not.i127.i = icmp eq i32 %inc.i126.i, 8
  br i1 %exitcond.not.i127.i, label %nmk_pinctrl_dt_get_config.exit129.i, label %for.inc.i128.i.for.body.i112.i_crit_edge

for.inc.i128.i.for.body.i112.i_crit_edge:         ; preds = %for.inc.i128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i112.i

nmk_pinctrl_dt_get_config.exit129.i:              ; preds = %for.inc.i128.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i105.i) #8
  %or99.i = or i1 %has_config.1.off0.i.i, %has_config.1.off0.i125.i
  br i1 %or99.i, label %nmk_pinctrl_dt_get_config.exit129.i.if.then27.i_crit_edge, label %nmk_pinctrl_dt_get_config.exit129.i.nmk_pinctrl_dt_subnode_to_map.exit_crit_edge

nmk_pinctrl_dt_get_config.exit129.i.nmk_pinctrl_dt_subnode_to_map.exit_crit_edge: ; preds = %nmk_pinctrl_dt_get_config.exit129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit

nmk_pinctrl_dt_get_config.exit129.i.if.then27.i_crit_edge: ; preds = %nmk_pinctrl_dt_get_config.exit129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

if.end25.i:                                       ; preds = %of_parse_phandle.exit.i
  br i1 %has_config.1.off0.i.i, label %if.end25.i.if.then27.i_crit_edge, label %if.end25.i.nmk_pinctrl_dt_subnode_to_map.exit_crit_edge

if.end25.i.nmk_pinctrl_dt_subnode_to_map.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit

if.end25.i.if.then27.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.end25.i.if.then27.i_crit_edge, %nmk_pinctrl_dt_get_config.exit129.i.if.then27.i_crit_edge, %of_parse_phandle.exit.thread.i.if.then27.i_crit_edge
  %call.i130.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.67, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130.i)
  %cmp29.i = icmp slt i32 %call.i130.i, 0
  br i1 %cmp29.i, label %if.then27.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, label %if.end32.i

if.then27.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit.thread

if.end32.i:                                       ; preds = %if.then27.i
  %call33.i = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %call.i130.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end32.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, label %if.end37.i

if.end32.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit.thread

if.end37.i:                                       ; preds = %if.end32.i
  %call38.i = call ptr @of_find_property(ptr noundef nonnull %np.036, ptr noundef nonnull @.str.67, ptr noundef null) #8
  %call39.i = call ptr @of_prop_next_string(ptr noundef %call38.i, ptr noundef null) #8
  %tobool41.not161.i = icmp eq ptr %call39.i, null
  br i1 %tobool41.not161.i, label %if.end37.i.nmk_pinctrl_dt_subnode_to_map.exit.thread21_crit_edge, label %if.end37.i.for.body42.i_crit_edge

if.end37.i.for.body42.i_crit_edge:                ; preds = %if.end37.i
  br label %for.body42.i

if.end37.i.nmk_pinctrl_dt_subnode_to_map.exit.thread21_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit.thread21

for.body42.i:                                     ; preds = %for.inc49.i.for.body42.i_crit_edge, %if.end37.i.for.body42.i_crit_edge
  %pin.0162.i = phi ptr [ %call50.i, %for.inc49.i.for.body42.i_crit_edge ], [ %call39.i, %if.end37.i.for.body42.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pin_number.i.i) #8
  %57 = ptrtoint ptr %pin_number.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %pin_number.i.i, align 4, !annotation !288
  %call.i131.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %call1.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %pin.0162.i, ptr noundef nonnull @.str.76, ptr noundef nonnull %pin_number.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i.i)
  %cmp.i132.i = icmp eq i32 %call1.i.i, 1
  br i1 %cmp.i132.i, label %for.cond.preheader.i.i, label %for.body42.i.nmk_find_pin_name.exit.i_crit_edge

for.body42.i.nmk_find_pin_name.exit.i_crit_edge:  ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_find_pin_name.exit.i

for.cond.preheader.i.i:                           ; preds = %for.body42.i
  %soc.i.i = getelementptr inbounds %struct.nmk_pinctrl, ptr %call.i131.i, i32 0, i32 2
  %58 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %soc.i.i, align 4
  %npins.i.i = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp218.not.i.i = icmp eq i32 %61, 0
  br i1 %cmp218.not.i.i, label %for.cond.preheader.i.i.nmk_find_pin_name.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.nmk_find_pin_name.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_find_pin_name.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %64 = ptrtoint ptr %pin_number.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pin_number.i.i, align 4
  br label %for.body.i134.i

for.body.i134.i:                                  ; preds = %for.inc.i137.i.for.body.i134.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i135.i, %for.inc.i137.i.for.body.i134.i_crit_edge ]
  %arrayidx.i133.i = getelementptr %struct.pinctrl_pin_desc, ptr %63, i32 %i.019.i.i
  %66 = ptrtoint ptr %arrayidx.i133.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i133.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %65)
  %cmp4.i.i = icmp eq i32 %67, %65
  br i1 %cmp4.i.i, label %if.then5.i.i, label %for.inc.i137.i

if.then5.i.i:                                     ; preds = %for.body.i134.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i.i = getelementptr %struct.pinctrl_pin_desc, ptr %63, i32 %i.019.i.i, i32 1
  %68 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name.i.i, align 4
  br label %nmk_find_pin_name.exit.i

for.inc.i137.i:                                   ; preds = %for.body.i134.i
  %inc.i135.i = add nuw i32 %i.019.i.i, 1
  %exitcond.not.i136.i = icmp eq i32 %inc.i135.i, %61
  br i1 %exitcond.not.i136.i, label %for.inc.i137.i.nmk_find_pin_name.exit.i_crit_edge, label %for.inc.i137.i.for.body.i134.i_crit_edge

for.inc.i137.i.for.body.i134.i_crit_edge:         ; preds = %for.inc.i137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i134.i

for.inc.i137.i.nmk_find_pin_name.exit.i_crit_edge: ; preds = %for.inc.i137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_find_pin_name.exit.i

nmk_find_pin_name.exit.i:                         ; preds = %for.inc.i137.i.nmk_find_pin_name.exit.i_crit_edge, %if.then5.i.i, %for.cond.preheader.i.i.nmk_find_pin_name.exit.i_crit_edge, %for.body42.i.nmk_find_pin_name.exit.i_crit_edge
  %retval.0.i138.i = phi ptr [ %69, %if.then5.i.i ], [ null, %for.body42.i.nmk_find_pin_name.exit.i_crit_edge ], [ null, %for.cond.preheader.i.i.nmk_find_pin_name.exit.i_crit_edge ], [ null, %for.inc.i137.i.nmk_find_pin_name.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pin_number.i.i) #8
  %70 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_maps, align 4
  %72 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reserved_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.i139.i = icmp eq i32 %71, %73
  br i1 %cmp.i139.i, label %nmk_find_pin_name.exit.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, label %if.end.i142.i

nmk_find_pin_name.exit.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %nmk_find_pin_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit.thread

if.end.i142.i:                                    ; preds = %nmk_find_pin_name.exit.i
  %call.i140.i = call ptr @kmemdup(ptr noundef nonnull %configs.i, i32 noundef 4, i32 noundef 3264) #8
  %tobool.not.i141.i = icmp eq ptr %call.i140.i, null
  br i1 %tobool.not.i141.i, label %if.end.i142.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, label %for.inc49.i

if.end.i142.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge: ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit.thread

for.inc49.i:                                      ; preds = %if.end.i142.i
  %74 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map, align 4
  %76 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_maps, align 4
  %type.i143.i = getelementptr %struct.pinctrl_map, ptr %75, i32 %77, i32 2
  %78 = ptrtoint ptr %type.i143.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %type.i143.i, align 4
  %79 = load ptr, ptr %map, align 4
  %80 = load i32, ptr %num_maps, align 4
  %data.i144.i = getelementptr %struct.pinctrl_map, ptr %79, i32 %80, i32 4
  %81 = ptrtoint ptr %data.i144.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %retval.0.i138.i, ptr %data.i144.i, align 4
  %82 = load ptr, ptr %map, align 4
  %83 = load i32, ptr %num_maps, align 4
  %configs6.i.i = getelementptr %struct.pinctrl_map, ptr %82, i32 %83, i32 4, i32 0, i32 1
  %84 = ptrtoint ptr %configs6.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i140.i, ptr %configs6.i.i, align 4
  %85 = load ptr, ptr %map, align 4
  %86 = load i32, ptr %num_maps, align 4
  %num_configs9.i.i = getelementptr %struct.pinctrl_map, ptr %85, i32 %86, i32 4, i32 0, i32 2
  %87 = ptrtoint ptr %num_configs9.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %num_configs9.i.i, align 4
  %88 = load i32, ptr %num_maps, align 4
  %inc.i145.i = add i32 %88, 1
  store i32 %inc.i145.i, ptr %num_maps, align 4
  %call50.i = call ptr @of_prop_next_string(ptr noundef %call38.i, ptr noundef nonnull %pin.0162.i) #8
  %tobool41.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool41.not.i, label %for.inc49.i.nmk_pinctrl_dt_subnode_to_map.exit.thread21_crit_edge, label %for.inc49.i.for.body42.i_crit_edge

for.inc49.i.for.body42.i_crit_edge:               ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42.i

for.inc49.i.nmk_pinctrl_dt_subnode_to_map.exit.thread21_crit_edge: ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_pinctrl_dt_subnode_to_map.exit.thread21

nmk_pinctrl_dt_subnode_to_map.exit.thread:        ; preds = %if.end.i142.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, %nmk_find_pin_name.exit.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, %if.end32.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, %if.then27.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, %for.body.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, %if.end.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge, %if.then.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge
  %ret.5.i.ph = phi i32 [ -28, %nmk_find_pin_name.exit.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge ], [ -12, %if.end.i142.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge ], [ -28, %for.body.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge ], [ %call.i130.i, %if.then27.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge ], [ %call33.i, %if.end32.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge ], [ %call4.i, %if.end.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge ], [ %call.i.i, %if.then.i.nmk_pinctrl_dt_subnode_to_map.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #8
  br label %if.then

nmk_pinctrl_dt_subnode_to_map.exit.thread21:      ; preds = %for.inc49.i.nmk_pinctrl_dt_subnode_to_map.exit.thread21_crit_edge, %if.end37.i.nmk_pinctrl_dt_subnode_to_map.exit.thread21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #8
  br label %for.inc

nmk_pinctrl_dt_subnode_to_map.exit:               ; preds = %if.end25.i.nmk_pinctrl_dt_subnode_to_map.exit_crit_edge, %nmk_pinctrl_dt_get_config.exit129.i.nmk_pinctrl_dt_subnode_to_map.exit_crit_edge, %of_parse_phandle.exit.thread.i.nmk_pinctrl_dt_subnode_to_map.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp2 = icmp slt i32 %ret.2.i, 0
  br i1 %cmp2, label %nmk_pinctrl_dt_subnode_to_map.exit.if.then_crit_edge, label %nmk_pinctrl_dt_subnode_to_map.exit.for.inc_crit_edge

nmk_pinctrl_dt_subnode_to_map.exit.for.inc_crit_edge: ; preds = %nmk_pinctrl_dt_subnode_to_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

nmk_pinctrl_dt_subnode_to_map.exit.if.then_crit_edge: ; preds = %nmk_pinctrl_dt_subnode_to_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %nmk_pinctrl_dt_subnode_to_map.exit.if.then_crit_edge, %nmk_pinctrl_dt_subnode_to_map.exit.thread
  %ret.5.i18 = phi i32 [ %ret.5.i.ph, %nmk_pinctrl_dt_subnode_to_map.exit.thread ], [ %ret.2.i, %nmk_pinctrl_dt_subnode_to_map.exit.if.then_crit_edge ]
  %89 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %map, align 4
  %91 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_maps, align 4
  call void @pinctrl_utils_free_map(ptr noundef %pctldev, ptr noundef %90, i32 noundef %92) #8
  call void @of_node_put(ptr noundef nonnull %np.036) #8
  br label %cleanup

for.inc:                                          ; preds = %nmk_pinctrl_dt_subnode_to_map.exit.for.inc_crit_edge, %nmk_pinctrl_dt_subnode_to_map.exit.thread21
  %call3 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %np.036) #8
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.5.i18, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_pmx_get_funcs_cnt(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.nmk_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %nfunctions = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nfunctions, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nmk_pmx_get_func_name(ptr noundef %pctldev, i32 noundef %function) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.nmk_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.nmk_function, ptr %3, i32 %function
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_pmx_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.nmk_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.nmk_function, ptr %3, i32 %function, i32 1
  %4 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups1, align 4
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %groups, align 4
  %7 = load ptr, ptr %soc, align 4
  %functions3 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions3, align 4
  %ngroups = getelementptr %struct.nmk_function, ptr %9, i32 %function, i32 2
  %10 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ngroups, align 4
  %12 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_pmx_set(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.nmk_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.nmk_pingroup, ptr %3, i32 %group
  %altsetting = getelementptr %struct.nmk_pingroup, ptr %3, i32 %group, i32 3
  %4 = ptrtoint ptr %altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %altsetting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %entry.cleanup94_crit_edge, label %do.body

entry.cleanup94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup94

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_pmx_set.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_pmx_set, %do.end)) #8
          to label %if.then5 [label %do.end], !srcloc !310

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %npins = getelementptr %struct.nmk_pingroup, ptr %3, i32 %group, i32 2
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_pmx_set.__UNIQUE_ID_ddebug232, ptr noundef %7, ptr noundef nonnull @.str.79, ptr noundef %9, i32 noundef %11) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %12 = ptrtoint ptr %altsetting to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %altsetting, align 4
  %and = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp8 = icmp eq i32 %and, 3
  br i1 %cmp8, label %do.body13, label %do.end.if.end30_crit_edge

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.body13:                                        ; preds = %do.end
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nmk_gpio_slpm_lock) #8
  %14 = call ptr @memset(ptr @nmk_pmx_set.slpm, i32 255, i32 64)
  %npins22 = getelementptr %struct.nmk_pingroup, ptr %3, i32 %group, i32 2
  %15 = ptrtoint ptr %npins22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %npins22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23175.not = icmp eq i32 %16, 0
  br i1 %cmp23175.not, label %do.body13.for.body.i.preheader_crit_edge, label %for.body.lr.ph

do.body13.for.body.i.preheader_crit_edge:         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.lr.ph:                                   ; preds = %do.body13
  %pins = getelementptr %struct.nmk_pingroup, ptr %3, i32 %group, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0176 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pins, align 4
  %arrayidx25 = getelementptr i32, ptr %18, i32 %i.0176
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx25, align 4
  %shl = shl nuw i32 1, %20
  %neg = xor i32 %shl, -1
  %div139 = lshr i32 %20, 5
  %arrayidx28 = getelementptr [16 x i32], ptr @nmk_pmx_set.slpm, i32 0, i32 %div139
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28, align 4
  %and29 = and i32 %22, %neg
  store i32 %and29, ptr %arrayidx28, align 4
  %inc = add nuw i32 %i.0176, 1
  %23 = ptrtoint ptr %npins22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %npins22, align 4
  %cmp23 = icmp ult i32 %inc, %24
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.body.for.body.i.preheader_crit_edge

for.body.for.body.i.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.i.preheader:                             ; preds = %for.body.for.body.i.preheader_crit_edge, %do.body13.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %i.03.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %for.body.i.if.end30_crit_edge, label %for.inc.i

for.body.i.if.end30_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

for.inc.i:                                        ; preds = %for.body.i
  %arrayidx1.i = getelementptr i32, ptr @nmk_pmx_set.slpm, i32 %i.03.i
  %27 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx1.i, align 4
  %clk.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %30) #8
  %addr.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %26, i32 0, i32 2
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 28
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !287
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !311
  %35 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  %37 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %38, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %36) #8, !srcloc !293
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.if.end30_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end30_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end30:                                         ; preds = %for.inc.i.if.end30_crit_edge, %for.body.i.if.end30_crit_edge, %do.end.if.end30_crit_edge
  %flags.0 = phi i32 [ 0, %do.end.if.end30_crit_edge ], [ %call17, %for.body.i.if.end30_crit_edge ], [ %call17, %for.inc.i.if.end30_crit_edge ]
  %npins32 = getelementptr %struct.nmk_pingroup, ptr %3, i32 %group, i32 2
  %39 = ptrtoint ptr %npins32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %npins32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp33177.not = icmp eq i32 %40, 0
  br i1 %cmp33177.not, label %if.end30.out_glitch_crit_edge, label %for.body35.lr.ph

if.end30.out_glitch_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_glitch

for.body35.lr.ph:                                 ; preds = %if.end30
  %pins36 = getelementptr %struct.nmk_pingroup, ptr %3, i32 %group, i32 1
  br label %for.body35

for.body35:                                       ; preds = %for.inc88.for.body35_crit_edge, %for.body35.lr.ph
  %i.1178 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc89, %for.inc88.for.body35_crit_edge ]
  %41 = ptrtoint ptr %pins36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pins36, align 4
  %arrayidx37 = getelementptr i32, ptr %42, i32 %i.1178
  %43 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx37, align 4
  br label %for.body.i146

for.body.i146:                                    ; preds = %for.inc.i149.for.body.i146_crit_edge, %for.body35
  %i.018.i = phi i32 [ 0, %for.body35 ], [ %inc.i147, %for.inc.i149.for.body.i146_crit_edge ]
  %arrayidx.i144 = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %i.018.i
  %45 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i144, align 4
  %tobool.not.i145 = icmp eq ptr %46, null
  br i1 %tobool.not.i145, label %for.body.i146.for.inc.i149_crit_edge, label %if.end.i

for.body.i146.for.inc.i149_crit_edge:             ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i149

if.end.i:                                         ; preds = %for.body.i146
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %44)
  %cmp1.not.i = icmp ugt i32 %48, %44
  br i1 %cmp1.not.i, label %if.end.i.for.inc.i149_crit_edge, label %land.lhs.true.i

if.end.i.for.inc.i149_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i149

land.lhs.true.i:                                  ; preds = %if.end.i
  %ngpio.i = getelementptr inbounds %struct.gpio_chip, ptr %46, i32 0, i32 20
  %49 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %50 to i32
  %add.i = add i32 %48, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %44)
  %cmp5.i = icmp ugt i32 %add.i, %44
  br i1 %cmp5.i, label %do.body49, label %land.lhs.true.i.for.inc.i149_crit_edge

land.lhs.true.i.for.inc.i149_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i149

for.inc.i149:                                     ; preds = %land.lhs.true.i.for.inc.i149_crit_edge, %if.end.i.for.inc.i149_crit_edge, %for.body.i146.for.inc.i149_crit_edge
  %inc.i147 = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i148 = icmp eq i32 %inc.i147, 16
  br i1 %exitcond.not.i148, label %cleanup, label %for.inc.i149.for.body.i146_crit_edge

for.inc.i149.for.body.i146_crit_edge:             ; preds = %for.inc.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i146

do.body49:                                        ; preds = %land.lhs.true.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_pmx_set.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_pmx_set, %do.end70)) #8
          to label %if.then63 [label %do.end70], !srcloc !310

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call, align 4
  %53 = ptrtoint ptr %pins36 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pins36, align 4
  %arrayidx66 = getelementptr i32, ptr %54, i32 %i.1178
  %55 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx66, align 4
  %57 = ptrtoint ptr %altsetting to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %altsetting, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_pmx_set.__UNIQUE_ID_ddebug233, ptr noundef %52, ptr noundef nonnull @.str.81, i32 noundef %56, i32 noundef %58) #8
  br label %do.end70

do.end70:                                         ; preds = %if.then63, %do.body49
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %46, i32 0, i32 3
  %59 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clk, align 4
  %call71 = tail call i32 @clk_enable(ptr noundef %60) #8
  %61 = ptrtoint ptr %pins36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pins36, align 4
  %arrayidx73 = getelementptr i32, ptr %62, i32 %i.1178
  %63 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx73, align 4
  %rem = and i32 %64, 31
  tail call fastcc void @nmk_gpio_disable_lazy_irq(ptr noundef nonnull %46, i32 noundef %rem)
  %65 = ptrtoint ptr %altsetting to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %altsetting, align 4
  %rwimsc1.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %46, i32 0, i32 11
  %67 = ptrtoint ptr %rwimsc1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rwimsc1.i, align 4
  %fwimsc2.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %46, i32 0, i32 12
  %69 = ptrtoint ptr %fwimsc2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fwimsc2.i, align 4
  br i1 %cmp8, label %land.lhs.true.i151, label %if.end28.critedge.i

land.lhs.true.i151:                               ; preds = %do.end70
  %set_ioforce.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %46, i32 0, i32 5
  %71 = ptrtoint ptr %set_ioforce.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %set_ioforce.i, align 4
  %tobool3.not.i = icmp eq ptr %72, null
  br i1 %tobool3.not.i, label %land.lhs.true13.critedge44.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 1, %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !313
  tail call void @arm_heavy_mb() #8
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %68, %neg.i
  %73 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %addr.i152 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %46, i32 0, i32 2
  %74 = ptrtoint ptr %addr.i152 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %addr.i152, align 4
  %add.ptr.i153 = getelementptr i8, ptr %75, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %73) #8, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  tail call void @arm_heavy_mb() #8
  %and8.i = and i32 %70, %neg.i
  %76 = tail call i32 @llvm.bswap.i32(i32 %and8.i) #8
  %77 = ptrtoint ptr %addr.i152 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %addr.i152, align 4
  %add.ptr10.i = getelementptr i8, ptr %78, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %76) #8, !srcloc !293
  %79 = ptrtoint ptr %set_ioforce.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %set_ioforce.i, align 4
  tail call void %80(i1 noundef zeroext true) #8
  %81 = ptrtoint ptr %addr.i152 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %addr.i152, align 4
  %add.ptr.i.i = getelementptr i8, ptr %82, i32 32
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !287
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  %and.i.i = and i32 %84, %neg.i
  %85 = ptrtoint ptr %addr.i152 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %addr.i152, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %86, i32 36
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #8, !srcloc !287
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  %and11.i.i = and i32 %88, %neg.i
  %and12.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool.not.i.i = icmp eq i32 %and12.i.i, 0
  %or.i.i = or i32 %84, %shl.i
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %and.i.i, i32 %or.i.i
  %and14.i.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  %or18.i.i = or i32 %88, %shl.i
  %bfunc.0.i.i = select i1 %tobool15.not.i.i, i32 %and11.i.i, i32 %or18.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  tail call void @arm_heavy_mb() #8
  %89 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #8
  %90 = ptrtoint ptr %addr.i152 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %addr.i152, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %91, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %89) #8, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  tail call void @arm_heavy_mb() #8
  %92 = tail call i32 @llvm.bswap.i32(i32 %bfunc.0.i.i) #8
  %93 = ptrtoint ptr %addr.i152 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %addr.i152, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %94, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 %92) #8, !srcloc !293
  br label %land.lhs.true13.i

land.lhs.true13.critedge44.i:                     ; preds = %land.lhs.true.i151
  call void @__sanitizer_cov_trace_pc() #10
  %addr.i45.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %46, i32 0, i32 2
  %95 = ptrtoint ptr %addr.i45.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %addr.i45.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %96, i32 32
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #8, !srcloc !287
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  %shl.i47.i = shl nuw i32 1, %rem
  %neg.i48.i = xor i32 %shl.i47.i, -1
  %and.i49.i = and i32 %98, %neg.i48.i
  %99 = ptrtoint ptr %addr.i45.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %addr.i45.i, align 4
  %add.ptr5.i50.i = getelementptr i8, ptr %100, i32 36
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i50.i) #8, !srcloc !287
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  %and11.i51.i = and i32 %102, %neg.i48.i
  %and12.i52.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i52.i)
  %tobool.not.i53.i = icmp eq i32 %and12.i52.i, 0
  %or.i54.i = or i32 %98, %shl.i47.i
  %spec.select.i55.i = select i1 %tobool.not.i53.i, i32 %and.i49.i, i32 %or.i54.i
  %and14.i56.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i56.i)
  %tobool15.not.i57.i = icmp eq i32 %and14.i56.i, 0
  %or18.i58.i = or i32 %102, %shl.i47.i
  %bfunc.0.i59.i = select i1 %tobool15.not.i57.i, i32 %and11.i51.i, i32 %or18.i58.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  tail call void @arm_heavy_mb() #8
  %103 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i55.i) #8
  %104 = ptrtoint ptr %addr.i45.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %addr.i45.i, align 4
  %add.ptr21.i60.i = getelementptr i8, ptr %105, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i60.i, i32 %103) #8, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  tail call void @arm_heavy_mb() #8
  %106 = tail call i32 @llvm.bswap.i32(i32 %bfunc.0.i59.i) #8
  %107 = ptrtoint ptr %addr.i45.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %addr.i45.i, align 4
  %add.ptr26.i61.i = getelementptr i8, ptr %108, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i61.i, i32 %106) #8, !srcloc !293
  br label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %land.lhs.true13.critedge44.i, %if.then.i
  %109 = ptrtoint ptr %set_ioforce.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %set_ioforce.i, align 4
  %tobool15.not.i = icmp eq ptr %110, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.__nmk_gpio_set_mode_safe.exit_crit_edge, label %if.then16.i

land.lhs.true13.i.__nmk_gpio_set_mode_safe.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nmk_gpio_set_mode_safe.exit

if.then16.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %110(i1 noundef zeroext false) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !319
  tail call void @arm_heavy_mb() #8
  %111 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  %addr21.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %46, i32 0, i32 2
  %112 = ptrtoint ptr %addr21.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %addr21.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %113, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %111) #8, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  tail call void @arm_heavy_mb() #8
  %114 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  %115 = ptrtoint ptr %addr21.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %addr21.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %116, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %114) #8, !srcloc !293
  br label %__nmk_gpio_set_mode_safe.exit

if.end28.critedge.i:                              ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #10
  %addr.i62.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %46, i32 0, i32 2
  %117 = ptrtoint ptr %addr.i62.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %addr.i62.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %118, i32 32
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #8, !srcloc !287
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  %shl.i64.i = shl nuw i32 1, %rem
  %neg.i65.i = xor i32 %shl.i64.i, -1
  %and.i66.i = and i32 %120, %neg.i65.i
  %121 = ptrtoint ptr %addr.i62.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %addr.i62.i, align 4
  %add.ptr5.i67.i = getelementptr i8, ptr %122, i32 36
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i67.i) #8, !srcloc !287
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  %and11.i68.i = and i32 %124, %neg.i65.i
  %and12.i69.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i69.i)
  %tobool.not.i70.i = icmp eq i32 %and12.i69.i, 0
  %or.i71.i = or i32 %120, %shl.i64.i
  %spec.select.i72.i = select i1 %tobool.not.i70.i, i32 %and.i66.i, i32 %or.i71.i
  %and14.i73.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i73.i)
  %tobool15.not.i74.i = icmp eq i32 %and14.i73.i, 0
  %or18.i75.i = or i32 %124, %shl.i64.i
  %bfunc.0.i76.i = select i1 %tobool15.not.i74.i, i32 %and11.i68.i, i32 %or18.i75.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  tail call void @arm_heavy_mb() #8
  %125 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i72.i) #8
  %126 = ptrtoint ptr %addr.i62.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %addr.i62.i, align 4
  %add.ptr21.i77.i = getelementptr i8, ptr %127, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i77.i, i32 %125) #8, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  tail call void @arm_heavy_mb() #8
  %128 = tail call i32 @llvm.bswap.i32(i32 %bfunc.0.i76.i) #8
  %129 = ptrtoint ptr %addr.i62.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %addr.i62.i, align 4
  %add.ptr26.i78.i = getelementptr i8, ptr %130, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i78.i, i32 %128) #8, !srcloc !293
  br label %__nmk_gpio_set_mode_safe.exit

__nmk_gpio_set_mode_safe.exit:                    ; preds = %if.end28.critedge.i, %if.then16.i, %land.lhs.true13.i.__nmk_gpio_set_mode_safe.exit_crit_edge
  %131 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %132) #8
  %133 = ptrtoint ptr %altsetting to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %altsetting, align 4
  %and79 = and i32 %134, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and79)
  %cmp80 = icmp eq i32 %and79, 3
  br i1 %cmp80, label %if.then82, label %__nmk_gpio_set_mode_safe.exit.for.inc88_crit_edge

__nmk_gpio_set_mode_safe.exit.for.inc88_crit_edge: ; preds = %__nmk_gpio_set_mode_safe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc88

if.then82:                                        ; preds = %__nmk_gpio_set_mode_safe.exit
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %pins36 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pins36, align 4
  %arrayidx84 = getelementptr i32, ptr %136, i32 %i.1178
  %137 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx84, align 4
  %shr = ashr i32 %134, 2
  tail call fastcc void @nmk_prcm_altcx_set_mode(ptr noundef %call, i32 noundef %138, i32 noundef %shr)
  br label %for.inc88

cleanup:                                          ; preds = %for.inc.i149
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %call, align 4
  %141 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.80, i32 noundef %44, ptr noundef %142, i32 noundef %i.1178) #11
  br label %out_glitch

for.inc88:                                        ; preds = %if.then82, %__nmk_gpio_set_mode_safe.exit.for.inc88_crit_edge
  %inc89 = add nuw i32 %i.1178, 1
  %143 = ptrtoint ptr %npins32 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %npins32, align 4
  %cmp33 = icmp ult i32 %inc89, %144
  br i1 %cmp33, label %for.inc88.for.body35_crit_edge, label %for.inc88.out_glitch_crit_edge

for.inc88.out_glitch_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_glitch

for.inc88.for.body35_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

out_glitch:                                       ; preds = %for.inc88.out_glitch_crit_edge, %cleanup, %if.end30.out_glitch_crit_edge
  %ret.0 = phi i32 [ -22, %cleanup ], [ 0, %if.end30.out_glitch_crit_edge ], [ 0, %for.inc88.out_glitch_crit_edge ]
  br i1 %cmp8, label %out_glitch.for.body.i157_crit_edge, label %out_glitch.cleanup94_crit_edge

out_glitch.cleanup94_crit_edge:                   ; preds = %out_glitch
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup94

out_glitch.for.body.i157_crit_edge:               ; preds = %out_glitch
  br label %for.body.i157

for.body.i157:                                    ; preds = %for.inc.i164.for.body.i157_crit_edge, %out_glitch.for.body.i157_crit_edge
  %i.03.i154 = phi i32 [ %inc.i162, %for.inc.i164.for.body.i157_crit_edge ], [ 0, %out_glitch.for.body.i157_crit_edge ]
  %arrayidx.i155 = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %i.03.i154
  %145 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i155, align 4
  %tobool.not.i156 = icmp eq ptr %146, null
  br i1 %tobool.not.i156, label %for.body.i157.nmk_gpio_glitch_slpm_restore.exit_crit_edge, label %for.inc.i164

for.body.i157.nmk_gpio_glitch_slpm_restore.exit_crit_edge: ; preds = %for.body.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_gpio_glitch_slpm_restore.exit

for.inc.i164:                                     ; preds = %for.body.i157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %arrayidx1.i158 = getelementptr i32, ptr @nmk_pmx_set.slpm, i32 %i.03.i154
  %147 = ptrtoint ptr %arrayidx1.i158 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx1.i158, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #8
  %addr.i159 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %146, i32 0, i32 2
  %150 = ptrtoint ptr %addr.i159 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %addr.i159, align 4
  %add.ptr.i160 = getelementptr i8, ptr %151, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %149) #8, !srcloc !293
  %clk.i161 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %146, i32 0, i32 3
  %152 = ptrtoint ptr %clk.i161 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %clk.i161, align 4
  tail call void @clk_disable(ptr noundef %153) #8
  %inc.i162 = add nuw nsw i32 %i.03.i154, 1
  %exitcond.not.i163 = icmp eq i32 %inc.i162, 16
  br i1 %exitcond.not.i163, label %for.inc.i164.nmk_gpio_glitch_slpm_restore.exit_crit_edge, label %for.inc.i164.for.body.i157_crit_edge

for.inc.i164.for.body.i157_crit_edge:             ; preds = %for.inc.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i157

for.inc.i164.nmk_gpio_glitch_slpm_restore.exit_crit_edge: ; preds = %for.inc.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_gpio_glitch_slpm_restore.exit

nmk_gpio_glitch_slpm_restore.exit:                ; preds = %for.inc.i164.nmk_gpio_glitch_slpm_restore.exit_crit_edge, %for.body.i157.nmk_gpio_glitch_slpm_restore.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nmk_gpio_slpm_lock, i32 noundef %flags.0) #8
  br label %cleanup94

cleanup94:                                        ; preds = %nmk_gpio_glitch_slpm_restore.exit, %out_glitch.cleanup94_crit_edge, %entry.cleanup94_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup94_crit_edge ], [ %ret.0, %nmk_gpio_glitch_slpm_restore.exit ], [ %ret.0, %out_glitch.cleanup94_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_gpio_request_enable(ptr noundef %pctldev, ptr noundef readonly %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %tobool.not = icmp eq ptr %range, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.93) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 7
  %2 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.96) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @gpiochip_get_data(ptr noundef nonnull %3) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_gpio_request_enable.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_gpio_request_enable, %do.end20)) #8
          to label %if.then16 [label %do.end20], !srcloc !310

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_gpio_request_enable.__UNIQUE_ID_ddebug234, ptr noundef %7, ptr noundef nonnull @.str.98, i32 noundef %offset) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %if.end7
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call9, i32 0, i32 3
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call21 = tail call i32 @clk_enable(ptr noundef %9) #8
  %rem = and i32 %offset, 31
  %addr.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %call9, i32 0, i32 2
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !287
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  %shl.i = shl nuw i32 1, %rem
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %13, %neg.i
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !287
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  %and11.i = and i32 %17, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %18) #8, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %and11.i) #8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %21) #8, !srcloc !293
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end5, %do.end
  %retval.0 = phi i32 [ 0, %do.end20 ], [ -22, %do.end5 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmk_gpio_disable_free(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_gpio_disable_free.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_gpio_disable_free, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_gpio_disable_free.__UNIQUE_ID_ddebug235, ptr noundef %1, ptr noundef nonnull @.str.100, i32 noundef %offset) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nmk_gpio_disable_lazy_irq(ptr nocapture noundef %nmk_chip, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fimsc = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 14
  %0 = ptrtoint ptr %fimsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fimsc, align 4
  %shl = shl nuw i32 1, %offset
  %and = and i32 %1, %shl
  %rimsc = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 13
  %2 = ptrtoint ptr %rimsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rimsc, align 4
  %and2 = and i32 %3, %shl
  %base = getelementptr inbounds %struct.gpio_chip, ptr %nmk_chip, i32 0, i32 19
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %add = add i32 %5, %offset
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %nmk_chip, i32 0, i32 37, i32 1
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %irq.i, align 4, !annotation !288
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %7, i32 noundef %offset, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i59 = phi i32 [ %10, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  %call5 = call ptr @irq_get_irq_data(i32 noundef %retval.0.i59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool6.not, i1 false
  %tobool7.not = icmp eq ptr %call5, null
  %or.cond58 = select i1 %or.cond, i1 true, i1 %tobool7.not
  br i1 %or.cond58, label %irq_find_mapping.exit.cleanup_crit_edge, label %lor.lhs.false

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %irq_find_mapping.exit
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call5, i32 0, i32 3
  %11 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  br i1 %tobool.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl, -1
  %15 = ptrtoint ptr %rimsc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rimsc, align 4
  %and15 = and i32 %16, %neg
  store i32 %and15, ptr %rimsc, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %and15)
  %addr = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 2
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #8, !srcloc !293
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10.if.end17_crit_edge
  br i1 %tobool6.not, label %if.end17.do.body_crit_edge, label %if.then19

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %neg21 = xor i32 %shl, -1
  %20 = ptrtoint ptr %fimsc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fimsc, align 4
  %and23 = and i32 %21, %neg21
  store i32 %and23, ptr %fimsc, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %and23)
  %addr25 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %nmk_chip, i32 0, i32 2
  %23 = ptrtoint ptr %addr25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr25, align 4
  %add.ptr26 = getelementptr i8, ptr %24, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %22) #8, !srcloc !293
  br label %do.body

do.body:                                          ; preds = %if.then19, %if.end17.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_gpio_disable_lazy_irq.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_gpio_disable_lazy_irq, %cleanup)) #8
          to label %if.then33 [label %cleanup], !srcloc !310

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %nmk_chip, i32 0, i32 2
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_gpio_disable_lazy_irq.__UNIQUE_ID_ddebug227, ptr noundef %26, ptr noundef nonnull @.str.83, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body, %lor.lhs.false.cleanup_crit_edge, %irq_find_mapping.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nmk_prcm_altcx_set_mode(ptr nocapture noundef readonly %npct, i32 noundef %offset, i32 noundef %alt_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_base = getelementptr inbounds %struct.nmk_pinctrl, ptr %npct, i32 0, i32 3
  %0 = ptrtoint ptr %prcm_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prcm_base, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %alt_num)
  %cmp = icmp ugt i32 %alt_num, 4
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %soc = getelementptr inbounds %struct.nmk_pinctrl, ptr %npct, i32 0, i32 2
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %npins_altcx = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %npins_altcx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins_altcx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3304.not = icmp eq i32 %5, 0
  br i1 %cmp3304.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %altcx_pins = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %altcx_pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %altcx_pins, align 4
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %npct to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %npct, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.84, i32 noundef %alt_num) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0305 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %7, i32 %i.0305
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %offset)
  %cmp5 = icmp eq i32 %conv, %offset
  br i1 %cmp5, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0305, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.do.body14_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.body14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0305, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %5)
  %cmp11 = icmp eq i32 %i.0.lcssa, %5
  br i1 %cmp11, label %for.end.do.body14_crit_edge, label %if.end24

for.end.do.body14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.body14:                                        ; preds = %for.end.do.body14_crit_edge, %for.inc.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_prcm_altcx_set_mode, %cleanup)) #8
          to label %if.then19 [label %cleanup], !srcloc !310

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %npct to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %npct, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug228, ptr noundef %13, ptr noundef nonnull @.str.86, i32 noundef %offset) #8
  br label %cleanup

if.end24:                                         ; preds = %for.end
  %altcx_pins26 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %altcx_pins26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %altcx_pins26, align 4
  %prcm_gpiocr_registers = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %prcm_gpiocr_registers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prcm_gpiocr_registers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt_num)
  %tobool28.not = icmp eq i32 %alt_num, 0
  br i1 %tobool28.not, label %if.end24.for.body33_crit_edge, label %if.end86

if.end24.for.body33_crit_edge:                    ; preds = %if.end24
  br label %for.body33

for.body33:                                       ; preds = %for.inc83.for.body33_crit_edge, %if.end24.for.body33_crit_edge
  %i.1313 = phi i32 [ %inc84, %for.inc83.for.body33_crit_edge ], [ 0, %if.end24.for.body33_crit_edge ]
  %arrayidx34 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %15, i32 %i.0.lcssa, i32 1, i32 %i.1313
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %for.body33.for.inc83_crit_edge, label %if.then38

for.body33.for.inc83_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc83

if.then38:                                        ; preds = %for.body33
  %bf.lshr42 = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr42, 3
  %idxprom = zext i8 %bf.clear to i32
  %arrayidx43 = getelementptr i16, ptr %17, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx43, align 2
  %bf.clear47 = and i8 %bf.load, 31
  %21 = ptrtoint ptr %prcm_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prcm_base, align 4
  %conv49 = zext i16 %20 to i32
  %add.ptr50 = getelementptr i8, ptr %22, i32 %conv49
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #8, !srcloc !287
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %conv54 = zext i8 %bf.clear47 to i32
  %shl = shl nuw i32 1, %conv54
  %and = and i32 %24, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.then38.for.inc83_crit_edge, label %if.then56

if.then38.for.inc83_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc83

if.then56:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prcm_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prcm_base, align 4
  %add.ptr59 = getelementptr i8, ptr %26, i32 %conv49
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #8, !srcloc !287
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %28, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %29) #8, !srcloc !293
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_prcm_altcx_set_mode, %for.inc83)) #8
          to label %if.then76 [label %for.inc83], !srcloc !310

if.then76:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %npct to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %npct, align 4
  %add = add nuw nsw i32 %i.1313, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug229, ptr noundef %31, ptr noundef nonnull @.str.87, i32 noundef %offset, i32 noundef %add) #8
  br label %for.inc83

for.inc83:                                        ; preds = %if.then76, %if.then56, %if.then38.for.inc83_crit_edge, %for.body33.for.inc83_crit_edge
  %inc84 = add nuw nsw i32 %i.1313, 1
  %exitcond316.not = icmp eq i32 %inc84, 4
  br i1 %exitcond316.not, label %for.inc83.cleanup_crit_edge, label %for.inc83.for.body33_crit_edge

for.inc83.for.body33_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body33

for.inc83.cleanup_crit_edge:                      ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end86:                                         ; preds = %if.end24
  %conv87 = add i32 %alt_num, 255
  %idxprom89 = and i32 %conv87, 255
  %arrayidx90 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %15, i32 %i.0.lcssa, i32 1, i32 %idxprom89
  %32 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load91 = load i8, ptr %arrayidx90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load91)
  %cmp95 = icmp sgt i8 %bf.load91, -1
  br i1 %cmp95, label %do.end100, label %if.end86.for.body106_crit_edge

if.end86.for.body106_crit_edge:                   ; preds = %if.end86
  br label %for.body106

do.end100:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %npct to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %npct, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.89, i32 noundef %offset, i32 noundef %alt_num) #11
  br label %cleanup

for.body106:                                      ; preds = %for.inc172.for.body106_crit_edge, %if.end86.for.body106_crit_edge
  %i.2311 = phi i32 [ %inc173, %for.inc172.for.body106_crit_edge ], [ 0, %if.end86.for.body106_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2311, i32 %idxprom89)
  %cmp108 = icmp eq i32 %i.2311, %idxprom89
  br i1 %cmp108, label %for.body106.for.inc172_crit_edge, label %if.end111

for.body106.for.inc172_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc172

if.end111:                                        ; preds = %for.body106
  %arrayidx113 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %15, i32 %i.0.lcssa, i32 1, i32 %i.2311
  %35 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load114 = load i8, ptr %arrayidx113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load114)
  %bf.cast116.not = icmp sgt i8 %bf.load114, -1
  br i1 %bf.cast116.not, label %if.end111.for.inc172_crit_edge, label %if.then120

if.end111.for.inc172_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc172

if.then120:                                       ; preds = %if.end111
  %bf.lshr124 = lshr i8 %bf.load114, 5
  %bf.clear125 = and i8 %bf.lshr124, 3
  %idxprom126 = zext i8 %bf.clear125 to i32
  %arrayidx127 = getelementptr i16, ptr %17, i32 %idxprom126
  %36 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx127, align 2
  %bf.clear131 = and i8 %bf.load114, 31
  %38 = ptrtoint ptr %prcm_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prcm_base, align 4
  %conv135 = zext i16 %37 to i32
  %add.ptr136 = getelementptr i8, ptr %39, i32 %conv135
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #8, !srcloc !287
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !325
  %conv140 = zext i8 %bf.clear131 to i32
  %shl141 = shl nuw i32 1, %conv140
  %and142 = and i32 %41, %shl141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.then120.for.inc172_crit_edge, label %if.then144

if.then120.for.inc172_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc172

if.then144:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %prcm_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prcm_base, align 4
  %add.ptr147 = getelementptr i8, ptr %43, i32 %conv135
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #8, !srcloc !287
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  %neg.i295 = xor i32 %shl141, -1
  %and.i296 = and i32 %45, %neg.i295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %and.i296) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %46) #8, !srcloc !293
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_prcm_altcx_set_mode, %for.inc172)) #8
          to label %if.then164 [label %for.inc172], !srcloc !310

if.then164:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %npct to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %npct, align 4
  %add166 = add nuw nsw i32 %i.2311, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug230, ptr noundef %48, ptr noundef nonnull @.str.87, i32 noundef %offset, i32 noundef %add166) #8
  br label %for.inc172

for.inc172:                                       ; preds = %if.then164, %if.then144, %if.then120.for.inc172_crit_edge, %if.end111.for.inc172_crit_edge, %for.body106.for.inc172_crit_edge
  %inc173 = add nuw nsw i32 %i.2311, 1
  %exitcond315.not = icmp eq i32 %inc173, 4
  br i1 %exitcond315.not, label %for.end174, label %for.inc172.for.body106_crit_edge

for.inc172.for.body106_crit_edge:                 ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body106

for.end174:                                       ; preds = %for.inc172
  %49 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load178 = load i8, ptr %arrayidx90, align 1
  %bf.lshr179 = lshr i8 %bf.load178, 5
  %bf.clear180 = and i8 %bf.lshr179, 3
  %idxprom181 = zext i8 %bf.clear180 to i32
  %arrayidx182 = getelementptr i16, ptr %17, i32 %idxprom181
  %50 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx182, align 2
  %bf.clear187 = and i8 %bf.load178, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_prcm_altcx_set_mode, %do.end208)) #8
          to label %if.then202 [label %do.end208], !srcloc !310

if.then202:                                       ; preds = %for.end174
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %npct to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %npct, align 4
  %add205 = add nuw nsw i32 %idxprom89, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug231, ptr noundef %53, ptr noundef nonnull @.str.92, i32 noundef %offset, i32 noundef %add205) #8
  br label %do.end208

do.end208:                                        ; preds = %if.then202, %for.end174
  %54 = ptrtoint ptr %prcm_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prcm_base, align 4
  %conv210 = zext i16 %51 to i32
  %add.ptr211 = getelementptr i8, ptr %55, i32 %conv210
  %conv212 = zext i8 %bf.clear187 to i32
  %shl213 = shl nuw i32 1, %conv212
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211) #8, !srcloc !287
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  %or.i = or i32 %57, %shl213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  tail call void @arm_heavy_mb() #8
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr211, i32 %58) #8, !srcloc !293
  br label %cleanup

cleanup:                                          ; preds = %do.end208, %do.end100, %for.inc83.cleanup_crit_edge, %if.then19, %do.body14, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nmk_pin_config_get(ptr nocapture noundef readnone %pctldev, i32 noundef %pin, ptr nocapture noundef readnone %config) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_pin_config_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.018.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %i.018.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pin)
  %cmp1.not.i = icmp ugt i32 %3, %pin
  br i1 %cmp1.not.i, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %ngpio.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.i = add i32 %3, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %pin)
  %cmp5.i = icmp ugt i32 %add.i, %pin
  br i1 %cmp5.i, label %for.cond.preheader, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.cond.preheader:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp200.not = icmp eq i32 %num_configs, 0
  br i1 %cmp200.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %clk = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 3
  %rem = and i32 %pin, 31
  %addr.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 2
  %shl.i = shl nuw i32 1, %rem
  %neg.i = xor i32 %shl.i, -1
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %pull_up.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 15
  %lowemi1.i = getelementptr inbounds %struct.nmk_gpio_chip, ptr %1, i32 0, i32 16
  br label %for.body

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %do.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.107, i32 noundef %pin) #11
  br label %cleanup

for.body:                                         ; preds = %__nmk_gpio_set_lowemi.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0201 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %__nmk_gpio_set_lowemi.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0201
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %and = lshr i32 %10, 11
  %shr = and i32 %and, 3
  %and2 = lshr i32 %10, 13
  %shr3 = and i32 %and2, 1
  %and4 = lshr i32 %10, 14
  %shr5 = and i32 %and4, 1
  %and6 = lshr i32 %10, 15
  %shr7 = and i32 %and6, 1
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10 = icmp ne i32 %11, 0
  %12 = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp ne i32 %12, 0
  %14 = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool17.not = icmp eq i32 %14, 0
  br i1 %tobool17.not, label %for.body.do.body66_crit_edge, label %if.then20

for.body.do.body66_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body66

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %and21 = lshr i32 %10, 16
  %shr22 = and i32 %and21, 7
  %and23 = lshr i32 %10, 19
  %shr24 = and i32 %and23, 3
  %and25 = lshr i32 %10, 21
  %shr26 = and i32 %and25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr22)
  %tobool27.not = icmp eq i32 %shr22, 0
  %sub = add nsw i32 %shr22, -1
  %spec.select = select i1 %tobool27.not, i32 %shr, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr24)
  %tobool30.not = icmp eq i32 %shr24, 0
  %sub32 = add nsw i32 %shr24, -1
  %output.0 = select i1 %tobool30.not, i32 %shr5, i32 %sub32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr26)
  %tobool34.not = icmp eq i32 %shr26, 0
  %sub36 = add nsw i32 %shr26, -1
  %val.0 = select i1 %tobool34.not, i32 %shr7, i32 %sub36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_pin_config_set.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_pin_config_set, %do.body66)) #8
          to label %if.then45 [label %do.body66], !srcloc !310

if.then45:                                        ; preds = %if.then20
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 4
  br i1 %tobool27.not, label %if.then45.cond.end_crit_edge, label %cond.true

if.then45.cond.end_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx47 = getelementptr [4 x ptr], ptr @nmk_pin_config_set.pullnames, i32 0, i32 %spec.select
  %17 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx47, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then45.cond.end_crit_edge
  %cond = phi ptr [ %18, %cond.true ], [ @.str.110, %if.then45.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output.0)
  %tobool50.not = icmp eq i32 %output.0, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.112, ptr @.str.111
  %cond54 = select i1 %tobool30.not, ptr @.str.110, ptr %cond51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool57.not = icmp eq i32 %val.0, 0
  %cond58 = select i1 %tobool57.not, ptr @.str.114, ptr @.str.113
  %cond61 = select i1 %tobool34.not, ptr @.str.110, ptr %cond58
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_pin_config_set.__UNIQUE_ID_ddebug236, ptr noundef %16, ptr noundef nonnull @.str.109, i32 noundef %pin, ptr noundef %cond, ptr noundef nonnull %cond54, ptr noundef nonnull %cond61) #8
  br label %do.body66

do.body66:                                        ; preds = %cond.end, %if.then20, %for.body.do.body66_crit_edge
  %pull.1 = phi i32 [ %shr, %for.body.do.body66_crit_edge ], [ %spec.select, %cond.end ], [ %spec.select, %if.then20 ]
  %output.1 = phi i32 [ %shr5, %for.body.do.body66_crit_edge ], [ %output.0, %cond.end ], [ %output.0, %if.then20 ]
  %val.1 = phi i32 [ %shr7, %for.body.do.body66_crit_edge ], [ %val.0, %cond.end ], [ %val.0, %if.then20 ]
  %gpiomode.0.off0 = phi i1 [ %13, %for.body.do.body66_crit_edge ], [ true, %cond.end ], [ true, %if.then20 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmk_pin_config_set.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nmk_pin_config_set, %do.end98)) #8
          to label %if.then80 [label %do.end98], !srcloc !310

if.then80:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 4
  %arrayidx83 = getelementptr [4 x ptr], ptr @nmk_pin_config_set.pullnames, i32 0, i32 %pull.1
  %21 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx83, align 4
  %arrayidx84 = getelementptr [2 x ptr], ptr @nmk_pin_config_set.slpmnames, i32 0, i32 %shr3
  %23 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output.1)
  %tobool85.not = icmp eq i32 %output.1, 0
  %cond86 = select i1 %tobool85.not, ptr @.str.112, ptr @.str.116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.1)
  %tobool89.not = icmp eq i32 %val.1, 0
  %cond90 = select i1 %tobool89.not, ptr @.str.114, ptr @.str.113
  %cond93 = select i1 %tobool85.not, ptr @.str.41, ptr %cond90
  %cond95 = select i1 %tobool10, ptr @.str.117, ptr @.str.118
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmk_pin_config_set.__UNIQUE_ID_ddebug237, ptr noundef %20, ptr noundef nonnull @.str.115, i32 noundef %pin, i32 noundef %10, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %cond86, ptr noundef nonnull %cond93, ptr noundef nonnull %cond95) #8
  br label %do.end98

do.end98:                                         ; preds = %if.then80, %do.body66
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  %call99 = tail call i32 @clk_enable(ptr noundef %26) #8
  br i1 %gpiomode.0.off0, label %if.then101, label %do.end98.if.end102_crit_edge

do.end98.if.end102_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then101:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !287
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  %and.i = and i32 %30, %neg.i
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %32, i32 36
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !287
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  %and11.i = and i32 %34, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %37, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %35) #8, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %and11.i) #8
  %39 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %addr.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %40, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %38) #8, !srcloc !293
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %do.end98.if.end102_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output.1)
  %tobool103.not = icmp eq i32 %output.1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr.i, align 4
  br i1 %tobool103.not, label %if.else, label %if.then104

if.then104:                                       ; preds = %if.end102
  %add.ptr.i171 = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %6) #8, !srcloc !293
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.1)
  %tobool.not.i.i = icmp eq i32 %val.1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %addr.i, align 4
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !293
  br label %if.end105

do.body1.i.i:                                     ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr5.i.i = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %6) #8, !srcloc !293
  br label %if.end105

if.else:                                          ; preds = %if.end102
  %add.ptr.i174 = getelementptr i8, ptr %42, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %6) #8, !srcloc !293
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %addr.i, align 4
  %add.ptr.i176 = getelementptr i8, ptr %46, i32 12
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176) #8, !srcloc !287
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pull.1)
  %cmp.i = icmp eq i32 %pull.1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or.i178 = or i32 %48, %shl.i
  %49 = ptrtoint ptr %pull_up.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pull_up.i, align 4
  %and.i180 = and i32 %50, %neg.i
  store i32 %and.i180, ptr %pull_up.i, align 4
  br label %do.body.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i32 %48, %neg.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then.i
  %pdis.0.i = phi i32 [ %or.i178, %if.then.i ], [ %and5.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !327
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %pdis.0.i) #8
  %52 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %51) #8, !srcloc !293
  %54 = zext i32 %pull.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pull.1, label %do.body.i.if.end105_crit_edge [
    i32 1, label %if.then9.i
    i32 2, label %if.then21.i
  ]

do.body.i.if.end105_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %pull_up.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pull_up.i, align 4
  %or12.i = or i32 %56, %shl.i
  store i32 %or12.i, ptr %pull_up.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !328
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %addr.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %6) #8, !srcloc !293
  br label %if.end105

if.then21.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %pull_up.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pull_up.i, align 4
  %and25.i = and i32 %60, %neg.i
  store i32 %and25.i, ptr %pull_up.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %addr.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %6) #8, !srcloc !293
  br label %if.end105

if.end105:                                        ; preds = %if.then21.i, %if.then9.i, %do.body.i.if.end105_crit_edge, %do.body1.i.i, %do.body.i.i
  %63 = ptrtoint ptr %lowemi1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lowemi1.i, align 4
  %65 = and i32 %64, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %66 = icmp eq i32 %65, 0
  %cmp.i182 = xor i1 %tobool10, %66
  br i1 %cmp.i182, label %if.end105.__nmk_gpio_set_lowemi.exit_crit_edge, label %if.end.i187

if.end105.__nmk_gpio_set_lowemi.exit_crit_edge:   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nmk_gpio_set_lowemi.exit

if.end.i187:                                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %and13.i = and i32 %64, %neg.i
  %or.i184 = or i32 %64, %shl.i
  %storemerge.i = select i1 %tobool10, i32 %or.i184, i32 %and13.i
  %67 = ptrtoint ptr %lowemi1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %storemerge.i, ptr %lowemi1.i, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i) #8
  %69 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %addr.i, align 4
  %add.ptr.i186 = getelementptr i8, ptr %70, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 %68) #8, !srcloc !293
  br label %__nmk_gpio_set_lowemi.exit

__nmk_gpio_set_lowemi.exit:                       ; preds = %if.end.i187, %if.end105.__nmk_gpio_set_lowemi.exit_crit_edge
  %71 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %addr.i, align 4
  %add.ptr.i189 = getelementptr i8, ptr %72, i32 28
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #8, !srcloc !287
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !308
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr3)
  %cmp.i190.not = icmp eq i32 %shr3, 0
  %or.i192 = or i32 %74, %shl.i
  %and.i194 = and i32 %74, %neg.i
  %slpm.0.i = select i1 %cmp.i190.not, i32 %and.i194, i32 %or.i192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  tail call void @arm_heavy_mb() #8
  %75 = tail call i32 @llvm.bswap.i32(i32 %slpm.0.i) #8
  %76 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %77, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %75) #8, !srcloc !293
  %78 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %79) #8
  %inc = add nuw i32 %i.0201, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %__nmk_gpio_set_lowemi.exit.cleanup_crit_edge, label %__nmk_gpio_set_lowemi.exit.for.body_crit_edge

__nmk_gpio_set_lowemi.exit.for.body_crit_edge:    ; preds = %__nmk_gpio_set_lowemi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

__nmk_gpio_set_lowemi.exit.cleanup_crit_edge:     ; preds = %__nmk_gpio_set_lowemi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %__nmk_gpio_set_lowemi.exit.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %__nmk_gpio_set_lowemi.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_pinctrl_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pctl = getelementptr inbounds %struct.nmk_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl, align 4
  %call1 = tail call i32 @pinctrl_force_sleep(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_pinctrl_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pctl = getelementptr inbounds %struct.nmk_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl, align 4
  %call1 = tail call i32 @pinctrl_force_default(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !23, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !210, !211, !213, !214, !215, !216, !218, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !235, !236, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !258, !259, !260, !262, !263, !264, !265, !266, !267, !268, !270, !271, !272, !273, !274, !276}
!llvm.module.flags = !{!278, !279, !280, !281, !282, !283, !284, !285}
!llvm.ident = !{!286}

!0 = !{ptr @__initcall__kmod_pinctrl_nomadik__238_1945_nmk_gpio_init4, !1, !"__initcall__kmod_pinctrl_nomadik__238_1945_nmk_gpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1945, i32 1}
!2 = !{ptr @__initcall__kmod_pinctrl_nomadik__239_1951_nmk_pinctrl_init1, !3, !"__initcall__kmod_pinctrl_nomadik__239_1951_nmk_pinctrl_init1", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1951, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1922, i32 11}
!6 = !{ptr @nmk_gpio_driver, !7, !"nmk_gpio_driver", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1920, i32 31}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1094, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @nmk_gpio_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @nmk_gpio_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1099, i32 29}
!18 = !{ptr @nmk_gpio_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1113, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1136, i32 40}
!23 = !{ptr @nmk_gpio_probe.lock_key, !24, !"lock_key", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1159, i32 8}
!25 = !{ptr @nmk_gpio_probe.request_key, !24, !"request_key", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1165, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nmk_gpio_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nmk_gpio_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1031, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nmk_gpio_populate_chip._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @nmk_gpio_populate_chip._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1034, i32 31}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1035, i32 3}
!40 = !{ptr @nmk_gpio_populate_chip._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nmk_gpio_populate_chip._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @nmk_gpio_chips, !43, !"nmk_gpio_chips", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 280, i32 30}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 998, i32 17}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 926, i32 22}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 927, i32 22}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 928, i32 22}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 929, i32 24}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 930, i32 24}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 931, i32 24}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 932, i32 24}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 944, i32 17}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 946, i32 16}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 947, i32 18}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 947, i32 25}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 948, i32 20}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 954, i32 4}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 955, i32 4}
!74 = !{ptr @nmk_gpio_dbg_show_one.pulls, !75, !"pulls", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 953, i32 29}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 958, i32 17}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 965, i32 17}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 976, i32 15}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 978, i32 15}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 980, i32 15}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 984, i32 18}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 985, i32 29}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 985, i32 41}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 282, i32 8}
!94 = !{ptr @nmk_gpio_slpm_lock, !93, !"nmk_gpio_slpm_lock", i1 false, i1 false}
!95 = !{ptr @nmk_gpio_match, !96, !"nmk_gpio_match", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1915, i32 34}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1934, i32 11}
!99 = !{ptr @nmk_pinctrl_driver, !100, !"nmk_pinctrl_driver", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1932, i32 31}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1871, i32 34}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1873, i32 4}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @nmk_pinctrl_probe._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @nmk_pinctrl_probe._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1878, i32 5}
!110 = !{ptr @nmk_pinctrl_probe._entry.47, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @nmk_pinctrl_probe._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1885, i32 33}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1890, i32 4}
!116 = !{ptr @nmk_pinctrl_probe._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @nmk_pinctrl_probe._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1894, i32 4}
!120 = !{ptr @nmk_pinctrl_probe._entry.54, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @nmk_pinctrl_probe._entry_ptr.56, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1905, i32 3}
!124 = !{ptr @nmk_pinctrl_probe._entry.57, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @nmk_pinctrl_probe._entry_ptr.59, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1910, i32 2}
!128 = !{ptr @nmk_pinctrl_probe._entry.60, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @nmk_pinctrl_probe._entry_ptr.62, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @nmk_pinctrl_desc, !131, !"nmk_pinctrl_desc", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1786, i32 28}
!132 = !{ptr @nmk_pinctrl_ops, !133, !"nmk_pinctrl_ops", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1479, i32 33}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1227, i32 17}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1400, i32 36}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1404, i32 39}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1423, i32 35}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1430, i32 39}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1330, i32 2}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1331, i32 2}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1332, i32 2}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1333, i32 2}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1334, i32 2}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1335, i32 2}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1336, i32 2}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1337, i32 2}
!160 = !{ptr @nmk_cfg_params, !161, !"nmk_cfg_params", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1329, i32 35}
!162 = !{ptr @nmk_pin_input_modes, !163, !"nmk_pin_input_modes", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1277, i32 28}
!164 = !{ptr @nmk_pin_output_modes, !165, !"nmk_pin_output_modes", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1283, i32 28}
!166 = !{ptr @nmk_pin_sleep_modes, !167, !"nmk_pin_sleep_modes", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1289, i32 28}
!168 = !{ptr @nmk_pin_sleep_input_modes, !169, !"nmk_pin_sleep_input_modes", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1294, i32 28}
!170 = !{ptr @nmk_pin_sleep_output_modes, !171, !"nmk_pin_sleep_output_modes", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1301, i32 28}
!172 = !{ptr @nmk_pin_sleep_wakeup_modes, !173, !"nmk_pin_sleep_wakeup_modes", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1307, i32 28}
!174 = !{ptr @nmk_pin_gpio_modes, !175, !"nmk_pin_gpio_modes", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1312, i32 28}
!176 = !{ptr @nmk_pin_sleep_pdis_modes, !177, !"nmk_pin_sleep_pdis_modes", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1317, i32 28}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1359, i32 31}
!180 = !{ptr @nmk_pinmux_ops, !181, !"nmk_pinmux_ops", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1666, i32 32}
!182 = !{ptr @nmk_pmx_set.slpm, !183, !"slpm", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1521, i32 22}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1532, i32 2}
!186 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @nmk_pmx_set.__UNIQUE_ID_ddebug232, !185, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1578, i32 4}
!191 = !{ptr @nmk_pmx_set._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @nmk_pmx_set._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1583, i32 3}
!195 = !{ptr @nmk_pmx_set.__UNIQUE_ID_ddebug233, !194, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!196 = !{ptr @.str.82, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 431, i32 2}
!198 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @nmk_gpio_disable_lazy_irq.__UNIQUE_ID_ddebug227, !197, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 457, i32 3}
!202 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @nmk_prcm_altcx_set_mode._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @nmk_prcm_altcx_set_mode._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.86, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 467, i32 3}
!207 = !{ptr @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug228, !206, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!208 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 486, i32 6}
!210 = !{ptr @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug229, !209, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!211 = !{ptr @.str.89, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 497, i32 3}
!213 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @nmk_prcm_altcx_set_mode._entry.88, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @nmk_prcm_altcx_set_mode._entry_ptr.91, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug230, !217, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 515, i32 5}
!218 = !{ptr @.str.92, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 524, i32 2}
!220 = !{ptr @nmk_prcm_altcx_set_mode.__UNIQUE_ID_ddebug231, !219, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1635, i32 3}
!223 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @nmk_gpio_request_enable._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @nmk_gpio_request_enable._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.96, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1639, i32 3}
!228 = !{ptr @nmk_gpio_request_enable._entry.95, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @nmk_gpio_request_enable._entry_ptr.97, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.98, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1645, i32 2}
!232 = !{ptr @nmk_gpio_request_enable.__UNIQUE_ID_ddebug234, !231, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1662, i32 2}
!235 = !{ptr @.str.100, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @nmk_gpio_disable_free.__UNIQUE_ID_ddebug235, !234, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!237 = !{ptr @nmk_pinconf_ops, !238, !"nmk_pinconf_ops", i1 false, i1 false}
!238 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1781, i32 33}
!239 = !{ptr @.str.101, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1687, i32 26}
!241 = !{ptr @.str.102, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1688, i32 24}
!243 = !{ptr @.str.103, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1689, i32 26}
!245 = !{ptr @.str.104, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1690, i32 23}
!247 = !{ptr @nmk_pin_config_set.pullnames, !248, !"pullnames", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1686, i32 21}
!249 = !{ptr @.str.105, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1693, i32 28}
!251 = !{ptr @.str.106, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1694, i32 30}
!253 = !{ptr @nmk_pin_config_set.slpmnames, !254, !"slpmnames", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1692, i32 21}
!255 = !{ptr @.str.107, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1705, i32 3}
!257 = !{ptr @.str.108, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @nmk_pin_config_set._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @nmk_pin_config_set._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.109, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1744, i32 4}
!262 = !{ptr @nmk_pin_config_set.__UNIQUE_ID_ddebug236, !261, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!263 = !{ptr @.str.110, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.111, !261, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.112, !261, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.113, !261, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.114, !261, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.115, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1753, i32 3}
!270 = !{ptr @nmk_pin_config_set.__UNIQUE_ID_ddebug237, !269, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!271 = !{ptr @.str.116, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.117, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.118, !269, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @nmk_pinctrl_match, !275, !"nmk_pinctrl_match", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1794, i32 34}
!276 = !{ptr @nmk_pinctrl_pm_ops, !277, !"nmk_pinctrl_pm_ops", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/nomadik/pinctrl-nomadik.c", i32 1928, i32 8}
!278 = !{i32 1, !"wchar_size", i32 2}
!279 = !{i32 1, !"min_enum_size", i32 4}
!280 = !{i32 8, !"branch-target-enforcement", i32 0}
!281 = !{i32 8, !"sign-return-address", i32 0}
!282 = !{i32 8, !"sign-return-address-all", i32 0}
!283 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!284 = !{i32 7, !"uwtable", i32 1}
!285 = !{i32 7, !"frame-pointer", i32 2}
!286 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!287 = !{i64 4834565}
!288 = !{!"auto-init"}
!289 = !{!"branch_weights", i32 1, i32 2000}
!290 = !{i64 2154116781, i64 2154117288, i64 2154116818, i64 2154116874, i64 2154116908, i64 2154116932, i64 2154116973, i64 2154116994, i64 2154117022, i64 2154117056}
!291 = !{i64 2154107228}
!292 = !{i64 2154107644}
!293 = !{i64 4834147}
!294 = !{i64 2154108417}
!295 = !{i64 2154078177}
!296 = !{i64 2154102816}
!297 = !{i64 2154103576}
!298 = !{i64 2154104245}
!299 = !{i64 2154106644}
!300 = !{i32 0, i32 33}
!301 = !{i64 2154110378}
!302 = !{i64 2154110965}
!303 = !{i64 2154111552}
!304 = !{i64 2154109004}
!305 = !{i64 2154109591}
!306 = !{i64 2154102327}
!307 = !{i8 0, i8 2}
!308 = !{i64 2154072513}
!309 = !{i64 2154072897}
!310 = !{i64 2148741371, i64 2148741376, i64 2148741389, i64 2148741433, i64 2148741467, i64 2148741488}
!311 = !{i64 2154100482}
!312 = !{i64 2154100702}
!313 = !{i64 2154078756}
!314 = !{i64 2154079198}
!315 = !{i64 2154070355}
!316 = !{i64 2154070942}
!317 = !{i64 2154071411}
!318 = !{i64 2154071821}
!319 = !{i64 2154079633}
!320 = !{i64 2154080047}
!321 = !{i64 2154101534}
!322 = !{i64 2154088855}
!323 = !{i64 2154083827}
!324 = !{i64 2154084027}
!325 = !{i64 2154094006}
!326 = !{i64 2154073586}
!327 = !{i64 2154074050}
!328 = !{i64 2154074644}
!329 = !{i64 2154075322}
