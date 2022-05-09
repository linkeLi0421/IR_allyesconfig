; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-mvebu.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mvebu.c"
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
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mvebu_gpio_chip = type { %struct.gpio_chip, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.mvebu_pwm = type { ptr, i32, i32, ptr, %struct.pwm_chip, %struct.spinlock, ptr, i32, i32, i32 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_gpio_mvebu__224_1321_mvebu_gpio_driver_init6 = internal global ptr @mvebu_gpio_driver_init, section ".initcall6.init", align 4
@mvebu_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mvebu_gpio_probe, ptr null, ptr null, ptr @mvebu_gpio_suspend, ptr @mvebu_gpio_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mvebu-gpio\00", [21 x i8] zeroinitializer }, align 32
@mvebu_gpio_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv78200-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armadaxp-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-8k-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@mvebu_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Missing ngpios OF property\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvebu_gpio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpio/gpio-mvebu.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvebu_gpio_probe._entry_ptr = internal global ptr @mvebu_gpio_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@mvebu_gpio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Couldn't get OF id\0A\00", [44 x i8] zeroinitializer }, align 32
@mvebu_gpio_probe._entry_ptr.10 = internal global ptr @mvebu_gpio_probe._entry.8, section ".printk_index", align 4
@mvebu_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mvebu_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@mvebu_gpio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1252, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"couldn't allocate irq domain %s (DT).\0A\00", [57 x i8] zeroinitializer }, align 32
@mvebu_gpio_probe._entry_ptr.13 = internal global ptr @mvebu_gpio_probe._entry.11, section ".printk_index", align 4
@mvebu_gpio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"couldn't allocate irq chips %s (DT).\0A\00", [58 x i8] zeroinitializer }, align 32
@mvebu_gpio_probe._entry_ptr.16 = internal global ptr @mvebu_gpio_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" gpio-%-3d (%-20.20s)\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" out %s %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hi\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lo\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(blink )\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" in  %s (act %s) - IRQ\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" disabled\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" edge \00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" level\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" (%s)\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pending\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clear  \00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@mvebu_gpio_probe_raw._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mvebu_gpio_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"gpio_mvebu:1080:(&mvebu_gpio_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@mvebu_gpio_probe_raw._key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"gpio_mvebu:1101:(&mvebu_gpio_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"marvell,armada-370-gpio\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"marvell,pwm-offset\00", [45 x i8] zeroinitializer }, align 32
@mvebu_pwm_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"gpio_mvebu:846:(&mvebu_gpio_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@mvebu_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 867, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mvebu_pwm_probe\00", [16 x i8] zeroinitializer }, align 32
@mvebu_pwm_probe._entry_ptr = internal global ptr @mvebu_pwm_probe._entry, section ".printk_index", align 4
@mvebu_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @mvebu_pwm_request, ptr @mvebu_pwm_free, ptr null, ptr @mvebu_pwm_apply, ptr @mvebu_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mvebu_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&mvpwm->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mvebu-pwm\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 320, i64 4160]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"mvebu_gpio_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1312, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1314, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"mvebu_gpio_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 940, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1155, i32 46 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1156, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1160, i32 42 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1162, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1235, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1251, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1261, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 913, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 916, i32 18 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 917, i32 20 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 917, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 918, i32 22 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 918, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 922, i32 17 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 926, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 930, i32 16 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 932, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 933, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 933, i32 42 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 933, i32 54 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1116, i32 46 }
@___asan_gen_.161 = private unnamed_addr constant [25 x i8] c"mvebu_gpio_regmap_config\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 608, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1079, i32 17 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1100, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 794, i32 9 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 801, i32 59 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 806, i32 13 }
@___asan_gen_.182 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 845, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 867, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [14 x i8] c"mvebu_pwm_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 751, i32 29 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 882, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [29 x i8] c"../drivers/gpio/gpio-mvebu.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 637, i32 20 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__initcall__kmod_gpio_mvebu__224_1321_mvebu_gpio_driver_init6, ptr @mvebu_gpio_probe._entry, ptr @mvebu_gpio_probe._entry.11, ptr @mvebu_gpio_probe._entry.14, ptr @mvebu_gpio_probe._entry.8, ptr @mvebu_gpio_probe._entry_ptr, ptr @mvebu_gpio_probe._entry_ptr.10, ptr @mvebu_gpio_probe._entry_ptr.13, ptr @mvebu_gpio_probe._entry_ptr.16, ptr @mvebu_pwm_probe._entry, ptr @mvebu_pwm_probe._entry_ptr, ptr @mvebu_gpio_driver, ptr @.str, ptr @mvebu_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @mvebu_gpio_probe.lock_key, ptr @mvebu_gpio_probe.request_key, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @mvebu_gpio_probe_raw._key, ptr @mvebu_gpio_regmap_config, ptr @.str.31, ptr @mvebu_gpio_probe_raw._key.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @mvebu_pwm_probe._key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @mvebu_pwm_ops, ptr @mvebu_pwm_probe.__key, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_probe_raw._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_gpio_probe_raw._key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pwm_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %offset.i352 = alloca i32, align 4
  %ngpios = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpios) #6
  %2 = ptrtoint ptr %ngpios to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ngpios, align 4, !annotation !102
  %call = tail call ptr @of_match_device(ptr noundef nonnull @mvebu_gpio_of_match, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %soc_variant.0 = phi i32 [ %5, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %call2 = tail call i32 @platform_irq_count(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup217_crit_edge, label %if.end4

if.end.cleanup217_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup217

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp5.not = icmp eq i32 %call2, 0
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 428, i32 noundef 3520) #6
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end4.cleanup217_crit_edge, label %if.end10

if.end4.cleanup217_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup217

if.end10:                                         ; preds = %if.end4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull %ngpios, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool14.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool14.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup217

if.end17:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call20 = call i32 @of_alias_get_id(ptr noundef %10, ptr noundef nonnull @.str.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup217

if.end27:                                         ; preds = %if.end17
  %call29 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call29, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end27.if.end35_crit_edge, label %if.then32

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %if.end27
  %call.i338 = call i32 @clk_prepare(ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool.not.i = icmp eq i32 %call.i338, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then32.if.end35_crit_edge

if.then32.if.end35_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end.i:                                         ; preds = %if.then32
  %call1.i = call i32 @clk_enable(ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end35_crit_edge, label %if.then3.i

if.end.i.if.end35_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call29) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then3.i, %if.end.i.if.end35_crit_edge, %if.then32.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  %soc_variant36 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %soc_variant36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %soc_variant.0, ptr %soc_variant36, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i339 = icmp eq ptr %14, null
  br i1 %tobool.not.i339, label %if.end.i340, label %if.end35.dev_name.exit_crit_edge

if.end35.dev_name.exit_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i340:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i340, %if.end35.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end.i340 ], [ %14, %if.end35.dev_name.exit_crit_edge ]
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %parent, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mvebu_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mvebu_gpio_direction_input, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %23 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mvebu_gpio_get, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mvebu_gpio_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mvebu_gpio_set, ptr %set, align 4
  br i1 %cmp5.not, label %dev_name.exit.if.end51_crit_edge, label %if.then49

dev_name.exit.if.end51_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then49:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 15
  %26 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mvebu_gpio_to_irq, ptr %to_irq, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %dev_name.exit.if.end51_crit_edge
  %mul = shl i32 %call20, 5
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %27 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %base, align 4
  %28 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ngpios, align 4
  %conv = trunc i32 %29 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %30 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %31 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %can_sleep, align 4
  %dbg_show = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 16
  %32 = ptrtoint ptr %dbg_show to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mvebu_gpio_dbg_show, ptr %dbg_show, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %soc_variant.0)
  %cmp56 = icmp eq i32 %soc_variant.0, 4
  br i1 %cmp56, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.end51
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i, align 8
  %call.i341 = call ptr @syscon_node_to_regmap(ptr noundef %36) #6
  %regs.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i341, ptr %regs.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i341, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then58.if.end62_crit_edge, label %if.end.i342

if.then58.if.end62_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end.i342:                                      ; preds = %if.then58
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %offset.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 2
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.30, ptr noundef %offset.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.inv.i = icmp slt i32 %call.i.i.i, 0
  br i1 %tobool.not.inv.i, label %if.end.i342.cleanup217_crit_edge, label %if.end.i342.sw.bb_crit_edge

if.end.i342.sw.bb_crit_edge:                      ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.i342.cleanup217_crit_edge:                 ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup217

if.else60:                                        ; preds = %if.end51
  %call.i344 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i.i345 = icmp ugt ptr %call.i344, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i345, label %if.else60.if.end62_crit_edge, label %if.end.i348

if.else60.if.end62_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end.i348:                                      ; preds = %if.else60
  %call3.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call.i344, ptr noundef nonnull @mvebu_gpio_regmap_config, ptr noundef nonnull @mvebu_gpio_probe_raw._key, ptr noundef nonnull @.str.31) #6
  %regs.i347 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %regs.i347 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call3.i, ptr %regs.i347, align 4
  %cmp.i41.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41.i, label %if.end.i348.if.end62_crit_edge, label %if.end9.i

if.end.i348.if.end62_crit_edge:                   ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end9.i:                                        ; preds = %if.end.i348
  %offset.i349 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %offset.i349 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %offset.i349, align 4
  %42 = ptrtoint ptr %soc_variant36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %soc_variant36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp.i350 = icmp eq i32 %43, 3
  br i1 %cmp.i350, label %if.then10.i, label %if.end9.i.if.end65_crit_edge

if.end9.i.if.end65_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then10.i:                                      ; preds = %if.end9.i
  %call11.i = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #6
  %cmp.i42.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.i, label %if.then10.i.if.end62_crit_edge, label %if.end15.i

if.then10.i.if.end62_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end15.i:                                       ; preds = %if.then10.i
  %call18.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call11.i, ptr noundef nonnull @mvebu_gpio_regmap_config, ptr noundef nonnull @mvebu_gpio_probe_raw._key.32, ptr noundef nonnull @.str.33) #6
  %percpu_regs.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %percpu_regs.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call18.i, ptr %percpu_regs.i, align 4
  %cmp.i43.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43.i, label %if.end15.i.if.end62_crit_edge, label %if.end15.i.if.end65_crit_edge

if.end15.i.if.end65_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.end15.i.if.end62_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end62:                                         ; preds = %if.end15.i.if.end62_crit_edge, %if.then10.i.if.end62_crit_edge, %if.end.i348.if.end62_crit_edge, %if.else60.if.end62_crit_edge, %if.then58.if.end62_crit_edge
  %err.0.in = phi ptr [ %call18.i, %if.end15.i.if.end62_crit_edge ], [ %call.i341, %if.then58.if.end62_crit_edge ], [ %call.i344, %if.else60.if.end62_crit_edge ], [ %call3.i, %if.end.i348.if.end62_crit_edge ], [ %call11.i, %if.then10.i.if.end62_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %tobool63.not = icmp eq ptr %err.0.in, null
  br i1 %tobool63.not, label %if.end62.if.end65_crit_edge, label %if.end62.cleanup217_crit_edge

if.end62.cleanup217_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup217

if.end62.if.end65_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.end65:                                         ; preds = %if.end62.if.end65_crit_edge, %if.end15.i.if.end65_crit_edge, %if.end9.i.if.end65_crit_edge
  %45 = zext i32 %soc_variant.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %soc_variant.0, label %do.body111 [
    i32 1, label %if.end65.sw.bb_crit_edge
    i32 4, label %if.end65.sw.bb_crit_edge382
    i32 2, label %sw.bb75
    i32 3, label %sw.bb87
  ]

if.end65.sw.bb_crit_edge382:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end65.sw.bb_crit_edge:                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end65.sw.bb_crit_edge, %if.end65.sw.bb_crit_edge382, %if.end.i342.sw.bb_crit_edge
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 1
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset, align 4
  %add = add i32 %49, 20
  %call66 = call i32 @regmap_write(ptr noundef %47, i32 noundef %add, i32 noundef 0) #6
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset, align 4
  %add69 = add i32 %53, 24
  %call70 = call i32 @regmap_write(ptr noundef %51, i32 noundef %add69, i32 noundef 0) #6
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %56 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset, align 4
  %add73 = add i32 %57, 28
  %call74 = call i32 @regmap_write(ptr noundef %55, i32 noundef %add73, i32 noundef 0) #6
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %regs76 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 1
  %58 = ptrtoint ptr %regs76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs76, align 4
  %call77 = call i32 @regmap_write(ptr noundef %59, i32 noundef 20, i32 noundef 0) #6
  %60 = ptrtoint ptr %regs76 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs76, align 4
  %call82 = call i32 @regmap_write(ptr noundef %61, i32 noundef 24, i32 noundef 0) #6
  %62 = ptrtoint ptr %regs76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs76, align 4
  %call86 = call i32 @regmap_write(ptr noundef %63, i32 noundef 28, i32 noundef 0) #6
  %64 = ptrtoint ptr %regs76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs76, align 4
  %call82.1 = call i32 @regmap_write(ptr noundef %65, i32 noundef 48, i32 noundef 0) #6
  %66 = ptrtoint ptr %regs76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs76, align 4
  %call86.1 = call i32 @regmap_write(ptr noundef %67, i32 noundef 52, i32 noundef 0) #6
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %regs88 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 1
  %68 = ptrtoint ptr %regs88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs88, align 4
  %call89 = call i32 @regmap_write(ptr noundef %69, i32 noundef 20, i32 noundef 0) #6
  %70 = ptrtoint ptr %regs88 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs88, align 4
  %call91 = call i32 @regmap_write(ptr noundef %71, i32 noundef 24, i32 noundef 0) #6
  %72 = ptrtoint ptr %regs88 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs88, align 4
  %call93 = call i32 @regmap_write(ptr noundef %73, i32 noundef 28, i32 noundef 0) #6
  %percpu_regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 3
  %74 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %percpu_regs, align 4
  %call99 = call i32 @regmap_write(ptr noundef %75, i32 noundef 0, i32 noundef 0) #6
  %76 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %percpu_regs, align 4
  %call103 = call i32 @regmap_write(ptr noundef %77, i32 noundef 16, i32 noundef 0) #6
  %78 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %percpu_regs, align 4
  %call107 = call i32 @regmap_write(ptr noundef %79, i32 noundef 32, i32 noundef 0) #6
  %80 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %percpu_regs, align 4
  %call99.1 = call i32 @regmap_write(ptr noundef %81, i32 noundef 4, i32 noundef 0) #6
  %82 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %percpu_regs, align 4
  %call103.1 = call i32 @regmap_write(ptr noundef %83, i32 noundef 20, i32 noundef 0) #6
  %84 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %percpu_regs, align 4
  %call107.1 = call i32 @regmap_write(ptr noundef %85, i32 noundef 36, i32 noundef 0) #6
  %86 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %percpu_regs, align 4
  %call99.2 = call i32 @regmap_write(ptr noundef %87, i32 noundef 8, i32 noundef 0) #6
  %88 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %percpu_regs, align 4
  %call103.2 = call i32 @regmap_write(ptr noundef %89, i32 noundef 24, i32 noundef 0) #6
  %90 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %percpu_regs, align 4
  %call107.2 = call i32 @regmap_write(ptr noundef %91, i32 noundef 40, i32 noundef 0) #6
  %92 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %percpu_regs, align 4
  %call99.3 = call i32 @regmap_write(ptr noundef %93, i32 noundef 12, i32 noundef 0) #6
  %94 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %percpu_regs, align 4
  %call103.3 = call i32 @regmap_write(ptr noundef %95, i32 noundef 28, i32 noundef 0) #6
  %96 = ptrtoint ptr %percpu_regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %percpu_regs, align 4
  %call107.3 = call i32 @regmap_write(ptr noundef %97, i32 noundef 44, i32 noundef 0) #6
  br label %sw.epilog

do.body111:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1232, 0\0A.popsection", ""() #6, !srcloc !103
  unreachable

sw.epilog:                                        ; preds = %sw.bb87, %sw.bb75, %sw.bb
  %call119 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @mvebu_gpio_probe.lock_key, ptr noundef nonnull @mvebu_gpio_probe.request_key) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i352) #6
  %98 = ptrtoint ptr %offset.i352 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %offset.i352, align 4, !annotation !102
  %of_node.i353 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 39
  %99 = ptrtoint ptr %of_node.i353 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %of_node.i353, align 4
  %call.i354 = call i32 @of_device_is_compatible(ptr noundef %100, ptr noundef nonnull @.str.34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool.not.i355 = icmp eq i32 %call.i354, 0
  br i1 %tobool.not.i355, label %if.else.i, label %if.then.i356

if.then.i356:                                     ; preds = %sw.epilog
  %call2.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.35) #6
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then.i356.mvebu_pwm_probe.exit_crit_edge, label %if.end.i357

if.then.i356.mvebu_pwm_probe.exit_crit_edge:      ; preds = %if.then.i356
  call void @__sanitizer_cov_trace_pc() #8
  br label %mvebu_pwm_probe.exit

if.end.i357:                                      ; preds = %if.then.i356
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %offset.i352 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %offset.i352, align 4
  br label %if.end13.i

if.else.i:                                        ; preds = %sw.epilog
  %102 = ptrtoint ptr %soc_variant36 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %soc_variant36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %103)
  %cmp.i359 = icmp eq i32 %103, 4
  br i1 %cmp.i359, label %if.then5.i, label %if.else.i.mvebu_pwm_probe.exit_crit_edge

if.else.i.mvebu_pwm_probe.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mvebu_pwm_probe.exit

if.then5.i:                                       ; preds = %if.else.i
  %104 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %of_node, align 8
  %call.i.i.i361 = call i32 @of_property_read_variable_u32_array(ptr noundef %105, ptr noundef nonnull @.str.36, ptr noundef nonnull %offset.i352, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i361)
  %cmp8.i = icmp slt i32 %call.i.i.i361, 0
  br i1 %cmp8.i, label %if.then5.i.mvebu_pwm_probe.exit_crit_edge, label %if.then5.i.if.end13.i_crit_edge

if.then5.i.if.end13.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then5.i.mvebu_pwm_probe.exit_crit_edge:        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mvebu_pwm_probe.exit

if.end13.i:                                       ; preds = %if.then5.i.if.end13.i_crit_edge, %if.end.i357
  %106 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clk, align 4
  %cmp.i.i362 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i362, label %if.then15.i, label %if.end18.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %107 to i32
  br label %mvebu_pwm_probe.exit

if.end18.i:                                       ; preds = %if.end13.i
  %call.i.i363 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #6
  %tobool20.not.i = icmp eq ptr %call.i.i363, null
  br i1 %tobool20.not.i, label %if.end18.i.mvebu_pwm_probe.exit.thread_crit_edge, label %if.end22.i

if.end18.i.mvebu_pwm_probe.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mvebu_pwm_probe.exit.thread

if.end22.i:                                       ; preds = %if.end18.i
  %mvpwm23.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 8
  %109 = ptrtoint ptr %mvpwm23.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i.i363, ptr %mvpwm23.i, align 4
  %mvchip24.i = getelementptr inbounds %struct.mvebu_pwm, ptr %call.i.i363, i32 0, i32 6
  %110 = ptrtoint ptr %mvchip24.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i, ptr %mvchip24.i, align 4
  %111 = ptrtoint ptr %offset.i352 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %offset.i352, align 4
  %offset25.i = getelementptr inbounds %struct.mvebu_pwm, ptr %call.i.i363, i32 0, i32 1
  %113 = ptrtoint ptr %offset25.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %offset25.i, align 4
  %114 = ptrtoint ptr %soc_variant36 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %soc_variant36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %115)
  %cmp27.i = icmp eq i32 %115, 4
  br i1 %cmp27.i, label %if.then28.i, label %if.else33.i

if.then28.i:                                      ; preds = %if.end22.i
  %regs.i364 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 1
  %116 = ptrtoint ptr %regs.i364 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i364, align 4
  %118 = ptrtoint ptr %call.i.i363 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %call.i.i363, align 4
  %offset30.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 2
  %119 = ptrtoint ptr %offset30.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %offset30.i, align 4
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %120, label %if.then28.i.mvebu_pwm_probe.exit.thread_crit_edge [
    i32 4160, label %if.then28.i.if.end56.i_crit_edge
    i32 256, label %if.then28.i.if.end56.i_crit_edge383
    i32 320, label %sw.bb31.i
  ]

if.then28.i.if.end56.i_crit_edge383:              ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then28.i.if.end56.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then28.i.mvebu_pwm_probe.exit.thread_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mvebu_pwm_probe.exit.thread

sw.bb31.i:                                        ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %112, 8
  %122 = ptrtoint ptr %offset25.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %add.i, ptr %offset25.i, align 4
  br label %if.end56.i

if.else33.i:                                      ; preds = %if.end22.i
  %call34.i = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.35) #6
  %cmp.i122.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122.i, label %if.then36.i, label %if.end38.i

if.then36.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %call34.i to i32
  br label %mvebu_pwm_probe.exit

if.end38.i:                                       ; preds = %if.else33.i
  %call40.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call34.i, ptr noundef nonnull @mvebu_gpio_regmap_config, ptr noundef nonnull @mvebu_pwm_probe._key, ptr noundef nonnull @.str.37) #6
  %124 = ptrtoint ptr %call.i.i363 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call40.i, ptr %call.i.i363, align 4
  %cmp.i123.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123.i, label %if.then44.i, label %if.end47.i

if.then44.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %call40.i to i32
  br label %mvebu_pwm_probe.exit

if.end47.i:                                       ; preds = %if.end38.i
  %126 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call20, label %if.end47.i.mvebu_pwm_probe.exit.thread_crit_edge [
    i32 0, label %if.end47.i.if.end56.i_crit_edge
    i32 1, label %if.then52.i
  ]

if.end47.i.if.end56.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.end47.i.mvebu_pwm_probe.exit.thread_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mvebu_pwm_probe.exit.thread

if.then52.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then52.i, %if.end47.i.if.end56.i_crit_edge, %sw.bb31.i, %if.then28.i.if.end56.i_crit_edge, %if.then28.i.if.end56.i_crit_edge383
  %set.0.i = phi i32 [ -1, %sw.bb31.i ], [ -1, %if.then52.i ], [ 0, %if.then28.i.if.end56.i_crit_edge ], [ 0, %if.then28.i.if.end56.i_crit_edge383 ], [ %call20, %if.end47.i.if.end56.i_crit_edge ]
  %regs57.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 1
  %127 = ptrtoint ptr %regs57.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs57.i, align 4
  %offset58.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 2
  %129 = ptrtoint ptr %offset58.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %offset58.i, align 4
  %add59.i = add i32 %130, 32
  %call60.i = call i32 @regmap_write(ptr noundef %128, i32 noundef %add59.i, i32 noundef %set.0.i) #6
  %131 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %clk, align 4
  %call62.i = call i32 @clk_get_rate(ptr noundef %132) #6
  %clk_rate.i = getelementptr inbounds %struct.mvebu_pwm, ptr %call.i.i363, i32 0, i32 2
  %133 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %call62.i, ptr %clk_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool64.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool64.not.i, label %do.end.i, label %if.end66.i

do.end.i:                                         ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  br label %mvebu_pwm_probe.exit.thread

if.end66.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  %chip67.i = getelementptr inbounds %struct.mvebu_pwm, ptr %call.i.i363, i32 0, i32 4
  %134 = ptrtoint ptr %chip67.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %dev, ptr %chip67.i, align 4
  %ops.i = getelementptr inbounds %struct.mvebu_pwm, ptr %call.i.i363, i32 0, i32 4, i32 1
  %135 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @mvebu_pwm_ops, ptr %ops.i, align 4
  %136 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %ngpio, align 4
  %conv.i = zext i16 %137 to i32
  %npwm.i = getelementptr inbounds %struct.mvebu_pwm, ptr %call.i.i363, i32 0, i32 4, i32 3
  %138 = ptrtoint ptr %npwm.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv.i, ptr %npwm.i, align 4
  %base73.i = getelementptr inbounds %struct.mvebu_pwm, ptr %call.i.i363, i32 0, i32 4, i32 2
  %139 = ptrtoint ptr %base73.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %base73.i, align 4
  %lock.i = getelementptr inbounds %struct.mvebu_pwm, ptr %call.i.i363, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @mvebu_pwm_probe.__key, i16 noundef signext 3) #6
  %call79.i = call i32 @pwmchip_add(ptr noundef %chip67.i) #6
  br label %mvebu_pwm_probe.exit

mvebu_pwm_probe.exit.thread:                      ; preds = %do.end.i, %if.end47.i.mvebu_pwm_probe.exit.thread_crit_edge, %if.then28.i.mvebu_pwm_probe.exit.thread_crit_edge, %if.end18.i.mvebu_pwm_probe.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ -22, %if.end47.i.mvebu_pwm_probe.exit.thread_crit_edge ], [ -22, %if.then28.i.mvebu_pwm_probe.exit.thread_crit_edge ], [ -12, %if.end18.i.mvebu_pwm_probe.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i352) #6
  br label %cleanup217

mvebu_pwm_probe.exit:                             ; preds = %if.end66.i, %if.then44.i, %if.then36.i, %if.then15.i, %if.then5.i.mvebu_pwm_probe.exit_crit_edge, %if.else.i.mvebu_pwm_probe.exit_crit_edge, %if.then.i356.mvebu_pwm_probe.exit_crit_edge
  %retval.1.i = phi i32 [ %108, %if.then15.i ], [ %call79.i, %if.end66.i ], [ %123, %if.then36.i ], [ %125, %if.then44.i ], [ 0, %if.then5.i.mvebu_pwm_probe.exit_crit_edge ], [ 0, %if.then.i356.mvebu_pwm_probe.exit_crit_edge ], [ 0, %if.else.i.mvebu_pwm_probe.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i352) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool121.not = icmp ne i32 %retval.1.i, 0
  %brmerge = select i1 %tobool121.not, i1 true, i1 %cmp5.not
  br i1 %brmerge, label %mvebu_pwm_probe.exit.cleanup217_crit_edge, label %if.end126

mvebu_pwm_probe.exit.cleanup217_crit_edge:        ; preds = %mvebu_pwm_probe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup217

if.end126:                                        ; preds = %mvebu_pwm_probe.exit
  %140 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ngpios, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i365 = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %141, i32 noundef %141, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #6
  %domain = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 5
  %142 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call1.i365, ptr %domain, align 4
  %tobool129.not = icmp eq ptr %call1.i365, null
  br i1 %tobool129.not, label %do.end133, label %do.body138

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %144) #9
  br label %err_pwm

do.body138:                                       ; preds = %if.end126
  %145 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ngpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %146)
  %cmp139 = icmp ugt i32 %146, 32
  br i1 %cmp139, label %do.body156, label %do.end167, !prof !104

do.body156:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1259, 0\0A.popsection", ""() #6, !srcloc !105
  unreachable

do.end167:                                        ; preds = %do.body138
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %call170 = call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i365, i32 noundef %146, i32 noundef 2, ptr noundef %148, ptr noundef nonnull @handle_level_irq, i32 noundef 3328, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end179, label %do.end175

do.end175:                                        ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %150) #9
  %151 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %domain, align 4
  call void @irq_domain_remove(ptr noundef %152) #6
  br label %err_pwm

if.end179:                                        ; preds = %do.end167
  %153 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %domain, align 4
  %call181 = call ptr @irq_get_domain_generic_chip(ptr noundef %154, i32 noundef 0) #6
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %call181, i32 0, i32 14
  %155 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call.i, ptr %private, align 4
  %type = getelementptr inbounds %struct.irq_chip_generic, ptr %call181, i32 2, i32 2
  %156 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 12, ptr %type, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call181, i32 1, i32 0, i32 4, i32 2
  %157 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @mvebu_gpio_level_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call181, i32 1, i32 0, i32 4, i32 6
  %158 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @mvebu_gpio_level_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.irq_chip_generic, ptr %call181, i32 1, i32 3
  %159 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @mvebu_gpio_irq_set_type, ptr %irq_set_type, align 4
  %160 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call.i, align 4
  %name188 = getelementptr inbounds %struct.irq_chip_generic, ptr %call181, i32 1, i32 0, i32 1
  %162 = ptrtoint ptr %name188 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %name188, align 4
  %type191 = getelementptr %struct.irq_chip_generic, ptr %call181, i32 3, i32 17
  %163 = ptrtoint ptr %type191 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 3, ptr %type191, align 4
  %irq_ack = getelementptr %struct.irq_chip_generic, ptr %call181, i32 2, i32 11
  %164 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @mvebu_gpio_irq_ack, ptr %irq_ack, align 4
  %irq_mask194 = getelementptr %struct.irq_chip_generic, ptr %call181, i32 2, i32 12
  %165 = ptrtoint ptr %irq_mask194 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @mvebu_gpio_edge_irq_mask, ptr %irq_mask194, align 4
  %irq_unmask196 = getelementptr %struct.irq_chip_generic, ptr %call181, i32 2, i32 14
  %166 = ptrtoint ptr %irq_unmask196 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @mvebu_gpio_edge_irq_unmask, ptr %irq_unmask196, align 4
  %irq_set_type198 = getelementptr %struct.irq_chip_generic, ptr %call181, i32 2, i32 18
  %167 = ptrtoint ptr %irq_set_type198 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @mvebu_gpio_irq_set_type, ptr %irq_set_type198, align 4
  %handler = getelementptr %struct.irq_chip_generic, ptr %call181, i32 3, i32 16
  %168 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @handle_edge_irq, ptr %handler, align 4
  %169 = load ptr, ptr %call.i, align 4
  %name202 = getelementptr %struct.irq_chip_generic, ptr %call181, i32 2, i32 6
  %170 = ptrtoint ptr %name202 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %169, ptr %name202, align 4
  %call207 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %cmp208 = icmp slt i32 %call207, 0
  br i1 %cmp208, label %if.end179.cleanup_crit_edge, label %if.end211

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end211:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %call207, ptr noundef nonnull @mvebu_gpio_irq_handler, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end211, %if.end179.cleanup_crit_edge
  %call207.1 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207.1)
  %cmp208.1 = icmp slt i32 %call207.1, 0
  br i1 %cmp208.1, label %cleanup.cleanup.1_crit_edge, label %if.end211.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.1

if.end211.1:                                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %call207.1, ptr noundef nonnull @mvebu_gpio_irq_handler, ptr noundef nonnull %call.i) #6
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end211.1, %cleanup.cleanup.1_crit_edge
  %call207.2 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207.2)
  %cmp208.2 = icmp slt i32 %call207.2, 0
  br i1 %cmp208.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end211.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.2

if.end211.2:                                      ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %call207.2, ptr noundef nonnull @mvebu_gpio_irq_handler, ptr noundef nonnull %call.i) #6
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end211.2, %cleanup.1.cleanup.2_crit_edge
  %call207.3 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207.3)
  %cmp208.3 = icmp slt i32 %call207.3, 0
  br i1 %cmp208.3, label %cleanup.2.cleanup217_crit_edge, label %if.end211.3

cleanup.2.cleanup217_crit_edge:                   ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup217

if.end211.3:                                      ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %call207.3, ptr noundef nonnull @mvebu_gpio_irq_handler, ptr noundef nonnull %call.i) #6
  br label %cleanup217

err_pwm:                                          ; preds = %do.end175, %do.end133
  %err.1 = phi i32 [ %call170, %do.end175 ], [ -19, %do.end133 ]
  %mvpwm = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 8
  %171 = ptrtoint ptr %mvpwm to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mvpwm, align 4
  %chip216 = getelementptr inbounds %struct.mvebu_pwm, ptr %172, i32 0, i32 4
  call void @pwmchip_remove(ptr noundef %chip216) #6
  br label %cleanup217

cleanup217:                                       ; preds = %err_pwm, %if.end211.3, %cleanup.2.cleanup217_crit_edge, %mvebu_pwm_probe.exit.cleanup217_crit_edge, %mvebu_pwm_probe.exit.thread, %if.end62.cleanup217_crit_edge, %if.end.i342.cleanup217_crit_edge, %do.end25, %do.end, %if.end4.cleanup217_crit_edge, %if.end.cleanup217_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call20, %do.end25 ], [ %err.1, %err_pwm ], [ %call2, %if.end.cleanup217_crit_edge ], [ -12, %if.end4.cleanup217_crit_edge ], [ %err.0, %if.end62.cleanup217_crit_edge ], [ %retval.1.i, %mvebu_pwm_probe.exit.cleanup217_crit_edge ], [ %retval.1.i.ph, %mvebu_pwm_probe.exit.thread ], [ -22, %if.end.i342.cleanup217_crit_edge ], [ 0, %if.end211.3 ], [ 0, %cleanup.2.cleanup217_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %out_reg = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef %5, ptr noundef %out_reg) #6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add4 = add i32 %9, 4
  %io_conf_reg = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 10
  %call5 = tail call i32 @regmap_read(ptr noundef %7, i32 noundef %add4, ptr noundef %io_conf_reg) #6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %add8 = add i32 %13, 8
  %blink_en_reg = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 11
  %call9 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef %add8, ptr noundef %blink_en_reg) #6
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %add12 = add i32 %17, 12
  %in_pol_reg = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 12
  %call13 = tail call i32 @regmap_read(ptr noundef %15, i32 noundef %add12, ptr noundef %in_pol_reg) #6
  %soc_variant = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %soc_variant to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %soc_variant, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %19, label %do.body [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge97
    i32 2, label %for.body.preheader
    i32 3, label %for.body37.preheader
  ]

entry.sw.bb_crit_edge97:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body37.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %arrayidx41 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 0
  %call42 = tail call i32 @regmap_read(ptr noundef %22, i32 noundef 16, ptr noundef %arrayidx41) #6
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %arrayidx47 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 0
  %call48 = tail call i32 @regmap_read(ptr noundef %24, i32 noundef 32, ptr noundef %arrayidx47) #6
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %arrayidx41.1 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 1
  %call42.1 = tail call i32 @regmap_read(ptr noundef %26, i32 noundef 20, ptr noundef %arrayidx41.1) #6
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %arrayidx47.1 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 1
  %call48.1 = tail call i32 @regmap_read(ptr noundef %28, i32 noundef 36, ptr noundef %arrayidx47.1) #6
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %arrayidx41.2 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 2
  %call42.2 = tail call i32 @regmap_read(ptr noundef %30, i32 noundef 24, ptr noundef %arrayidx41.2) #6
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %arrayidx47.2 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 2
  %call48.2 = tail call i32 @regmap_read(ptr noundef %32, i32 noundef 40, ptr noundef %arrayidx47.2) #6
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %arrayidx41.3 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 3
  %call42.3 = tail call i32 @regmap_read(ptr noundef %34, i32 noundef 28, ptr noundef %arrayidx41.3) #6
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %arrayidx47.3 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 3
  %call48.3 = tail call i32 @regmap_read(ptr noundef %36, i32 noundef 44, ptr noundef %arrayidx47.3) #6
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %arrayidx26 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 0
  %call27 = tail call i32 @regmap_read(ptr noundef %38, i32 noundef 24, ptr noundef %arrayidx26) #6
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %arrayidx32 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 0
  %call33 = tail call i32 @regmap_read(ptr noundef %40, i32 noundef 28, ptr noundef %arrayidx32) #6
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %arrayidx26.1 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 1
  %call27.1 = tail call i32 @regmap_read(ptr noundef %42, i32 noundef 48, ptr noundef %arrayidx26.1) #6
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %arrayidx32.1 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 1
  %call33.1 = tail call i32 @regmap_read(ptr noundef %44, i32 noundef 52, ptr noundef %arrayidx32.1) #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge97
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %47 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset, align 4
  %add16 = add i32 %48, 24
  %edge_mask_regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13
  %call17 = tail call i32 @regmap_read(ptr noundef %46, i32 noundef %add16, ptr noundef %edge_mask_regs) #6
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset, align 4
  %add20 = add i32 %52, 28
  %level_mask_regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14
  %call22 = tail call i32 @regmap_read(ptr noundef %50, i32 noundef %add20, ptr noundef %level_mask_regs) #6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1009, 0\0A.popsection", ""() #6, !srcloc !106
  unreachable

sw.epilog:                                        ; preds = %sw.bb, %for.body.preheader, %for.body37.preheader
  %mvpwm1.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %mvpwm1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mvpwm1.i, align 4
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %57 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offset, align 4
  %add.i = add i32 %58, 32
  %blink_select.i = getelementptr inbounds %struct.mvebu_pwm, ptr %54, i32 0, i32 7
  %call.i = tail call i32 @regmap_read(ptr noundef %56, i32 noundef %add.i, ptr noundef %blink_select.i) #6
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %54, align 4
  %offset.i.i = getelementptr inbounds %struct.mvebu_pwm, ptr %54, i32 0, i32 1
  %61 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset.i.i, align 4
  %blink_on_duration.i = getelementptr inbounds %struct.mvebu_pwm, ptr %54, i32 0, i32 8
  %call4.i = tail call i32 @regmap_read(ptr noundef %60, i32 noundef %62, ptr noundef %blink_on_duration.i) #6
  %63 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %54, align 4
  %65 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.i.i, align 4
  %add.i.i = add i32 %66, 4
  %blink_off_duration.i = getelementptr inbounds %struct.mvebu_pwm, ptr %54, i32 0, i32 9
  %call7.i = tail call i32 @regmap_read(ptr noundef %64, i32 noundef %add.i.i, ptr noundef %blink_off_duration.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %out_reg = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %out_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_reg, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %5, i32 noundef %7) #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add4 = add i32 %11, 4
  %io_conf_reg = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %io_conf_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_conf_reg, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add4, i32 noundef %13) #6
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %add8 = add i32 %17, 8
  %blink_en_reg = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %blink_en_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blink_en_reg, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %add8, i32 noundef %19) #6
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %add12 = add i32 %23, 12
  %in_pol_reg = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %in_pol_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_pol_reg, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %add12, i32 noundef %25) #6
  %soc_variant = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %soc_variant to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %soc_variant, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %27, label %do.body [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge97
    i32 2, label %for.body.preheader
    i32 3, label %for.body37.preheader
  ]

entry.sw.bb_crit_edge97:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body37.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %arrayidx41 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 0
  %31 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx41, align 4
  %call42 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 16, i32 noundef %32) #6
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %arrayidx47 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 0
  %35 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx47, align 4
  %call48 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 32, i32 noundef %36) #6
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %arrayidx41.1 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 1
  %39 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx41.1, align 4
  %call42.1 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 20, i32 noundef %40) #6
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %arrayidx47.1 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 1
  %43 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx47.1, align 4
  %call48.1 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 36, i32 noundef %44) #6
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %arrayidx41.2 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 2
  %47 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx41.2, align 4
  %call42.2 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 24, i32 noundef %48) #6
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %arrayidx47.2 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 2
  %51 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx47.2, align 4
  %call48.2 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 40, i32 noundef %52) #6
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %arrayidx41.3 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 3
  %55 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx41.3, align 4
  %call42.3 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 28, i32 noundef %56) #6
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %arrayidx47.3 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 3
  %59 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx47.3, align 4
  %call48.3 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 44, i32 noundef %60) #6
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %arrayidx26 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 0
  %63 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx26, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 24, i32 noundef %64) #6
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %arrayidx32 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 0
  %67 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx32, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 28, i32 noundef %68) #6
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  %arrayidx26.1 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13, i32 1
  %71 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx26.1, align 4
  %call27.1 = tail call i32 @regmap_write(ptr noundef %70, i32 noundef 48, i32 noundef %72) #6
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  %arrayidx32.1 = getelementptr %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14, i32 1
  %75 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx32.1, align 4
  %call33.1 = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 52, i32 noundef %76) #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge97
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 4
  %79 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %offset, align 4
  %add16 = add i32 %80, 24
  %edge_mask_regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 13
  %81 = ptrtoint ptr %edge_mask_regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %edge_mask_regs, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef %add16, i32 noundef %82) #6
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %85 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %offset, align 4
  %add20 = add i32 %86, 28
  %level_mask_regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 14
  %87 = ptrtoint ptr %level_mask_regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %level_mask_regs, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %84, i32 noundef %add20, i32 noundef %88) #6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1061, 0\0A.popsection", ""() #6, !srcloc !107
  unreachable

sw.epilog:                                        ; preds = %sw.bb, %for.body.preheader, %for.body37.preheader
  %mvpwm1.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 8
  %89 = ptrtoint ptr %mvpwm1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mvpwm1.i, align 4
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %93 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %offset, align 4
  %add.i = add i32 %94, 32
  %blink_select.i = getelementptr inbounds %struct.mvebu_pwm, ptr %90, i32 0, i32 7
  %95 = ptrtoint ptr %blink_select.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %blink_select.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %92, i32 noundef %add.i, i32 noundef %96) #6
  %97 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %90, align 4
  %offset.i.i = getelementptr inbounds %struct.mvebu_pwm, ptr %90, i32 0, i32 1
  %99 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset.i.i, align 4
  %blink_on_duration.i = getelementptr inbounds %struct.mvebu_pwm, ptr %90, i32 0, i32 8
  %101 = ptrtoint ptr %blink_on_duration.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %blink_on_duration.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %98, i32 noundef %100, i32 noundef %102) #6
  %103 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %90, align 4
  %105 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %offset.i.i, align 4
  %add.i.i = add i32 %106, 4
  %blink_off_duration.i = getelementptr inbounds %struct.mvebu_pwm, ptr %90, i32 0, i32 9
  %107 = ptrtoint ptr %blink_off_duration.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %blink_off_duration.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %104, i32 noundef %add.i.i, i32 noundef %108) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_get_direction(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  %u = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #6
  %0 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u, align 4, !annotation !102
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %add = add i32 %4, 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %u) #6
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %u, align 4
  %7 = lshr i32 %6, %pin
  %8 = and i32 %7, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_direction_input(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %pin
  %call1 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add2 = add i32 %5, 4
  %shl = shl nuw i32 1, %pin
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add2, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_get(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  %u = alloca i32, align 4
  %data_in = alloca i32, align 4
  %in_pol = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #6
  %0 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u, align 4, !annotation !102
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %add = add i32 %4, 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %u) #6
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %u, align 4
  %shl = shl nuw i32 1, %pin
  %and = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_in) #6
  %7 = ptrtoint ptr %data_in to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %data_in, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_pol) #6
  %8 = ptrtoint ptr %in_pol to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %in_pol, align 4, !annotation !102
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %add4 = add i32 %12, 16
  %call5 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add4, ptr noundef nonnull %data_in) #6
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add8 = add i32 %16, 12
  %call9 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add8, ptr noundef nonnull %in_pol) #6
  %17 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_in, align 4
  %19 = ptrtoint ptr %in_pol to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %in_pol, align 4
  %xor = xor i32 %20, %18
  %21 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %xor, ptr %u, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_pol) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_in) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %call13 = call i32 @regmap_read(ptr noundef %23, i32 noundef %25, ptr noundef nonnull %u) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %u, align 4
  %shr = lshr i32 %27, %pin
  %and14 = and i32 %shr, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #6
  ret i32 %and14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_direction_output(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %pin
  %call1 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %regs.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %offset.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %shl.i = shl nuw i32 1, %pin
  %add.i = add i32 %5, 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call.i13 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %regs.i14 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i13, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i14, align 4
  %offset.i15 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i13, i32 0, i32 2
  %8 = ptrtoint ptr %offset.i15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %call.i.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %shl.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %add2 = add i32 %13, 4
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add2, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_gpio_set(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %shl = shl nuw i32 1, %pin
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_to_irq(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %domain = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %1, i32 noundef %pin, ptr noundef null) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_gpio_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  %val.i107 = alloca i32, align 4
  %val.i92 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %out = alloca i32, align 4
  %io_conf = alloca i32, align 4
  %blink = alloca i32, align 4
  %in_pol = alloca i32, align 4
  %data_in = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #6
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %out, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %io_conf) #6
  %1 = ptrtoint ptr %io_conf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %io_conf, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blink) #6
  %2 = ptrtoint ptr %blink to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %blink, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_pol) #6
  %3 = ptrtoint ptr %in_pol to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %in_pol, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_in) #6
  %4 = ptrtoint ptr %data_in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %data_in, align 4, !annotation !102
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %out) #6
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %add4 = add i32 %12, 4
  %call5 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add4, ptr noundef nonnull %io_conf) #6
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add8 = add i32 %16, 8
  %call9 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add8, ptr noundef nonnull %blink) #6
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add12 = add i32 %20, 12
  %call13 = call i32 @regmap_read(ptr noundef %18, i32 noundef %add12, ptr noundef nonnull %in_pol) #6
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %add16 = add i32 %24, 16
  %call17 = call i32 @regmap_read(ptr noundef %22, i32 noundef %add16, ptr noundef nonnull %data_in) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %val.i, align 4, !annotation !102
  %soc_variant.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %soc_variant.i.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %27, label %do.body.i.i [
    i32 1, label %entry.sw.bb.i.i_crit_edge
    i32 2, label %entry.sw.bb.i.i_crit_edge133
    i32 4, label %entry.sw.bb.i.i_crit_edge134
    i32 3, label %sw.bb2.i.i
  ]

entry.sw.bb.i.i_crit_edge134:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge133:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %entry.sw.bb.i.i_crit_edge, %entry.sw.bb.i.i_crit_edge133, %entry.sw.bb.i.i_crit_edge134
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset, align 4
  %add.i.i = add i32 %30, 20
  br label %mvebu_gpio_read_edge_cause.exit

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %31 = call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i to ptr
  %cpu3.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu3.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu3.i.i, align 4
  %percpu_regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 3
  %mul.i.i = shl i32 %34, 2
  br label %mvebu_gpio_read_edge_cause.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #6, !srcloc !108
  unreachable

mvebu_gpio_read_edge_cause.exit:                  ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %map.0.in.i = phi ptr [ %percpu_regs.i.i, %sw.bb2.i.i ], [ %regs, %sw.bb.i.i ]
  %storemerge.i.i = phi i32 [ %mul.i.i, %sw.bb2.i.i ], [ %add.i.i, %sw.bb.i.i ]
  %35 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %map.0.i, i32 noundef %storemerge.i.i, ptr noundef nonnull %val.i) #6
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i92) #6
  %38 = ptrtoint ptr %val.i92 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val.i92, align 4, !annotation !102
  %39 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %soc_variant.i.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %40, label %do.body.i.i103 [
    i32 1, label %mvebu_gpio_read_edge_cause.exit.sw.bb.i.i97_crit_edge
    i32 4, label %mvebu_gpio_read_edge_cause.exit.sw.bb.i.i97_crit_edge135
    i32 2, label %sw.bb2.i.i100
    i32 3, label %sw.bb5.i.i
  ]

mvebu_gpio_read_edge_cause.exit.sw.bb.i.i97_crit_edge135: ; preds = %mvebu_gpio_read_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i97

mvebu_gpio_read_edge_cause.exit.sw.bb.i.i97_crit_edge: ; preds = %mvebu_gpio_read_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i97

sw.bb.i.i97:                                      ; preds = %mvebu_gpio_read_edge_cause.exit.sw.bb.i.i97_crit_edge, %mvebu_gpio_read_edge_cause.exit.sw.bb.i.i97_crit_edge135
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 4
  %add.i.i96 = add i32 %43, 24
  br label %mvebu_gpio_read_edge_mask.exit

sw.bb2.i.i100:                                    ; preds = %mvebu_gpio_read_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  %44 = call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i98 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i98 to ptr
  %cpu3.i.i99 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu3.i.i99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu3.i.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i = icmp eq i32 %47, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 24, i32 48
  br label %mvebu_gpio_read_edge_mask.exit

sw.bb5.i.i:                                       ; preds = %mvebu_gpio_read_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  %48 = call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i21.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i21.i.i to ptr
  %cpu7.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu7.i.i, align 4
  %percpu_regs.i.i101 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 3
  %mul.i.i102 = shl i32 %51, 2
  %add8.i.i = add i32 %mul.i.i102, 16
  br label %mvebu_gpio_read_edge_mask.exit

do.body.i.i103:                                   ; preds = %mvebu_gpio_read_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #6, !srcloc !109
  unreachable

mvebu_gpio_read_edge_mask.exit:                   ; preds = %sw.bb5.i.i, %sw.bb2.i.i100, %sw.bb.i.i97
  %map.0.in.i104 = phi ptr [ %percpu_regs.i.i101, %sw.bb5.i.i ], [ %regs, %sw.bb2.i.i100 ], [ %regs, %sw.bb.i.i97 ]
  %add8.sink.i.i = phi i32 [ %add8.i.i, %sw.bb5.i.i ], [ %cond.i.i, %sw.bb2.i.i100 ], [ %add.i.i96, %sw.bb.i.i97 ]
  %52 = ptrtoint ptr %map.0.in.i104 to i32
  call void @__asan_load4_noabort(i32 %52)
  %map.0.i105 = load ptr, ptr %map.0.in.i104, align 4
  %call.i106 = call i32 @regmap_read(ptr noundef %map.0.i105, i32 noundef %add8.sink.i.i, ptr noundef nonnull %val.i92) #6
  %53 = ptrtoint ptr %val.i92 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val.i92, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i92) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i107) #6
  %55 = ptrtoint ptr %val.i107 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %val.i107, align 4, !annotation !102
  %56 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %soc_variant.i.i, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %57, label %do.body.i.i125 [
    i32 1, label %mvebu_gpio_read_edge_mask.exit.sw.bb.i.i112_crit_edge
    i32 4, label %mvebu_gpio_read_edge_mask.exit.sw.bb.i.i112_crit_edge136
    i32 2, label %sw.bb2.i.i118
    i32 3, label %sw.bb5.i.i124
  ]

mvebu_gpio_read_edge_mask.exit.sw.bb.i.i112_crit_edge136: ; preds = %mvebu_gpio_read_edge_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i112

mvebu_gpio_read_edge_mask.exit.sw.bb.i.i112_crit_edge: ; preds = %mvebu_gpio_read_edge_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i112

sw.bb.i.i112:                                     ; preds = %mvebu_gpio_read_edge_mask.exit.sw.bb.i.i112_crit_edge, %mvebu_gpio_read_edge_mask.exit.sw.bb.i.i112_crit_edge136
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset, align 4
  %add.i.i111 = add i32 %60, 28
  br label %mvebu_gpio_read_level_mask.exit

sw.bb2.i.i118:                                    ; preds = %mvebu_gpio_read_edge_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  %61 = call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i113 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i113 to ptr
  %cpu3.i.i114 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu3.i.i114 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu3.i.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i116 = icmp eq i32 %64, 0
  %cond.i.i117 = select i1 %tobool.not.i.i116, i32 28, i32 52
  br label %mvebu_gpio_read_level_mask.exit

sw.bb5.i.i124:                                    ; preds = %mvebu_gpio_read_edge_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  %65 = call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i21.i.i119 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i21.i.i119 to ptr
  %cpu7.i.i120 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %cpu7.i.i120 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu7.i.i120, align 4
  %percpu_regs.i.i121 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call, i32 0, i32 3
  %mul.i.i122 = shl i32 %68, 2
  %add8.i.i123 = add i32 %mul.i.i122, 32
  br label %mvebu_gpio_read_level_mask.exit

do.body.i.i125:                                   ; preds = %mvebu_gpio_read_edge_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #6, !srcloc !110
  unreachable

mvebu_gpio_read_level_mask.exit:                  ; preds = %sw.bb5.i.i124, %sw.bb2.i.i118, %sw.bb.i.i112
  %map.0.in.i126 = phi ptr [ %percpu_regs.i.i121, %sw.bb5.i.i124 ], [ %regs, %sw.bb2.i.i118 ], [ %regs, %sw.bb.i.i112 ]
  %add8.sink.i.i127 = phi i32 [ %add8.i.i123, %sw.bb5.i.i124 ], [ %cond.i.i117, %sw.bb2.i.i118 ], [ %add.i.i111, %sw.bb.i.i112 ]
  %69 = ptrtoint ptr %map.0.in.i126 to i32
  call void @__asan_load4_noabort(i32 %69)
  %map.0.i128 = load ptr, ptr %map.0.in.i126, align 4
  %call.i129 = call i32 @regmap_read(ptr noundef %map.0.i128, i32 noundef %add8.sink.i.i127, ptr noundef nonnull %val.i107) #6
  %70 = ptrtoint ptr %val.i107 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val.i107, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i107) #6
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %72 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp131.not = icmp eq i16 %73, 0
  br i1 %cmp131.not, label %mvebu_gpio_read_level_mask.exit.for.end_crit_edge, label %for.body.lr.ph

mvebu_gpio_read_level_mask.exit.for.end_crit_edge: ; preds = %mvebu_gpio_read_level_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %mvebu_gpio_read_level_mask.exit
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %or = or i32 %71, %54
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call23 = call ptr @gpiochip_is_requested(ptr noundef %chip, i32 noundef %i.0132) #6
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %shl = shl nuw i32 1, %i.0132
  %74 = ptrtoint ptr %io_conf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %io_conf, align 4
  %and = and i32 %75, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %base, align 4
  %add26 = add i32 %77, %i.0132
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %add26, ptr noundef nonnull %call23) #6
  br i1 %tobool.not, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %out, align 4
  %and29 = and i32 %79, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond = select i1 %tobool30.not, ptr @.str.20, ptr @.str.19
  %80 = ptrtoint ptr %blink to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %blink, align 4
  %and31 = and i32 %81, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.22, ptr @.str.21
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond, ptr noundef nonnull %cond33) #6
  br label %for.inc

if.end:                                           ; preds = %if.else
  %82 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_in, align 4
  %84 = ptrtoint ptr %in_pol to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %in_pol, align 4
  %xor = xor i32 %85, %83
  %and34 = and i32 %xor, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond36 = select i1 %tobool35.not, ptr @.str.20, ptr @.str.19
  %and37 = and i32 %85, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond39 = select i1 %tobool38.not, ptr @.str.19, ptr @.str.20
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond36, ptr noundef nonnull %cond39) #6
  %and40 = and i32 %shl, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.24) #6
  br label %for.inc

if.end43:                                         ; preds = %if.end
  %and44 = and i32 %shl, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end47_crit_edge, label %if.then46

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.25) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43.if.end47_crit_edge
  %and48 = and i32 %shl, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.26) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  %and52 = and i32 %shl, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %cond54 = select i1 %tobool53.not, ptr @.str.29, ptr @.str.28
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond54) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end51, %if.then42, %if.then28, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0132, 1
  %86 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %87 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %mvebu_gpio_read_level_mask.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_in) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_pol) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blink) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %io_conf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_gpio_level_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 4
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %neg = xor i32 %7, -1
  %mask_cache_priv = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %mask_cache_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_cache_priv, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %mask_cache_priv, align 4
  %soc_variant.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %soc_variant.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %11, label %do.body.i.i [
    i32 1, label %entry.sw.bb.i.i_crit_edge
    i32 4, label %entry.sw.bb.i.i_crit_edge9
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb5.i.i
  ]

entry.sw.bb.i.i_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %entry.sw.bb.i.i_crit_edge, %entry.sw.bb.i.i_crit_edge9
  %regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  %offset1.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset1.i.i, align 4
  %add.i.i = add i32 %14, 28
  br label %mvebu_gpio_write_level_mask.exit

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu3.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu3.i.i, align 4
  %regs4.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 28, i32 52
  br label %mvebu_gpio_write_level_mask.exit

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i21.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i21.i.i to ptr
  %cpu7.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu7.i.i, align 4
  %percpu_regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 3
  %mul.i.i = shl i32 %22, 2
  %add8.i.i = add i32 %mul.i.i, 32
  br label %mvebu_gpio_write_level_mask.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #6, !srcloc !110
  unreachable

mvebu_gpio_write_level_mask.exit:                 ; preds = %sw.bb5.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %map.0.in.i = phi ptr [ %percpu_regs.i.i, %sw.bb5.i.i ], [ %regs4.i.i, %sw.bb2.i.i ], [ %regs.i.i, %sw.bb.i.i ]
  %add8.sink.i.i = phi i32 [ %add8.i.i, %sw.bb5.i.i ], [ %cond.i.i, %sw.bb2.i.i ], [ %add.i.i, %sw.bb.i.i ]
  %23 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %map.0.i, i32 noundef %add8.sink.i.i, i32 noundef %and) #6
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_gpio_level_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 4
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %mask_cache_priv = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %mask_cache_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_cache_priv, align 4
  %or = or i32 %9, %7
  store i32 %or, ptr %mask_cache_priv, align 4
  %soc_variant.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %soc_variant.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %11, label %do.body.i.i [
    i32 1, label %entry.sw.bb.i.i_crit_edge
    i32 4, label %entry.sw.bb.i.i_crit_edge9
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb5.i.i
  ]

entry.sw.bb.i.i_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %entry.sw.bb.i.i_crit_edge, %entry.sw.bb.i.i_crit_edge9
  %regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  %offset1.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset1.i.i, align 4
  %add.i.i = add i32 %14, 28
  br label %mvebu_gpio_write_level_mask.exit

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu3.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu3.i.i, align 4
  %regs4.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 28, i32 52
  br label %mvebu_gpio_write_level_mask.exit

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i21.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i21.i.i to ptr
  %cpu7.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu7.i.i, align 4
  %percpu_regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 3
  %mul.i.i = shl i32 %22, 2
  %add8.i.i = add i32 %mul.i.i, 32
  br label %mvebu_gpio_write_level_mask.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #6, !srcloc !110
  unreachable

mvebu_gpio_write_level_mask.exit:                 ; preds = %sw.bb5.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %map.0.in.i = phi ptr [ %percpu_regs.i.i, %sw.bb5.i.i ], [ %regs4.i.i, %sw.bb2.i.i ], [ %regs.i.i, %sw.bb.i.i ]
  %add8.sink.i.i = phi i32 [ %add8.i.i, %sw.bb5.i.i ], [ %cond.i.i, %sw.bb2.i.i ], [ %add.i.i, %sw.bb.i.i ]
  %23 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %map.0.i, i32 noundef %add8.sink.i.i, i32 noundef %or) #6
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_irq_set_type(ptr noundef %d, i32 noundef %type) #2 align 64 {
entry:
  %u = alloca i32, align 4
  %data_in = alloca i32, align 4
  %in_pol = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #6
  %6 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %u, align 4, !annotation !102
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq, align 4
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %add = add i32 %12, 4
  %call2 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add, ptr noundef nonnull %u) #6
  %13 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %u, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %14, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %type, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %type7 = getelementptr inbounds %struct.irq_chip_type, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %type7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type7, align 4
  %and8 = and i32 %16, %and3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.then9, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.end6
  %call10 = call i32 @irq_setup_alt_chip(ptr noundef %d, i32 noundef %and3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %17 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %and3, label %if.end14.cleanup_crit_edge [
    i32 1, label %if.end14.sw.bb_crit_edge
    i32 4, label %if.end14.sw.bb_crit_edge77
    i32 2, label %if.end14.sw.bb20_crit_edge
    i32 8, label %if.end14.sw.bb20_crit_edge78
    i32 3, label %sw.bb27
  ]

if.end14.sw.bb20_crit_edge78:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

if.end14.sw.bb20_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20

if.end14.sw.bb_crit_edge77:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end14.sw.bb_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end14.sw.bb_crit_edge, %if.end14.sw.bb_crit_edge77
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %add17 = add i32 %21, 12
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %add17, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb20:                                          ; preds = %if.end14.sw.bb20_crit_edge, %if.end14.sw.bb20_crit_edge78
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %add23 = add i32 %25, 12
  %call.i75 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %add23, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb27:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_in) #6
  %26 = ptrtoint ptr %data_in to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %data_in, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_pol) #6
  %27 = ptrtoint ptr %in_pol to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %in_pol, align 4, !annotation !102
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 4
  %add30 = add i32 %31, 12
  %call31 = call i32 @regmap_read(ptr noundef %29, i32 noundef %add30, ptr noundef nonnull %in_pol) #6
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset, align 4
  %add34 = add i32 %35, 16
  %call35 = call i32 @regmap_read(ptr noundef %33, i32 noundef %add34, ptr noundef nonnull %data_in) #6
  %36 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_in, align 4
  %38 = ptrtoint ptr %in_pol to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %in_pol, align 4
  %xor = xor i32 %39, %37
  %and37 = and i32 %xor, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %.shl = select i1 %tobool38.not, i32 0, i32 %shl
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 4
  %add44 = add i32 %43, 12
  %call.i76 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %add44, i32 noundef %shl, i32 noundef %.shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_pol) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_in) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %sw.bb20, %sw.bb, %if.end14.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %sw.bb27 ], [ 0, %sw.bb20 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_gpio_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %soc_variant.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %soc_variant.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %7, label %do.body.i.i [
    i32 1, label %entry.sw.bb.i.i_crit_edge
    i32 2, label %entry.sw.bb.i.i_crit_edge5
    i32 4, label %entry.sw.bb.i.i_crit_edge6
    i32 3, label %sw.bb2.i.i
  ]

entry.sw.bb.i.i_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %entry.sw.bb.i.i_crit_edge, %entry.sw.bb.i.i_crit_edge5, %entry.sw.bb.i.i_crit_edge6
  %regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  %offset1.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset1.i.i, align 4
  %add.i.i = add i32 %10, 20
  br label %mvebu_gpio_write_edge_cause.exit

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = tail call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu3.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu3.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu3.i.i, align 4
  %percpu_regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 3
  %mul.i.i = shl i32 %14, 2
  br label %mvebu_gpio_write_edge_cause.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #6, !srcloc !108
  unreachable

mvebu_gpio_write_edge_cause.exit:                 ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %map.0.in.i = phi ptr [ %percpu_regs.i.i, %sw.bb2.i.i ], [ %regs.i.i, %sw.bb.i.i ]
  %storemerge.i.i = phi i32 [ %mul.i.i, %sw.bb2.i.i ], [ %add.i.i, %sw.bb.i.i ]
  %neg = xor i32 %5, -1
  %15 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %map.0.i, i32 noundef %storemerge.i.i, i32 noundef %neg) #6
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_gpio_edge_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 4
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %neg = xor i32 %7, -1
  %mask_cache_priv = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %mask_cache_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_cache_priv, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %mask_cache_priv, align 4
  %soc_variant.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %soc_variant.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %11, label %do.body.i.i [
    i32 1, label %entry.sw.bb.i.i_crit_edge
    i32 4, label %entry.sw.bb.i.i_crit_edge9
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb5.i.i
  ]

entry.sw.bb.i.i_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %entry.sw.bb.i.i_crit_edge, %entry.sw.bb.i.i_crit_edge9
  %regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  %offset1.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset1.i.i, align 4
  %add.i.i = add i32 %14, 24
  br label %mvebu_gpio_write_edge_mask.exit

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu3.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu3.i.i, align 4
  %regs4.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 24, i32 48
  br label %mvebu_gpio_write_edge_mask.exit

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i21.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i21.i.i to ptr
  %cpu7.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu7.i.i, align 4
  %percpu_regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 3
  %mul.i.i = shl i32 %22, 2
  %add8.i.i = add i32 %mul.i.i, 16
  br label %mvebu_gpio_write_edge_mask.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #6, !srcloc !109
  unreachable

mvebu_gpio_write_edge_mask.exit:                  ; preds = %sw.bb5.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %map.0.in.i = phi ptr [ %percpu_regs.i.i, %sw.bb5.i.i ], [ %regs4.i.i, %sw.bb2.i.i ], [ %regs.i.i, %sw.bb.i.i ]
  %add8.sink.i.i = phi i32 [ %add8.i.i, %sw.bb5.i.i ], [ %cond.i.i, %sw.bb2.i.i ], [ %add.i.i, %sw.bb.i.i ]
  %23 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %map.0.i, i32 noundef %add8.sink.i.i, i32 noundef %and) #6
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_gpio_edge_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 4
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %neg = xor i32 %7, -1
  %soc_variant.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %soc_variant.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %9, label %do.body.i.i [
    i32 1, label %entry.sw.bb.i.i_crit_edge
    i32 2, label %entry.sw.bb.i.i_crit_edge25
    i32 4, label %entry.sw.bb.i.i_crit_edge26
    i32 3, label %sw.bb2.i.i
  ]

entry.sw.bb.i.i_crit_edge26:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge25:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %entry.sw.bb.i.i_crit_edge, %entry.sw.bb.i.i_crit_edge25, %entry.sw.bb.i.i_crit_edge26
  %regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  %offset1.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset1.i.i, align 4
  %add.i.i = add i32 %12, 20
  br label %mvebu_gpio_write_edge_cause.exit

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu3.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu3.i.i, align 4
  %percpu_regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 3
  %mul.i.i = shl i32 %16, 2
  br label %mvebu_gpio_write_edge_cause.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #6, !srcloc !108
  unreachable

mvebu_gpio_write_edge_cause.exit:                 ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %map.0.in.i = phi ptr [ %percpu_regs.i.i, %sw.bb2.i.i ], [ %regs.i.i, %sw.bb.i.i ]
  %storemerge.i.i = phi i32 [ %mul.i.i, %sw.bb2.i.i ], [ %add.i.i, %sw.bb.i.i ]
  %17 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %map.0.i, i32 noundef %storemerge.i.i, i32 noundef %neg) #6
  %mask_cache_priv = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %mask_cache_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask_cache_priv, align 4
  %or = or i32 %19, %7
  store i32 %or, ptr %mask_cache_priv, align 4
  %20 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %soc_variant.i.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %21, label %do.body.i.i21 [
    i32 1, label %mvebu_gpio_write_edge_cause.exit.sw.bb.i.i15_crit_edge
    i32 4, label %mvebu_gpio_write_edge_cause.exit.sw.bb.i.i15_crit_edge27
    i32 2, label %sw.bb2.i.i18
    i32 3, label %sw.bb5.i.i
  ]

mvebu_gpio_write_edge_cause.exit.sw.bb.i.i15_crit_edge27: ; preds = %mvebu_gpio_write_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i15

mvebu_gpio_write_edge_cause.exit.sw.bb.i.i15_crit_edge: ; preds = %mvebu_gpio_write_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i15

sw.bb.i.i15:                                      ; preds = %mvebu_gpio_write_edge_cause.exit.sw.bb.i.i15_crit_edge, %mvebu_gpio_write_edge_cause.exit.sw.bb.i.i15_crit_edge27
  %regs.i.i12 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  %offset1.i.i13 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %offset1.i.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset1.i.i13, align 4
  %add.i.i14 = add i32 %24, 24
  br label %mvebu_gpio_write_edge_mask.exit

sw.bb2.i.i18:                                     ; preds = %mvebu_gpio_write_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = tail call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i16 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i16 to ptr
  %cpu3.i.i17 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu3.i.i17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu3.i.i17, align 4
  %regs4.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 24, i32 48
  br label %mvebu_gpio_write_edge_mask.exit

sw.bb5.i.i:                                       ; preds = %mvebu_gpio_write_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  %29 = tail call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i21.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i21.i.i to ptr
  %cpu7.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu7.i.i, align 4
  %percpu_regs.i.i19 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 3
  %mul.i.i20 = shl i32 %32, 2
  %add8.i.i = add i32 %mul.i.i20, 16
  br label %mvebu_gpio_write_edge_mask.exit

do.body.i.i21:                                    ; preds = %mvebu_gpio_write_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #6, !srcloc !109
  unreachable

mvebu_gpio_write_edge_mask.exit:                  ; preds = %sw.bb5.i.i, %sw.bb2.i.i18, %sw.bb.i.i15
  %map.0.in.i22 = phi ptr [ %percpu_regs.i.i19, %sw.bb5.i.i ], [ %regs4.i.i, %sw.bb2.i.i18 ], [ %regs.i.i12, %sw.bb.i.i15 ]
  %add8.sink.i.i = phi i32 [ %add8.i.i, %sw.bb5.i.i ], [ %cond.i.i, %sw.bb2.i.i18 ], [ %add.i.i14, %sw.bb.i.i15 ]
  %33 = ptrtoint ptr %map.0.in.i22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %map.0.i23 = load ptr, ptr %map.0.in.i22, align 4
  %call.i24 = tail call i32 @regmap_write(ptr noundef %map.0.i23, i32 noundef %add8.sink.i.i, i32 noundef %or) #6
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %val.i76 = alloca i32, align 4
  %val.i61 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %data_in = alloca i32, align 4
  %polarity = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_in) #6
  %4 = ptrtoint ptr %data_in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %data_in, align 4, !annotation !102
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

if.end:                                           ; preds = %entry
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.chained_irq_enter.exit_crit_edge

if.end.chained_irq_enter.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %if.end
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %8(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %10(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %12(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %if.end.chained_irq_enter.exit_crit_edge
  %regs = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add = add i32 %16, 16
  %call2 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add, ptr noundef nonnull %data_in) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i, align 4, !annotation !102
  %soc_variant.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %soc_variant.i.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %19, label %do.body.i.i [
    i32 1, label %chained_irq_enter.exit.sw.bb.i.i_crit_edge
    i32 4, label %chained_irq_enter.exit.sw.bb.i.i_crit_edge113
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb5.i.i
  ]

chained_irq_enter.exit.sw.bb.i.i_crit_edge113:    ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

chained_irq_enter.exit.sw.bb.i.i_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %chained_irq_enter.exit.sw.bb.i.i_crit_edge, %chained_irq_enter.exit.sw.bb.i.i_crit_edge113
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset, align 4
  %add.i.i = add i32 %22, 28
  br label %mvebu_gpio_read_level_mask.exit

sw.bb2.i.i:                                       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu3.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 28, i32 52
  br label %mvebu_gpio_read_level_mask.exit

sw.bb5.i.i:                                       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i21.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i21.i.i to ptr
  %cpu7.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu7.i.i, align 4
  %percpu_regs.i.i = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 3
  %mul.i.i = shl i32 %30, 2
  %add8.i.i = add i32 %mul.i.i, 32
  br label %mvebu_gpio_read_level_mask.exit

do.body.i.i:                                      ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #6, !srcloc !110
  unreachable

mvebu_gpio_read_level_mask.exit:                  ; preds = %sw.bb5.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %map.0.in.i = phi ptr [ %percpu_regs.i.i, %sw.bb5.i.i ], [ %regs, %sw.bb2.i.i ], [ %regs, %sw.bb.i.i ]
  %add8.sink.i.i = phi i32 [ %add8.i.i, %sw.bb5.i.i ], [ %cond.i.i, %sw.bb2.i.i ], [ %add.i.i, %sw.bb.i.i ]
  %31 = ptrtoint ptr %map.0.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %map.0.i = load ptr, ptr %map.0.in.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %map.0.i, i32 noundef %add8.sink.i.i, ptr noundef nonnull %val.i) #6
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i61) #6
  %34 = ptrtoint ptr %val.i61 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %val.i61, align 4, !annotation !102
  %35 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %soc_variant.i.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %36, label %do.body.i.i72 [
    i32 1, label %mvebu_gpio_read_level_mask.exit.sw.bb.i.i66_crit_edge
    i32 2, label %mvebu_gpio_read_level_mask.exit.sw.bb.i.i66_crit_edge114
    i32 4, label %mvebu_gpio_read_level_mask.exit.sw.bb.i.i66_crit_edge115
    i32 3, label %sw.bb2.i.i71
  ]

mvebu_gpio_read_level_mask.exit.sw.bb.i.i66_crit_edge115: ; preds = %mvebu_gpio_read_level_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i66

mvebu_gpio_read_level_mask.exit.sw.bb.i.i66_crit_edge114: ; preds = %mvebu_gpio_read_level_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i66

mvebu_gpio_read_level_mask.exit.sw.bb.i.i66_crit_edge: ; preds = %mvebu_gpio_read_level_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i66

sw.bb.i.i66:                                      ; preds = %mvebu_gpio_read_level_mask.exit.sw.bb.i.i66_crit_edge, %mvebu_gpio_read_level_mask.exit.sw.bb.i.i66_crit_edge114, %mvebu_gpio_read_level_mask.exit.sw.bb.i.i66_crit_edge115
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset, align 4
  %add.i.i65 = add i32 %39, 20
  br label %mvebu_gpio_read_edge_cause.exit

sw.bb2.i.i71:                                     ; preds = %mvebu_gpio_read_level_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  %40 = call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i67 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i67 to ptr
  %cpu3.i.i68 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu3.i.i68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu3.i.i68, align 4
  %percpu_regs.i.i69 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 3
  %mul.i.i70 = shl i32 %43, 2
  br label %mvebu_gpio_read_edge_cause.exit

do.body.i.i72:                                    ; preds = %mvebu_gpio_read_level_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #6, !srcloc !108
  unreachable

mvebu_gpio_read_edge_cause.exit:                  ; preds = %sw.bb2.i.i71, %sw.bb.i.i66
  %map.0.in.i73 = phi ptr [ %percpu_regs.i.i69, %sw.bb2.i.i71 ], [ %regs, %sw.bb.i.i66 ]
  %storemerge.i.i = phi i32 [ %mul.i.i70, %sw.bb2.i.i71 ], [ %add.i.i65, %sw.bb.i.i66 ]
  %44 = ptrtoint ptr %map.0.in.i73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %map.0.i74 = load ptr, ptr %map.0.in.i73, align 4
  %call.i75 = call i32 @regmap_read(ptr noundef %map.0.i74, i32 noundef %storemerge.i.i, ptr noundef nonnull %val.i61) #6
  %45 = ptrtoint ptr %val.i61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i61, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i61) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i76) #6
  %47 = ptrtoint ptr %val.i76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %val.i76, align 4, !annotation !102
  %48 = ptrtoint ptr %soc_variant.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %soc_variant.i.i, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %49, label %do.body.i.i94 [
    i32 1, label %mvebu_gpio_read_edge_cause.exit.sw.bb.i.i81_crit_edge
    i32 4, label %mvebu_gpio_read_edge_cause.exit.sw.bb.i.i81_crit_edge116
    i32 2, label %sw.bb2.i.i87
    i32 3, label %sw.bb5.i.i93
  ]

mvebu_gpio_read_edge_cause.exit.sw.bb.i.i81_crit_edge116: ; preds = %mvebu_gpio_read_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i81

mvebu_gpio_read_edge_cause.exit.sw.bb.i.i81_crit_edge: ; preds = %mvebu_gpio_read_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i81

sw.bb.i.i81:                                      ; preds = %mvebu_gpio_read_edge_cause.exit.sw.bb.i.i81_crit_edge, %mvebu_gpio_read_edge_cause.exit.sw.bb.i.i81_crit_edge116
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset, align 4
  %add.i.i80 = add i32 %52, 24
  br label %mvebu_gpio_read_edge_mask.exit

sw.bb2.i.i87:                                     ; preds = %mvebu_gpio_read_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  %53 = call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i.i.i82 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i82 to ptr
  %cpu3.i.i83 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu3.i.i83 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu3.i.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i85 = icmp eq i32 %56, 0
  %cond.i.i86 = select i1 %tobool.not.i.i85, i32 24, i32 48
  br label %mvebu_gpio_read_edge_mask.exit

sw.bb5.i.i93:                                     ; preds = %mvebu_gpio_read_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  %57 = call i32 @llvm.read_register.i32(metadata !92) #6
  %and.i21.i.i88 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i21.i.i88 to ptr
  %cpu7.i.i89 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu7.i.i89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu7.i.i89, align 4
  %percpu_regs.i.i90 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 3
  %mul.i.i91 = shl i32 %60, 2
  %add8.i.i92 = add i32 %mul.i.i91, 16
  br label %mvebu_gpio_read_edge_mask.exit

do.body.i.i94:                                    ; preds = %mvebu_gpio_read_edge_cause.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #6, !srcloc !109
  unreachable

mvebu_gpio_read_edge_mask.exit:                   ; preds = %sw.bb5.i.i93, %sw.bb2.i.i87, %sw.bb.i.i81
  %map.0.in.i95 = phi ptr [ %percpu_regs.i.i90, %sw.bb5.i.i93 ], [ %regs, %sw.bb2.i.i87 ], [ %regs, %sw.bb.i.i81 ]
  %add8.sink.i.i96 = phi i32 [ %add8.i.i92, %sw.bb5.i.i93 ], [ %cond.i.i86, %sw.bb2.i.i87 ], [ %add.i.i80, %sw.bb.i.i81 ]
  %61 = ptrtoint ptr %map.0.in.i95 to i32
  call void @__asan_load4_noabort(i32 %61)
  %map.0.i97 = load ptr, ptr %map.0.in.i95, align 4
  %call.i98 = call i32 @regmap_read(ptr noundef %map.0.i97, i32 noundef %add8.sink.i.i96, ptr noundef nonnull %val.i76) #6
  %62 = ptrtoint ptr %val.i76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i76, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i76) #6
  %64 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_in, align 4
  %and = and i32 %65, %33
  %and6 = and i32 %63, %46
  %or = or i32 %and, %and6
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %66 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp8111.not = icmp eq i16 %67, 0
  br i1 %cmp8111.not, label %mvebu_gpio_read_edge_mask.exit.for.end_crit_edge, label %for.body.lr.ph

mvebu_gpio_read_edge_mask.exit.for.end_crit_edge: ; preds = %mvebu_gpio_read_edge_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %mvebu_gpio_read_edge_mask.exit
  %domain = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %68 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %70 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %irq.i, align 4, !annotation !102
  %call.i99 = call ptr @__irq_resolve_mapping(ptr noundef %69, i32 noundef %i.0112, ptr noundef nonnull %irq.i) #6
  %tobool.not.i100 = icmp eq ptr %call.i99, null
  br i1 %tobool.not.i100, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %72, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  %shl = shl nuw i32 1, %i.0112
  %and11 = and i32 %shl, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %irq_find_mapping.exit.cleanup_crit_edge, label %if.end13

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %irq_find_mapping.exit
  %call.i101 = call ptr @irq_get_irq_data(i32 noundef %retval.0.i) #6
  %tobool.not.i102 = icmp eq ptr %call.i101, null
  br i1 %tobool.not.i102, label %if.end13.if.end28_crit_edge, label %irq_get_trigger_type.exit

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

irq_get_trigger_type.exit:                        ; preds = %if.end13
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i101, i32 0, i32 3
  %73 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %common.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %and.i.i = and i32 %76, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp16 = icmp eq i32 %and.i.i, 3
  br i1 %cmp16, label %if.then18, label %irq_get_trigger_type.exit.if.end28_crit_edge

irq_get_trigger_type.exit.if.end28_crit_edge:     ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then18:                                        ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %polarity) #6
  %77 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %polarity, align 4, !annotation !102
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %80 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset, align 4
  %add21 = add i32 %81, 12
  %call22 = call i32 @regmap_read(ptr noundef %79, i32 noundef %add21, ptr noundef nonnull %polarity) #6
  %82 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %polarity, align 4
  %xor = xor i32 %83, %shl
  store i32 %xor, ptr %polarity, align 4
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %86 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offset, align 4
  %add26 = add i32 %87, 12
  %call27 = call i32 @regmap_write(ptr noundef %85, i32 noundef %add26, i32 noundef %xor) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %polarity) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then18, %irq_get_trigger_type.exit.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %call29 = call i32 @generic_handle_irq(i32 noundef %retval.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %irq_find_mapping.exit.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0112, 1
  %88 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %89 to i32
  %cmp8 = icmp ult i32 %inc, %conv
  br i1 %cmp8, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %mvebu_gpio_read_edge_mask.exit.for.end_crit_edge
  %90 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i104 = icmp eq ptr %91, null
  br i1 %tobool.not.i104, label %if.else.i105, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i105:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %92 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i105, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %93, %if.else.i105 ], [ %91, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  br label %cleanup30

cleanup30:                                        ; preds = %chained_irq_exit.exit, %entry.cleanup30_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_in) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_is_requested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pwm_request(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mvchip1 = getelementptr i8, ptr %chip, i32 80
  %0 = ptrtoint ptr %mvchip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvchip1, align 4
  %lock = getelementptr i8, ptr %chip, i32 36
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %gpiod = getelementptr i8, ptr %chip, i32 -4
  %2 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else:                                          ; preds = %entry
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %call8 = tail call ptr @gpiochip_request_own_desc(ptr noundef %1, i32 noundef %5, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef 3) #6
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call8 to i32
  br label %out

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %gpiod to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %gpiod, align 4
  br label %out

out:                                              ; preds = %if.end, %if.then10, %entry.out_crit_edge
  %ret.0 = phi i32 [ %6, %if.then10 ], [ 0, %if.end ], [ -16, %entry.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_pwm_free(ptr noundef %chip, ptr nocapture noundef readnone %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %chip, i32 36
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %gpiod = getelementptr i8, ptr %chip, i32 -4
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 4
  tail call void @gpiochip_free_own_desc(ptr noundef %1) #6
  %2 = ptrtoint ptr %gpiod to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gpiod, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pwm_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
if.end183:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -16
  %mvchip1 = getelementptr i8, ptr %chip, i32 80
  %0 = ptrtoint ptr %mvchip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvchip1, align 4
  %clk_rate = getelementptr i8, ptr %chip, i32 -8
  %2 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_rate, align 4
  %conv = zext i32 %3 to i64
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %duty_cycle, align 8
  %mul = mul i64 %5, %conv
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #10, !srcloc !111
  %asmresult.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #10, !srcloc !112
  %asmresult10.i = extractvalue { i64, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009750564863, i64 %asmresult10.i)
  %cmp185 = icmp ugt i64 %asmresult10.i, 2305843009750564863
  br i1 %cmp185, label %if.end183.cleanup_crit_edge, label %if.end421

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end421:                                        ; preds = %if.end183
  %val.0 = lshr i64 %asmresult10.i, 29
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %val.0)
  %cmp189 = icmp eq i64 %val.0, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870912, i64 %asmresult10.i)
  %tobool193.not = icmp ult i64 %asmresult10.i, 536870912
  %conv195 = trunc i64 %val.0 to i32
  %spec.select = select i1 %tobool193.not, i32 1, i32 %conv195
  %on.0 = select i1 %cmp189, i32 0, i32 %spec.select
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %state, align 8
  %mul201 = mul i64 %9, %conv
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul201, i32 0) #10, !srcloc !111
  %asmresult.i639 = extractvalue { i64, i32 } %10, 0
  %asmresult4.i640 = extractvalue { i64, i32 } %10, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul201, i64 %asmresult.i639, i32 %asmresult4.i640) #10, !srcloc !112
  %asmresult10.i641 = extractvalue { i64, i32 } %11, 0
  %val.1 = lshr i64 %asmresult10.i641, 29
  %conv423 = zext i32 %on.0 to i64
  %sub424 = sub nsw i64 %val.1, %conv423
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub424)
  %cmp425 = icmp ugt i64 %sub424, 4294967296
  br i1 %cmp425, label %if.end421.cleanup_crit_edge, label %if.end428

if.end421.cleanup_crit_edge:                      ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end428:                                        ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub424)
  %cmp429 = icmp eq i64 %sub424, 4294967296
  call void @__sanitizer_cov_trace_cmp8(i64 %val.1, i64 %conv423)
  %tobool433.not = icmp eq i64 %val.1, %conv423
  %conv435 = trunc i64 %sub424 to i32
  %spec.select638 = select i1 %tobool433.not, i32 1, i32 %conv435
  %off.0 = select i1 %cmp429, i32 0, i32 %spec.select638
  %lock = getelementptr i8, ptr %chip, i32 36
  %call444 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %offset.i = getelementptr i8, ptr %chip, i32 -12
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i, align 4
  %call448 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %15, i32 noundef %on.0) #6
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %19, 4
  %call451 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %add.i, i32 noundef %off.0) #6
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enabled, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool452.not = icmp eq i8 %21, 0
  %hwpwm457 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %22 = ptrtoint ptr %hwpwm457 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwpwm457, align 8
  %call.i645 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %regs.i646 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i645, i32 0, i32 1
  %24 = ptrtoint ptr %regs.i646 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i646, align 4
  %offset.i647 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %call.i645, i32 0, i32 2
  %26 = ptrtoint ptr %offset.i647 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i647, align 4
  %shl.i648 = shl nuw i32 1, %23
  %add.i649 = add i32 %27, 8
  %.shl.i648 = select i1 %tobool452.not, i32 0, i32 %shl.i648
  %call.i.i650 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %add.i649, i32 noundef %shl.i648, i32 noundef %.shl.i648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call444) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end428, %if.end421.cleanup_crit_edge, %if.end183.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end428 ], [ -22, %if.end183.cleanup_crit_edge ], [ -22, %if.end421.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_pwm_get_state(ptr noundef %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %u = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -16
  %mvchip1 = getelementptr i8, ptr %chip, i32 80
  %0 = ptrtoint ptr %mvchip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvchip1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #6
  %2 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %u, align 4, !annotation !102
  %lock = getelementptr i8, ptr %chip, i32 36
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %offset.i = getelementptr i8, ptr %chip, i32 -12
  %5 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset.i, align 4
  %call8 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %u) #6
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.not = icmp eq i32 %8, 0
  %conv11 = zext i32 %8 to i64
  %val.0 = select i1 %cmp9.not, i64 4294967296, i64 %conv11
  %mul = mul nuw nsw i64 %val.0, 1000000000
  %clk_rate = getelementptr i8, ptr %chip, i32 -8
  %9 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_rate, align 4
  %conv12 = zext i32 %10 to i64
  %add = add nsw i64 %conv12, -1
  %sub = add nsw i64 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp188 = icmp ult i64 %sub, 4294967296
  br i1 %cmp188, label %if.then192, label %if.else198, !prof !114

if.then192:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv193 = trunc i64 %sub to i32
  %div196 = udiv i32 %conv193, %10
  %conv197 = zext i32 %div196 to i64
  br label %if.end202

if.else198:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %sub) #10, !srcloc !115
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  br label %if.end202

if.end202:                                        ; preds = %if.else198, %if.then192
  %_tmp.0 = phi i64 [ %conv197, %if.then192 ], [ %asmresult1.i, %if.else198 ]
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %12 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %_tmp.0, ptr %duty_cycle, align 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %16, 4
  %call207 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add.i, ptr noundef nonnull %u) #6
  %17 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp208.not = icmp eq i32 %18, 0
  %conv211 = zext i32 %18 to i64
  %conv211.pn = select i1 %cmp208.not, i64 4294967296, i64 %conv211
  %val.1 = add nuw nsw i64 %conv211.pn, %val.0
  %mul217 = mul nuw nsw i64 %val.1, 1000000000
  %19 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_rate, align 4
  %conv219 = zext i32 %20 to i64
  %add220 = add nsw i64 %conv219, -1
  %sub221 = add nsw i64 %add220, %mul217
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub221)
  %cmp424 = icmp ult i64 %sub221, 4294967296
  br i1 %cmp424, label %if.then432, label %if.else438, !prof !114

if.then432:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  %conv433 = trunc i64 %sub221 to i32
  %div436 = udiv i32 %conv433, %20
  %conv437 = zext i32 %div436 to i64
  br label %if.end442

if.else438:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  %21 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %sub221) #10, !srcloc !115
  %asmresult1.i661 = extractvalue { i64, i64 } %21, 1
  br label %if.end442

if.end442:                                        ; preds = %if.else438, %if.then432
  %_tmp216.0 = phi i64 [ %conv437, %if.then432 ], [ %asmresult1.i661, %if.else438 ]
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %_tmp216.0, ptr %state, align 8
  %regs445 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %regs445 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs445, align 4
  %offset = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %add446 = add i32 %26, 8
  %call447 = call i32 @regmap_read(ptr noundef %24, i32 noundef %add446, ptr noundef nonnull %u) #6
  %27 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool448.not = icmp ne i32 %28, 0
  %spec.select = zext i1 %tobool448.not to i8
  %29 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %spec.select, ptr %29, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_request_own_desc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_free_own_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_setup_alt_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !67, !69, !71, !73, !75, !77, !78, !80, !81, !82, !83, !85, !86, !88, !90}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_gpio_mvebu__224_1321_mvebu_gpio_driver_init6, !1, !"__initcall__kmod_gpio_mvebu__224_1321_mvebu_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1321, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1314, i32 12}
!4 = !{ptr @mvebu_gpio_driver, !5, !"mvebu_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1312, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1155, i32 46}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1156, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mvebu_gpio_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @mvebu_gpio_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1160, i32 42}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1162, i32 3}
!20 = !{ptr @mvebu_gpio_probe._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mvebu_gpio_probe._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mvebu_gpio_probe.lock_key, !23, !"lock_key", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1235, i32 2}
!24 = !{ptr @mvebu_gpio_probe.request_key, !23, !"request_key", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1251, i32 3}
!27 = !{ptr @mvebu_gpio_probe._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mvebu_gpio_probe._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1261, i32 3}
!31 = !{ptr @mvebu_gpio_probe._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mvebu_gpio_probe._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-mvebu.c", i32 913, i32 17}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-mvebu.c", i32 916, i32 18}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-mvebu.c", i32 917, i32 20}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-mvebu.c", i32 917, i32 27}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-mvebu.c", i32 918, i32 22}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-mvebu.c", i32 918, i32 35}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-mvebu.c", i32 922, i32 17}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-mvebu.c", i32 926, i32 16}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-mvebu.c", i32 930, i32 16}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-mvebu.c", i32 932, i32 16}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpio-mvebu.c", i32 933, i32 17}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-mvebu.c", i32 933, i32 42}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-mvebu.c", i32 933, i32 54}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1116, i32 46}
!61 = !{ptr @mvebu_gpio_probe_raw._key, !62, !"_key", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1079, i32 17}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mvebu_gpio_probe_raw._key.32, !65, !"_key", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-mvebu.c", i32 1100, i32 4}
!66 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mvebu_gpio_regmap_config, !68, !"mvebu_gpio_regmap_config", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-mvebu.c", i32 608, i32 35}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-mvebu.c", i32 794, i32 9}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpio/gpio-mvebu.c", i32 801, i32 59}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpio/gpio-mvebu.c", i32 806, i32 13}
!75 = !{ptr @mvebu_pwm_probe._key, !76, !"_key", i1 false, i1 false}
!76 = !{!"../drivers/gpio/gpio-mvebu.c", i32 845, i32 17}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpio/gpio-mvebu.c", i32 867, i32 3}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mvebu_pwm_probe._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mvebu_pwm_probe._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @mvebu_pwm_probe.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/gpio/gpio-mvebu.c", i32 882, i32 2}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mvebu_pwm_ops, !87, !"mvebu_pwm_ops", i1 false, i1 false}
!87 = !{!"../drivers/gpio/gpio-mvebu.c", i32 751, i32 29}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpio/gpio-mvebu.c", i32 637, i32 20}
!90 = !{ptr @mvebu_gpio_of_match, !91, !"mvebu_gpio_of_match", i1 false, i1 false}
!91 = !{!"../drivers/gpio/gpio-mvebu.c", i32 940, i32 34}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{i64 2154085111, i64 2154085602, i64 2154085148, i64 2154085204, i64 2154085238, i64 2154085262, i64 2154085303, i64 2154085324, i64 2154085352, i64 2154085386}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i64 2154090797, i64 2154091288, i64 2154090834, i64 2154090890, i64 2154090924, i64 2154090948, i64 2154090989, i64 2154091010, i64 2154091038, i64 2154091072}
!106 = !{i64 2154071924, i64 2154072415, i64 2154071961, i64 2154072017, i64 2154072051, i64 2154072075, i64 2154072116, i64 2154072137, i64 2154072165, i64 2154072199}
!107 = !{i64 2154074115, i64 2154074606, i64 2154074152, i64 2154074208, i64 2154074242, i64 2154074266, i64 2154074307, i64 2154074328, i64 2154074356, i64 2154074390}
!108 = !{i64 2154038459, i64 2154038949, i64 2154038496, i64 2154038552, i64 2154038586, i64 2154038610, i64 2154038651, i64 2154038672, i64 2154038700, i64 2154038734}
!109 = !{i64 2154040346, i64 2154040836, i64 2154040383, i64 2154040439, i64 2154040473, i64 2154040497, i64 2154040538, i64 2154040559, i64 2154040587, i64 2154040621}
!110 = !{i64 2154042064, i64 2154042554, i64 2154042101, i64 2154042157, i64 2154042191, i64 2154042215, i64 2154042256, i64 2154042277, i64 2154042305, i64 2154042339}
!111 = !{i64 1178222, i64 1178249, i64 1178271, i64 1178299}
!112 = !{i64 1178630, i64 1178657, i64 1178690, i64 1178711, i64 1178738, i64 1178764}
!113 = !{i8 0, i8 2}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{i64 2148663766, i64 2148664046, i64 2148664380, i64 2148664714}
