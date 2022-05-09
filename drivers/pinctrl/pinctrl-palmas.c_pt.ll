; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-palmas.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-palmas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.palmas_pinctrl_data = type { ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.palmas_pin_function = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.palmas_pingroup = type { ptr, [1 x i32], i32, i32, i32, i32, i32, [4 x ptr] }
%struct.palmas_pin_info = type { i32, ptr, ptr }
%struct.palmas_pins_pullup_dn_info = type { i32, i32, i32, i32, i32, i32 }
%struct.palmas_pins_od_info = type { i32, i32, i32, i32, i32 }
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
%struct.palmas_pctrl_chip_info = type { ptr, ptr, ptr, [26 x i32], ptr, i32, ptr, i32, ptr, i32 }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }

@__initcall__kmod_pinctrl_palmas__295_1059_palmas_pinctrl_driver_init6 = internal global ptr @palmas_pinctrl_driver_init, section ".initcall6.init", align 4
@palmas_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @palmas_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @palmas_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_palmas_pinctrl_driver_exit = internal global ptr @palmas_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [53 x i8] c"pinctrl_palmas.description=Palmas pin control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [60 x i8] c"pinctrl_palmas.author=Laxman Dewangan<ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [45 x i8] c"pinctrl_palmas.alias=platform:palmas-pinctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [51 x i8] c"pinctrl_palmas.file=drivers/pinctrl/pinctrl-palmas\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [30 x i8] c"pinctrl_palmas.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"palmas-pinctrl\00", [17 x i8] zeroinitializer }, align 32
@palmas_pinctrl_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65913_pinctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65913-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65913_pinctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps80036-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps80036_pinctrl_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tps65913_pinctrl_data = internal global { %struct.palmas_pinctrl_data, [24 x i8] } { %struct.palmas_pinctrl_data { ptr @tps65913_pingroups, i32 18 }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,palmas-enable-dvfs1\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,palmas-enable-dvfs2\00", [41 x i8] zeroinitializer }, align 32
@palmas_pins_desc = internal constant { [26 x %struct.pinctrl_pin_desc], [72 x i8] } { [26 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.28, ptr null }], [72 x i8] zeroinitializer }, align 32
@palmas_pin_function = internal constant { [31 x %struct.palmas_pin_function], [76 x i8] } { [31 x %struct.palmas_pin_function] [%struct.palmas_pin_function { ptr @.str.37, ptr @opt0_groups, i32 26 }, %struct.palmas_pin_function { ptr @.str.38, ptr @opt1_groups, i32 16 }, %struct.palmas_pin_function { ptr @.str.39, ptr @opt2_groups, i32 4 }, %struct.palmas_pin_function { ptr @.str.40, ptr @opt3_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.41, ptr @gpio_groups, i32 16 }, %struct.palmas_pin_function { ptr @.str.42, ptr @led_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.43, ptr @pwm_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.44, ptr @regen_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.45, ptr @sysen_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.46, ptr @clk32kgaudio_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.47, ptr @id_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.48, ptr @vbus_det_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.49, ptr @chrg_det_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.19, ptr @vac_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.50, ptr @vacok_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.20, ptr @powergood_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.51, ptr @usb_psel_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.52, ptr @msecure_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.53, ptr @pwrhold_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.28, ptr @int_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.21, ptr @nreswarm_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.54, ptr @simrsto_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.55, ptr @simrsti_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.56, ptr @low_vbat_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.57, ptr @wireless_chrg1_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.58, ptr @rcm_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.22, ptr @pwrdown_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.23, ptr @gpadc_start_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.24, ptr @reset_in_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.25, ptr @nsleep_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.59, ptr @enable_groups, i32 2 }], [76 x i8] zeroinitializer }, align 32
@palmas_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1035, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Reading pinctrol option register failed: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"palmas_pinctrl_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/pinctrl/pinctrl-palmas.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@palmas_pinctrl_probe._entry_ptr = internal global ptr @palmas_pinctrl_probe._entry, section ".printk_index", align 4
@palmas_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @palmas_pinctrl_ops, ptr @palmas_pinmux_ops, ptr @palmas_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@palmas_pinctrl_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1045, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@palmas_pinctrl_probe._entry_ptr.10 = internal global ptr @palmas_pinctrl_probe._entry.8, section ".printk_index", align 4
@tps65913_pingroups = internal constant { [18 x %struct.palmas_pingroup], [200 x i8] } { [18 x %struct.palmas_pingroup] [%struct.palmas_pingroup { ptr @.str.11, [1 x i32] zeroinitializer, i32 1, i32 496, i32 10, i32 4, i32 2, [4 x ptr] [ptr @pin_gpio0_info, ptr @pin_id_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.12, [1 x i32] [i32 1], i32 1, i32 496, i32 10, i32 24, i32 3, [4 x ptr] [ptr @pin_gpio1_info, ptr @pin_vbus_det_info, ptr @pin_led1_info, ptr @pin_pwm1_info] }, %struct.palmas_pingroup { ptr @.str.13, [1 x i32] [i32 2], i32 1, i32 496, i32 10, i32 96, i32 5, [4 x ptr] [ptr @pin_gpio2_info, ptr @pin_regen_info, ptr @pin_led2_info, ptr @pin_pwm2_info] }, %struct.palmas_pingroup { ptr @.str.14, [1 x i32] [i32 3], i32 1, i32 496, i32 10, i32 128, i32 7, [4 x ptr] [ptr @pin_gpio3_info, ptr @pin_chrg_det_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.15, [1 x i32] [i32 4], i32 1, i32 496, i32 10, i32 1, i32 0, [4 x ptr] [ptr @pin_gpio4_info, ptr @pin_sysen1_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.16, [1 x i32] [i32 5], i32 1, i32 496, i32 11, i32 6, i32 1, [4 x ptr] [ptr @pin_gpio5_info, ptr @pin_clk32kgaudio_info, ptr @pin_usb_psel_info, ptr null] }, %struct.palmas_pingroup { ptr @.str.17, [1 x i32] [i32 6], i32 1, i32 496, i32 11, i32 8, i32 3, [4 x ptr] [ptr @pin_gpio6_info, ptr @pin_sysen2_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.18, [1 x i32] [i32 7], i32 1, i32 496, i32 11, i32 48, i32 4, [4 x ptr] [ptr @pin_gpio7_info, ptr @pin_msecure_info, ptr @pin_pwrhold_info, ptr null] }, %struct.palmas_pingroup { ptr @.str.19, [1 x i32] [i32 16], i32 1, i32 496, i32 10, i32 2, i32 1, [4 x ptr] [ptr @pin_vac_info, ptr @pin_vacok_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.20, [1 x i32] [i32 17], i32 1, i32 496, i32 10, i32 1, i32 0, [4 x ptr] [ptr @pin_powergood_info, ptr @pin_usb_psel_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.21, [1 x i32] [i32 18], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_nreswarm_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.22, [1 x i32] [i32 19], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_pwrdown_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.23, [1 x i32] [i32 20], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_gpadc_start_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.24, [1 x i32] [i32 21], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_reset_in_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.25, [1 x i32] [i32 22], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_nsleep_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.26, [1 x i32] [i32 23], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_enable1_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.27, [1 x i32] [i32 24], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_enable2_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.28, [1 x i32] [i32 25], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_int_info, ptr null, ptr null, ptr null] }], [200 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@pin_gpio0_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio0_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_id_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 10, ptr @pud_id_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@pin_gpio1_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio1_info, ptr @od_gpio1_info }, [20 x i8] zeroinitializer }, align 32
@pin_vbus_det_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 11, ptr null, ptr @od_vbus_det_info }, [20 x i8] zeroinitializer }, align 32
@pin_led1_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 5, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_pwm1_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 6, ptr null, ptr @od_pwm1_info }, [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@pin_gpio2_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio2_info, ptr @od_gpio2_info }, [20 x i8] zeroinitializer }, align 32
@pin_regen_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 7, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_led2_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 5, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_pwm2_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 6, ptr null, ptr @od_pwm2_info }, [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@pin_gpio3_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio3_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_chrg_det_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 12, ptr @pud_chrg_det_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@pin_gpio4_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio4_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_sysen1_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 8, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@pin_gpio5_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio5_info, ptr @od_gpio5_info }, [20 x i8] zeroinitializer }, align 32
@pin_clk32kgaudio_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 9, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_usb_psel_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 16, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@pin_gpio6_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio6_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_sysen2_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 8, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@pin_gpio7_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio7_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_msecure_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 17, ptr @pud_msecure_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_pwrhold_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 18, ptr @pud_pwrhold_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vac\00", [28 x i8] zeroinitializer }, align 32
@pin_vac_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 13, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_vacok_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 14, ptr @pud_vacok_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powergood\00", [22 x i8] zeroinitializer }, align 32
@pin_powergood_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 15, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nreswarm\00", [23 x i8] zeroinitializer }, align 32
@pin_nreswarm_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 65535, ptr @pud_nreswarm_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwrdown\00", [24 x i8] zeroinitializer }, align 32
@pin_pwrdown_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 65535, ptr @pud_pwrdown_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpadc_start\00", [20 x i8] zeroinitializer }, align 32
@pin_gpadc_start_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 65535, ptr @pud_gpadc_start_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reset_in\00", [23 x i8] zeroinitializer }, align 32
@pin_reset_in_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 65535, ptr @pud_reset_in_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nsleep\00", [25 x i8] zeroinitializer }, align 32
@pin_nsleep_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 65535, ptr @pud_nsleep_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enable1\00", [24 x i8] zeroinitializer }, align 32
@pin_enable1_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 65535, ptr @pud_enable1_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enable2\00", [24 x i8] zeroinitializer }, align 32
@pin_enable2_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 65535, ptr @pud_enable2_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@pin_int_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 19, ptr null, ptr @od_int_info }, [20 x i8] zeroinitializer }, align 32
@pud_gpio0_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 6, i32 4, i32 0, i32 -1, i32 1 }, [40 x i8] zeroinitializer }, align 32
@pud_id_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 592, i32 6, i32 64, i32 0, i32 64, i32 -1 }, [40 x i8] zeroinitializer }, align 32
@pud_gpio1_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 6, i32 12, i32 0, i32 8, i32 4 }, [40 x i8] zeroinitializer }, align 32
@od_gpio1_info = internal constant { %struct.palmas_pins_od_info, [44 x i8] } { %struct.palmas_pins_od_info { i32 640, i32 8, i32 1, i32 1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@od_vbus_det_info = internal constant { %struct.palmas_pins_od_info, [44 x i8] } { %struct.palmas_pins_od_info { i32 496, i32 8, i32 64, i32 64, i32 0 }, [44 x i8] zeroinitializer }, align 32
@od_pwm1_info = internal constant { %struct.palmas_pins_od_info, [44 x i8] } { %struct.palmas_pins_od_info { i32 496, i32 8, i32 32, i32 32, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pud_gpio2_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 6, i32 48, i32 0, i32 32, i32 16 }, [40 x i8] zeroinitializer }, align 32
@od_gpio2_info = internal constant { %struct.palmas_pins_od_info, [44 x i8] } { %struct.palmas_pins_od_info { i32 640, i32 8, i32 2, i32 2, i32 0 }, [44 x i8] zeroinitializer }, align 32
@od_pwm2_info = internal constant { %struct.palmas_pins_od_info, [44 x i8] } { %struct.palmas_pins_od_info { i32 496, i32 8, i32 128, i32 128, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pud_gpio3_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 6, i32 64, i32 0, i32 -1, i32 64 }, [40 x i8] zeroinitializer }, align 32
@pud_chrg_det_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 6, i32 16, i32 0, i32 -1, i32 16 }, [40 x i8] zeroinitializer }, align 32
@pud_gpio4_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 7, i32 3, i32 0, i32 2, i32 1 }, [40 x i8] zeroinitializer }, align 32
@pud_gpio5_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 7, i32 12, i32 0, i32 8, i32 4 }, [40 x i8] zeroinitializer }, align 32
@od_gpio5_info = internal constant { %struct.palmas_pins_od_info, [44 x i8] } { %struct.palmas_pins_od_info { i32 640, i32 8, i32 32, i32 32, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pud_gpio6_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 7, i32 48, i32 0, i32 32, i32 16 }, [40 x i8] zeroinitializer }, align 32
@pud_gpio7_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 7, i32 64, i32 0, i32 -1, i32 64 }, [40 x i8] zeroinitializer }, align 32
@pud_msecure_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 6, i32 1, i32 0, i32 -1, i32 1 }, [40 x i8] zeroinitializer }, align 32
@pud_pwrhold_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 6, i32 4, i32 0, i32 -1, i32 4 }, [40 x i8] zeroinitializer }, align 32
@pud_vacok_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 6, i32 64, i32 0, i32 -1, i32 64 }, [40 x i8] zeroinitializer }, align 32
@pud_nreswarm_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 4, i32 2, i32 0, i32 2, i32 -1 }, [40 x i8] zeroinitializer }, align 32
@pud_pwrdown_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 4, i32 4, i32 0, i32 -1, i32 4 }, [40 x i8] zeroinitializer }, align 32
@pud_gpadc_start_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 4, i32 48, i32 0, i32 32, i32 16 }, [40 x i8] zeroinitializer }, align 32
@pud_reset_in_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 4, i32 64, i32 0, i32 -1, i32 64 }, [40 x i8] zeroinitializer }, align 32
@pud_nsleep_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 5, i32 3, i32 0, i32 2, i32 1 }, [40 x i8] zeroinitializer }, align 32
@pud_enable1_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 5, i32 12, i32 0, i32 8, i32 4 }, [40 x i8] zeroinitializer }, align 32
@pud_enable2_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 496, i32 5, i32 48, i32 0, i32 32, i32 16 }, [40 x i8] zeroinitializer }, align 32
@od_int_info = internal constant { %struct.palmas_pins_od_info, [44 x i8] } { %struct.palmas_pins_od_info { i32 496, i32 8, i32 8, i32 8, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt0\00", [27 x i8] zeroinitializer }, align 32
@opt0_groups = internal constant { [26 x ptr], [56 x i8] } { [26 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt1\00", [27 x i8] zeroinitializer }, align 32
@opt1_groups = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.19, ptr @.str.20], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt2\00", [27 x i8] zeroinitializer }, align 32
@opt2_groups = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"opt3\00", [27 x i8] zeroinitializer }, align 32
@opt3_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@gpio_groups = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"led\00", [28 x i8] zeroinitializer }, align 32
@led_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@pwm_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"regen\00", [26 x i8] zeroinitializer }, align 32
@regen_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sysen\00", [26 x i8] zeroinitializer }, align 32
@sysen_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.17], [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk32kgaudio\00", [19 x i8] zeroinitializer }, align 32
@clk32kgaudio_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.16], [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@id_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.11], [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbus_det\00", [23 x i8] zeroinitializer }, align 32
@vbus_det_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chrg_det\00", [23 x i8] zeroinitializer }, align 32
@chrg_det_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@vac_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.19], [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vacok\00", [26 x i8] zeroinitializer }, align 32
@vacok_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.19], [28 x i8] zeroinitializer }, align 32
@powergood_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.20], [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_psel\00", [23 x i8] zeroinitializer }, align 32
@usb_psel_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.20], [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msecure\00", [24 x i8] zeroinitializer }, align 32
@msecure_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.18], [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwrhold\00", [24 x i8] zeroinitializer }, align 32
@pwrhold_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.18], [28 x i8] zeroinitializer }, align 32
@int_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@nreswarm_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"simrsto\00", [24 x i8] zeroinitializer }, align 32
@simrsto_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"simrsti\00", [24 x i8] zeroinitializer }, align 32
@simrsti_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.29, ptr @.str.36], [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"low_vbat\00", [23 x i8] zeroinitializer }, align 32
@low_vbat_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.30], [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wireless_chrg1\00", [17 x i8] zeroinitializer }, align 32
@wireless_chrg1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.31], [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rcm\00", [28 x i8] zeroinitializer }, align 32
@rcm_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.32], [28 x i8] zeroinitializer }, align 32
@pwrdown_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.22], [28 x i8] zeroinitializer }, align 32
@gpadc_start_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@reset_in_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@nsleep_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.25], [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@enable_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@palmas_pinctrl_set_dvfs1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 610, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SECONDARY_PAD3 update failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"palmas_pinctrl_set_dvfs1\00", [39 x i8] zeroinitializer }, align 32
@palmas_pinctrl_set_dvfs1._entry_ptr = internal global ptr @palmas_pinctrl_set_dvfs1._entry, section ".printk_index", align 4
@palmas_pinctrl_set_dvfs2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.62, ptr @.str.5, i32 625, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"palmas_pinctrl_set_dvfs2\00", [39 x i8] zeroinitializer }, align 32
@palmas_pinctrl_set_dvfs2._entry_ptr = internal global ptr @palmas_pinctrl_set_dvfs2._entry, section ".printk_index", align 4
@palmas_pinctrl_get_pin_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 590, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mux_reg 0x%02x read failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"palmas_pinctrl_get_pin_mux\00", [37 x i8] zeroinitializer }, align 32
@palmas_pinctrl_get_pin_mux._entry_ptr = internal global ptr @palmas_pinctrl_get_pin_mux._entry, section ".printk_index", align 4
@palmas_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @palmas_pinctrl_get_groups_count, ptr @palmas_pinctrl_get_group_name, ptr @palmas_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@palmas_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @palmas_pinctrl_get_funcs_count, ptr @palmas_pinctrl_get_func_name, ptr @palmas_pinctrl_get_func_groups, ptr @palmas_pinctrl_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@palmas_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @palmas_pinconf_get, ptr @palmas_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@palmas_pinctrl_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 703, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Pin %s does not support option %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"palmas_pinctrl_set_mux\00", [41 x i8] zeroinitializer }, align 32
@palmas_pinctrl_set_mux._entry_ptr = internal global ptr @palmas_pinctrl_set_mux._entry, section ".printk_index", align 4
@palmas_pinctrl_set_mux._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 716, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@palmas_pinctrl_set_mux._entry_ptr.68 = internal global ptr @palmas_pinctrl_set_mux._entry.67, section ".printk_index", align 4
@palmas_pinctrl_set_mux.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.69, ptr @.str.66, ptr @.str.5, ptr @.str.70, i8 0, i8 -74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl_palmas\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): Base0x%02x:0x%02x:0x%02x:0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@palmas_pinctrl_set_mux._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.66, ptr @.str.5, i32 735, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reg 0x%02x update failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@palmas_pinctrl_set_mux._entry_ptr.73 = internal global ptr @palmas_pinctrl_set_mux._entry.71, section ".printk_index", align 4
@palmas_pinconf_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 770, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Pinconf is not supported for pin-id %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"palmas_pinconf_get\00", [45 x i8] zeroinitializer }, align 32
@palmas_pinconf_get._entry_ptr = internal global ptr @palmas_pinconf_get._entry, section ".printk_index", align 4
@palmas_pinconf_get._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.5, i32 778, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Pinconf is not supported for pin %s\0A\00", [59 x i8] zeroinitializer }, align 32
@palmas_pinconf_get._entry_ptr.78 = internal global ptr @palmas_pinconf_get._entry.76, section ".printk_index", align 4
@palmas_pinconf_get._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.5, i32 789, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PULL control not supported for pin %s\0A\00", [57 x i8] zeroinitializer }, align 32
@palmas_pinconf_get._entry_ptr.81 = internal global ptr @palmas_pinconf_get._entry.79, section ".printk_index", align 4
@palmas_pinconf_get._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.5, i32 797, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reg 0x%02x read failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@palmas_pinconf_get._entry_ptr.84 = internal global ptr @palmas_pinconf_get._entry.82, section ".printk_index", align 4
@palmas_pinconf_get._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.5, i32 821, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"OD control not supported for pin %s\0A\00", [59 x i8] zeroinitializer }, align 32
@palmas_pinconf_get._entry_ptr.87 = internal global ptr @palmas_pinconf_get._entry.85, section ".printk_index", align 4
@palmas_pinconf_get._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.5, i32 829, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@palmas_pinconf_get._entry_ptr.89 = internal global ptr @palmas_pinconf_get._entry.88, section ".printk_index", align 4
@palmas_pinconf_get._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.5, i32 843, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@palmas_pinconf_get._entry_ptr.91 = internal global ptr @palmas_pinconf_get._entry.90, section ".printk_index", align 4
@palmas_pinconf_get._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.75, ptr @.str.5, i32 849, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Properties not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@palmas_pinconf_get._entry_ptr.94 = internal global ptr @palmas_pinconf_get._entry.92, section ".printk_index", align 4
@palmas_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.95, ptr @.str.5, i32 879, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"palmas_pinconf_set\00", [45 x i8] zeroinitializer }, align 32
@palmas_pinconf_set._entry_ptr = internal global ptr @palmas_pinconf_set._entry, section ".printk_index", align 4
@palmas_pinconf_set._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.95, ptr @.str.5, i32 887, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@palmas_pinconf_set._entry_ptr.97 = internal global ptr @palmas_pinconf_set._entry.96, section ".printk_index", align 4
@palmas_pinconf_set._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.95, ptr @.str.5, i32 902, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@palmas_pinconf_set._entry_ptr.99 = internal global ptr @palmas_pinconf_set._entry.98, section ".printk_index", align 4
@palmas_pinconf_set._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.95, ptr @.str.5, i32 919, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@palmas_pinconf_set._entry_ptr.101 = internal global ptr @palmas_pinconf_set._entry.100, section ".printk_index", align 4
@palmas_pinconf_set._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.95, ptr @.str.5, i32 928, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@palmas_pinconf_set._entry_ptr.103 = internal global ptr @palmas_pinconf_set._entry.102, section ".printk_index", align 4
@palmas_pinconf_set._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.95, ptr @.str.5, i32 941, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@palmas_pinconf_set._entry_ptr.105 = internal global ptr @palmas_pinconf_set._entry.104, section ".printk_index", align 4
@palmas_pinconf_set._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.95, ptr @.str.5, i32 946, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@palmas_pinconf_set._entry_ptr.107 = internal global ptr @palmas_pinconf_set._entry.106, section ".printk_index", align 4
@palmas_pinconf_set.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.69, ptr @.str.95, ptr @.str.5, ptr @.str.108, i8 0, i8 -19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): Add0x%02x:0x%02x:0x%02x:0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@palmas_pinconf_set._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.95, ptr @.str.5, i32 955, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@palmas_pinconf_set._entry_ptr.110 = internal global ptr @palmas_pinconf_set._entry.109, section ".printk_index", align 4
@tps80036_pinctrl_data = internal global { %struct.palmas_pinctrl_data, [24 x i8] } { %struct.palmas_pinctrl_data { ptr @tps80036_pingroups, i32 26 }, [24 x i8] zeroinitializer }, align 32
@tps80036_pingroups = internal constant { [26 x %struct.palmas_pingroup], [264 x i8] } { [26 x %struct.palmas_pingroup] [%struct.palmas_pingroup { ptr @.str.11, [1 x i32] zeroinitializer, i32 1, i32 496, i32 10, i32 4, i32 2, [4 x ptr] [ptr @pin_gpio0_info, ptr @pin_id_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.12, [1 x i32] [i32 1], i32 1, i32 496, i32 10, i32 24, i32 3, [4 x ptr] [ptr @pin_gpio1_info, ptr @pin_vbus_det_info, ptr @pin_led1_info, ptr @pin_pwm1_info] }, %struct.palmas_pingroup { ptr @.str.13, [1 x i32] [i32 2], i32 1, i32 496, i32 10, i32 96, i32 5, [4 x ptr] [ptr @pin_gpio2_info, ptr @pin_regen_info, ptr @pin_led2_info, ptr @pin_pwm2_info] }, %struct.palmas_pingroup { ptr @.str.14, [1 x i32] [i32 3], i32 1, i32 496, i32 10, i32 128, i32 7, [4 x ptr] [ptr @pin_gpio3_info, ptr @pin_chrg_det_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.15, [1 x i32] [i32 4], i32 1, i32 496, i32 10, i32 1, i32 0, [4 x ptr] [ptr @pin_gpio4_info, ptr @pin_sysen1_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.16, [1 x i32] [i32 5], i32 1, i32 496, i32 11, i32 6, i32 1, [4 x ptr] [ptr @pin_gpio5_info, ptr @pin_clk32kgaudio_info, ptr @pin_usb_psel_info, ptr null] }, %struct.palmas_pingroup { ptr @.str.17, [1 x i32] [i32 6], i32 1, i32 496, i32 11, i32 8, i32 3, [4 x ptr] [ptr @pin_gpio6_info, ptr @pin_sysen2_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.18, [1 x i32] [i32 7], i32 1, i32 496, i32 11, i32 48, i32 4, [4 x ptr] [ptr @pin_gpio7_info, ptr @pin_msecure_info, ptr @pin_pwrhold_info, ptr null] }, %struct.palmas_pingroup { ptr @.str.29, [1 x i32] [i32 8], i32 1, i32 496, i32 15, i32 1, i32 0, [4 x ptr] [ptr @pin_gpio8_info, ptr @pin_sim1rsti_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.30, [1 x i32] [i32 9], i32 1, i32 496, i32 15, i32 2, i32 1, [4 x ptr] [ptr @pin_gpio9_info, ptr @pin_low_vbat_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.31, [1 x i32] [i32 10], i32 1, i32 496, i32 15, i32 4, i32 2, [4 x ptr] [ptr @pin_gpio10_info, ptr @pin_wireless_chrg1_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.32, [1 x i32] [i32 11], i32 1, i32 496, i32 15, i32 8, i32 3, [4 x ptr] [ptr @pin_gpio11_info, ptr @pin_rcm_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.33, [1 x i32] [i32 12], i32 1, i32 496, i32 15, i32 16, i32 4, [4 x ptr] [ptr @pin_gpio12_info, ptr @pin_sim2rsto_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.34, [1 x i32] [i32 13], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_gpio13_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.35, [1 x i32] [i32 14], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_gpio14_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.36, [1 x i32] [i32 15], i32 1, i32 496, i32 15, i32 128, i32 7, [4 x ptr] [ptr @pin_gpio15_info, ptr @pin_sim2rsti_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.19, [1 x i32] [i32 16], i32 1, i32 496, i32 10, i32 2, i32 1, [4 x ptr] [ptr @pin_vac_info, ptr @pin_vacok_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.20, [1 x i32] [i32 17], i32 1, i32 496, i32 10, i32 1, i32 0, [4 x ptr] [ptr @pin_powergood_info, ptr @pin_usb_psel_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.21, [1 x i32] [i32 18], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_nreswarm_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.22, [1 x i32] [i32 19], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_pwrdown_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.23, [1 x i32] [i32 20], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_gpadc_start_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.24, [1 x i32] [i32 21], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_reset_in_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.25, [1 x i32] [i32 22], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_nsleep_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.26, [1 x i32] [i32 23], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_enable1_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.27, [1 x i32] [i32 24], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_enable2_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.28, [1 x i32] [i32 25], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_int_info, ptr null, ptr null, ptr null] }], [264 x i8] zeroinitializer }, align 32
@pin_gpio8_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_sim1rsti_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 22, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_gpio9_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio9_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_low_vbat_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 23, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_gpio10_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio10_info, ptr @od_gpio10_info }, [20 x i8] zeroinitializer }, align 32
@pin_wireless_chrg1_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 24, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_gpio11_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio11_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_rcm_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 25, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_gpio12_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_sim2rsto_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 21, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_gpio13_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio13_info, ptr @od_gpio13_info }, [20 x i8] zeroinitializer }, align 32
@pin_gpio14_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr @pud_gpio14_info, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_gpio15_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 4, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pin_sim2rsti_info = internal constant { %struct.palmas_pin_info, [20 x i8] } { %struct.palmas_pin_info { i32 22, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@pud_gpio9_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 15, i32 12, i32 0, i32 8, i32 4 }, [40 x i8] zeroinitializer }, align 32
@pud_gpio10_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 15, i32 48, i32 0, i32 32, i32 16 }, [40 x i8] zeroinitializer }, align 32
@od_gpio10_info = internal constant { %struct.palmas_pins_od_info, [44 x i8] } { %struct.palmas_pins_od_info { i32 640, i32 17, i32 4, i32 4, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pud_gpio11_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 15, i32 192, i32 0, i32 128, i32 64 }, [40 x i8] zeroinitializer }, align 32
@pud_gpio13_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 16, i32 4, i32 0, i32 -1, i32 4 }, [40 x i8] zeroinitializer }, align 32
@od_gpio13_info = internal constant { %struct.palmas_pins_od_info, [44 x i8] } { %struct.palmas_pins_od_info { i32 640, i32 17, i32 32, i32 32, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pud_gpio14_info = internal constant { %struct.palmas_pins_pullup_dn_info, [40 x i8] } { %struct.palmas_pins_pullup_dn_info { i32 640, i32 16, i32 48, i32 0, i32 32, i32 16 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.111 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"palmas_pinctrl_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 1051, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 1053, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant [24 x i8] c"palmas_pinctrl_of_match\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 990, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"tps65913_pinctrl_data\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 980, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 1009, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 1011, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"palmas_pins_desc\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 88, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c"palmas_pin_function\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 339, i32 41 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 1034, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c"palmas_pinctrl_desc\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 968, i32 28 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 1045, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"tps65913_pingroups\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 523, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 524, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"pin_gpio0_info\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 454, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"pin_id_info\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 470, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 525, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"pin_gpio1_info\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 455, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant [18 x i8] c"pin_vbus_det_info\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 494, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant [14 x i8] c"pin_led1_info\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 471, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant [14 x i8] c"pin_pwm1_info\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 477, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 526, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [15 x i8] c"pin_gpio2_info\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 456, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"pin_regen_info\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 473, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant [14 x i8] c"pin_led2_info\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 472, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant [14 x i8] c"pin_pwm2_info\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 478, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 527, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"pin_gpio3_info\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 457, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant [18 x i8] c"pin_chrg_det_info\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 480, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 528, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"pin_gpio4_info\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 458, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant [16 x i8] c"pin_sysen1_info\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 474, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 529, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [15 x i8] c"pin_gpio5_info\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 459, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant [22 x i8] c"pin_clk32kgaudio_info\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 490, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant [18 x i8] c"pin_usb_psel_info\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 491, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 530, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [15 x i8] c"pin_gpio6_info\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 460, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant [16 x i8] c"pin_sysen2_info\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 475, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 531, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"pin_gpio7_info\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 461, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"pin_msecure_info\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 482, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"pin_pwrhold_info\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 481, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 532, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [13 x i8] c"pin_vac_info\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 492, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant [15 x i8] c"pin_vacok_info\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 479, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 533, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [19 x i8] c"pin_powergood_info\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 493, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 534, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [18 x i8] c"pin_nreswarm_info\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 483, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 535, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"pin_pwrdown_info\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 484, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 536, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [21 x i8] c"pin_gpadc_start_info\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 485, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 537, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [18 x i8] c"pin_reset_in_info\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 486, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 538, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"pin_nsleep_info\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 487, i32 1 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 539, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"pin_enable1_info\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 488, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 540, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"pin_enable2_info\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 489, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 541, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [13 x i8] c"pin_int_info\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 476, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant [15 x i8] c"pud_gpio0_info\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 414, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant [12 x i8] c"pud_id_info\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 413, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant [15 x i8] c"pud_gpio1_info\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 415, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant [14 x i8] c"od_gpio1_info\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 437, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"od_vbus_det_info\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 445, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant [13 x i8] c"od_pwm1_info\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 443, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant [15 x i8] c"pud_gpio2_info\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 416, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant [14 x i8] c"od_gpio2_info\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 438, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant [13 x i8] c"od_pwm2_info\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 444, i32 1 }
@___asan_gen_.347 = private unnamed_addr constant [15 x i8] c"pud_gpio3_info\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 417, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant [18 x i8] c"pud_chrg_det_info\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 410, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant [15 x i8] c"pud_gpio4_info\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 418, i32 1 }
@___asan_gen_.356 = private unnamed_addr constant [15 x i8] c"pud_gpio5_info\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 419, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant [14 x i8] c"od_gpio5_info\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 439, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant [15 x i8] c"pud_gpio6_info\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 420, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant [15 x i8] c"pud_gpio7_info\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 421, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant [17 x i8] c"pud_msecure_info\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 412, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant [17 x i8] c"pud_pwrhold_info\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 411, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [15 x i8] c"pud_vacok_info\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 409, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant [18 x i8] c"pud_nreswarm_info\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 402, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"pud_pwrdown_info\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 403, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant [21 x i8] c"pud_gpadc_start_info\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 404, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant [18 x i8] c"pud_reset_in_info\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 405, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant [16 x i8] c"pud_nsleep_info\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 406, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"pud_enable1_info\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 407, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant [17 x i8] c"pud_enable2_info\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 408, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant [12 x i8] c"od_int_info\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 442, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 97, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 98, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 99, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 100, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 101, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 102, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 103, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 104, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [12 x i8] c"opt0_groups\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 117, i32 27 }
@___asan_gen_.434 = private unnamed_addr constant [12 x i8] c"opt1_groups\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 146, i32 27 }
@___asan_gen_.440 = private unnamed_addr constant [12 x i8] c"opt2_groups\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 165, i32 27 }
@___asan_gen_.446 = private unnamed_addr constant [12 x i8] c"opt3_groups\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 172, i32 27 }
@___asan_gen_.452 = private unnamed_addr constant [12 x i8] c"gpio_groups\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 177, i32 27 }
@___asan_gen_.458 = private unnamed_addr constant [11 x i8] c"led_groups\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 196, i32 27 }
@___asan_gen_.464 = private unnamed_addr constant [11 x i8] c"pwm_groups\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 201, i32 27 }
@___asan_gen_.470 = private unnamed_addr constant [13 x i8] c"regen_groups\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 206, i32 27 }
@___asan_gen_.476 = private unnamed_addr constant [13 x i8] c"sysen_groups\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 210, i32 27 }
@___asan_gen_.482 = private unnamed_addr constant [20 x i8] c"clk32kgaudio_groups\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 215, i32 27 }
@___asan_gen_.488 = private unnamed_addr constant [10 x i8] c"id_groups\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 219, i32 27 }
@___asan_gen_.494 = private unnamed_addr constant [16 x i8] c"vbus_det_groups\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 223, i32 27 }
@___asan_gen_.500 = private unnamed_addr constant [16 x i8] c"chrg_det_groups\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 227, i32 27 }
@___asan_gen_.503 = private unnamed_addr constant [11 x i8] c"vac_groups\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 231, i32 27 }
@___asan_gen_.509 = private unnamed_addr constant [13 x i8] c"vacok_groups\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 235, i32 27 }
@___asan_gen_.512 = private unnamed_addr constant [17 x i8] c"powergood_groups\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 239, i32 27 }
@___asan_gen_.518 = private unnamed_addr constant [16 x i8] c"usb_psel_groups\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 243, i32 27 }
@___asan_gen_.524 = private unnamed_addr constant [15 x i8] c"msecure_groups\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 248, i32 27 }
@___asan_gen_.530 = private unnamed_addr constant [15 x i8] c"pwrhold_groups\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 252, i32 27 }
@___asan_gen_.533 = private unnamed_addr constant [11 x i8] c"int_groups\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 256, i32 27 }
@___asan_gen_.536 = private unnamed_addr constant [16 x i8] c"nreswarm_groups\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 260, i32 27 }
@___asan_gen_.542 = private unnamed_addr constant [15 x i8] c"simrsto_groups\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 264, i32 27 }
@___asan_gen_.548 = private unnamed_addr constant [15 x i8] c"simrsti_groups\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 268, i32 27 }
@___asan_gen_.554 = private unnamed_addr constant [16 x i8] c"low_vbat_groups\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 273, i32 27 }
@___asan_gen_.560 = private unnamed_addr constant [22 x i8] c"wireless_chrg1_groups\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 277, i32 27 }
@___asan_gen_.566 = private unnamed_addr constant [11 x i8] c"rcm_groups\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 281, i32 27 }
@___asan_gen_.569 = private unnamed_addr constant [15 x i8] c"pwrdown_groups\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 285, i32 27 }
@___asan_gen_.572 = private unnamed_addr constant [19 x i8] c"gpadc_start_groups\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 289, i32 27 }
@___asan_gen_.575 = private unnamed_addr constant [16 x i8] c"reset_in_groups\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 293, i32 27 }
@___asan_gen_.578 = private unnamed_addr constant [14 x i8] c"nsleep_groups\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 297, i32 27 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 348, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [14 x i8] c"enable_groups\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 301, i32 27 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 610, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 625, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 589, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant [19 x i8] c"palmas_pinctrl_ops\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 654, i32 33 }
@___asan_gen_.614 = private unnamed_addr constant [18 x i8] c"palmas_pinmux_ops\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 742, i32 32 }
@___asan_gen_.617 = private unnamed_addr constant [19 x i8] c"palmas_pinconf_ops\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 963, i32 33 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 702, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 715, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 727, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 734, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 769, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 777, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 787, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 796, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 819, i32 4 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 828, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 841, i32 4 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 849, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 878, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 886, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 900, i32 5 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 917, i32 5 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 926, i32 5 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 939, i32 5 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 946, i32 4 }
@___asan_gen_.713 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 950, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 954, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant [22 x i8] c"tps80036_pinctrl_data\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 985, i32 35 }
@___asan_gen_.722 = private unnamed_addr constant [19 x i8] c"tps80036_pingroups\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 544, i32 37 }
@___asan_gen_.725 = private unnamed_addr constant [15 x i8] c"pin_gpio8_info\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 462, i32 1 }
@___asan_gen_.728 = private unnamed_addr constant [18 x i8] c"pin_sim1rsti_info\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 495, i32 1 }
@___asan_gen_.731 = private unnamed_addr constant [15 x i8] c"pin_gpio9_info\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 463, i32 1 }
@___asan_gen_.734 = private unnamed_addr constant [18 x i8] c"pin_low_vbat_info\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 496, i32 1 }
@___asan_gen_.737 = private unnamed_addr constant [16 x i8] c"pin_gpio10_info\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 464, i32 1 }
@___asan_gen_.740 = private unnamed_addr constant [24 x i8] c"pin_wireless_chrg1_info\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 500, i32 1 }
@___asan_gen_.743 = private unnamed_addr constant [16 x i8] c"pin_gpio11_info\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 465, i32 1 }
@___asan_gen_.746 = private unnamed_addr constant [13 x i8] c"pin_rcm_info\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 497, i32 1 }
@___asan_gen_.749 = private unnamed_addr constant [16 x i8] c"pin_gpio12_info\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 466, i32 1 }
@___asan_gen_.752 = private unnamed_addr constant [18 x i8] c"pin_sim2rsto_info\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 498, i32 1 }
@___asan_gen_.755 = private unnamed_addr constant [16 x i8] c"pin_gpio13_info\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 467, i32 1 }
@___asan_gen_.758 = private unnamed_addr constant [16 x i8] c"pin_gpio14_info\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 468, i32 1 }
@___asan_gen_.761 = private unnamed_addr constant [16 x i8] c"pin_gpio15_info\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 469, i32 1 }
@___asan_gen_.764 = private unnamed_addr constant [18 x i8] c"pin_sim2rsti_info\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 499, i32 1 }
@___asan_gen_.767 = private unnamed_addr constant [15 x i8] c"pud_gpio9_info\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 422, i32 1 }
@___asan_gen_.770 = private unnamed_addr constant [16 x i8] c"pud_gpio10_info\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 423, i32 1 }
@___asan_gen_.773 = private unnamed_addr constant [15 x i8] c"od_gpio10_info\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 440, i32 1 }
@___asan_gen_.776 = private unnamed_addr constant [16 x i8] c"pud_gpio11_info\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 424, i32 1 }
@___asan_gen_.779 = private unnamed_addr constant [16 x i8] c"pud_gpio13_info\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 425, i32 1 }
@___asan_gen_.782 = private unnamed_addr constant [15 x i8] c"od_gpio13_info\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 441, i32 1 }
@___asan_gen_.785 = private unnamed_addr constant [16 x i8] c"pud_gpio14_info\00", align 1
@___asan_gen_.786 = private constant [36 x i8] c"../drivers/pinctrl/pinctrl-palmas.c\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.786, i32 426, i32 1 }
@llvm.compiler.used = appending global [257 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_palmas_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_palmas__295_1059_palmas_pinctrl_driver_init6, ptr @palmas_pinconf_get._entry, ptr @palmas_pinconf_get._entry.76, ptr @palmas_pinconf_get._entry.79, ptr @palmas_pinconf_get._entry.82, ptr @palmas_pinconf_get._entry.85, ptr @palmas_pinconf_get._entry.88, ptr @palmas_pinconf_get._entry.90, ptr @palmas_pinconf_get._entry.92, ptr @palmas_pinconf_get._entry_ptr, ptr @palmas_pinconf_get._entry_ptr.78, ptr @palmas_pinconf_get._entry_ptr.81, ptr @palmas_pinconf_get._entry_ptr.84, ptr @palmas_pinconf_get._entry_ptr.87, ptr @palmas_pinconf_get._entry_ptr.89, ptr @palmas_pinconf_get._entry_ptr.91, ptr @palmas_pinconf_get._entry_ptr.94, ptr @palmas_pinconf_set._entry, ptr @palmas_pinconf_set._entry.100, ptr @palmas_pinconf_set._entry.102, ptr @palmas_pinconf_set._entry.104, ptr @palmas_pinconf_set._entry.106, ptr @palmas_pinconf_set._entry.109, ptr @palmas_pinconf_set._entry.96, ptr @palmas_pinconf_set._entry.98, ptr @palmas_pinconf_set._entry_ptr, ptr @palmas_pinconf_set._entry_ptr.101, ptr @palmas_pinconf_set._entry_ptr.103, ptr @palmas_pinconf_set._entry_ptr.105, ptr @palmas_pinconf_set._entry_ptr.107, ptr @palmas_pinconf_set._entry_ptr.110, ptr @palmas_pinconf_set._entry_ptr.97, ptr @palmas_pinconf_set._entry_ptr.99, ptr @palmas_pinctrl_driver_exit, ptr @palmas_pinctrl_get_pin_mux._entry, ptr @palmas_pinctrl_get_pin_mux._entry_ptr, ptr @palmas_pinctrl_probe._entry, ptr @palmas_pinctrl_probe._entry.8, ptr @palmas_pinctrl_probe._entry_ptr, ptr @palmas_pinctrl_probe._entry_ptr.10, ptr @palmas_pinctrl_set_dvfs1._entry, ptr @palmas_pinctrl_set_dvfs1._entry_ptr, ptr @palmas_pinctrl_set_dvfs2._entry, ptr @palmas_pinctrl_set_dvfs2._entry_ptr, ptr @palmas_pinctrl_set_mux._entry, ptr @palmas_pinctrl_set_mux._entry.67, ptr @palmas_pinctrl_set_mux._entry.71, ptr @palmas_pinctrl_set_mux._entry_ptr, ptr @palmas_pinctrl_set_mux._entry_ptr.68, ptr @palmas_pinctrl_set_mux._entry_ptr.73, ptr @palmas_pinctrl_driver, ptr @.str, ptr @palmas_pinctrl_of_match, ptr @tps65913_pinctrl_data, ptr @.str.1, ptr @.str.2, ptr @palmas_pins_desc, ptr @palmas_pin_function, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @palmas_pinctrl_desc, ptr @.str.9, ptr @tps65913_pingroups, ptr @.str.11, ptr @pin_gpio0_info, ptr @pin_id_info, ptr @.str.12, ptr @pin_gpio1_info, ptr @pin_vbus_det_info, ptr @pin_led1_info, ptr @pin_pwm1_info, ptr @.str.13, ptr @pin_gpio2_info, ptr @pin_regen_info, ptr @pin_led2_info, ptr @pin_pwm2_info, ptr @.str.14, ptr @pin_gpio3_info, ptr @pin_chrg_det_info, ptr @.str.15, ptr @pin_gpio4_info, ptr @pin_sysen1_info, ptr @.str.16, ptr @pin_gpio5_info, ptr @pin_clk32kgaudio_info, ptr @pin_usb_psel_info, ptr @.str.17, ptr @pin_gpio6_info, ptr @pin_sysen2_info, ptr @.str.18, ptr @pin_gpio7_info, ptr @pin_msecure_info, ptr @pin_pwrhold_info, ptr @.str.19, ptr @pin_vac_info, ptr @pin_vacok_info, ptr @.str.20, ptr @pin_powergood_info, ptr @.str.21, ptr @pin_nreswarm_info, ptr @.str.22, ptr @pin_pwrdown_info, ptr @.str.23, ptr @pin_gpadc_start_info, ptr @.str.24, ptr @pin_reset_in_info, ptr @.str.25, ptr @pin_nsleep_info, ptr @.str.26, ptr @pin_enable1_info, ptr @.str.27, ptr @pin_enable2_info, ptr @.str.28, ptr @pin_int_info, ptr @pud_gpio0_info, ptr @pud_id_info, ptr @pud_gpio1_info, ptr @od_gpio1_info, ptr @od_vbus_det_info, ptr @od_pwm1_info, ptr @pud_gpio2_info, ptr @od_gpio2_info, ptr @od_pwm2_info, ptr @pud_gpio3_info, ptr @pud_chrg_det_info, ptr @pud_gpio4_info, ptr @pud_gpio5_info, ptr @od_gpio5_info, ptr @pud_gpio6_info, ptr @pud_gpio7_info, ptr @pud_msecure_info, ptr @pud_pwrhold_info, ptr @pud_vacok_info, ptr @pud_nreswarm_info, ptr @pud_pwrdown_info, ptr @pud_gpadc_start_info, ptr @pud_reset_in_info, ptr @pud_nsleep_info, ptr @pud_enable1_info, ptr @pud_enable2_info, ptr @od_int_info, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @opt0_groups, ptr @.str.38, ptr @opt1_groups, ptr @.str.39, ptr @opt2_groups, ptr @.str.40, ptr @opt3_groups, ptr @.str.41, ptr @gpio_groups, ptr @.str.42, ptr @led_groups, ptr @.str.43, ptr @pwm_groups, ptr @.str.44, ptr @regen_groups, ptr @.str.45, ptr @sysen_groups, ptr @.str.46, ptr @clk32kgaudio_groups, ptr @.str.47, ptr @id_groups, ptr @.str.48, ptr @vbus_det_groups, ptr @.str.49, ptr @chrg_det_groups, ptr @vac_groups, ptr @.str.50, ptr @vacok_groups, ptr @powergood_groups, ptr @.str.51, ptr @usb_psel_groups, ptr @.str.52, ptr @msecure_groups, ptr @.str.53, ptr @pwrhold_groups, ptr @int_groups, ptr @nreswarm_groups, ptr @.str.54, ptr @simrsto_groups, ptr @.str.55, ptr @simrsti_groups, ptr @.str.56, ptr @low_vbat_groups, ptr @.str.57, ptr @wireless_chrg1_groups, ptr @.str.58, ptr @rcm_groups, ptr @pwrdown_groups, ptr @gpadc_start_groups, ptr @reset_in_groups, ptr @nsleep_groups, ptr @.str.59, ptr @enable_groups, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @palmas_pinctrl_ops, ptr @palmas_pinmux_ops, ptr @palmas_pinconf_ops, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.93, ptr @.str.95, ptr @.str.108, ptr @tps80036_pinctrl_data, ptr @tps80036_pingroups, ptr @pin_gpio8_info, ptr @pin_sim1rsti_info, ptr @pin_gpio9_info, ptr @pin_low_vbat_info, ptr @pin_gpio10_info, ptr @pin_wireless_chrg1_info, ptr @pin_gpio11_info, ptr @pin_rcm_info, ptr @pin_gpio12_info, ptr @pin_sim2rsto_info, ptr @pin_gpio13_info, ptr @pin_gpio14_info, ptr @pin_gpio15_info, ptr @pin_sim2rsti_info, ptr @pud_gpio9_info, ptr @pud_gpio10_info, ptr @od_gpio10_info, ptr @pud_gpio11_info, ptr @pud_gpio13_info, ptr @od_gpio13_info, ptr @pud_gpio14_info], section "llvm.metadata"
@0 = internal global [225 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65913_pinctrl_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pins_desc to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pin_function to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65913_pingroups to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio0_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_id_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio1_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_vbus_det_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_led1_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_pwm1_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio2_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_regen_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_led2_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_pwm2_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio3_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_chrg_det_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio4_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_sysen1_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio5_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_clk32kgaudio_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_usb_psel_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio6_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_sysen2_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio7_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_msecure_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_pwrhold_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_vac_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_vacok_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_powergood_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_nreswarm_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_pwrdown_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpadc_start_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_reset_in_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_nsleep_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_enable1_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_enable2_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_int_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio0_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_id_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio1_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_gpio1_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_vbus_det_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_pwm1_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio2_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_gpio2_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_pwm2_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio3_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_chrg_det_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio4_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio5_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_gpio5_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio6_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio7_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_msecure_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_pwrhold_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_vacok_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_nreswarm_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_pwrdown_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpadc_start_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_reset_in_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_nsleep_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_enable1_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_enable2_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_int_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt0_groups to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt1_groups to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt2_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt3_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_groups to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regen_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysen_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk32kgaudio_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbus_det_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chrg_det_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vac_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vacok_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powergood_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_psel_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msecure_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrhold_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nreswarm_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simrsto_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simrsti_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @low_vbat_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wireless_chrg1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcm_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrdown_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpadc_start_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_in_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsleep_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_set_dvfs1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_set_dvfs2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_get_pin_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_set_mux._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinctrl_set_mux._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_get._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_get._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_get._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_get._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_get._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_get._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_get._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_set._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_set._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_set._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_set._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_set._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_set._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pinconf_set._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps80036_pinctrl_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps80036_pingroups to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio8_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_sim1rsti_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio9_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_low_vbat_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio10_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_wireless_chrg1_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio11_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_rcm_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio12_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_sim2rsto_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio13_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio14_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_gpio15_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_sim2rsti_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio9_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio10_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_gpio10_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio11_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio13_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_gpio13_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pud_gpio14_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @palmas_pinctrl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @palmas_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @palmas_pinctrl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i76 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %tobool.i77.not = icmp eq ptr %call.i76, null
  %phi.cast = zext i1 %tobool.i to i32
  %phi.sel = select i1 %tobool.i77.not, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pinctrl_data.0 = phi ptr [ %call, %if.then ], [ @tps65913_pinctrl_data, %entry.if.end_crit_edge ]
  %enable_dvfs1.0.off0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %enable_dvfs2.0.off0 = phi i32 [ %phi.sel, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call.i78 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 140, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i78, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %6 = ptrtoint ptr %call.i78 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i78, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %palmas = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call.i78, i32 0, i32 2
  %11 = ptrtoint ptr %palmas to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %palmas, align 4
  %pins = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call.i78, i32 0, i32 8
  %12 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @palmas_pins_desc, ptr %pins, align 4
  %num_pins = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call.i78, i32 0, i32 9
  %13 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 26, ptr %num_pins, align 4
  %functions = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call.i78, i32 0, i32 4
  %14 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @palmas_pin_function, ptr %functions, align 4
  %num_functions = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call.i78, i32 0, i32 5
  %15 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 31, ptr %num_functions, align 4
  %16 = ptrtoint ptr %pinctrl_data.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pinctrl_data.0, align 4
  %pin_groups18 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call.i78, i32 0, i32 6
  %18 = ptrtoint ptr %pin_groups18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %pin_groups18, align 4
  %num_pin_groups = getelementptr inbounds %struct.palmas_pinctrl_data, ptr %pinctrl_data.0, i32 0, i32 1
  %19 = ptrtoint ptr %num_pin_groups to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_pin_groups, align 4
  %num_pin_groups19 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call.i78, i32 0, i32 7
  %21 = ptrtoint ptr %num_pin_groups19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %num_pin_groups19, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i78, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.palmas, ptr %10, i32 0, i32 2, i32 0
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 254, i32 noundef 1, i32 noundef %enable_dvfs1.0.off0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end13.palmas_pinctrl_set_dvfs1.exit_crit_edge

if.end13.palmas_pinctrl_set_dvfs1.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %palmas_pinctrl_set_dvfs1.exit

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call.i78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.60, i32 noundef %call.i.i.i) #9
  br label %palmas_pinctrl_set_dvfs1.exit

palmas_pinctrl_set_dvfs1.exit:                    ; preds = %do.end.i, %if.end13.palmas_pinctrl_set_dvfs1.exit_crit_edge
  %27 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %palmas, align 4
  %arrayidx.i.i81 = getelementptr %struct.palmas, ptr %28, i32 0, i32 2, i32 0
  %29 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i81, align 4
  %call.i.i.i82 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 254, i32 noundef 2, i32 noundef %enable_dvfs2.0.off0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i82)
  %cmp.i83 = icmp slt i32 %call.i.i.i82, 0
  br i1 %cmp.i83, label %do.end.i84, label %palmas_pinctrl_set_dvfs1.exit.palmas_pinctrl_set_dvfs2.exit_crit_edge

palmas_pinctrl_set_dvfs1.exit.palmas_pinctrl_set_dvfs2.exit_crit_edge: ; preds = %palmas_pinctrl_set_dvfs1.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %palmas_pinctrl_set_dvfs2.exit

do.end.i84:                                       ; preds = %palmas_pinctrl_set_dvfs1.exit
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call.i78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.60, i32 noundef %call.i.i.i82) #9
  br label %palmas_pinctrl_set_dvfs2.exit

palmas_pinctrl_set_dvfs2.exit:                    ; preds = %do.end.i84, %palmas_pinctrl_set_dvfs1.exit.palmas_pinctrl_set_dvfs2.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %val.i, align 4, !annotation !452
  %34 = ptrtoint ptr %num_pin_groups19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_pin_groups19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp29.i = icmp sgt i32 %35, 0
  br i1 %cmp29.i, label %palmas_pinctrl_set_dvfs2.exit.for.body.i_crit_edge, label %palmas_pinctrl_set_dvfs2.exit.if.end27_crit_edge

palmas_pinctrl_set_dvfs2.exit.if.end27_crit_edge: ; preds = %palmas_pinctrl_set_dvfs2.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

palmas_pinctrl_set_dvfs2.exit.for.body.i_crit_edge: ; preds = %palmas_pinctrl_set_dvfs2.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %palmas_pinctrl_set_dvfs2.exit.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %palmas_pinctrl_set_dvfs2.exit.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %pin_groups18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pin_groups18, align 4
  %mux_reg_base.i = getelementptr %struct.palmas_pingroup, ptr %37, i32 %i.030.i, i32 3
  %38 = ptrtoint ptr %mux_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mux_reg_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1.i = icmp eq i32 %39, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %40 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %palmas, align 4
  %mux_reg_add.i = getelementptr %struct.palmas_pingroup, ptr %37, i32 %i.030.i, i32 4
  %42 = ptrtoint ptr %mux_reg_add.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mux_reg_add.i, align 4
  %and.i.i = and i32 %39, 255
  %add.i.i = add i32 %43, %and.i.i
  %shr.i.i = lshr i32 %39, 8
  %sub.i.i = add nsw i32 %shr.i.i, -1
  %arrayidx.i.i86 = getelementptr %struct.palmas, ptr %41, i32 0, i32 2, i32 %sub.i.i
  %44 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i86, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %45, i32 noundef %add.i.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %do.end, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mux_reg_mask.i = getelementptr %struct.palmas_pingroup, ptr %37, i32 %i.030.i, i32 5
  %46 = ptrtoint ptr %mux_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mux_reg_mask.i, align 4
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.i, align 4
  %and.i = and i32 %49, %47
  store i32 %and.i, ptr %val.i, align 4
  %mux_bit_shift.i = getelementptr %struct.palmas_pingroup, ptr %37, i32 %i.030.i, i32 6
  %50 = ptrtoint ptr %mux_bit_shift.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mux_bit_shift.i, align 4
  %shr.i = lshr i32 %and.i, %51
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.i, %for.body.i.for.inc.i_crit_edge
  %shr.sink.i = phi i32 [ %shr.i, %if.end7.i ], [ 0, %for.body.i.for.inc.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.palmas_pctrl_chip_info, ptr %call.i78, i32 0, i32 3, i32 %i.030.i
  %52 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr.sink.i, ptr %arrayidx9.i, align 4
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %53 = ptrtoint ptr %num_pin_groups19 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pin_groups19, align 4
  %cmp.i88 = icmp slt i32 %inc.i, %54
  br i1 %cmp.i88, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end27_crit_edge

for.inc.i.if.end27_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %call.i78 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i78, align 4
  %57 = ptrtoint ptr %mux_reg_add.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mux_reg_add.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.63, i32 noundef %58, i32 noundef %call.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call.i.i) #9
  br label %cleanup

if.end27:                                         ; preds = %for.inc.i.if.end27_crit_edge, %palmas_pinctrl_set_dvfs2.exit.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %if.end.i89, label %if.end27.dev_name.exit_crit_edge

if.end27.dev_name.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i89:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i89, %if.end27.dev_name.exit_crit_edge
  %retval.0.i90 = phi ptr [ %62, %if.end.i89 ], [ %60, %if.end27.dev_name.exit_crit_edge ]
  store ptr %retval.0.i90, ptr @palmas_pinctrl_desc, align 4
  store ptr @palmas_pins_desc, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @palmas_pinctrl_desc, i32 0, i32 1), align 4
  store i32 26, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @palmas_pinctrl_desc, i32 0, i32 2), align 4
  %call31 = call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @palmas_pinctrl_desc, ptr noundef nonnull %call.i78) #6
  %pctl = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call.i78, i32 0, i32 1
  %63 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call31, ptr %pctl, align 4
  %cmp.i91 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %do.end37, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end37:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  %64 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pctl, align 4
  %66 = ptrtoint ptr %65 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %dev_name.exit.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %66, %do.end37 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %num_pin_groups = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %num_pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pin_groups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @palmas_pinctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pin_groups = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_groups, align 4
  %arrayidx = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pin_groups = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_groups, align 4
  %pins1 = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pins1, ptr %pins, align 4
  %3 = load ptr, ptr %pin_groups, align 4
  %npins = getelementptr %struct.palmas_pingroup, ptr %3, i32 %group, i32 2
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  %6 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_get_funcs_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %num_functions = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_functions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @palmas_pinctrl_get_func_name(ptr noundef %pctldev, i32 noundef %function) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %functions = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.palmas_pin_function, ptr %1, i32 %function
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %functions = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.palmas_pin_function, ptr %1, i32 %function, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.palmas_pin_function, ptr %5, i32 %function, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pin_groups = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_groups, align 4
  %arrayidx = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %function)
  %cmp = icmp ult i32 %function, 4
  br i1 %cmp, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx5 = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 7, i32 0
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %for.body.preheader.for.inc_crit_edge, label %if.end8

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 7, i32 %function
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.then.if.end47_crit_edge

if.then.if.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.65, ptr noundef %9, i32 noundef %function) #9
  br label %cleanup

if.end8:                                          ; preds = %for.body.preheader
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %function)
  %cmp11 = icmp eq i32 %11, %function
  br i1 %cmp11, label %if.end47.thread, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx5.1 = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.1, align 4
  %tobool6.not.1 = icmp eq ptr %13, null
  br i1 %tobool6.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end8.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end8.1:                                        ; preds = %for.inc
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %function)
  %cmp11.1 = icmp eq i32 %15, %function
  br i1 %cmp11.1, label %if.end8.1.if.end47_crit_edge, label %if.end8.1.for.inc.1_crit_edge

if.end8.1.for.inc.1_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end8.1.if.end47_crit_edge:                     ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

for.inc.1:                                        ; preds = %if.end8.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx5.2 = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 7, i32 2
  %16 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5.2, align 4
  %tobool6.not.2 = icmp eq ptr %17, null
  br i1 %tobool6.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end8.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end8.2:                                        ; preds = %for.inc.1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %function)
  %cmp11.2 = icmp eq i32 %19, %function
  br i1 %cmp11.2, label %if.end8.2.if.end47_crit_edge, label %if.end8.2.for.inc.2_crit_edge

if.end8.2.for.inc.2_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end8.2.if.end47_crit_edge:                     ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

for.inc.2:                                        ; preds = %if.end8.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx5.3 = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 7, i32 3
  %20 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5.3, align 4
  %tobool6.not.3 = icmp eq ptr %21, null
  br i1 %tobool6.not.3, label %for.inc.2.do.end26_crit_edge, label %if.end8.3

for.inc.2.do.end26_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

if.end8.3:                                        ; preds = %for.inc.2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %function)
  %cmp11.3 = icmp eq i32 %23, %function
  br i1 %cmp11.3, label %if.end8.3.if.end47_crit_edge, label %if.end8.3.do.end26_crit_edge

if.end8.3.do.end26_crit_edge:                     ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

if.end8.3.if.end47_crit_edge:                     ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end26:                                         ; preds = %if.end8.3.do.end26_crit_edge, %for.inc.2.do.end26_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 714, i32 noundef 9, ptr noundef null) #6
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.65, ptr noundef %27, i32 noundef %function) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end8.3.if.end47_crit_edge, %if.end8.2.if.end47_crit_edge, %if.end8.1.if.end47_crit_edge, %if.then.if.end47_crit_edge
  %i.1 = phi i32 [ %function, %if.then.if.end47_crit_edge ], [ 1, %if.end8.1.if.end47_crit_edge ], [ 2, %if.end8.2.if.end47_crit_edge ], [ 3, %if.end8.3.if.end47_crit_edge ]
  %mux_reg_base = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 3
  %28 = ptrtoint ptr %mux_reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mux_reg_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp48 = icmp eq i32 %29, 0
  br i1 %cmp48, label %if.then49, label %if.end47.do.body85_crit_edge

if.end47.do.body85_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body85

if.end47.thread:                                  ; preds = %if.end8
  %mux_reg_base166 = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 3
  %30 = ptrtoint ptr %mux_reg_base166 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mux_reg_base166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp48167 = icmp eq i32 %31, 0
  br i1 %cmp48167, label %if.end47.thread.cleanup_crit_edge, label %if.end47.thread.do.body85_crit_edge

if.end47.thread.do.body85_crit_edge:              ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body85

if.end47.thread.cleanup_crit_edge:                ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp51.not = icmp eq i32 %i.1, 0
  br i1 %cmp51.not, label %if.then49.cleanup_crit_edge, label %do.end67, !prof !453

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end67:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 722, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body85:                                        ; preds = %if.end47.thread.do.body85_crit_edge, %if.end47.do.body85_crit_edge
  %mux_reg_base171 = phi ptr [ %mux_reg_base166, %if.end47.thread.do.body85_crit_edge ], [ %mux_reg_base, %if.end47.do.body85_crit_edge ]
  %i.1169 = phi i32 [ 0, %if.end47.thread.do.body85_crit_edge ], [ %i.1, %if.end47.do.body85_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_pinctrl_set_mux.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@palmas_pinctrl_set_mux, %do.end102)) #6
          to label %if.then97 [label %do.end102], !srcloc !454

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call, align 4
  %34 = ptrtoint ptr %mux_reg_base171 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mux_reg_base171, align 4
  %mux_reg_add = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 4
  %36 = ptrtoint ptr %mux_reg_add to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mux_reg_add, align 4
  %mux_reg_mask = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 5
  %38 = ptrtoint ptr %mux_reg_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mux_reg_mask, align 4
  %mux_bit_shift = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 6
  %40 = ptrtoint ptr %mux_bit_shift to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mux_bit_shift, align 4
  %shl = shl i32 %i.1169, %41
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_pinctrl_set_mux.__UNIQUE_ID_ddebug293, ptr noundef %33, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.66, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %shl) #6
  br label %do.end102

do.end102:                                        ; preds = %if.then97, %do.body85
  %palmas = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 2
  %42 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %palmas, align 4
  %44 = ptrtoint ptr %mux_reg_base171 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mux_reg_base171, align 4
  %mux_reg_add104 = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 4
  %46 = ptrtoint ptr %mux_reg_add104 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mux_reg_add104, align 4
  %mux_reg_mask105 = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 5
  %48 = ptrtoint ptr %mux_reg_mask105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mux_reg_mask105, align 4
  %mux_bit_shift106 = getelementptr %struct.palmas_pingroup, ptr %1, i32 %group, i32 6
  %50 = ptrtoint ptr %mux_bit_shift106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mux_bit_shift106, align 4
  %shl107 = shl i32 %i.1169, %51
  %and.i = and i32 %45, 255
  %add.i = add i32 %and.i, %47
  %shr.i = lshr i32 %45, 8
  %sub.i = add nsw i32 %shr.i, -1
  %arrayidx.i = getelementptr %struct.palmas, ptr %43, i32 0, i32 2, i32 %sub.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %add.i, i32 noundef %49, i32 noundef %shl107, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp109 = icmp slt i32 %call.i.i, 0
  br i1 %cmp109, label %do.end113, label %if.end116

do.end113:                                        ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call, align 4
  %56 = ptrtoint ptr %mux_reg_add104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mux_reg_add104, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.72, i32 noundef %57, i32 noundef %call.i.i) #9
  br label %cleanup

if.end116:                                        ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx117 = getelementptr %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 3, i32 %group
  %58 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %i.1169, ptr %arrayidx117, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %do.end113, %do.end67, %if.then49.cleanup_crit_edge, %if.end47.thread.cleanup_crit_edge, %do.end26, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end113 ], [ 0, %if.end116 ], [ -22, %do.end ], [ -22, %do.end26 ], [ -22, %do.end67 ], [ 0, %if.then49.cleanup_crit_edge ], [ 0, %if.end47.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !452
  %num_pin_groups = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %num_pin_groups to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pin_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp217 = icmp sgt i32 %4, 0
  br i1 %cmp217, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pin_groups = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pin_groups, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %group_nr.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pins = getelementptr %struct.palmas_pingroup, ptr %6, i32 %group_nr.0218, i32 1
  %7 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %pin)
  %cmp3 = icmp eq i32 %8, %pin
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %group_nr.0218, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %group_nr.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %group_nr.0218, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %group_nr.0.lcssa, i32 %4)
  %cmp5 = icmp eq i32 %group_nr.0.lcssa, %4
  br i1 %cmp5, label %for.end.do.end_crit_edge, label %if.end7

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.74, i32 noundef %pin) #9
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %pin_groups8 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %pin_groups8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pin_groups8, align 4
  %arrayidx9 = getelementptr %struct.palmas_pingroup, ptr %12, i32 %group_nr.0.lcssa
  %arrayidx11 = getelementptr %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 3, i32 %group_nr.0.lcssa
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr %struct.palmas_pingroup, ptr %12, i32 %group_nr.0.lcssa, i32 7, i32 %14
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.77, ptr noundef %20) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %trunc = trunc i32 %1 to i8
  %21 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end117 [
    i8 1, label %if.end18.sw.bb_crit_edge
    i8 5, label %if.end18.sw.bb_crit_edge228
    i8 3, label %if.end18.sw.bb_crit_edge229
    i8 6, label %sw.bb68
  ]

if.end18.sw.bb_crit_edge229:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end18.sw.bb_crit_edge228:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end18.sw.bb_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end18.sw.bb_crit_edge, %if.end18.sw.bb_crit_edge228, %if.end18.sw.bb_crit_edge229
  %pud_info = getelementptr inbounds %struct.palmas_pin_info, ptr %16, i32 0, i32 1
  %22 = ptrtoint ptr %pud_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pud_info, align 4
  %tobool19.not = icmp eq ptr %23, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.80, ptr noundef %27) #9
  br label %cleanup

if.end26:                                         ; preds = %sw.bb
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %23, align 4
  %pullup_dn_reg_add = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %pullup_dn_reg_add to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pullup_dn_reg_add, align 4
  %palmas = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 2
  %32 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %palmas, align 4
  %and.i208 = and i32 %29, 255
  %add.i = add i32 %and.i208, %31
  %shr.i = lshr i32 %29, 8
  %sub.i = add nsw i32 %shr.i, -1
  %arrayidx.i = getelementptr %struct.palmas, ptr %33, i32 0, i32 2, i32 %sub.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %35, i32 noundef %add.i, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp30 = icmp slt i32 %call.i, 0
  br i1 %cmp30, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.83, i32 noundef %31, i32 noundef %call.i) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %40 = ptrtoint ptr %pud_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pud_info, align 4
  %pullup_dn_mask = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %pullup_dn_mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pullup_dn_mask, align 4
  %and = and i32 %43, %39
  %normal_val = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %normal_val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %normal_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp39 = icmp sgt i32 %45, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %and)
  %cmp42 = icmp eq i32 %45, %and
  %or.cond = select i1 %cmp39, i1 %cmp42, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp44 = icmp eq i32 %and.i, 1
  %or.cond199 = select i1 %or.cond, i1 %cmp44, i1 false
  br i1 %or.cond199, label %if.end36.sw.epilog_crit_edge, label %if.else

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else:                                          ; preds = %if.end36
  %pull_up_val = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %41, i32 0, i32 4
  %46 = ptrtoint ptr %pull_up_val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pull_up_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp47 = icmp sgt i32 %47, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %and)
  %cmp51 = icmp eq i32 %47, %and
  %or.cond200 = select i1 %cmp47, i1 %cmp51, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp53 = icmp eq i32 %and.i, 5
  %or.cond201 = select i1 %or.cond200, i1 %cmp53, i1 false
  br i1 %or.cond201, label %if.else.sw.epilog_crit_edge, label %if.else55

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %pull_dn_val = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %41, i32 0, i32 5
  %48 = ptrtoint ptr %pull_dn_val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pull_dn_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp57 = icmp sgt i32 %49, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %and)
  %cmp61 = icmp eq i32 %49, %and
  %or.cond202 = select i1 %cmp57, i1 %cmp61, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp63 = icmp eq i32 %and.i, 3
  %or.cond203 = select i1 %or.cond202, i1 %cmp63, i1 false
  %spec.select = select i1 %or.cond203, i32 256, i32 0
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end18
  %od_info = getelementptr inbounds %struct.palmas_pin_info, ptr %16, i32 0, i32 2
  %50 = ptrtoint ptr %od_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %od_info, align 4
  %tobool69.not = icmp eq ptr %51, null
  br i1 %tobool69.not, label %do.end73, label %if.end76

do.end73:                                         ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call, align 4
  %54 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.86, ptr noundef %55) #9
  br label %cleanup

if.end76:                                         ; preds = %sw.bb68
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %51, align 4
  %od_reg_add = getelementptr inbounds %struct.palmas_pins_od_info, ptr %51, i32 0, i32 1
  %58 = ptrtoint ptr %od_reg_add to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %od_reg_add, align 4
  %palmas79 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 2
  %60 = ptrtoint ptr %palmas79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %palmas79, align 4
  %and.i209 = and i32 %57, 255
  %add.i210 = add i32 %and.i209, %59
  %shr.i211 = lshr i32 %57, 8
  %sub.i212 = add nsw i32 %shr.i211, -1
  %arrayidx.i213 = getelementptr %struct.palmas, ptr %61, i32 0, i32 2, i32 %sub.i212
  %62 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i213, align 4
  %call.i214 = call i32 @regmap_read(ptr noundef %63, i32 noundef %add.i210, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %cmp81 = icmp slt i32 %call.i214, 0
  br i1 %cmp81, label %do.end85, label %if.end87

do.end85:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.83, i32 noundef %59, i32 noundef %call.i214) #9
  br label %cleanup

if.end87:                                         ; preds = %if.end76
  %66 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val, align 4
  %68 = ptrtoint ptr %od_info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %od_info, align 4
  %od_mask = getelementptr inbounds %struct.palmas_pins_od_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %od_mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %od_mask, align 4
  %and89 = and i32 %71, %67
  %od_disable = getelementptr inbounds %struct.palmas_pins_od_info, ptr %69, i32 0, i32 4
  %72 = ptrtoint ptr %od_disable to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %od_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp91 = icmp sgt i32 %73, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %and89)
  %cmp95 = icmp eq i32 %73, %and89
  %or.cond204 = select i1 %cmp91, i1 %cmp95, i1 false
  br i1 %or.cond204, label %if.end87.sw.epilog_crit_edge, label %if.end106

if.end87.sw.epilog_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end106:                                        ; preds = %if.end87
  %od_enable = getelementptr inbounds %struct.palmas_pins_od_info, ptr %69, i32 0, i32 3
  %74 = ptrtoint ptr %od_enable to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %od_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp99 = icmp sgt i32 %75, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %and89)
  %cmp103 = icmp eq i32 %75, %and89
  %or.cond205 = select i1 %cmp99, i1 %cmp103, i1 false
  br i1 %or.cond205, label %if.end106.sw.epilog_crit_edge, label %do.end111

if.end106.sw.epilog_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end111:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call, align 4
  %78 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.86, ptr noundef %79) #9
  br label %cleanup

do.end117:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.93) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end106.sw.epilog_crit_edge, %if.end87.sw.epilog_crit_edge, %if.else55, %if.else.sw.epilog_crit_edge, %if.end36.sw.epilog_crit_edge
  %arg.1 = phi i32 [ 256, %if.end106.sw.epilog_crit_edge ], [ 256, %if.end36.sw.epilog_crit_edge ], [ 256, %if.else.sw.epilog_crit_edge ], [ %spec.select, %if.else55 ], [ 0, %if.end87.sw.epilog_crit_edge ]
  %or.i = or i32 %arg.1, %and.i
  %82 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end117, %do.end111, %do.end85, %do.end73, %do.end34, %do.end23, %do.end16, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ -524, %do.end117 ], [ %call.i214, %do.end85 ], [ -524, %do.end111 ], [ 0, %sw.epilog ], [ -524, %do.end73 ], [ %call.i, %do.end34 ], [ -524, %do.end23 ], [ -524, %do.end16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %num_pin_groups = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %num_pin_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pin_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp176 = icmp sgt i32 %1, 0
  br i1 %cmp176, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pin_groups = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_groups, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %group_nr.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pins = getelementptr %struct.palmas_pingroup, ptr %3, i32 %group_nr.0177, i32 1
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pin)
  %cmp2 = icmp eq i32 %5, %pin
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %group_nr.0177, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %group_nr.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %group_nr.0177, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %group_nr.0.lcssa, i32 %1)
  %cmp4 = icmp eq i32 %group_nr.0.lcssa, %1
  br i1 %cmp4, label %for.end.do.end_crit_edge, label %if.end6

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.74, i32 noundef %pin) #9
  br label %cleanup

if.end6:                                          ; preds = %for.end
  %pin_groups7 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %pin_groups7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin_groups7, align 4
  %arrayidx8 = getelementptr %struct.palmas_pingroup, ptr %9, i32 %group_nr.0.lcssa
  %arrayidx10 = getelementptr %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 3, i32 %group_nr.0.lcssa
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr %struct.palmas_pingroup, ptr %9, i32 %group_nr.0.lcssa, i32 7, i32 %11
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.end15, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp19181.not = icmp eq i32 %num_configs, 0
  br i1 %cmp19181.not, label %for.cond18.preheader.cleanup_crit_edge, label %for.body20.lr.ph

for.cond18.preheader.cleanup_crit_edge:           ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body20.lr.ph:                                 ; preds = %for.cond18.preheader
  %od_info = getelementptr inbounds %struct.palmas_pin_info, ptr %13, i32 0, i32 2
  %pud_info = getelementptr inbounds %struct.palmas_pin_info, ptr %13, i32 0, i32 1
  %palmas = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %call, i32 0, i32 2
  br label %for.body20

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.77, ptr noundef %17) #9
  br label %cleanup

for.cond18:                                       ; preds = %do.end94
  %inc104 = add nuw i32 %i.0182, 1
  %exitcond185.not = icmp eq i32 %inc104, %num_configs
  br i1 %exitcond185.not, label %for.cond18.cleanup_crit_edge, label %for.cond18.for.body20_crit_edge

for.cond18.for.body20_crit_edge:                  ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20

for.cond18.cleanup_crit_edge:                     ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body20:                                       ; preds = %for.cond18.for.body20_crit_edge, %for.body20.lr.ph
  %i.0182 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc104, %for.cond18.for.body20_crit_edge ]
  %arrayidx21 = getelementptr i32, ptr %configs, i32 %i.0182
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx21, align 4
  %trunc = trunc i32 %19 to i8
  %20 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %trunc, label %do.end82 [
    i8 1, label %for.body20.sw.bb_crit_edge
    i8 5, label %for.body20.sw.bb_crit_edge200
    i8 3, label %for.body20.sw.bb_crit_edge201
    i8 6, label %sw.bb54
  ]

for.body20.sw.bb_crit_edge201:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body20.sw.bb_crit_edge200:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body20.sw.bb_crit_edge:                       ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %for.body20.sw.bb_crit_edge, %for.body20.sw.bb_crit_edge200, %for.body20.sw.bb_crit_edge201
  %21 = ptrtoint ptr %pud_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pud_info, align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %do.end29, label %if.end32

do.end29:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  %25 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.80, ptr noundef %26) #9
  br label %cleanup

if.end32:                                         ; preds = %sw.bb
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %22, align 4
  %pullup_dn_reg_add = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %22, i32 0, i32 1
  %29 = ptrtoint ptr %pullup_dn_reg_add to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pullup_dn_reg_add, align 4
  %pullup_dn_mask = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %22, i32 0, i32 2
  %31 = ptrtoint ptr %pullup_dn_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pullup_dn_mask, align 4
  %33 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %trunc, label %if.else42 [
    i8 1, label %if.then37
    i8 5, label %if.then40
  ]

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %normal_val = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %22, i32 0, i32 3
  br label %if.end45

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %pull_up_val = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %22, i32 0, i32 4
  br label %if.end45

if.else42:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %pull_dn_val = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %22, i32 0, i32 5
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then40, %if.then37
  %rval.0.in = phi ptr [ %normal_val, %if.then37 ], [ %pull_up_val, %if.then40 ], [ %pull_dn_val, %if.else42 ]
  %34 = ptrtoint ptr %rval.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %rval.0 = load i32, ptr %rval.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0)
  %cmp46 = icmp slt i32 %rval.0, 0
  br i1 %cmp46, label %do.end50, label %if.end45.do.body84_crit_edge

if.end45.do.body84_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body84

do.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call, align 4
  %37 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.80, ptr noundef %38) #9
  br label %cleanup

sw.bb54:                                          ; preds = %for.body20
  %39 = ptrtoint ptr %od_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %od_info, align 4
  %tobool55.not = icmp eq ptr %40, null
  br i1 %tobool55.not, label %do.end59, label %if.end62

do.end59:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call, align 4
  %43 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.86, ptr noundef %44) #9
  br label %cleanup

if.end62:                                         ; preds = %sw.bb54
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %40, align 4
  %od_reg_add = getelementptr inbounds %struct.palmas_pins_od_info, ptr %40, i32 0, i32 1
  %47 = ptrtoint ptr %od_reg_add to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %od_reg_add, align 4
  %od_mask = getelementptr inbounds %struct.palmas_pins_od_info, ptr %40, i32 0, i32 2
  %49 = ptrtoint ptr %od_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %od_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %19)
  %cmp66 = icmp ult i32 %19, 256
  %od_disable = getelementptr inbounds %struct.palmas_pins_od_info, ptr %40, i32 0, i32 4
  %od_enable = getelementptr inbounds %struct.palmas_pins_od_info, ptr %40, i32 0, i32 3
  %rval.1.in = select i1 %cmp66, ptr %od_disable, ptr %od_enable
  %51 = ptrtoint ptr %rval.1.in to i32
  call void @__asan_load4_noabort(i32 %51)
  %rval.1 = load i32, ptr %rval.1.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.1)
  %cmp72 = icmp slt i32 %rval.1, 0
  br i1 %cmp72, label %do.end76, label %if.end62.do.body84_crit_edge

if.end62.do.body84_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body84

do.end76:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call, align 4
  %54 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.86, ptr noundef %55) #9
  br label %cleanup

do.end82:                                         ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.93) #9
  br label %cleanup

do.body84:                                        ; preds = %if.end62.do.body84_crit_edge, %if.end45.do.body84_crit_edge
  %base.0 = phi i32 [ %46, %if.end62.do.body84_crit_edge ], [ %28, %if.end45.do.body84_crit_edge ]
  %add.0 = phi i32 [ %48, %if.end62.do.body84_crit_edge ], [ %30, %if.end45.do.body84_crit_edge ]
  %mask.0 = phi i32 [ %50, %if.end62.do.body84_crit_edge ], [ %32, %if.end45.do.body84_crit_edge ]
  %rval.2 = phi i32 [ %rval.1, %if.end62.do.body84_crit_edge ], [ %rval.0, %if.end45.do.body84_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_pinconf_set.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@palmas_pinconf_set, %do.end94)) #6
          to label %if.then90 [label %do.end94], !srcloc !454

if.then90:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_pinconf_set.__UNIQUE_ID_ddebug294, ptr noundef %59, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.95, i32 noundef %base.0, i32 noundef %add.0, i32 noundef %mask.0, i32 noundef %rval.2) #6
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %do.body84
  %60 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %palmas, align 4
  %and.i172 = and i32 %base.0, 255
  %add.i = add i32 %and.i172, %add.0
  %shr.i173 = lshr i32 %base.0, 8
  %sub.i = add nsw i32 %shr.i173, -1
  %arrayidx.i = getelementptr %struct.palmas, ptr %61, i32 0, i32 2, i32 %sub.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef %add.i, i32 noundef %mask.0, i32 noundef %rval.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp96 = icmp slt i32 %call.i.i, 0
  br i1 %cmp96, label %do.end100, label %for.cond18

do.end100:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.72, i32 noundef %add.0, i32 noundef %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end100, %do.end82, %do.end76, %do.end59, %do.end50, %do.end29, %for.cond18.cleanup_crit_edge, %do.end15, %for.cond18.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ -524, %do.end82 ], [ -524, %do.end76 ], [ %call.i.i, %do.end100 ], [ -524, %do.end59 ], [ -524, %do.end50 ], [ -524, %do.end29 ], [ -524, %do.end15 ], [ 0, %for.cond18.preheader.cleanup_crit_edge ], [ 0, %for.cond18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 225)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 225)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !301, !302, !303, !305, !306, !307, !309, !310, !311, !312, !314, !316, !318, !320, !321, !322, !323, !325, !326, !328, !329, !330, !332, !333, !334, !336, !338, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !362, !363, !365, !366, !367, !369, !370, !371, !373, !374, !376, !377, !379, !380, !382, !383, !385, !386, !388, !389, !391, !392, !394, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441}
!llvm.module.flags = !{!443, !444, !445, !446, !447, !448, !449, !450}
!llvm.ident = !{!451}

!0 = !{ptr @__initcall__kmod_pinctrl_palmas__295_1059_palmas_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_palmas__295_1059_palmas_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1059, i32 1}
!2 = !{ptr @__exitcall_palmas_pinctrl_driver_exit, !1, !"__exitcall_palmas_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1061, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1062, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias298, !8, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1063, i32 1}
!9 = !{ptr @__UNIQUE_ID_file299, !10, !"__UNIQUE_ID_file299", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1064, i32 1}
!11 = !{ptr @__UNIQUE_ID_license300, !10, !"__UNIQUE_ID_license300", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1053, i32 11}
!14 = !{ptr @palmas_pinctrl_driver, !15, !"palmas_pinctrl_driver", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1051, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1009, i32 6}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1011, i32 6}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1034, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @palmas_pinctrl_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @palmas_pinctrl_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 1045, i32 3}
!30 = !{ptr @palmas_pinctrl_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @palmas_pinctrl_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @tps65913_pinctrl_data, !33, !"tps65913_pinctrl_data", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 980, i32 35}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 524, i32 2}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 525, i32 2}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 526, i32 2}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 527, i32 2}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 528, i32 2}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 529, i32 2}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 530, i32 2}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 531, i32 2}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 532, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 533, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 534, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 535, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 536, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 537, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 538, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 539, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 540, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 541, i32 2}
!70 = !{ptr @tps65913_pingroups, !71, !"tps65913_pingroups", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 523, i32 37}
!72 = !{ptr @pin_gpio0_info, !73, !"pin_gpio0_info", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 454, i32 1}
!74 = !{ptr @pud_gpio0_info, !75, !"pud_gpio0_info", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 414, i32 1}
!76 = !{ptr @pin_id_info, !77, !"pin_id_info", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 470, i32 1}
!78 = !{ptr @pud_id_info, !79, !"pud_id_info", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 413, i32 1}
!80 = !{ptr @pin_gpio1_info, !81, !"pin_gpio1_info", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 455, i32 1}
!82 = !{ptr @pud_gpio1_info, !83, !"pud_gpio1_info", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 415, i32 1}
!84 = !{ptr @od_gpio1_info, !85, !"od_gpio1_info", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 437, i32 1}
!86 = !{ptr @pin_vbus_det_info, !87, !"pin_vbus_det_info", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 494, i32 1}
!88 = !{ptr @od_vbus_det_info, !89, !"od_vbus_det_info", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 445, i32 1}
!90 = !{ptr @pin_led1_info, !91, !"pin_led1_info", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 471, i32 1}
!92 = !{ptr @pin_pwm1_info, !93, !"pin_pwm1_info", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 477, i32 1}
!94 = !{ptr @od_pwm1_info, !95, !"od_pwm1_info", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 443, i32 1}
!96 = !{ptr @pin_gpio2_info, !97, !"pin_gpio2_info", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 456, i32 1}
!98 = !{ptr @pud_gpio2_info, !99, !"pud_gpio2_info", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 416, i32 1}
!100 = !{ptr @od_gpio2_info, !101, !"od_gpio2_info", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 438, i32 1}
!102 = !{ptr @pin_regen_info, !103, !"pin_regen_info", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 473, i32 1}
!104 = !{ptr @pin_led2_info, !105, !"pin_led2_info", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 472, i32 1}
!106 = !{ptr @pin_pwm2_info, !107, !"pin_pwm2_info", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 478, i32 1}
!108 = !{ptr @od_pwm2_info, !109, !"od_pwm2_info", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 444, i32 1}
!110 = !{ptr @pin_gpio3_info, !111, !"pin_gpio3_info", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 457, i32 1}
!112 = !{ptr @pud_gpio3_info, !113, !"pud_gpio3_info", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 417, i32 1}
!114 = !{ptr @pin_chrg_det_info, !115, !"pin_chrg_det_info", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 480, i32 1}
!116 = !{ptr @pud_chrg_det_info, !117, !"pud_chrg_det_info", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 410, i32 1}
!118 = !{ptr @pin_gpio4_info, !119, !"pin_gpio4_info", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 458, i32 1}
!120 = !{ptr @pud_gpio4_info, !121, !"pud_gpio4_info", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 418, i32 1}
!122 = !{ptr @pin_sysen1_info, !123, !"pin_sysen1_info", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 474, i32 1}
!124 = !{ptr @pin_gpio5_info, !125, !"pin_gpio5_info", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 459, i32 1}
!126 = !{ptr @pud_gpio5_info, !127, !"pud_gpio5_info", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 419, i32 1}
!128 = !{ptr @od_gpio5_info, !129, !"od_gpio5_info", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 439, i32 1}
!130 = !{ptr @pin_clk32kgaudio_info, !131, !"pin_clk32kgaudio_info", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 490, i32 1}
!132 = !{ptr @pin_usb_psel_info, !133, !"pin_usb_psel_info", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 491, i32 1}
!134 = !{ptr @pin_gpio6_info, !135, !"pin_gpio6_info", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 460, i32 1}
!136 = !{ptr @pud_gpio6_info, !137, !"pud_gpio6_info", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 420, i32 1}
!138 = !{ptr @pin_sysen2_info, !139, !"pin_sysen2_info", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 475, i32 1}
!140 = !{ptr @pin_gpio7_info, !141, !"pin_gpio7_info", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 461, i32 1}
!142 = !{ptr @pud_gpio7_info, !143, !"pud_gpio7_info", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 421, i32 1}
!144 = !{ptr @pin_msecure_info, !145, !"pin_msecure_info", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 482, i32 1}
!146 = !{ptr @pud_msecure_info, !147, !"pud_msecure_info", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 412, i32 1}
!148 = !{ptr @pin_pwrhold_info, !149, !"pin_pwrhold_info", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 481, i32 1}
!150 = !{ptr @pud_pwrhold_info, !151, !"pud_pwrhold_info", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 411, i32 1}
!152 = !{ptr @pin_vac_info, !153, !"pin_vac_info", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 492, i32 1}
!154 = !{ptr @pin_vacok_info, !155, !"pin_vacok_info", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 479, i32 1}
!156 = !{ptr @pud_vacok_info, !157, !"pud_vacok_info", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 409, i32 1}
!158 = !{ptr @pin_powergood_info, !159, !"pin_powergood_info", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 493, i32 1}
!160 = !{ptr @pin_nreswarm_info, !161, !"pin_nreswarm_info", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 483, i32 1}
!162 = !{ptr @pud_nreswarm_info, !163, !"pud_nreswarm_info", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 402, i32 1}
!164 = !{ptr @pin_pwrdown_info, !165, !"pin_pwrdown_info", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 484, i32 1}
!166 = !{ptr @pud_pwrdown_info, !167, !"pud_pwrdown_info", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 403, i32 1}
!168 = !{ptr @pin_gpadc_start_info, !169, !"pin_gpadc_start_info", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 485, i32 1}
!170 = !{ptr @pud_gpadc_start_info, !171, !"pud_gpadc_start_info", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 404, i32 1}
!172 = !{ptr @pin_reset_in_info, !173, !"pin_reset_in_info", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 486, i32 1}
!174 = !{ptr @pud_reset_in_info, !175, !"pud_reset_in_info", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 405, i32 1}
!176 = !{ptr @pin_nsleep_info, !177, !"pin_nsleep_info", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 487, i32 1}
!178 = !{ptr @pud_nsleep_info, !179, !"pud_nsleep_info", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 406, i32 1}
!180 = !{ptr @pin_enable1_info, !181, !"pin_enable1_info", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 488, i32 1}
!182 = !{ptr @pud_enable1_info, !183, !"pud_enable1_info", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 407, i32 1}
!184 = !{ptr @pin_enable2_info, !185, !"pin_enable2_info", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 489, i32 1}
!186 = !{ptr @pud_enable2_info, !187, !"pud_enable2_info", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 408, i32 1}
!188 = !{ptr @pin_int_info, !189, !"pin_int_info", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 476, i32 1}
!190 = !{ptr @od_int_info, !191, !"od_int_info", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 442, i32 1}
!192 = !{ptr @.str.29, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 97, i32 2}
!194 = !{ptr @.str.30, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 98, i32 2}
!196 = !{ptr @.str.31, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 99, i32 2}
!198 = !{ptr @.str.32, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 100, i32 2}
!200 = !{ptr @.str.33, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 101, i32 2}
!202 = !{ptr @.str.34, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 102, i32 2}
!204 = !{ptr @.str.35, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 103, i32 2}
!206 = !{ptr @.str.36, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 104, i32 2}
!208 = !{ptr @palmas_pins_desc, !209, !"palmas_pins_desc", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 88, i32 38}
!210 = !{ptr @.str.37, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 348, i32 2}
!212 = !{ptr @.str.38, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.39, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.40, !211, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.41, !211, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.42, !211, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.43, !211, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.44, !211, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.45, !211, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.46, !211, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.47, !211, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.48, !211, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.49, !211, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.50, !211, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.51, !211, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.52, !211, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.53, !211, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.54, !211, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.55, !211, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.56, !211, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.57, !211, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.58, !211, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.59, !211, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @palmas_pin_function, !235, !"palmas_pin_function", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 339, i32 41}
!236 = !{ptr @opt0_groups, !237, !"opt0_groups", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 117, i32 27}
!238 = !{ptr @opt1_groups, !239, !"opt1_groups", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 146, i32 27}
!240 = !{ptr @opt2_groups, !241, !"opt2_groups", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 165, i32 27}
!242 = !{ptr @opt3_groups, !243, !"opt3_groups", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 172, i32 27}
!244 = !{ptr @gpio_groups, !245, !"gpio_groups", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 177, i32 27}
!246 = !{ptr @led_groups, !247, !"led_groups", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 196, i32 27}
!248 = !{ptr @pwm_groups, !249, !"pwm_groups", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 201, i32 27}
!250 = !{ptr @regen_groups, !251, !"regen_groups", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 206, i32 27}
!252 = !{ptr @sysen_groups, !253, !"sysen_groups", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 210, i32 27}
!254 = !{ptr @clk32kgaudio_groups, !255, !"clk32kgaudio_groups", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 215, i32 27}
!256 = !{ptr @id_groups, !257, !"id_groups", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 219, i32 27}
!258 = !{ptr @vbus_det_groups, !259, !"vbus_det_groups", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 223, i32 27}
!260 = !{ptr @chrg_det_groups, !261, !"chrg_det_groups", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 227, i32 27}
!262 = !{ptr @vac_groups, !263, !"vac_groups", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 231, i32 27}
!264 = !{ptr @vacok_groups, !265, !"vacok_groups", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 235, i32 27}
!266 = !{ptr @powergood_groups, !267, !"powergood_groups", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 239, i32 27}
!268 = !{ptr @usb_psel_groups, !269, !"usb_psel_groups", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 243, i32 27}
!270 = !{ptr @msecure_groups, !271, !"msecure_groups", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 248, i32 27}
!272 = !{ptr @pwrhold_groups, !273, !"pwrhold_groups", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 252, i32 27}
!274 = !{ptr @int_groups, !275, !"int_groups", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 256, i32 27}
!276 = !{ptr @nreswarm_groups, !277, !"nreswarm_groups", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 260, i32 27}
!278 = !{ptr @simrsto_groups, !279, !"simrsto_groups", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 264, i32 27}
!280 = !{ptr @simrsti_groups, !281, !"simrsti_groups", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 268, i32 27}
!282 = !{ptr @low_vbat_groups, !283, !"low_vbat_groups", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 273, i32 27}
!284 = !{ptr @wireless_chrg1_groups, !285, !"wireless_chrg1_groups", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 277, i32 27}
!286 = !{ptr @rcm_groups, !287, !"rcm_groups", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 281, i32 27}
!288 = !{ptr @pwrdown_groups, !289, !"pwrdown_groups", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 285, i32 27}
!290 = !{ptr @gpadc_start_groups, !291, !"gpadc_start_groups", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 289, i32 27}
!292 = !{ptr @reset_in_groups, !293, !"reset_in_groups", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 293, i32 27}
!294 = !{ptr @nsleep_groups, !295, !"nsleep_groups", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 297, i32 27}
!296 = !{ptr @enable_groups, !297, !"enable_groups", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 301, i32 27}
!298 = !{ptr @.str.60, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 610, i32 3}
!300 = !{ptr @.str.61, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @palmas_pinctrl_set_dvfs1._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @palmas_pinctrl_set_dvfs1._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.62, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 625, i32 3}
!305 = !{ptr @palmas_pinctrl_set_dvfs2._entry, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @palmas_pinctrl_set_dvfs2._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.63, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 589, i32 4}
!309 = !{ptr @.str.64, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @palmas_pinctrl_get_pin_mux._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @palmas_pinctrl_get_pin_mux._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @palmas_pinctrl_desc, !313, !"palmas_pinctrl_desc", i1 false, i1 false}
!313 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 968, i32 28}
!314 = !{ptr @palmas_pinctrl_ops, !315, !"palmas_pinctrl_ops", i1 false, i1 false}
!315 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 654, i32 33}
!316 = !{ptr @palmas_pinmux_ops, !317, !"palmas_pinmux_ops", i1 false, i1 false}
!317 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 742, i32 32}
!318 = !{ptr @.str.65, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 702, i32 4}
!320 = !{ptr @.str.66, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @palmas_pinctrl_set_mux._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @palmas_pinctrl_set_mux._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @palmas_pinctrl_set_mux._entry.67, !324, !"_entry", i1 false, i1 false}
!324 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 715, i32 4}
!325 = !{ptr @palmas_pinctrl_set_mux._entry_ptr.68, !324, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.69, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 727, i32 2}
!328 = !{ptr @.str.70, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @palmas_pinctrl_set_mux.__UNIQUE_ID_ddebug293, !327, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!330 = !{ptr @.str.72, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 734, i32 3}
!332 = !{ptr @palmas_pinctrl_set_mux._entry.71, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @palmas_pinctrl_set_mux._entry_ptr.73, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @palmas_pinconf_ops, !335, !"palmas_pinconf_ops", i1 false, i1 false}
!335 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 963, i32 33}
!336 = !{ptr @.str.74, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 769, i32 3}
!338 = !{ptr @.str.75, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @palmas_pinconf_get._entry, !337, !"_entry", i1 false, i1 false}
!340 = !{ptr @palmas_pinconf_get._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.77, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 777, i32 3}
!343 = !{ptr @palmas_pinconf_get._entry.76, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @palmas_pinconf_get._entry_ptr.78, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.80, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 787, i32 4}
!347 = !{ptr @palmas_pinconf_get._entry.79, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @palmas_pinconf_get._entry_ptr.81, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.83, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 796, i32 4}
!351 = !{ptr @palmas_pinconf_get._entry.82, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @palmas_pinconf_get._entry_ptr.84, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.86, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 819, i32 4}
!355 = !{ptr @palmas_pinconf_get._entry.85, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @palmas_pinconf_get._entry_ptr.87, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @palmas_pinconf_get._entry.88, !358, !"_entry", i1 false, i1 false}
!358 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 828, i32 4}
!359 = !{ptr @palmas_pinconf_get._entry_ptr.89, !358, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @palmas_pinconf_get._entry.90, !361, !"_entry", i1 false, i1 false}
!361 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 841, i32 4}
!362 = !{ptr @palmas_pinconf_get._entry_ptr.91, !361, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.93, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 849, i32 3}
!365 = !{ptr @palmas_pinconf_get._entry.92, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @palmas_pinconf_get._entry_ptr.94, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.95, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 878, i32 3}
!369 = !{ptr @palmas_pinconf_set._entry, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @palmas_pinconf_set._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @palmas_pinconf_set._entry.96, !372, !"_entry", i1 false, i1 false}
!372 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 886, i32 3}
!373 = !{ptr @palmas_pinconf_set._entry_ptr.97, !372, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @palmas_pinconf_set._entry.98, !375, !"_entry", i1 false, i1 false}
!375 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 900, i32 5}
!376 = !{ptr @palmas_pinconf_set._entry_ptr.99, !375, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @palmas_pinconf_set._entry.100, !378, !"_entry", i1 false, i1 false}
!378 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 917, i32 5}
!379 = !{ptr @palmas_pinconf_set._entry_ptr.101, !378, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @palmas_pinconf_set._entry.102, !381, !"_entry", i1 false, i1 false}
!381 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 926, i32 5}
!382 = !{ptr @palmas_pinconf_set._entry_ptr.103, !381, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @palmas_pinconf_set._entry.104, !384, !"_entry", i1 false, i1 false}
!384 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 939, i32 5}
!385 = !{ptr @palmas_pinconf_set._entry_ptr.105, !384, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @palmas_pinconf_set._entry.106, !387, !"_entry", i1 false, i1 false}
!387 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 946, i32 4}
!388 = !{ptr @palmas_pinconf_set._entry_ptr.107, !387, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.108, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 950, i32 3}
!391 = !{ptr @palmas_pinconf_set.__UNIQUE_ID_ddebug294, !390, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!392 = !{ptr @palmas_pinconf_set._entry.109, !393, !"_entry", i1 false, i1 false}
!393 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 954, i32 4}
!394 = !{ptr @palmas_pinconf_set._entry_ptr.110, !393, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @palmas_pinctrl_of_match, !396, !"palmas_pinctrl_of_match", i1 false, i1 false}
!396 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 990, i32 34}
!397 = !{ptr @tps80036_pinctrl_data, !398, !"tps80036_pinctrl_data", i1 false, i1 false}
!398 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 985, i32 35}
!399 = !{ptr @tps80036_pingroups, !400, !"tps80036_pingroups", i1 false, i1 false}
!400 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 544, i32 37}
!401 = !{ptr @pin_gpio8_info, !402, !"pin_gpio8_info", i1 false, i1 false}
!402 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 462, i32 1}
!403 = !{ptr @pin_sim1rsti_info, !404, !"pin_sim1rsti_info", i1 false, i1 false}
!404 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 495, i32 1}
!405 = !{ptr @pin_gpio9_info, !406, !"pin_gpio9_info", i1 false, i1 false}
!406 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 463, i32 1}
!407 = !{ptr @pud_gpio9_info, !408, !"pud_gpio9_info", i1 false, i1 false}
!408 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 422, i32 1}
!409 = !{ptr @pin_low_vbat_info, !410, !"pin_low_vbat_info", i1 false, i1 false}
!410 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 496, i32 1}
!411 = !{ptr @pin_gpio10_info, !412, !"pin_gpio10_info", i1 false, i1 false}
!412 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 464, i32 1}
!413 = !{ptr @pud_gpio10_info, !414, !"pud_gpio10_info", i1 false, i1 false}
!414 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 423, i32 1}
!415 = !{ptr @od_gpio10_info, !416, !"od_gpio10_info", i1 false, i1 false}
!416 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 440, i32 1}
!417 = !{ptr @pin_wireless_chrg1_info, !418, !"pin_wireless_chrg1_info", i1 false, i1 false}
!418 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 500, i32 1}
!419 = !{ptr @pin_gpio11_info, !420, !"pin_gpio11_info", i1 false, i1 false}
!420 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 465, i32 1}
!421 = !{ptr @pud_gpio11_info, !422, !"pud_gpio11_info", i1 false, i1 false}
!422 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 424, i32 1}
!423 = !{ptr @pin_rcm_info, !424, !"pin_rcm_info", i1 false, i1 false}
!424 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 497, i32 1}
!425 = !{ptr @pin_gpio12_info, !426, !"pin_gpio12_info", i1 false, i1 false}
!426 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 466, i32 1}
!427 = !{ptr @pin_sim2rsto_info, !428, !"pin_sim2rsto_info", i1 false, i1 false}
!428 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 498, i32 1}
!429 = !{ptr @pin_gpio13_info, !430, !"pin_gpio13_info", i1 false, i1 false}
!430 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 467, i32 1}
!431 = !{ptr @pud_gpio13_info, !432, !"pud_gpio13_info", i1 false, i1 false}
!432 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 425, i32 1}
!433 = !{ptr @od_gpio13_info, !434, !"od_gpio13_info", i1 false, i1 false}
!434 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 441, i32 1}
!435 = !{ptr @pin_gpio14_info, !436, !"pin_gpio14_info", i1 false, i1 false}
!436 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 468, i32 1}
!437 = !{ptr @pud_gpio14_info, !438, !"pud_gpio14_info", i1 false, i1 false}
!438 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 426, i32 1}
!439 = !{ptr @pin_gpio15_info, !440, !"pin_gpio15_info", i1 false, i1 false}
!440 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 469, i32 1}
!441 = !{ptr @pin_sim2rsti_info, !442, !"pin_sim2rsti_info", i1 false, i1 false}
!442 = !{!"../drivers/pinctrl/pinctrl-palmas.c", i32 499, i32 1}
!443 = !{i32 1, !"wchar_size", i32 2}
!444 = !{i32 1, !"min_enum_size", i32 4}
!445 = !{i32 8, !"branch-target-enforcement", i32 0}
!446 = !{i32 8, !"sign-return-address", i32 0}
!447 = !{i32 8, !"sign-return-address-all", i32 0}
!448 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!449 = !{i32 7, !"uwtable", i32 1}
!450 = !{i32 7, !"frame-pointer", i32 2}
!451 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!452 = !{!"auto-init"}
!453 = !{!"branch_weights", i32 2000, i32 1}
!454 = !{i64 2148788108, i64 2148788113, i64 2148788126, i64 2148788170, i64 2148788204, i64 2148788225}
