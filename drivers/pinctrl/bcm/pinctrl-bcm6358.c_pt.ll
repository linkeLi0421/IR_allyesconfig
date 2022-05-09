; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-bcm6358.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-bcm6358.c"
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
%struct.bcm6358_pingroup = type { ptr, ptr, i32, i16, i16 }
%struct.bcm6358_function = type { ptr, ptr, i32 }
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
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }

@__initcall__kmod_pinctrl_bcm6358__223_369_bcm6358_pinctrl_driver_init6 = internal global ptr @bcm6358_pinctrl_driver_init, section ".initcall6.init", align 4
@bcm6358_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm6358_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm6358_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm6358-pinctrl\00", [16 x i8] zeroinitializer }, align 32
@bcm6358_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6358-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm6358_soc = internal constant { %struct.bcm63xx_pinctrl_soc, [44 x i8] } { %struct.bcm63xx_pinctrl_soc { ptr @bcm6358_pctl_ops, ptr @bcm6358_pmx_ops, ptr @bcm6358_pins, i32 40, i32 40 }, [44 x i8] zeroinitializer }, align 32
@bcm6358_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @bcm6358_pinctrl_get_group_count, ptr @bcm6358_pinctrl_get_group_name, ptr @bcm6358_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@bcm6358_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @bcm6358_pinctrl_get_func_count, ptr @bcm6358_pinctrl_get_func_name, ptr @bcm6358_pinctrl_get_groups, ptr @bcm6358_pinctrl_set_mux, ptr @bcm6358_gpio_request_enable, ptr null, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@bcm6358_pins = internal constant { [40 x %struct.pinctrl_pin_desc], [96 x i8] } { [40 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.23, ptr inttoptr (i32 2048 to ptr) }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.24, ptr inttoptr (i32 2048 to ptr) }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.25, ptr inttoptr (i32 2048 to ptr) }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.26, ptr inttoptr (i32 2048 to ptr) }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.28, ptr inttoptr (i32 32768 to ptr) }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.29, ptr inttoptr (i32 1024 to ptr) }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.30, ptr inttoptr (i32 1024 to ptr) }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.31, ptr inttoptr (i32 16384 to ptr) }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.32, ptr inttoptr (i32 512 to ptr) }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.33, ptr inttoptr (i32 512 to ptr) }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.34, ptr inttoptr (i32 512 to ptr) }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.35, ptr inttoptr (i32 4864 to ptr) }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.36, ptr inttoptr (i32 4864 to ptr) }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.37, ptr inttoptr (i32 4864 to ptr) }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.38, ptr inttoptr (i32 4864 to ptr) }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.45, ptr inttoptr (i32 4096 to ptr) }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.46, ptr inttoptr (i32 4096 to ptr) }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.47, ptr inttoptr (i32 4096 to ptr) }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.48, ptr inttoptr (i32 4096 to ptr) }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.49, ptr inttoptr (i32 4096 to ptr) }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.50, ptr inttoptr (i32 4096 to ptr) }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.51, ptr inttoptr (i32 4160 to ptr) }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.52, ptr inttoptr (i32 4160 to ptr) }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.53, ptr inttoptr (i32 4192 to ptr) }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.54, ptr inttoptr (i32 4192 to ptr) }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.55, ptr inttoptr (i32 128 to ptr) }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.56, ptr inttoptr (i32 128 to ptr) }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.62, ptr null }], [96 x i8] zeroinitializer }, align 32
@bcm6358_groups = internal constant { [10 x %struct.bcm6358_pingroup], [32 x i8] } { [10 x %struct.bcm6358_pingroup] [%struct.bcm6358_pingroup { ptr @.str.1, ptr @ebi_cs_grp_pins, i32 2, i16 32, i16 3 }, %struct.bcm6358_pingroup { ptr @.str.2, ptr @uart1_grp_pins, i32 4, i16 64, i16 2 }, %struct.bcm6358_pingroup { ptr @.str.3, ptr @spi_cs_grp_pins, i32 2, i16 128, i16 6 }, %struct.bcm6358_pingroup { ptr @.str.4, ptr @async_modem_grp_pins, i32 4, i16 256, i16 6 }, %struct.bcm6358_pingroup { ptr @.str.5, ptr @legacy_led_grp_pins, i32 7, i16 512, i16 127 }, %struct.bcm6358_pingroup { ptr @.str.6, ptr @serial_led_grp_pins, i32 2, i16 1024, i16 3 }, %struct.bcm6358_pingroup { ptr @.str.7, ptr @led_grp_pins, i32 4, i16 2048, i16 15 }, %struct.bcm6358_pingroup { ptr @.str.8, ptr @utopia_grp_pins, i32 14, i16 4096, i16 15 }, %struct.bcm6358_pingroup { ptr @.str.9, ptr @pwm_syn_clk_grp_pins, i32 1, i16 16384, i16 1 }, %struct.bcm6358_pingroup { ptr @.str.10, ptr @sys_irq_grp_pins, i32 1, i16 -32768, i16 1 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ebi_cs_grp\00", [21 x i8] zeroinitializer }, align 32
@ebi_cs_grp_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 30, i32 31], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_grp\00", [22 x i8] zeroinitializer }, align 32
@uart1_grp_pins = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 28, i32 29, i32 30, i32 31], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi_cs_grp\00", [21 x i8] zeroinitializer }, align 32
@spi_cs_grp_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32, i32 33], [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"async_modem_grp\00", [16 x i8] zeroinitializer }, align 32
@async_modem_grp_pins = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 13, i32 14, i32 15], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"legacy_led_grp\00", [17 x i8] zeroinitializer }, align 32
@legacy_led_grp_pins = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_led_grp\00", [17 x i8] zeroinitializer }, align 32
@serial_led_grp_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 6, i32 7], [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"led_grp\00", [24 x i8] zeroinitializer }, align 32
@led_grp_pins = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"utopia_grp\00", [21 x i8] zeroinitializer }, align 32
@utopia_grp_pins = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 12, i32 13, i32 14, i32 15, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm_syn_clk_grp\00", [16 x i8] zeroinitializer }, align 32
@pwm_syn_clk_grp_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 8], [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_irq_grp\00", [20 x i8] zeroinitializer }, align 32
@sys_irq_grp_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 5], [28 x i8] zeroinitializer }, align 32
@bcm6358_funcs = internal constant { [10 x %struct.bcm6358_function], [40 x i8] } { [10 x %struct.bcm6358_function] [%struct.bcm6358_function { ptr @.str.11, ptr @ebi_cs_groups, i32 1 }, %struct.bcm6358_function { ptr @.str.12, ptr @uart1_groups, i32 1 }, %struct.bcm6358_function { ptr @.str.13, ptr @spi_cs_2_3_groups, i32 1 }, %struct.bcm6358_function { ptr @.str.14, ptr @async_modem_groups, i32 1 }, %struct.bcm6358_function { ptr @.str.15, ptr @legacy_led_groups, i32 1 }, %struct.bcm6358_function { ptr @.str.16, ptr @serial_led_groups, i32 1 }, %struct.bcm6358_function { ptr @.str.17, ptr @led_groups, i32 1 }, %struct.bcm6358_function { ptr @.str.18, ptr @clkrst_groups, i32 1 }, %struct.bcm6358_function { ptr @.str.19, ptr @pwm_syn_clk_groups, i32 1 }, %struct.bcm6358_function { ptr @.str.20, ptr @sys_irq_groups, i32 1 }], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ebi_cs\00", [25 x i8] zeroinitializer }, align 32
@ebi_cs_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.1], [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi_cs_2_3\00", [21 x i8] zeroinitializer }, align 32
@spi_cs_2_3_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"async_modem\00", [20 x i8] zeroinitializer }, align 32
@async_modem_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.4], [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"legacy_led\00", [21 x i8] zeroinitializer }, align 32
@legacy_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.5], [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"serial_led\00", [21 x i8] zeroinitializer }, align 32
@serial_led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"led\00", [28 x i8] zeroinitializer }, align 32
@led_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkrst\00", [25 x i8] zeroinitializer }, align 32
@clkrst_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.22], [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm_syn_clk\00", [20 x i8] zeroinitializer }, align 32
@pwm_syn_clk_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.9], [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_irq\00", [24 x i8] zeroinitializer }, align 32
@sys_irq_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_cs_2_3_grp\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkrst_grp\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio09\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio17\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio18\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio19\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio20\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio21\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio22\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio23\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio24\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio25\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio26\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio27\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio28\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio29\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio30\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio31\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio32\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio33\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio34\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio35\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio36\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio37\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio38\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio39\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"bcm6358_pinctrl_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 361, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 364, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"bcm6358_pinctrl_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 356, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"bcm6358_soc\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 323, i32 41 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"bcm6358_pctl_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 306, i32 33 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"bcm6358_pmx_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 314, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"bcm6358_pins\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 67, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"bcm6358_groups\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 141, i32 38 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 142, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"ebi_cs_grp_pins\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 110, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 143, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"uart1_grp_pins\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 112, i32 17 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 144, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"spi_cs_grp_pins\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 114, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 145, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"async_modem_grp_pins\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 116, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 146, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"legacy_led_grp_pins\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 120, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 147, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"serial_led_grp_pins\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 118, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 148, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [13 x i8] c"led_grp_pins\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 122, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 149, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"utopia_grp_pins\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 124, i32 17 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 150, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"pwm_syn_clk_grp_pins\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 128, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 151, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"sys_irq_grp_pins\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 130, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant [14 x i8] c"bcm6358_funcs\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 201, i32 38 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 202, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [14 x i8] c"ebi_cs_groups\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 154, i32 27 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 203, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [13 x i8] c"uart1_groups\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 158, i32 27 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 204, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"spi_cs_2_3_groups\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 162, i32 27 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 205, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"async_modem_groups\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 166, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 206, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"legacy_led_groups\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 170, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 207, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"serial_led_groups\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 174, i32 27 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 208, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [11 x i8] c"led_groups\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 178, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 209, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"clkrst_groups\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 182, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 210, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [19 x i8] c"pwm_syn_clk_groups\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 186, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 211, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [15 x i8] c"sys_irq_groups\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 190, i32 27 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 163, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 183, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 68, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 69, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 70, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 71, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 72, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 73, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 74, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 75, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 76, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 77, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 78, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 79, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 80, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 81, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 82, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 83, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 84, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 85, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 86, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 87, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 88, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 89, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 90, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 91, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 92, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 93, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 94, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 95, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 96, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 97, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 98, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 99, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 100, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 101, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 102, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 103, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 104, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 105, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 106, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.334 = private constant [41 x i8] c"../drivers/pinctrl/bcm/pinctrl-bcm6358.c\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 107, i32 2 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__initcall__kmod_pinctrl_bcm6358__223_369_bcm6358_pinctrl_driver_init6, ptr @bcm6358_pinctrl_driver, ptr @.str, ptr @bcm6358_pinctrl_match, ptr @bcm6358_soc, ptr @bcm6358_pctl_ops, ptr @bcm6358_pmx_ops, ptr @bcm6358_pins, ptr @bcm6358_groups, ptr @.str.1, ptr @ebi_cs_grp_pins, ptr @.str.2, ptr @uart1_grp_pins, ptr @.str.3, ptr @spi_cs_grp_pins, ptr @.str.4, ptr @async_modem_grp_pins, ptr @.str.5, ptr @legacy_led_grp_pins, ptr @.str.6, ptr @serial_led_grp_pins, ptr @.str.7, ptr @led_grp_pins, ptr @.str.8, ptr @utopia_grp_pins, ptr @.str.9, ptr @pwm_syn_clk_grp_pins, ptr @.str.10, ptr @sys_irq_grp_pins, ptr @bcm6358_funcs, ptr @.str.11, ptr @ebi_cs_groups, ptr @.str.12, ptr @uart1_groups, ptr @.str.13, ptr @spi_cs_2_3_groups, ptr @.str.14, ptr @async_modem_groups, ptr @.str.15, ptr @legacy_led_groups, ptr @.str.16, ptr @serial_led_groups, ptr @.str.17, ptr @led_groups, ptr @.str.18, ptr @clkrst_groups, ptr @.str.19, ptr @pwm_syn_clk_groups, ptr @.str.20, ptr @sys_irq_groups, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_soc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_pins to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_groups to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebi_cs_grp_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_grp_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_cs_grp_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_modem_grp_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_led_grp_pins to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_led_grp_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_grp_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utopia_grp_pins to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_syn_clk_grp_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_irq_grp_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_funcs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebi_cs_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_cs_2_3_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_modem_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkrst_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_syn_clk_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_irq_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6358_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm6358_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6358_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
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
  %call2 = tail call i32 @bcm63xx_pinctrl_probe(ptr noundef %pdev, ptr noundef nonnull @bcm6358_soc, ptr noundef nonnull %call.i) #7
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
  %call7 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %3, [5 x i32] [i32 24, i32 0, i32 15, i32 0, i32 0]) #7
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
define internal i32 @bcm6358_pinctrl_get_group_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm6358_pinctrl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [10 x %struct.bcm6358_pingroup], ptr @bcm6358_groups, i32 0, i32 %group
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm6358_pinctrl_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pins1 = getelementptr [10 x %struct.bcm6358_pingroup], ptr @bcm6358_groups, i32 0, i32 %group, i32 1
  %0 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins1, align 4
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pins, align 4
  %num_pins3 = getelementptr [10 x %struct.bcm6358_pingroup], ptr @bcm6358_groups, i32 0, i32 %group, i32 2
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
define internal i32 @bcm6358_pinctrl_get_func_count(ptr nocapture noundef readnone %pctldev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bcm6358_pinctrl_get_func_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [10 x %struct.bcm6358_function], ptr @bcm6358_funcs, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm6358_pinctrl_get_groups(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %groups1 = getelementptr [10 x %struct.bcm6358_function], ptr @bcm6358_funcs, i32 0, i32 %selector, i32 1
  %0 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups1, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %num_groups3 = getelementptr [10 x %struct.bcm6358_function], ptr @bcm6358_funcs, i32 0, i32 %selector, i32 2
  %3 = ptrtoint ptr %num_groups3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_groups3, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6358_pinctrl_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
for.body.preheader:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %driver_data = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %mode_val = getelementptr [10 x %struct.bcm6358_pingroup], ptr @bcm6358_groups, i32 0, i32 %group, i32 3
  %2 = ptrtoint ptr %mode_val to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode_val, align 4
  %conv = zext i16 %3 to i32
  %num_pins = getelementptr [10 x %struct.bcm6358_pingroup], ptr @bcm6358_groups, i32 0, i32 %group, i32 2
  %4 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pins, align 4
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pin.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mask.040 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %drv_data = getelementptr [40 x %struct.pinctrl_pin_desc], ptr @bcm6358_pins, i32 0, i32 %pin.041, i32 2
  %6 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_data, align 4
  %8 = ptrtoint ptr %7 to i32
  %or = or i32 %mask.040, %8
  %inc = add nuw i32 %pin.041, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body8.lr.ph, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body8.lr.ph:                                  ; preds = %for.body
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef %or, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %direction = getelementptr [10 x %struct.bcm6358_pingroup], ptr @bcm6358_groups, i32 0, i32 %group, i32 4
  %umax46 = call i32 @llvm.umax.i32(i32 %5, i32 1)
  br label %for.body8

for.body8:                                        ; preds = %if.end17.for.body8_crit_edge, %for.body8.lr.ph
  %pin.144 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc19, %if.end17.for.body8_crit_edge ]
  %arrayidx9 = getelementptr [40 x %struct.pinctrl_pin_desc], ptr @bcm6358_pins, i32 0, i32 %pin.144
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  %call10 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %pctldev, i32 noundef %12) #7
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %for.body8.if.end17_crit_edge, label %if.then

for.body8.if.end17_crit_edge:                     ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then:                                          ; preds = %for.body8
  %gc11 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call10, i32 0, i32 7
  %13 = ptrtoint ptr %gc11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gc11, align 4
  %15 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %direction, align 2
  %conv12 = zext i16 %16 to i32
  %shl = shl nuw i32 1, %pin.144
  %and = and i32 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %14, i32 0, i32 9
  %17 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %direction_output, align 4
  %call15 = tail call i32 %18(ptr noundef %14, i32 noundef %12, i32 noundef 0) #7
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %14, i32 0, i32 8
  %19 = ptrtoint ptr %direction_input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %direction_input, align 4
  %call16 = tail call i32 %20(ptr noundef %14, i32 noundef %12) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14, %for.body8.if.end17_crit_edge
  %inc19 = add nuw i32 %pin.144, 1
  %exitcond47.not = icmp eq i32 %inc19, %umax46
  br i1 %exitcond47.not, label %for.end20, label %if.end17.for.body8_crit_edge

if.end17.for.body8_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.end20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6358_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %drv_data = getelementptr [40 x %struct.pinctrl_pin_desc], ptr @bcm6358_pins, i32 0, i32 %offset, i32 2
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  %driver_data = getelementptr inbounds %struct.bcm63xx_pinctrl, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %6, i32 noundef %2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__initcall__kmod_pinctrl_bcm6358__223_369_bcm6358_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_bcm6358__223_369_bcm6358_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 369, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 364, i32 11}
!4 = !{ptr @bcm6358_pinctrl_driver, !5, !"bcm6358_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 361, i32 31}
!6 = !{ptr @bcm6358_soc, !7, !"bcm6358_soc", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 323, i32 41}
!8 = !{ptr @bcm6358_pctl_ops, !9, !"bcm6358_pctl_ops", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 306, i32 33}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 142, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 143, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 144, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 145, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 146, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 147, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 148, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 149, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 150, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 151, i32 2}
!30 = !{ptr @bcm6358_groups, !31, !"bcm6358_groups", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 141, i32 38}
!32 = !{ptr @ebi_cs_grp_pins, !33, !"ebi_cs_grp_pins", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 110, i32 17}
!34 = !{ptr @uart1_grp_pins, !35, !"uart1_grp_pins", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 112, i32 17}
!36 = !{ptr @spi_cs_grp_pins, !37, !"spi_cs_grp_pins", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 114, i32 17}
!38 = !{ptr @async_modem_grp_pins, !39, !"async_modem_grp_pins", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 116, i32 17}
!40 = !{ptr @legacy_led_grp_pins, !41, !"legacy_led_grp_pins", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 120, i32 17}
!42 = !{ptr @serial_led_grp_pins, !43, !"serial_led_grp_pins", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 118, i32 17}
!44 = !{ptr @led_grp_pins, !45, !"led_grp_pins", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 122, i32 17}
!46 = !{ptr @utopia_grp_pins, !47, !"utopia_grp_pins", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 124, i32 17}
!48 = !{ptr @pwm_syn_clk_grp_pins, !49, !"pwm_syn_clk_grp_pins", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 128, i32 17}
!50 = !{ptr @sys_irq_grp_pins, !51, !"sys_irq_grp_pins", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 130, i32 17}
!52 = !{ptr @bcm6358_pmx_ops, !53, !"bcm6358_pmx_ops", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 314, i32 32}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 202, i32 2}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 203, i32 2}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 204, i32 2}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 205, i32 2}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 206, i32 2}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 207, i32 2}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 208, i32 2}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 209, i32 2}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 210, i32 2}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 211, i32 2}
!74 = !{ptr @bcm6358_funcs, !75, !"bcm6358_funcs", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 201, i32 38}
!76 = !{ptr @ebi_cs_groups, !77, !"ebi_cs_groups", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 154, i32 27}
!78 = !{ptr @uart1_groups, !79, !"uart1_groups", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 158, i32 27}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 163, i32 2}
!82 = !{ptr @spi_cs_2_3_groups, !83, !"spi_cs_2_3_groups", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 162, i32 27}
!84 = !{ptr @async_modem_groups, !85, !"async_modem_groups", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 166, i32 27}
!86 = !{ptr @legacy_led_groups, !87, !"legacy_led_groups", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 170, i32 27}
!88 = !{ptr @serial_led_groups, !89, !"serial_led_groups", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 174, i32 27}
!90 = !{ptr @led_groups, !91, !"led_groups", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 178, i32 27}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 183, i32 2}
!94 = !{ptr @clkrst_groups, !95, !"clkrst_groups", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 182, i32 27}
!96 = !{ptr @pwm_syn_clk_groups, !97, !"pwm_syn_clk_groups", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 186, i32 27}
!98 = !{ptr @sys_irq_groups, !99, !"sys_irq_groups", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 190, i32 27}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 68, i32 2}
!102 = !{ptr @.str.24, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 69, i32 2}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 70, i32 2}
!106 = !{ptr @.str.26, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 71, i32 2}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 72, i32 2}
!110 = !{ptr @.str.28, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 73, i32 2}
!112 = !{ptr @.str.29, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 74, i32 2}
!114 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 75, i32 2}
!116 = !{ptr @.str.31, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 76, i32 2}
!118 = !{ptr @.str.32, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 77, i32 2}
!120 = !{ptr @.str.33, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 78, i32 2}
!122 = !{ptr @.str.34, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 79, i32 2}
!124 = !{ptr @.str.35, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 80, i32 2}
!126 = !{ptr @.str.36, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 81, i32 2}
!128 = !{ptr @.str.37, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 82, i32 2}
!130 = !{ptr @.str.38, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 83, i32 2}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 84, i32 2}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 85, i32 2}
!136 = !{ptr @.str.41, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 86, i32 2}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 87, i32 2}
!140 = !{ptr @.str.43, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 88, i32 2}
!142 = !{ptr @.str.44, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 89, i32 2}
!144 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 90, i32 2}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 91, i32 2}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 92, i32 2}
!150 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 93, i32 2}
!152 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 94, i32 2}
!154 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 95, i32 2}
!156 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 96, i32 2}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 97, i32 2}
!160 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 98, i32 2}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 99, i32 2}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 100, i32 2}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 101, i32 2}
!168 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 102, i32 2}
!170 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 103, i32 2}
!172 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 104, i32 2}
!174 = !{ptr @.str.60, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 105, i32 2}
!176 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 106, i32 2}
!178 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 107, i32 2}
!180 = !{ptr @bcm6358_pins, !181, !"bcm6358_pins", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 67, i32 38}
!182 = !{ptr @bcm6358_pinctrl_match, !183, !"bcm6358_pinctrl_match", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/bcm/pinctrl-bcm6358.c", i32 356, i32 34}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
