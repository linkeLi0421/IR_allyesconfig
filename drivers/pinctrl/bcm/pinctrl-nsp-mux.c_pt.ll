; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-nsp-mux.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-nsp-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nsp_pin = type { i32, ptr, i32 }
%struct.nsp_pin_group = type { ptr, ptr, i32, %struct.nsp_mux }
%struct.nsp_mux = type { i32, i32, i32, i32 }
%struct.nsp_pin_function = type { ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.nsp_pinctrl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.nsp_mux_log = type { %struct.nsp_mux, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_nsp_mux__225_642_nsp_pinmux_init3 = internal global ptr @nsp_pinmux_init, section ".initcall3.init", align 4
@nsp_pinmux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nsp_pinmux_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nsp_pinmux_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nsp-pinmux\00", [21 x i8] zeroinitializer }, align 32
@nsp_pinmux_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,nsp-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nsp_pinmux_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pinctrl->lock\00", [17 x i8] zeroinitializer }, align 32
@nsp_pinmux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 584, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to map I/O space\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nsp_pinmux_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/bcm/pinctrl-nsp-mux.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nsp_pinmux_probe._entry_ptr = internal global ptr @nsp_pinmux_probe._entry, section ".printk_index", align 4
@nsp_pinmux_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 594, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to initialize IOMUX log\0A\00", [32 x i8] zeroinitializer }, align 32
@nsp_pinmux_probe._entry_ptr.9 = internal global ptr @nsp_pinmux_probe._entry.7, section ".printk_index", align 4
@nsp_pins = internal global { [43 x %struct.nsp_pin], [156 x i8] } { [43 x %struct.nsp_pin] [%struct.nsp_pin { i32 0, ptr @.str.13, i32 1 }, %struct.nsp_pin { i32 1, ptr @.str.14, i32 1 }, %struct.nsp_pin { i32 2, ptr @.str.15, i32 1 }, %struct.nsp_pin { i32 3, ptr @.str.16, i32 1 }, %struct.nsp_pin { i32 4, ptr @.str.17, i32 1 }, %struct.nsp_pin { i32 5, ptr @.str.18, i32 1 }, %struct.nsp_pin { i32 6, ptr @.str.19, i32 1 }, %struct.nsp_pin { i32 7, ptr @.str.20, i32 1 }, %struct.nsp_pin { i32 8, ptr @.str.21, i32 1 }, %struct.nsp_pin { i32 9, ptr @.str.22, i32 1 }, %struct.nsp_pin { i32 10, ptr @.str.23, i32 1 }, %struct.nsp_pin { i32 11, ptr @.str.24, i32 1 }, %struct.nsp_pin { i32 12, ptr @.str.25, i32 1 }, %struct.nsp_pin { i32 13, ptr @.str.26, i32 1 }, %struct.nsp_pin { i32 14, ptr @.str.27, i32 1 }, %struct.nsp_pin { i32 15, ptr @.str.28, i32 1 }, %struct.nsp_pin { i32 16, ptr @.str.29, i32 1 }, %struct.nsp_pin { i32 17, ptr @.str.30, i32 1 }, %struct.nsp_pin { i32 18, ptr @.str.31, i32 0 }, %struct.nsp_pin { i32 19, ptr @.str.32, i32 0 }, %struct.nsp_pin { i32 20, ptr @.str.33, i32 0 }, %struct.nsp_pin { i32 21, ptr @.str.34, i32 1 }, %struct.nsp_pin { i32 22, ptr @.str.35, i32 1 }, %struct.nsp_pin { i32 23, ptr @.str.36, i32 1 }, %struct.nsp_pin { i32 24, ptr @.str.37, i32 1 }, %struct.nsp_pin { i32 25, ptr @.str.38, i32 1 }, %struct.nsp_pin { i32 26, ptr @.str.39, i32 0 }, %struct.nsp_pin { i32 27, ptr @.str.40, i32 0 }, %struct.nsp_pin { i32 28, ptr @.str.41, i32 1 }, %struct.nsp_pin { i32 29, ptr @.str.42, i32 1 }, %struct.nsp_pin { i32 30, ptr @.str.43, i32 1 }, %struct.nsp_pin { i32 31, ptr @.str.44, i32 1 }, %struct.nsp_pin { i32 32, ptr @.str.45, i32 0 }, %struct.nsp_pin { i32 33, ptr @.str.46, i32 0 }, %struct.nsp_pin { i32 34, ptr @.str.47, i32 0 }, %struct.nsp_pin { i32 35, ptr @.str.48, i32 0 }, %struct.nsp_pin { i32 36, ptr @.str.49, i32 0 }, %struct.nsp_pin { i32 37, ptr @.str.50, i32 0 }, %struct.nsp_pin { i32 38, ptr @.str.51, i32 0 }, %struct.nsp_pin { i32 39, ptr @.str.52, i32 0 }, %struct.nsp_pin { i32 40, ptr @.str.53, i32 0 }, %struct.nsp_pin { i32 41, ptr @.str.54, i32 0 }, %struct.nsp_pin { i32 42, ptr @.str.55, i32 0 }], [156 x i8] zeroinitializer }, align 32
@nsp_pin_groups = internal constant { [23 x %struct.nsp_pin_group], [188 x i8] } { [23 x %struct.nsp_pin_group] [%struct.nsp_pin_group { ptr @.str.56, ptr @spi_pins, i32 4, %struct.nsp_mux { i32 0, i32 0, i32 15, i32 0 } }, %struct.nsp_pin_group { ptr @.str.57, ptr @i2c_pins, i32 2, %struct.nsp_mux { i32 0, i32 3, i32 3, i32 0 } }, %struct.nsp_pin_group { ptr @.str.58, ptr @mdio_pins, i32 2, %struct.nsp_mux { i32 0, i32 5, i32 3, i32 0 } }, %struct.nsp_pin_group { ptr @.str.59, ptr @gpio_b_0_pins, i32 1, %struct.nsp_mux { i32 0, i32 7, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.60, ptr @pwm0_pins, i32 1, %struct.nsp_mux { i32 1, i32 0, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.61, ptr @gpio_b_1_pins, i32 1, %struct.nsp_mux { i32 0, i32 8, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.62, ptr @pwm1_pins, i32 1, %struct.nsp_mux { i32 1, i32 1, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.63, ptr @gpio_b_2_pins, i32 1, %struct.nsp_mux { i32 0, i32 9, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.64, ptr @pwm2_pins, i32 1, %struct.nsp_mux { i32 1, i32 2, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.65, ptr @gpio_b_3_pins, i32 1, %struct.nsp_mux { i32 0, i32 10, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.66, ptr @pwm3_pins, i32 1, %struct.nsp_mux { i32 1, i32 3, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.67, ptr @uart1_pins, i32 4, %struct.nsp_mux { i32 0, i32 11, i32 15, i32 0 } }, %struct.nsp_pin_group { ptr @.str.68, ptr @uart2_pins, i32 2, %struct.nsp_mux { i32 0, i32 15, i32 3, i32 0 } }, %struct.nsp_pin_group { ptr @.str.69, ptr @synce_pins, i32 1, %struct.nsp_mux { i32 0, i32 17, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.70, ptr @sata0_led_pins, i32 1, %struct.nsp_mux { i32 0, i32 18, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.71, ptr @sata1_led_pins, i32 1, %struct.nsp_mux { i32 0, i32 19, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.72, ptr @xtal_out_pins, i32 1, %struct.nsp_mux { i32 0, i32 20, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.73, ptr @sdio_pwr_pins, i32 1, %struct.nsp_mux { i32 0, i32 21, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.74, ptr @sdio_1p8v_pins, i32 1, %struct.nsp_mux { i32 0, i32 22, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.75, ptr @switch_p05_led0_pins, i32 1, %struct.nsp_mux { i32 0, i32 26, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.76, ptr @switch_p05_led1_pins, i32 1, %struct.nsp_mux { i32 0, i32 27, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.77, ptr @nand_pins, i32 11, %struct.nsp_mux { i32 2, i32 0, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.78, ptr @emmc_pins, i32 11, %struct.nsp_mux { i32 2, i32 0, i32 1, i32 1 } }], [188 x i8] zeroinitializer }, align 32
@nsp_pin_functions = internal constant { [14 x %struct.nsp_pin_function], [56 x i8] } { [14 x %struct.nsp_pin_function] [%struct.nsp_pin_function { ptr @.str.79, ptr @spi_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.80, ptr @i2c_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.20, ptr @mdio_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.81, ptr @pwm_grps, i32 4 }, %struct.nsp_pin_function { ptr @.str.82, ptr @gpio_b_grps, i32 4 }, %struct.nsp_pin_function { ptr @.str.83, ptr @uart1_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.84, ptr @uart2_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.31, ptr @synce_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.85, ptr @sata_led_grps, i32 2 }, %struct.nsp_pin_function { ptr @.str.34, ptr @xtal_out_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.86, ptr @sdio_grps, i32 2 }, %struct.nsp_pin_function { ptr @.str.87, ptr @switch_led_grps, i32 2 }, %struct.nsp_pin_function { ptr @.str.88, ptr @nand_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.89, ptr @emmc_grps, i32 1 }], [56 x i8] zeroinitializer }, align 32
@nsp_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr null, i32 0, ptr @nsp_pinctrl_ops, ptr @nsp_pinmux_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@nsp_pinmux_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 618, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to register nsp IOMUX pinctrl\0A\00", [58 x i8] zeroinitializer }, align 32
@nsp_pinmux_probe._entry_ptr.12 = internal global ptr @nsp_pinmux_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi_ss\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi_mosi\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi_miso\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scl\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sda\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdc\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm0\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart1_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart1_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_cts\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_rts\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart2_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart2_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"synce\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sata0_led\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sata1_led\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xtal_out\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio_pwr\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio_en_1p8v\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_24\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_25\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p5_led0\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p5_led1\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_28\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_29\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_30\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_31\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_ale\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_ce0\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_r/b\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq0\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq1\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq2\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq3\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq4\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq5\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq6\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_dq7\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_grp\00", [24 x i8] zeroinitializer }, align 32
@spi_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_grp\00", [24 x i8] zeroinitializer }, align 32
@i2c_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 5], [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdio_grp\00", [23 x i8] zeroinitializer }, align 32
@mdio_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 6, i32 7], [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_b_0_grp\00", [19 x i8] zeroinitializer }, align 32
@gpio_b_0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 8], [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm0_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 8], [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_b_1_grp\00", [19 x i8] zeroinitializer }, align 32
@gpio_b_1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 9], [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 9], [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_b_2_grp\00", [19 x i8] zeroinitializer }, align 32
@gpio_b_2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 10], [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm2_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 10], [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_b_3_grp\00", [19 x i8] zeroinitializer }, align 32
@gpio_b_3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 11], [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm3_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 11], [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_grp\00", [22 x i8] zeroinitializer }, align 32
@uart1_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 13, i32 14, i32 15], [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_grp\00", [22 x i8] zeroinitializer }, align 32
@uart2_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 17], [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"synce_grp\00", [22 x i8] zeroinitializer }, align 32
@synce_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 18], [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sata0_led_grp\00", [18 x i8] zeroinitializer }, align 32
@sata0_led_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 19], [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sata1_led_grp\00", [18 x i8] zeroinitializer }, align 32
@sata1_led_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 20], [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xtal_out_grp\00", [19 x i8] zeroinitializer }, align 32
@xtal_out_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 21], [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio_pwr_grp\00", [19 x i8] zeroinitializer }, align 32
@sdio_pwr_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 22], [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdio_1p8v_grp\00", [18 x i8] zeroinitializer }, align 32
@sdio_1p8v_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 23], [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"switch_p05_led0_grp\00", [44 x i8] zeroinitializer }, align 32
@switch_p05_led0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 26], [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"switch_p05_led1_grp\00", [44 x i8] zeroinitializer }, align 32
@switch_p05_led1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 27], [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_grp\00", [23 x i8] zeroinitializer }, align 32
@nand_pins = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42], [52 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emmc_grp\00", [23 x i8] zeroinitializer }, align 32
@emmc_pins = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42], [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@spi_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@i2c_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.57], [28 x i8] zeroinitializer }, align 32
@mdio_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.58], [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@pwm_grps = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66], [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio_b\00", [25 x i8] zeroinitializer }, align 32
@gpio_b_grps = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65], [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@uart2_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.68], [28 x i8] zeroinitializer }, align 32
@synce_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.69], [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_led\00", [23 x i8] zeroinitializer }, align 32
@sata_led_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.70, ptr @.str.71], [24 x i8] zeroinitializer }, align 32
@xtal_out_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.72], [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdio\00", [27 x i8] zeroinitializer }, align 32
@sdio_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.73, ptr @.str.74], [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"switch_led\00", [21 x i8] zeroinitializer }, align 32
@switch_led_grps = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.75, ptr @.str.76], [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@nand_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.77], [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emmc\00", [27 x i8] zeroinitializer }, align 32
@emmc_grps = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.78], [28 x i8] zeroinitializer }, align 32
@nsp_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @nsp_get_groups_count, ptr @nsp_get_group_name, ptr @nsp_get_group_pins, ptr @nsp_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@nsp_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @nsp_get_functions_count, ptr @nsp_get_function_name, ptr @nsp_get_function_groups, ptr @nsp_pinmux_enable, ptr @nsp_gpio_request_enable, ptr @nsp_gpio_disable_free, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@nsp_pinmux_enable.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.91, ptr @.str.92, ptr @.str.4, ptr @.str.93, i8 0, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinctrl_nsp_mux\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nsp_pinmux_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"func:%u name:%s grp:%u name:%s\0A\00", [32 x i8] zeroinitializer }, align 32
@nsp_pinmux_enable.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.91, ptr @.str.92, ptr @.str.4, ptr @.str.94, i8 0, i8 118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"shift:%u alt:%u\0A\00", [47 x i8] zeroinitializer }, align 32
@nsp_pinmux_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"double configuration error detected!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nsp_pinmux_set\00", [17 x i8] zeroinitializer }, align 32
@nsp_pinmux_set._entry_ptr = internal global ptr @nsp_pinmux_set._entry, section ".printk_index", align 4
@nsp_pinmux_set._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"func:%s grp:%s\0A\00", [16 x i8] zeroinitializer }, align 32
@nsp_pinmux_set._entry_ptr.99 = internal global ptr @nsp_pinmux_set._entry.97, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"nsp_pinmux_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 630, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 632, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"nsp_pinmux_of_match\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 625, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 572, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 584, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 594, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [9 x i8] c"nsp_pins\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 151, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant [15 x i8] c"nsp_pin_groups\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 243, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"nsp_pin_functions\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 301, i32 38 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"nsp_pinctrl_desc\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 530, i32 28 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 618, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 152, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 153, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 154, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 155, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 156, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 157, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 158, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 159, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 160, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 161, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 162, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 163, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 164, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 165, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 166, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 167, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 168, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 169, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 170, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 171, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 172, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 173, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 174, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 175, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 176, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 177, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 178, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 179, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 180, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 181, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 182, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 183, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 184, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 185, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 186, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 187, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 188, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 189, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 190, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 191, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 192, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 193, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 194, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 244, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [9 x i8] c"spi_pins\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 201, i32 27 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 245, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [9 x i8] c"i2c_pins\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 202, i32 27 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 246, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [10 x i8] c"mdio_pins\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 203, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 247, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [14 x i8] c"gpio_b_0_pins\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 205, i32 27 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 248, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [10 x i8] c"pwm0_pins\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 204, i32 27 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 249, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [14 x i8] c"gpio_b_1_pins\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 207, i32 27 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 250, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [10 x i8] c"pwm1_pins\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 206, i32 27 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 251, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [14 x i8] c"gpio_b_2_pins\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 209, i32 27 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 252, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [10 x i8] c"pwm2_pins\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 208, i32 27 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 253, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [14 x i8] c"gpio_b_3_pins\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 211, i32 27 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 254, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [10 x i8] c"pwm3_pins\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 210, i32 27 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 255, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [11 x i8] c"uart1_pins\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 212, i32 27 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 256, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [11 x i8] c"uart2_pins\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 213, i32 27 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 257, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [11 x i8] c"synce_pins\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 214, i32 27 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 258, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [15 x i8] c"sata0_led_pins\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 215, i32 27 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 259, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [15 x i8] c"sata1_led_pins\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 216, i32 27 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 260, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant [14 x i8] c"xtal_out_pins\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 217, i32 27 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 261, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [14 x i8] c"sdio_pwr_pins\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 218, i32 27 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 262, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [15 x i8] c"sdio_1p8v_pins\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 219, i32 27 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 263, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [21 x i8] c"switch_p05_led0_pins\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 220, i32 27 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 264, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [21 x i8] c"switch_p05_led1_pins\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 221, i32 27 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 265, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [10 x i8] c"nand_pins\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 222, i32 27 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 266, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [10 x i8] c"emmc_pins\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 224, i32 27 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 302, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [9 x i8] c"spi_grps\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 273, i32 27 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 303, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [9 x i8] c"i2c_grps\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 274, i32 27 }
@___asan_gen_.436 = private unnamed_addr constant [10 x i8] c"mdio_grps\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 275, i32 27 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 305, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [9 x i8] c"pwm_grps\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 276, i32 27 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 306, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [12 x i8] c"gpio_b_grps\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 278, i32 27 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 307, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [11 x i8] c"uart1_grps\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 280, i32 27 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 308, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [11 x i8] c"uart2_grps\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 281, i32 27 }
@___asan_gen_.463 = private unnamed_addr constant [11 x i8] c"synce_grps\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 282, i32 27 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 310, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [14 x i8] c"sata_led_grps\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 283, i32 27 }
@___asan_gen_.472 = private unnamed_addr constant [14 x i8] c"xtal_out_grps\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 284, i32 27 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 312, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [10 x i8] c"sdio_grps\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 285, i32 27 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 313, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [16 x i8] c"switch_led_grps\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 286, i32 27 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 314, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [10 x i8] c"nand_grps\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 288, i32 27 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 315, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [10 x i8] c"emmc_grps\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 289, i32 27 }
@___asan_gen_.499 = private unnamed_addr constant [16 x i8] c"nsp_pinctrl_ops\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 351, i32 33 }
@___asan_gen_.502 = private unnamed_addr constant [15 x i8] c"nsp_pinmux_ops\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 521, i32 32 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 348, i32 16 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 470, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 473, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 413, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.533 = private constant [41 x i8] c"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 415, i32 4 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__initcall__kmod_pinctrl_nsp_mux__225_642_nsp_pinmux_init3, ptr @nsp_pinmux_probe._entry, ptr @nsp_pinmux_probe._entry.10, ptr @nsp_pinmux_probe._entry.7, ptr @nsp_pinmux_probe._entry_ptr, ptr @nsp_pinmux_probe._entry_ptr.12, ptr @nsp_pinmux_probe._entry_ptr.9, ptr @nsp_pinmux_set._entry, ptr @nsp_pinmux_set._entry.97, ptr @nsp_pinmux_set._entry_ptr, ptr @nsp_pinmux_set._entry_ptr.99, ptr @nsp_pinmux_driver, ptr @.str, ptr @nsp_pinmux_of_match, ptr @nsp_pinmux_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @nsp_pins, ptr @nsp_pin_groups, ptr @nsp_pin_functions, ptr @nsp_pinctrl_desc, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @spi_pins, ptr @.str.57, ptr @i2c_pins, ptr @.str.58, ptr @mdio_pins, ptr @.str.59, ptr @gpio_b_0_pins, ptr @.str.60, ptr @pwm0_pins, ptr @.str.61, ptr @gpio_b_1_pins, ptr @.str.62, ptr @pwm1_pins, ptr @.str.63, ptr @gpio_b_2_pins, ptr @.str.64, ptr @pwm2_pins, ptr @.str.65, ptr @gpio_b_3_pins, ptr @.str.66, ptr @pwm3_pins, ptr @.str.67, ptr @uart1_pins, ptr @.str.68, ptr @uart2_pins, ptr @.str.69, ptr @synce_pins, ptr @.str.70, ptr @sata0_led_pins, ptr @.str.71, ptr @sata1_led_pins, ptr @.str.72, ptr @xtal_out_pins, ptr @.str.73, ptr @sdio_pwr_pins, ptr @.str.74, ptr @sdio_1p8v_pins, ptr @.str.75, ptr @switch_p05_led0_pins, ptr @.str.76, ptr @switch_p05_led1_pins, ptr @.str.77, ptr @nand_pins, ptr @.str.78, ptr @emmc_pins, ptr @.str.79, ptr @spi_grps, ptr @.str.80, ptr @i2c_grps, ptr @mdio_grps, ptr @.str.81, ptr @pwm_grps, ptr @.str.82, ptr @gpio_b_grps, ptr @.str.83, ptr @uart1_grps, ptr @.str.84, ptr @uart2_grps, ptr @synce_grps, ptr @.str.85, ptr @sata_led_grps, ptr @xtal_out_grps, ptr @.str.86, ptr @sdio_grps, ptr @.str.87, ptr @switch_led_grps, ptr @.str.88, ptr @nand_grps, ptr @.str.89, ptr @emmc_grps, ptr @nsp_pinctrl_ops, ptr @nsp_pinmux_ops, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98], section "llvm.metadata"
@0 = internal global [145 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinmux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinmux_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinmux_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinmux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinmux_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pins to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pin_groups to i32), i32 644, i32 832, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pin_functions to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinmux_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_b_0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_b_1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_b_2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_b_3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synce_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata0_led_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata1_led_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtal_out_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_pwr_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_1p8v_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_p05_led0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_p05_led1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_pins to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_pins to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_grps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_b_grps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synce_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_led_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xtal_out_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_led_grps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_grps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinmux_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_pinmux_set._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_pinmux_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nsp_pinmux_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_pinmux_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.nsp_pinctrl, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.nsp_pinctrl, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @nsp_pinmux_probe.__key, i16 noundef signext 3) #6
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base0 = getelementptr inbounds %struct.nsp_pinctrl, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %base0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %base0, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %4 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call11, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call11, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %call17 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %5, i32 noundef %add.i) #6
  %base1 = getelementptr inbounds %struct.nsp_pinctrl, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %base1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %base1, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %call26 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 2) #6
  %base2 = getelementptr inbounds %struct.nsp_pinctrl, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %base2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call26, ptr %base2, align 4
  %cmp.i116 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 460, i32 noundef 3520) #6
  %mux_log.i = getelementptr inbounds %struct.nsp_pinctrl, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %mux_log.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i.i, ptr %mux_log.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %do.end38, label %if.end32.for.body.i_crit_edge

if.end32.for.body.i_crit_edge:                    ; preds = %if.end32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end32.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end32.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %mux_log.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux_log.i, align 4
  %arrayidx.i = getelementptr %struct.nsp_mux_log, ptr %15, i32 %i.024.i
  %mux.i = getelementptr [23 x %struct.nsp_pin_group], ptr @nsp_pin_groups, i32 0, i32 %i.024.i, i32 3
  %16 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mux.i, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx.i, align 4
  %shift.i = getelementptr [23 x %struct.nsp_pin_group], ptr @nsp_pin_groups, i32 0, i32 %i.024.i, i32 3, i32 1
  %19 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shift.i, align 4
  %shift9.i = getelementptr inbounds %struct.nsp_mux, ptr %arrayidx.i, i32 0, i32 1
  %21 = ptrtoint ptr %shift9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %shift9.i, align 4
  %alt.i = getelementptr inbounds %struct.nsp_mux, ptr %arrayidx.i, i32 0, i32 3
  %22 = ptrtoint ptr %alt.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %alt.i, align 4
  %is_configured.i = getelementptr %struct.nsp_mux_log, ptr %15, i32 %i.024.i, i32 1
  %23 = ptrtoint ptr %is_configured.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %is_configured.i, align 4
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %if.end40, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end40:                                         ; preds = %for.body.i
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 516, i32 noundef 3520) #6
  %tobool43.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  br label %for.body

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end40.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end40.for.body_crit_edge ]
  %arrayidx = getelementptr [43 x %struct.nsp_pin], ptr @nsp_pins, i32 0, i32 %i.0120
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %arrayidx46 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0120
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx46, align 4
  %name = getelementptr [43 x %struct.nsp_pin], ptr @nsp_pins, i32 0, i32 %i.0120, i32 1
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 4
  %name49 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0120, i32 1
  %29 = ptrtoint ptr %name49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %name49, align 4
  %gpio_select = getelementptr [43 x %struct.nsp_pin], ptr @nsp_pins, i32 0, i32 %i.0120, i32 2
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0120, i32 2
  %30 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %gpio_select, ptr %drv_data, align 4
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, 43
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %groups = getelementptr inbounds %struct.nsp_pinctrl, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @nsp_pin_groups, ptr %groups, align 4
  %num_groups = getelementptr inbounds %struct.nsp_pinctrl, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 23, ptr %num_groups, align 4
  %functions = getelementptr inbounds %struct.nsp_pinctrl, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nsp_pin_functions, ptr %functions, align 4
  %num_functions = getelementptr inbounds %struct.nsp_pinctrl, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 14, ptr %num_functions, align 4
  store ptr %call5.i.i, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @nsp_pinctrl_desc, i32 0, i32 1), align 4
  store i32 43, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @nsp_pinctrl_desc, i32 0, i32 2), align 4
  %call53 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @nsp_pinctrl_desc, ptr noundef nonnull %call.i) #6
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call53, ptr %call.i, align 4
  %cmp.i117 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end59, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end59:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %for.end.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end38, %if.then29, %do.end23, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %10, %if.then29 ], [ -12, %do.end38 ], [ %38, %do.end59 ], [ -12, %do.end23 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -12, %if.end40.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_get_groups_count(ptr noundef %pctrl_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %num_groups = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_groups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nsp_get_group_name(ptr noundef %pctrl_dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %groups = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.nsp_pin_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_get_group_pins(ptr noundef %pctrl_dev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %groups = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.nsp_pin_group, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pins, align 4
  %5 = load ptr, ptr %groups, align 4
  %num_pins4 = getelementptr %struct.nsp_pin_group, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %num_pins4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pins4, align 4
  %8 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsp_pin_dbg_show(ptr nocapture noundef readonly %pctrl_dev, ptr noundef %s, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.90, ptr noundef %retval.0.i) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_get_functions_count(ptr noundef %pctrl_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %num_functions = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_functions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nsp_get_function_name(ptr noundef %pctrl_dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %functions = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.nsp_pin_function, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_get_function_groups(ptr noundef %pctrl_dev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %functions = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.nsp_pin_function, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %num_groups4 = getelementptr %struct.nsp_pin_function, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %num_groups4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_groups4, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_pinmux_enable(ptr noundef %pctrl_dev, i32 noundef %func_select, i32 noundef %grp_select) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %num_groups = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_groups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %grp_select)
  %cmp.not = icmp ugt i32 %1, %grp_select
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_functions = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_functions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %func_select)
  %cmp1.not = icmp ugt i32 %3, %func_select
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %functions = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.nsp_pin_function, ptr %5, i32 %func_select
  %groups = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups, align 4
  %arrayidx2 = getelementptr %struct.nsp_pin_group, ptr %7, i32 %grp_select
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nsp_pinmux_enable.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nsp_pinmux_enable, %do.body10)) #6
          to label %if.then7 [label %do.body10], !srcloc !295

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nsp_pinmux_enable.__UNIQUE_ID_ddebug223, ptr noundef %9, ptr noundef nonnull @.str.93, i32 noundef %func_select, ptr noundef %11, i32 noundef %grp_select, ptr noundef %13) #6
  br label %do.body10

do.body10:                                        ; preds = %if.then7, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nsp_pinmux_enable.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nsp_pinmux_enable, %do.end29)) #6
          to label %if.then24 [label %do.end29], !srcloc !295

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %dev25 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 8
  %14 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev25, align 4
  %shift = getelementptr %struct.nsp_pin_group, ptr %7, i32 %grp_select, i32 3, i32 1
  %16 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift, align 4
  %alt = getelementptr %struct.nsp_pin_group, ptr %7, i32 %grp_select, i32 3, i32 3
  %18 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nsp_pinmux_enable.__UNIQUE_ID_ddebug224, ptr noundef %15, ptr noundef nonnull @.str.94, i32 noundef %17, i32 noundef %19) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body10
  %mux_log = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 9
  %20 = ptrtoint ptr %mux_log to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mux_log, align 4
  %mux1.i = getelementptr %struct.nsp_pin_group, ptr %7, i32 %grp_select, i32 3
  %22 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp100.not.i = icmp eq i32 %23, 0
  br i1 %cmp100.not.i, label %do.end29.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end29.for.end.i_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end29
  %shift.i = getelementptr %struct.nsp_pin_group, ptr %7, i32 %grp_select, i32 3, i32 1
  %24 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shift.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0101.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nsp_mux_log, ptr %21, i32 %i.0101.i
  %shift3.i = getelementptr inbounds %struct.nsp_mux, ptr %arrayidx.i, i32 0, i32 1
  %26 = ptrtoint ptr %shift3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %shift3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp4.not.i = icmp eq i32 %25, %27
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %28 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mux1.i, align 4
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp8.not.i = icmp eq i32 %29, %31
  br i1 %cmp8.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %is_configured.i = getelementptr %struct.nsp_mux_log, ptr %21, i32 %i.0101.i, i32 1
  %32 = ptrtoint ptr %is_configured.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_configured.i, align 4, !range !296
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end11.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end11.i:                                       ; preds = %if.end.i
  %alt.i = getelementptr inbounds %struct.nsp_mux, ptr %arrayidx.i, i32 0, i32 3
  %34 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %alt.i, align 4
  %alt14.i = getelementptr %struct.nsp_pin_group, ptr %7, i32 %grp_select, i32 3, i32 3
  %36 = ptrtoint ptr %alt14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %alt14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp15.not.i = icmp eq i32 %35, %37
  br i1 %cmp15.not.i, label %if.end11.i.cleanup_crit_edge, label %do.end.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 1
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.95) #9
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %44 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.98, ptr noundef %43, ptr noundef %45) #9
  br label %cleanup

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0101.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %23
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %do.end29.for.end.i_crit_edge
  %i.099.i = phi i32 [ %i.0101.i, %if.end.i.for.end.i_crit_edge ], [ 0, %do.end29.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.099.i, i32 %23)
  %cmp24.i = icmp eq i32 %i.099.i, %23
  br i1 %cmp24.i, label %for.end.i.cleanup_crit_edge, label %if.end26.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26.i:                                       ; preds = %for.end.i
  %mask27.i = getelementptr %struct.nsp_pin_group, ptr %7, i32 %grp_select, i32 3, i32 2
  %46 = ptrtoint ptr %mask27.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask27.i, align 4
  %alt28.i = getelementptr %struct.nsp_pin_group, ptr %7, i32 %grp_select, i32 3, i32 3
  %48 = ptrtoint ptr %alt28.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %alt28.i, align 4
  %alt31.i = getelementptr %struct.nsp_mux_log, ptr %21, i32 %i.099.i, i32 0, i32 3
  %50 = ptrtoint ptr %alt31.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %alt31.i, align 4
  %is_configured33.i = getelementptr %struct.nsp_mux_log, ptr %21, i32 %i.099.i, i32 1
  %51 = ptrtoint ptr %is_configured33.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %is_configured33.i, align 4
  %52 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mux1.i, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %53, label %if.end26.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb35.i
    i32 2, label %sw.bb36.i
  ]

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %base0.i = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 2
  br label %do.body38.i

sw.bb35.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %base1.i = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 3
  br label %do.body38.i

sw.bb36.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %base2.i = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 4
  br label %do.body38.i

do.body38.i:                                      ; preds = %sw.bb36.i, %sw.bb35.i, %sw.bb.i
  %base_address.0.in.i = phi ptr [ %base2.i, %sw.bb36.i ], [ %base1.i, %sw.bb35.i ], [ %base0.i, %sw.bb.i ]
  %55 = ptrtoint ptr %base_address.0.in.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %base_address.0.i = load ptr, ptr %base_address.0.in.i, align 4
  %lock.i = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 10
  %call40.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base_address.0.i) #6, !srcloc !297
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !298
  %shift49.i = getelementptr %struct.nsp_pin_group, ptr %7, i32 %grp_select, i32 3, i32 1
  %58 = ptrtoint ptr %shift49.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %shift49.i, align 4
  %shl.i = shl i32 %47, %59
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %57, %neg.i
  %60 = ptrtoint ptr %alt28.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %alt28.i, align 4
  %shl54.i = shl i32 %61, %59
  %or.i = or i32 %and.i, %shl54.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !299
  tail call void @arm_heavy_mb() #6
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %base_address.0.i, i32 %62) #6, !srcloc !300
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call40.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body38.i, %if.end26.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end.i, %if.end11.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %do.body38.i ], [ 0, %if.end11.i.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %if.end26.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsp_gpio_request_enable(ptr noundef %pctrl_dev, ptr nocapture noundef readnone %range, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %lock = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base0 = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %base0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base0, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !297
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !301
  %shl = shl nuw i32 1, %pin
  %and = and i32 %9, %shl
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %shl9 = shl i32 %11, %pin
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shl9)
  %cmp10.not = icmp eq i32 %and, %shl9
  br i1 %cmp10.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %shl, -1
  %and13 = and i32 %9, %neg
  %or = or i32 %shl9, %and13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !302
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %base0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !300
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsp_gpio_disable_free(ptr noundef %pctrl_dev, ptr nocapture noundef readnone %range, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctrl_dev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %lock = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base0 = getelementptr inbounds %struct.nsp_pinctrl, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %base0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base0, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !297
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !303
  %shl = shl nuw i32 1, %pin
  %and = and i32 %9, %shl
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %shl9 = shl i32 %11, %pin
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shl9)
  %cmp10 = icmp eq i32 %and, %shl9
  br i1 %cmp10, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %shl, -1
  %and13 = and i32 %9, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %or = or i32 %9, %shl
  %spec.select = select i1 %tobool.not, i32 %or, i32 %and13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !304
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %13 = ptrtoint ptr %base0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !300
  br label %if.end20

if.end20:                                         ; preds = %if.then, %entry.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !270, !271, !272, !274, !275, !277, !278, !279, !280, !282, !283, !284}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @__initcall__kmod_pinctrl_nsp_mux__225_642_nsp_pinmux_init3, !1, !"__initcall__kmod_pinctrl_nsp_mux__225_642_nsp_pinmux_init3", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 642, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 632, i32 11}
!4 = !{ptr @nsp_pinmux_driver, !5, !"nsp_pinmux_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 630, i32 31}
!6 = !{ptr @nsp_pinmux_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 572, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 584, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nsp_pinmux_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @nsp_pinmux_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 594, i32 3}
!19 = !{ptr @nsp_pinmux_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @nsp_pinmux_probe._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 618, i32 3}
!23 = !{ptr @nsp_pinmux_probe._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nsp_pinmux_probe._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 152, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 153, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 154, i32 2}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 155, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 156, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 157, i32 2}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 158, i32 2}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 159, i32 2}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 160, i32 2}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 161, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 162, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 163, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 164, i32 2}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 165, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 166, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 167, i32 2}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 168, i32 2}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 169, i32 2}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 170, i32 2}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 171, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 172, i32 2}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 173, i32 2}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 174, i32 2}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 175, i32 2}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 176, i32 2}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 177, i32 2}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 178, i32 2}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 179, i32 2}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 180, i32 2}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 181, i32 2}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 182, i32 2}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 183, i32 2}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 184, i32 2}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 185, i32 2}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 186, i32 2}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 187, i32 2}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 188, i32 2}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 189, i32 2}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 190, i32 2}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 191, i32 2}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 192, i32 2}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 193, i32 2}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 194, i32 2}
!111 = !{ptr @nsp_pins, !112, !"nsp_pins", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 151, i32 23}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 244, i32 2}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 245, i32 2}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 246, i32 2}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 247, i32 2}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 248, i32 2}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 249, i32 2}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 250, i32 2}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 251, i32 2}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 252, i32 2}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 253, i32 2}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 254, i32 2}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 255, i32 2}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 256, i32 2}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 257, i32 2}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 258, i32 2}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 259, i32 2}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 260, i32 2}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 261, i32 2}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 262, i32 2}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 263, i32 2}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 264, i32 2}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 265, i32 2}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 266, i32 2}
!159 = !{ptr @nsp_pin_groups, !160, !"nsp_pin_groups", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 243, i32 35}
!161 = !{ptr @spi_pins, !162, !"spi_pins", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 201, i32 27}
!163 = !{ptr @i2c_pins, !164, !"i2c_pins", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 202, i32 27}
!165 = !{ptr @mdio_pins, !166, !"mdio_pins", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 203, i32 27}
!167 = !{ptr @gpio_b_0_pins, !168, !"gpio_b_0_pins", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 205, i32 27}
!169 = !{ptr @pwm0_pins, !170, !"pwm0_pins", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 204, i32 27}
!171 = !{ptr @gpio_b_1_pins, !172, !"gpio_b_1_pins", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 207, i32 27}
!173 = !{ptr @pwm1_pins, !174, !"pwm1_pins", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 206, i32 27}
!175 = !{ptr @gpio_b_2_pins, !176, !"gpio_b_2_pins", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 209, i32 27}
!177 = !{ptr @pwm2_pins, !178, !"pwm2_pins", i1 false, i1 false}
!178 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 208, i32 27}
!179 = !{ptr @gpio_b_3_pins, !180, !"gpio_b_3_pins", i1 false, i1 false}
!180 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 211, i32 27}
!181 = !{ptr @pwm3_pins, !182, !"pwm3_pins", i1 false, i1 false}
!182 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 210, i32 27}
!183 = !{ptr @uart1_pins, !184, !"uart1_pins", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 212, i32 27}
!185 = !{ptr @uart2_pins, !186, !"uart2_pins", i1 false, i1 false}
!186 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 213, i32 27}
!187 = !{ptr @synce_pins, !188, !"synce_pins", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 214, i32 27}
!189 = !{ptr @sata0_led_pins, !190, !"sata0_led_pins", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 215, i32 27}
!191 = !{ptr @sata1_led_pins, !192, !"sata1_led_pins", i1 false, i1 false}
!192 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 216, i32 27}
!193 = !{ptr @xtal_out_pins, !194, !"xtal_out_pins", i1 false, i1 false}
!194 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 217, i32 27}
!195 = !{ptr @sdio_pwr_pins, !196, !"sdio_pwr_pins", i1 false, i1 false}
!196 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 218, i32 27}
!197 = !{ptr @sdio_1p8v_pins, !198, !"sdio_1p8v_pins", i1 false, i1 false}
!198 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 219, i32 27}
!199 = !{ptr @switch_p05_led0_pins, !200, !"switch_p05_led0_pins", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 220, i32 27}
!201 = !{ptr @switch_p05_led1_pins, !202, !"switch_p05_led1_pins", i1 false, i1 false}
!202 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 221, i32 27}
!203 = !{ptr @nand_pins, !204, !"nand_pins", i1 false, i1 false}
!204 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 222, i32 27}
!205 = !{ptr @emmc_pins, !206, !"emmc_pins", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 224, i32 27}
!207 = !{ptr @.str.79, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 302, i32 2}
!209 = !{ptr @.str.80, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 303, i32 2}
!211 = !{ptr @.str.81, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 305, i32 2}
!213 = !{ptr @.str.82, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 306, i32 2}
!215 = !{ptr @.str.83, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 307, i32 2}
!217 = !{ptr @.str.84, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 308, i32 2}
!219 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 310, i32 2}
!221 = !{ptr @.str.86, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 312, i32 2}
!223 = !{ptr @.str.87, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 313, i32 2}
!225 = !{ptr @.str.88, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 314, i32 2}
!227 = !{ptr @.str.89, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 315, i32 2}
!229 = !{ptr @nsp_pin_functions, !230, !"nsp_pin_functions", i1 false, i1 false}
!230 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 301, i32 38}
!231 = !{ptr @spi_grps, !232, !"spi_grps", i1 false, i1 false}
!232 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 273, i32 27}
!233 = !{ptr @i2c_grps, !234, !"i2c_grps", i1 false, i1 false}
!234 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 274, i32 27}
!235 = !{ptr @mdio_grps, !236, !"mdio_grps", i1 false, i1 false}
!236 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 275, i32 27}
!237 = !{ptr @pwm_grps, !238, !"pwm_grps", i1 false, i1 false}
!238 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 276, i32 27}
!239 = !{ptr @gpio_b_grps, !240, !"gpio_b_grps", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 278, i32 27}
!241 = !{ptr @uart1_grps, !242, !"uart1_grps", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 280, i32 27}
!243 = !{ptr @uart2_grps, !244, !"uart2_grps", i1 false, i1 false}
!244 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 281, i32 27}
!245 = !{ptr @synce_grps, !246, !"synce_grps", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 282, i32 27}
!247 = !{ptr @sata_led_grps, !248, !"sata_led_grps", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 283, i32 27}
!249 = !{ptr @xtal_out_grps, !250, !"xtal_out_grps", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 284, i32 27}
!251 = !{ptr @sdio_grps, !252, !"sdio_grps", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 285, i32 27}
!253 = !{ptr @switch_led_grps, !254, !"switch_led_grps", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 286, i32 27}
!255 = !{ptr @nand_grps, !256, !"nand_grps", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 288, i32 27}
!257 = !{ptr @emmc_grps, !258, !"emmc_grps", i1 false, i1 false}
!258 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 289, i32 27}
!259 = !{ptr @nsp_pinctrl_desc, !260, !"nsp_pinctrl_desc", i1 false, i1 false}
!260 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 530, i32 28}
!261 = !{ptr @nsp_pinctrl_ops, !262, !"nsp_pinctrl_ops", i1 false, i1 false}
!262 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 351, i32 33}
!263 = !{ptr @.str.90, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 348, i32 16}
!265 = !{ptr @nsp_pinmux_ops, !266, !"nsp_pinmux_ops", i1 false, i1 false}
!266 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 521, i32 32}
!267 = !{ptr @.str.91, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 470, i32 2}
!269 = !{ptr @.str.92, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.93, !268, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @nsp_pinmux_enable.__UNIQUE_ID_ddebug223, !268, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!272 = !{ptr @.str.94, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 473, i32 2}
!274 = !{ptr @nsp_pinmux_enable.__UNIQUE_ID_ddebug224, !273, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!275 = !{ptr @.str.95, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 413, i32 4}
!277 = !{ptr @.str.96, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @nsp_pinmux_set._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @nsp_pinmux_set._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.98, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 415, i32 4}
!282 = !{ptr @nsp_pinmux_set._entry.97, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @nsp_pinmux_set._entry_ptr.99, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @nsp_pinmux_of_match, !285, !"nsp_pinmux_of_match", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/bcm/pinctrl-nsp-mux.c", i32 625, i32 34}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{i64 2148179102, i64 2148179107, i64 2148179120, i64 2148179164, i64 2148179198, i64 2148179219}
!296 = !{i8 0, i8 2}
!297 = !{i64 701879}
!298 = !{i64 2153695695}
!299 = !{i64 2153695904}
!300 = !{i64 701461}
!301 = !{i64 2153701842}
!302 = !{i64 2153702207}
!303 = !{i64 2153703213}
!304 = !{i64 2153703424}
