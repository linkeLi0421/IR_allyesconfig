; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-bcm6368.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-bcm6368.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bcm63xx_pinctrl_soc = type { ptr, ptr, ptr, i32, i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.bcm6368_pingroup = type { ptr, ptr, i32 }
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
%struct.bcm63xx_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.bcm6368_function = type { ptr, ptr, i32, i24 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }

@__initcall__kmod_pinctrl_bcm6368__223_523_bcm6368_pinctrl_driver_init6 = internal global ptr @bcm6368_pinctrl_driver_init, section ".initcall6.init", align 4
@bcm6368_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm6368_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm6368_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm6368-pinctrl\00", [16 x i8] zeroinitializer }, align 32
@bcm6368_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6368-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm6368_soc = internal constant { %struct.bcm63xx_pinctrl_soc, [44 x i8] } { %struct.bcm63xx_pinctrl_soc { ptr @bcm6368_pctl_ops, ptr @bcm6368_pmx_ops, ptr @bcm6368_pins, i32 38, i32 38 }, [44 x i8] zeroinitializer }, align 32
@bcm6368_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @bcm6368_pinctrl_get_group_count, ptr @bcm6368_pinctrl_get_group_name, ptr @bcm6368_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@bcm6368_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @bcm6368_pinctrl_get_func_count, ptr @bcm6368_pinctrl_get_func_name, ptr @bcm6368_pinctrl_get_groups, ptr @bcm6368_pinctrl_set_mux, ptr @bcm6368_gpio_request_enable, ptr null, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@bcm6368_pins = internal constant { [38 x %struct.pinctrl_pin_desc], [120 x i8] } { [38 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.1, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.2, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.3, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.4, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.5, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.31, ptr inttoptr (i32 1 to ptr) }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.32, ptr inttoptr (i32 1 to ptr) }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.66, ptr inttoptr (i32 1 to ptr) }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.67, ptr inttoptr (i32 1 to ptr) }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.71, ptr null }], [120 x i8] zeroinitializer }, align 32
@bcm6368_groups = internal constant { [33 x %struct.bcm6368_pingroup], [116 x i8] } { [33 x %struct.bcm6368_pingroup] [%struct.bcm6368_pingroup { ptr @.str.1, ptr @gpio0_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.2, ptr @gpio1_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.3, ptr @gpio2_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.4, ptr @gpio3_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.5, ptr @gpio4_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.6, ptr @gpio5_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.7, ptr @gpio6_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.8, ptr @gpio7_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.9, ptr @gpio8_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.10, ptr @gpio9_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.11, ptr @gpio10_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.12, ptr @gpio11_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.13, ptr @gpio12_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.14, ptr @gpio13_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.15, ptr @gpio14_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.16, ptr @gpio15_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.17, ptr @gpio16_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.18, ptr @gpio17_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.19, ptr @gpio18_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.20, ptr @gpio19_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.21, ptr @gpio20_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.22, ptr @gpio21_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.23, ptr @gpio22_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.24, ptr @gpio23_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.25, ptr @gpio24_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.26, ptr @gpio25_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.27, ptr @gpio26_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.28, ptr @gpio27_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.29, ptr @gpio28_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.30, ptr @gpio29_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.31, ptr @gpio30_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.32, ptr @gpio31_pins, i32 1 }, %struct.bcm6368_pingroup { ptr @.str.33, ptr @uart1_grp_pins, i32 4 }], [116 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@gpio0_pins = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@gpio1_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@gpio2_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@gpio3_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 3], [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@gpio4_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@gpio5_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 5], [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@gpio6_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 6], [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@gpio7_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 7], [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@gpio8_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 8], [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@gpio9_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 9], [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@gpio10_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 10], [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@gpio11_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 11], [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@gpio12_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 12], [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@gpio13_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 13], [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@gpio14_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 14], [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@gpio15_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 15], [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@gpio16_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 16], [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio17\00", [25 x i8] zeroinitializer }, align 32
@gpio17_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 17], [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio18\00", [25 x i8] zeroinitializer }, align 32
@gpio18_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 18], [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio19\00", [25 x i8] zeroinitializer }, align 32
@gpio19_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 19], [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio20\00", [25 x i8] zeroinitializer }, align 32
@gpio20_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 20], [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio21\00", [25 x i8] zeroinitializer }, align 32
@gpio21_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 21], [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio22\00", [25 x i8] zeroinitializer }, align 32
@gpio22_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 22], [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio23\00", [25 x i8] zeroinitializer }, align 32
@gpio23_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 23], [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio24\00", [25 x i8] zeroinitializer }, align 32
@gpio24_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 24], [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio25\00", [25 x i8] zeroinitializer }, align 32
@gpio25_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 25], [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio26\00", [25 x i8] zeroinitializer }, align 32
@gpio26_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 26], [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio27\00", [25 x i8] zeroinitializer }, align 32
@gpio27_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 27], [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio28\00", [25 x i8] zeroinitializer }, align 32
@gpio28_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 28], [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio29\00", [25 x i8] zeroinitializer }, align 32
@gpio29_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 29], [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio30\00", [25 x i8] zeroinitializer }, align 32
@gpio30_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 30], [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio31\00", [25 x i8] zeroinitializer }, align 32
@gpio31_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 31], [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_grp\00", [22 x i8] zeroinitializer }, align 32
@uart1_grp_pins = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 30, i32 31, i32 32, i32 33], [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"analog_afe_0\00", [19 x i8] zeroinitializer }, align 32
@analog_afe_0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.1], [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"analog_afe_1\00", [19 x i8] zeroinitializer }, align 32
@analog_afe_1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_irq\00", [24 x i8] zeroinitializer }, align 32
@sys_irq_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"serial_led_data\00", [16 x i8] zeroinitializer }, align 32
@serial_led_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.4], [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_led_clk\00", [17 x i8] zeroinitializer }, align 32
@serial_led_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.5], [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inet_led\00", [23 x i8] zeroinitializer }, align 32
@inet_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ephy0_led\00", [22 x i8] zeroinitializer }, align 32
@ephy0_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ephy1_led\00", [22 x i8] zeroinitializer }, align 32
@ephy1_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.8], [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ephy2_led\00", [22 x i8] zeroinitializer }, align 32
@ephy2_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.9], [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ephy3_led\00", [22 x i8] zeroinitializer }, align 32
@ephy3_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"robosw_led_data\00", [16 x i8] zeroinitializer }, align 32
@robosw_led_data_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.11], [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"robosw_led_clk\00", [17 x i8] zeroinitializer }, align 32
@robosw_led_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"robosw_led0\00", [20 x i8] zeroinitializer }, align 32
@robosw_led0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"robosw_led1\00", [20 x i8] zeroinitializer }, align 32
@robosw_led1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_device_led\00", [17 x i8] zeroinitializer }, align 32
@usb_device_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.15], [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci_req1\00", [23 x i8] zeroinitializer }, align 32
@pci_req1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.17], [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci_gnt1\00", [23 x i8] zeroinitializer }, align 32
@pci_gnt1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.18], [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci_intb\00", [23 x i8] zeroinitializer }, align 32
@pci_intb_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.19], [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci_req0\00", [23 x i8] zeroinitializer }, align 32
@pci_req0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.20], [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci_gnt0\00", [23 x i8] zeroinitializer }, align 32
@pci_gnt0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcmcia_cd1\00", [21 x i8] zeroinitializer }, align 32
@pcmcia_cd1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcmcia_cd2\00", [21 x i8] zeroinitializer }, align 32
@pcmcia_cd2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcmcia_vs1\00", [21 x i8] zeroinitializer }, align 32
@pcmcia_vs1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.25], [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcmcia_vs2\00", [21 x i8] zeroinitializer }, align 32
@pcmcia_vs2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ebi_cs2\00", [24 x i8] zeroinitializer }, align 32
@ebi_cs2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.27], [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ebi_cs3\00", [24 x i8] zeroinitializer }, align 32
@ebi_cs3_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_cs2\00", [24 x i8] zeroinitializer }, align 32
@spi_cs2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.29], [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_cs3\00", [24 x i8] zeroinitializer }, align 32
@spi_cs3_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.30], [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_cs4\00", [24 x i8] zeroinitializer }, align 32
@spi_cs4_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.31], [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_cs5\00", [24 x i8] zeroinitializer }, align 32
@spi_cs5_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.32], [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@bcm6368_funcs = internal constant { [31 x { ptr, ptr, i32, i8, i8, i8 }], [112 x i8] } { [31 x { ptr, ptr, i32, i8, i8, i8 }] [{ ptr, ptr, i32, i8, i8, i8 } { ptr @.str.34, ptr @analog_afe_0_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.35, ptr @analog_afe_1_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.36, ptr @sys_irq_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.37, ptr @serial_led_data_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.38, ptr @serial_led_clk_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.39, ptr @inet_led_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.40, ptr @ephy0_led_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.41, ptr @ephy1_led_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.42, ptr @ephy2_led_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.43, ptr @ephy3_led_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.44, ptr @robosw_led_data_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.45, ptr @robosw_led_clk_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.46, ptr @robosw_led0_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.47, ptr @robosw_led1_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.48, ptr @usb_device_led_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.49, ptr @pci_req1_groups, i32 1, i8 0, i8 0, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.50, ptr @pci_gnt1_groups, i32 1, i8 0, i8 0, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.51, ptr @pci_intb_groups, i32 1, i8 0, i8 0, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.52, ptr @pci_req0_groups, i32 1, i8 0, i8 0, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.53, ptr @pci_gnt0_groups, i32 1, i8 0, i8 0, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.54, ptr @pcmcia_cd1_groups, i32 1, i8 0, i8 0, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.55, ptr @pcmcia_cd2_groups, i32 1, i8 0, i8 0, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.56, ptr @pcmcia_vs1_groups, i32 1, i8 0, i8 0, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.57, ptr @pcmcia_vs2_groups, i32 1, i8 0, i8 0, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.58, ptr @ebi_cs2_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.59, ptr @ebi_cs3_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.60, ptr @spi_cs2_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.61, ptr @spi_cs3_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.62, ptr @spi_cs4_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.63, ptr @spi_cs5_groups, i32 1, i8 0, i8 1, i8 0 }, { ptr, ptr, i32, i8, i8, i8 } { ptr @.str.64, ptr @uart1_groups, i32 1, i8 0, i8 6, i8 32 }], [112 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio32\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio33\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio34\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio35\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio36\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio37\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"bcm6368_pinctrl_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 515, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 518, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"bcm6368_pinctrl_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 510, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"bcm6368_soc\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 477, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"bcm6368_pctl_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 460, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"bcm6368_pmx_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 468, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"bcm6368_pins\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 55, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"bcm6368_groups\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 137, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 138, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"gpio0_pins\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 96, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 139, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"gpio1_pins\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 97, i32 17 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 140, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"gpio2_pins\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 98, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 141, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [11 x i8] c"gpio3_pins\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 99, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 142, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [11 x i8] c"gpio4_pins\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 100, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 143, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [11 x i8] c"gpio5_pins\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 101, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 144, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [11 x i8] c"gpio6_pins\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 102, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 145, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [11 x i8] c"gpio7_pins\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 103, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 146, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"gpio8_pins\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 104, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 147, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"gpio9_pins\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 105, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 148, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"gpio10_pins\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 106, i32 17 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 149, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [12 x i8] c"gpio11_pins\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 107, i32 17 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 150, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [12 x i8] c"gpio12_pins\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 108, i32 17 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 151, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"gpio13_pins\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 109, i32 17 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 152, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"gpio14_pins\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 110, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 153, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"gpio15_pins\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 111, i32 17 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 154, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [12 x i8] c"gpio16_pins\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 112, i32 17 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 155, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [12 x i8] c"gpio17_pins\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 113, i32 17 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 156, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [12 x i8] c"gpio18_pins\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 114, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 157, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [12 x i8] c"gpio19_pins\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 115, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 158, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [12 x i8] c"gpio20_pins\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 116, i32 17 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 159, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [12 x i8] c"gpio21_pins\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 117, i32 17 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 160, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [12 x i8] c"gpio22_pins\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 118, i32 17 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 161, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [12 x i8] c"gpio23_pins\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 119, i32 17 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 162, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [12 x i8] c"gpio24_pins\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 120, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 163, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [12 x i8] c"gpio25_pins\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 121, i32 17 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 164, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [12 x i8] c"gpio26_pins\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 122, i32 17 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 165, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [12 x i8] c"gpio27_pins\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 123, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 166, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [12 x i8] c"gpio28_pins\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 124, i32 17 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 167, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [12 x i8] c"gpio29_pins\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 125, i32 17 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 168, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [12 x i8] c"gpio30_pins\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 126, i32 17 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 169, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [12 x i8] c"gpio31_pins\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 127, i32 17 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 170, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [15 x i8] c"uart1_grp_pins\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 128, i32 17 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 315, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [20 x i8] c"analog_afe_0_groups\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 173, i32 27 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 316, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c"analog_afe_1_groups\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 177, i32 27 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 317, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [15 x i8] c"sys_irq_groups\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 181, i32 27 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 318, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [23 x i8] c"serial_led_data_groups\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 185, i32 27 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 319, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [22 x i8] c"serial_led_clk_groups\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 189, i32 27 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 320, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [16 x i8] c"inet_led_groups\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 193, i32 27 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 321, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"ephy0_led_groups\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 197, i32 27 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 322, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [17 x i8] c"ephy1_led_groups\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 201, i32 27 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 323, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"ephy2_led_groups\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 205, i32 27 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 324, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"ephy3_led_groups\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 209, i32 27 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 325, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [23 x i8] c"robosw_led_data_groups\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 213, i32 27 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 326, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [22 x i8] c"robosw_led_clk_groups\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 217, i32 27 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 327, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [19 x i8] c"robosw_led0_groups\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 221, i32 27 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 328, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [19 x i8] c"robosw_led1_groups\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 225, i32 27 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 329, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [22 x i8] c"usb_device_led_groups\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 229, i32 27 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 330, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [16 x i8] c"pci_req1_groups\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 233, i32 27 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 331, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [16 x i8] c"pci_gnt1_groups\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 237, i32 27 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 332, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [16 x i8] c"pci_intb_groups\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 241, i32 27 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 333, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [16 x i8] c"pci_req0_groups\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 245, i32 27 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 334, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [16 x i8] c"pci_gnt0_groups\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 249, i32 27 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 335, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [18 x i8] c"pcmcia_cd1_groups\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 253, i32 27 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 336, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [18 x i8] c"pcmcia_cd2_groups\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 257, i32 27 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 337, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant [18 x i8] c"pcmcia_vs1_groups\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 261, i32 27 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 338, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [18 x i8] c"pcmcia_vs2_groups\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 265, i32 27 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 339, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [15 x i8] c"ebi_cs2_groups\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 269, i32 27 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 340, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [15 x i8] c"ebi_cs3_groups\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 273, i32 27 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 341, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [15 x i8] c"spi_cs2_groups\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 277, i32 27 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 342, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [15 x i8] c"spi_cs3_groups\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 281, i32 27 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 343, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [15 x i8] c"spi_cs4_groups\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 285, i32 27 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 344, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [15 x i8] c"spi_cs5_groups\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 289, i32 27 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 345, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant [13 x i8] c"uart1_groups\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 293, i32 27 }
@___asan_gen_.480 = private unnamed_addr constant [14 x i8] c"bcm6368_funcs\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 314, i32 38 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 88, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 89, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 90, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 91, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 92, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.499 = private constant [41 x i8] c"../drivers/pinctrl/bcm/pinctrl-bcm6368.c\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 93, i32 2 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__initcall__kmod_pinctrl_bcm6368__223_523_bcm6368_pinctrl_driver_init6, ptr @bcm6368_pinctrl_driver, ptr @.str, ptr @bcm6368_pinctrl_match, ptr @bcm6368_soc, ptr @bcm6368_pctl_ops, ptr @bcm6368_pmx_ops, ptr @bcm6368_pins, ptr @bcm6368_groups, ptr @.str.1, ptr @gpio0_pins, ptr @.str.2, ptr @gpio1_pins, ptr @.str.3, ptr @gpio2_pins, ptr @.str.4, ptr @gpio3_pins, ptr @.str.5, ptr @gpio4_pins, ptr @.str.6, ptr @gpio5_pins, ptr @.str.7, ptr @gpio6_pins, ptr @.str.8, ptr @gpio7_pins, ptr @.str.9, ptr @gpio8_pins, ptr @.str.10, ptr @gpio9_pins, ptr @.str.11, ptr @gpio10_pins, ptr @.str.12, ptr @gpio11_pins, ptr @.str.13, ptr @gpio12_pins, ptr @.str.14, ptr @gpio13_pins, ptr @.str.15, ptr @gpio14_pins, ptr @.str.16, ptr @gpio15_pins, ptr @.str.17, ptr @gpio16_pins, ptr @.str.18, ptr @gpio17_pins, ptr @.str.19, ptr @gpio18_pins, ptr @.str.20, ptr @gpio19_pins, ptr @.str.21, ptr @gpio20_pins, ptr @.str.22, ptr @gpio21_pins, ptr @.str.23, ptr @gpio22_pins, ptr @.str.24, ptr @gpio23_pins, ptr @.str.25, ptr @gpio24_pins, ptr @.str.26, ptr @gpio25_pins, ptr @.str.27, ptr @gpio26_pins, ptr @.str.28, ptr @gpio27_pins, ptr @.str.29, ptr @gpio28_pins, ptr @.str.30, ptr @gpio29_pins, ptr @.str.31, ptr @gpio30_pins, ptr @.str.32, ptr @gpio31_pins, ptr @.str.33, ptr @uart1_grp_pins, ptr @.str.34, ptr @analog_afe_0_groups, ptr @.str.35, ptr @analog_afe_1_groups, ptr @.str.36, ptr @sys_irq_groups, ptr @.str.37, ptr @serial_led_data_groups, ptr @.str.38, ptr @serial_led_clk_groups, ptr @.str.39, ptr @inet_led_groups, ptr @.str.40, ptr @ephy0_led_groups, ptr @.str.41, ptr @ephy1_led_groups, ptr @.str.42, ptr @ephy2_led_groups, ptr @.str.43, ptr @ephy3_led_groups, ptr @.str.44, ptr @robosw_led_data_groups, ptr @.str.45, ptr @robosw_led_clk_groups, ptr @.str.46, ptr @robosw_led0_groups, ptr @.str.47, ptr @robosw_led1_groups, ptr @.str.48, ptr @usb_device_led_groups, ptr @.str.49, ptr @pci_req1_groups, ptr @.str.50, ptr @pci_gnt1_groups, ptr @.str.51, ptr @pci_intb_groups, ptr @.str.52, ptr @pci_req0_groups, ptr @.str.53, ptr @pci_gnt0_groups, ptr @.str.54, ptr @pcmcia_cd1_groups, ptr @.str.55, ptr @pcmcia_cd2_groups, ptr @.str.56, ptr @pcmcia_vs1_groups, ptr @.str.57, ptr @pcmcia_vs2_groups, ptr @.str.58, ptr @ebi_cs2_groups, ptr @.str.59, ptr @ebi_cs3_groups, ptr @.str.60, ptr @spi_cs2_groups, ptr @.str.61, ptr @spi_cs3_groups, ptr @.str.62, ptr @spi_cs4_groups, ptr @.str.63, ptr @spi_cs5_groups, ptr @.str.64, ptr @uart1_groups, ptr @bcm6368_funcs, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6368_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6368_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6368_soc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6368_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6368_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6368_pins to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6368_groups to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio4_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio5_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio6_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio7_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio8_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio9_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio10_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio11_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio12_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio13_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio14_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio15_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio16_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio17_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio18_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio19_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio20_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio21_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio22_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio23_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio24_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio25_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio26_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio27_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio28_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio29_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio30_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio31_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_grp_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_afe_0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_afe_1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_irq_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_led_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_led_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy0_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy1_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy2_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ephy3_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @robosw_led_data_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @robosw_led_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @robosw_led0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @robosw_led1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_device_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_req1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_gnt1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_intb_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_req0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_gnt0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_cd1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_cd2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_vs1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_vs2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebi_cs2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebi_cs3_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_cs2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_cs3_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_cs4_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_cs5_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6368_funcs to i32), i32 496, i32 608, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6368_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm6368_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6368_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @bcm63xx_pinctrl_probe(ptr noundef %pdev, ptr noundef nonnull @bcm6368_soc, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %call7 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %3, [5 x i32] [i32 56, i32 0, i32 15, i32 0, i32 0]) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %call7 to i32
  %spec.select = select i1 %cmp.i, i32 %5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm63xx_pinctrl_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm6368_pinctrl_get_group_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm6368_pinctrl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [33 x %struct.bcm6368_pingroup], ptr @bcm6368_groups, i32 0, i32 %group
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm6368_pinctrl_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pins1 = getelementptr [33 x %struct.bcm6368_pingroup], ptr @bcm6368_groups, i32 0, i32 %group, i32 1
  %0 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins1, align 4
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pins, align 4
  %num_pins3 = getelementptr [33 x %struct.bcm6368_pingroup], ptr @bcm6368_groups, i32 0, i32 %group, i32 2
  %3 = ptrtoint ptr %num_pins3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pins3, align 4
  %5 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm6368_pinctrl_get_func_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm6368_pinctrl_get_func_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [31 x %struct.bcm6368_function], ptr @bcm6368_funcs, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm6368_pinctrl_get_groups(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %groups1 = getelementptr [31 x %struct.bcm6368_function], ptr @bcm6368_funcs, i32 0, i32 %selector, i32 1
  %0 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups1, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %num_groups3 = getelementptr [31 x %struct.bcm6368_function], ptr @bcm6368_funcs, i32 0, i32 %selector, i32 2
  %3 = ptrtoint ptr %num_groups3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_groups3, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6368_pinctrl_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %driver_data = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %basemode = getelementptr [31 x %struct.bcm6368_function], ptr @bcm6368_funcs, i32 0, i32 %selector, i32 3
  %2 = ptrtoint ptr %basemode to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %basemode, align 4
  %3 = and i32 %bf.load, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %num_pins = getelementptr [33 x %struct.bcm6368_pingroup], ptr @bcm6368_groups, i32 0, i32 %group, i32 2
  %4 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pins, align 4
  %pins = getelementptr [33 x %struct.bcm6368_pingroup], ptr @bcm6368_groups, i32 0, i32 %group, i32 1
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %mask.077 = phi i32 [ 0, %for.body.lr.ph ], [ %mask.1, %for.body.for.body_crit_edge ]
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %7, i32 %i.076
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp3 = icmp slt i32 %9, 32
  %shl = shl nuw i32 1, %9
  %or = select i1 %cmp3, i32 %shl, i32 0
  %mask.1 = or i32 %or, %mask.077
  %inc = add nuw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 24, i32 noundef %mask.1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %bf.lshr8 = lshr i32 %bf.load, 13
  %bf.clear9 = and i32 %bf.lshr8, 7
  %call.i72 = tail call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef %bf.clear9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.body27.lr.ph

if.else:                                          ; preds = %entry
  %pins11 = getelementptr [33 x %struct.bcm6368_pingroup], ptr @bcm6368_groups, i32 0, i32 %group, i32 1
  %14 = ptrtoint ptr %pins11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pins11, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = and i32 %17, 1073741823
  %19 = add nsw i32 %18, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %19)
  %tobool14.not = icmp ult i32 %19, -4
  br i1 %tobool14.not, label %if.else.if.end18_crit_edge, label %if.then15

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i73 = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.else.if.end18_crit_edge
  %regs19 = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %regs19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs19, align 4
  %shl20 = shl nuw i32 1, %17
  %call.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 24, i32 noundef %shl20, i32 noundef %shl20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.body27.lr.ph

for.body27.lr.ph:                                 ; preds = %if.end18, %for.end
  %num_pins25 = getelementptr [33 x %struct.bcm6368_pingroup], ptr @bcm6368_groups, i32 0, i32 %group, i32 2
  %24 = ptrtoint ptr %num_pins25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_pins25, align 4
  %bf.lshr34 = lshr i32 %bf.load, 16
  %umax81 = call i32 @llvm.umax.i32(i32 %25, i32 1)
  br label %for.body27

for.body27:                                       ; preds = %if.end42.for.body27_crit_edge, %for.body27.lr.ph
  %pin.079 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc44, %if.end42.for.body27_crit_edge ]
  %arrayidx28 = getelementptr [38 x %struct.pinctrl_pin_desc], ptr @bcm6368_pins, i32 0, i32 %pin.079
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx28, align 4
  %call29 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %pctldev, i32 noundef %27) #7
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %for.body27.if.end42_crit_edge, label %if.then31

for.body27.if.end42_crit_edge:                    ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then31:                                        ; preds = %for.body27
  %gc32 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call29, i32 0, i32 7
  %28 = ptrtoint ptr %gc32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gc32, align 4
  %shl35 = shl nuw i32 1, %pin.079
  %and = and i32 %shl35, %bf.lshr34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.else39, label %if.then37

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %direction_output, align 4
  %call38 = tail call i32 %31(ptr noundef %29, i32 noundef %27, i32 noundef 0) #7
  br label %if.end42

if.else39:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %29, i32 0, i32 8
  %32 = ptrtoint ptr %direction_input to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %direction_input, align 4
  %call40 = tail call i32 %33(ptr noundef %29, i32 noundef %27) #7
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then37, %for.body27.if.end42_crit_edge
  %inc44 = add nuw i32 %pin.079, 1
  %exitcond82.not = icmp eq i32 %inc44, %umax81
  br i1 %exitcond82.not, label %for.end45, label %if.end42.for.body27_crit_edge

if.end42.for.body27_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27

for.end45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6368_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %driver_data = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %offset)
  %cmp = icmp ugt i32 %offset, 31
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %offset, 1073741823
  %3 = add nsw i32 %2, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %3)
  %tobool.not = icmp ult i32 %3, -4
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then8_crit_edge

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %regs = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %shl = shl nuw i32 1, %offset
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 24, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %offset)
  %tobool7.not = icmp ult i32 %offset, 30
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end4.if.then8_crit_edge

if.end4.if.then8_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end4.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i17 = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286}
!llvm.module.flags = !{!288, !289, !290, !291, !292, !293, !294, !295}
!llvm.ident = !{!296}

!0 = !{ptr @__initcall__kmod_pinctrl_bcm6368__223_523_bcm6368_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_bcm6368__223_523_bcm6368_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 523, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 518, i32 11}
!4 = !{ptr @bcm6368_pinctrl_driver, !5, !"bcm6368_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 515, i32 31}
!6 = !{ptr @bcm6368_soc, !7, !"bcm6368_soc", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 477, i32 41}
!8 = !{ptr @bcm6368_pctl_ops, !9, !"bcm6368_pctl_ops", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 460, i32 33}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 138, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 139, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 140, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 141, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 142, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 143, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 144, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 145, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 146, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 147, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 148, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 149, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 150, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 151, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 152, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 153, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 154, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 155, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 156, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 157, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 158, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 159, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 160, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 161, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 162, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 163, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 164, i32 2}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 165, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 166, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 167, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 168, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 169, i32 2}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 170, i32 2}
!76 = !{ptr @bcm6368_groups, !77, !"bcm6368_groups", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 137, i32 32}
!78 = !{ptr @gpio0_pins, !79, !"gpio0_pins", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 96, i32 17}
!80 = !{ptr @gpio1_pins, !81, !"gpio1_pins", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 97, i32 17}
!82 = !{ptr @gpio2_pins, !83, !"gpio2_pins", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 98, i32 17}
!84 = !{ptr @gpio3_pins, !85, !"gpio3_pins", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 99, i32 17}
!86 = !{ptr @gpio4_pins, !87, !"gpio4_pins", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 100, i32 17}
!88 = !{ptr @gpio5_pins, !89, !"gpio5_pins", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 101, i32 17}
!90 = !{ptr @gpio6_pins, !91, !"gpio6_pins", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 102, i32 17}
!92 = !{ptr @gpio7_pins, !93, !"gpio7_pins", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 103, i32 17}
!94 = !{ptr @gpio8_pins, !95, !"gpio8_pins", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 104, i32 17}
!96 = !{ptr @gpio9_pins, !97, !"gpio9_pins", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 105, i32 17}
!98 = !{ptr @gpio10_pins, !99, !"gpio10_pins", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 106, i32 17}
!100 = !{ptr @gpio11_pins, !101, !"gpio11_pins", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 107, i32 17}
!102 = !{ptr @gpio12_pins, !103, !"gpio12_pins", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 108, i32 17}
!104 = !{ptr @gpio13_pins, !105, !"gpio13_pins", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 109, i32 17}
!106 = !{ptr @gpio14_pins, !107, !"gpio14_pins", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 110, i32 17}
!108 = !{ptr @gpio15_pins, !109, !"gpio15_pins", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 111, i32 17}
!110 = !{ptr @gpio16_pins, !111, !"gpio16_pins", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 112, i32 17}
!112 = !{ptr @gpio17_pins, !113, !"gpio17_pins", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 113, i32 17}
!114 = !{ptr @gpio18_pins, !115, !"gpio18_pins", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 114, i32 17}
!116 = !{ptr @gpio19_pins, !117, !"gpio19_pins", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 115, i32 17}
!118 = !{ptr @gpio20_pins, !119, !"gpio20_pins", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 116, i32 17}
!120 = !{ptr @gpio21_pins, !121, !"gpio21_pins", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 117, i32 17}
!122 = !{ptr @gpio22_pins, !123, !"gpio22_pins", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 118, i32 17}
!124 = !{ptr @gpio23_pins, !125, !"gpio23_pins", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 119, i32 17}
!126 = !{ptr @gpio24_pins, !127, !"gpio24_pins", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 120, i32 17}
!128 = !{ptr @gpio25_pins, !129, !"gpio25_pins", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 121, i32 17}
!130 = !{ptr @gpio26_pins, !131, !"gpio26_pins", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 122, i32 17}
!132 = !{ptr @gpio27_pins, !133, !"gpio27_pins", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 123, i32 17}
!134 = !{ptr @gpio28_pins, !135, !"gpio28_pins", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 124, i32 17}
!136 = !{ptr @gpio29_pins, !137, !"gpio29_pins", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 125, i32 17}
!138 = !{ptr @gpio30_pins, !139, !"gpio30_pins", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 126, i32 17}
!140 = !{ptr @gpio31_pins, !141, !"gpio31_pins", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 127, i32 17}
!142 = !{ptr @uart1_grp_pins, !143, !"uart1_grp_pins", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 128, i32 17}
!144 = !{ptr @bcm6368_pmx_ops, !145, !"bcm6368_pmx_ops", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 468, i32 32}
!146 = !{ptr @.str.34, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 315, i32 2}
!148 = !{ptr @.str.35, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 316, i32 2}
!150 = !{ptr @.str.36, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 317, i32 2}
!152 = !{ptr @.str.37, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 318, i32 2}
!154 = !{ptr @.str.38, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 319, i32 2}
!156 = !{ptr @.str.39, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 320, i32 2}
!158 = !{ptr @.str.40, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 321, i32 2}
!160 = !{ptr @.str.41, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 322, i32 2}
!162 = !{ptr @.str.42, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 323, i32 2}
!164 = !{ptr @.str.43, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 324, i32 2}
!166 = !{ptr @.str.44, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 325, i32 2}
!168 = !{ptr @.str.45, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 326, i32 2}
!170 = !{ptr @.str.46, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 327, i32 2}
!172 = !{ptr @.str.47, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 328, i32 2}
!174 = !{ptr @.str.48, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 329, i32 2}
!176 = !{ptr @.str.49, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 330, i32 2}
!178 = !{ptr @.str.50, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 331, i32 2}
!180 = !{ptr @.str.51, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 332, i32 2}
!182 = !{ptr @.str.52, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 333, i32 2}
!184 = !{ptr @.str.53, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 334, i32 2}
!186 = !{ptr @.str.54, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 335, i32 2}
!188 = !{ptr @.str.55, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 336, i32 2}
!190 = !{ptr @.str.56, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 337, i32 2}
!192 = !{ptr @.str.57, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 338, i32 2}
!194 = !{ptr @.str.58, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 339, i32 2}
!196 = !{ptr @.str.59, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 340, i32 2}
!198 = !{ptr @.str.60, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 341, i32 2}
!200 = !{ptr @.str.61, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 342, i32 2}
!202 = !{ptr @.str.62, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 343, i32 2}
!204 = !{ptr @.str.63, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 344, i32 2}
!206 = !{ptr @.str.64, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 345, i32 2}
!208 = !{ptr @bcm6368_funcs, !209, !"bcm6368_funcs", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 314, i32 38}
!210 = !{ptr @analog_afe_0_groups, !211, !"analog_afe_0_groups", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 173, i32 27}
!212 = !{ptr @analog_afe_1_groups, !213, !"analog_afe_1_groups", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 177, i32 27}
!214 = !{ptr @sys_irq_groups, !215, !"sys_irq_groups", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 181, i32 27}
!216 = !{ptr @serial_led_data_groups, !217, !"serial_led_data_groups", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 185, i32 27}
!218 = !{ptr @serial_led_clk_groups, !219, !"serial_led_clk_groups", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 189, i32 27}
!220 = !{ptr @inet_led_groups, !221, !"inet_led_groups", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 193, i32 27}
!222 = !{ptr @ephy0_led_groups, !223, !"ephy0_led_groups", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 197, i32 27}
!224 = !{ptr @ephy1_led_groups, !225, !"ephy1_led_groups", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 201, i32 27}
!226 = !{ptr @ephy2_led_groups, !227, !"ephy2_led_groups", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 205, i32 27}
!228 = !{ptr @ephy3_led_groups, !229, !"ephy3_led_groups", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 209, i32 27}
!230 = !{ptr @robosw_led_data_groups, !231, !"robosw_led_data_groups", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 213, i32 27}
!232 = !{ptr @robosw_led_clk_groups, !233, !"robosw_led_clk_groups", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 217, i32 27}
!234 = !{ptr @robosw_led0_groups, !235, !"robosw_led0_groups", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 221, i32 27}
!236 = !{ptr @robosw_led1_groups, !237, !"robosw_led1_groups", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 225, i32 27}
!238 = !{ptr @usb_device_led_groups, !239, !"usb_device_led_groups", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 229, i32 27}
!240 = !{ptr @pci_req1_groups, !241, !"pci_req1_groups", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 233, i32 27}
!242 = !{ptr @pci_gnt1_groups, !243, !"pci_gnt1_groups", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 237, i32 27}
!244 = !{ptr @pci_intb_groups, !245, !"pci_intb_groups", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 241, i32 27}
!246 = !{ptr @pci_req0_groups, !247, !"pci_req0_groups", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 245, i32 27}
!248 = !{ptr @pci_gnt0_groups, !249, !"pci_gnt0_groups", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 249, i32 27}
!250 = !{ptr @pcmcia_cd1_groups, !251, !"pcmcia_cd1_groups", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 253, i32 27}
!252 = !{ptr @pcmcia_cd2_groups, !253, !"pcmcia_cd2_groups", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 257, i32 27}
!254 = !{ptr @pcmcia_vs1_groups, !255, !"pcmcia_vs1_groups", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 261, i32 27}
!256 = !{ptr @pcmcia_vs2_groups, !257, !"pcmcia_vs2_groups", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 265, i32 27}
!258 = !{ptr @ebi_cs2_groups, !259, !"ebi_cs2_groups", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 269, i32 27}
!260 = !{ptr @ebi_cs3_groups, !261, !"ebi_cs3_groups", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 273, i32 27}
!262 = !{ptr @spi_cs2_groups, !263, !"spi_cs2_groups", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 277, i32 27}
!264 = !{ptr @spi_cs3_groups, !265, !"spi_cs3_groups", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 281, i32 27}
!266 = !{ptr @spi_cs4_groups, !267, !"spi_cs4_groups", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 285, i32 27}
!268 = !{ptr @spi_cs5_groups, !269, !"spi_cs5_groups", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 289, i32 27}
!270 = !{ptr @uart1_groups, !271, !"uart1_groups", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 293, i32 27}
!272 = !{ptr @.str.66, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 88, i32 2}
!274 = !{ptr @.str.67, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 89, i32 2}
!276 = !{ptr @.str.68, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 90, i32 2}
!278 = !{ptr @.str.69, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 91, i32 2}
!280 = !{ptr @.str.70, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 92, i32 2}
!282 = !{ptr @.str.71, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 93, i32 2}
!284 = !{ptr @bcm6368_pins, !285, !"bcm6368_pins", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 55, i32 38}
!286 = !{ptr @bcm6368_pinctrl_match, !287, !"bcm6368_pinctrl_match", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6368.c", i32 510, i32 34}
!288 = !{i32 1, !"wchar_size", i32 2}
!289 = !{i32 1, !"min_enum_size", i32 4}
!290 = !{i32 8, !"branch-target-enforcement", i32 0}
!291 = !{i32 8, !"sign-return-address", i32 0}
!292 = !{i32 8, !"sign-return-address-all", i32 0}
!293 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!294 = !{i32 7, !"uwtable", i32 1}
!295 = !{i32 7, !"frame-pointer", i32 2}
!296 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
