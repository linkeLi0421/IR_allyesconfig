; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/bcm/pinctrl-ns.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-ns.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.ns_pinctrl_group = type { ptr, ptr, i32, i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.ns_pinctrl = type { ptr, i32, ptr, ptr, %struct.pinctrl_desc }
%struct.group_desc = type { ptr, ptr, i32, ptr }

@__initcall__kmod_pinctrl_ns__223_301_ns_pinctrl_driver_init6 = internal global ptr @ns_pinctrl_driver_init, section ".initcall6.init", align 4
@ns_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ns_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ns_pinctrl_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ns_pinctrl_driver_exit = internal global ptr @ns_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [34 x i8] c"pinctrl_ns.author=Rafa\C5\82 Mi\C5\82ecki\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [47 x i8] c"pinctrl_ns.file=drivers/pinctrl/bcm/pinctrl-ns\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [26 x i8] c"pinctrl_ns.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ns-pinmux\00", [22 x i8] zeroinitializer }, align 32
@ns_pinctrl_of_match_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4708-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4709-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53012-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cru_gpio_control\00", [47 x i8] zeroinitializer }, align 32
@ns_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 237, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to map pinctrl regs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns_pinctrl_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/pinctrl/bcm/pinctrl-ns.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ns_pinctrl_probe._entry_ptr = internal global ptr @ns_pinctrl_probe._entry, section ".printk_index", align 4
@ns_pinctrl_desc = internal constant { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.10, ptr null, i32 0, ptr @ns_pinctrl_ops, ptr @ns_pinctrl_pmxops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ns_pinctrl_pins = internal constant { [20 x %struct.pinctrl_pin_desc], [48 x i8] } { [20 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.11, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.12, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.13, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.14, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.15, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.16, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.17, ptr inttoptr (i32 12 to ptr) }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.18, ptr inttoptr (i32 12 to ptr) }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.19, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.20, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.21, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.22, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.23, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.24, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.25, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.26, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.27, ptr inttoptr (i32 12 to ptr) }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.28, ptr inttoptr (i32 12 to ptr) }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.29, ptr inttoptr (i32 12 to ptr) }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.30, ptr inttoptr (i32 12 to ptr) }], [48 x i8] zeroinitializer }, align 32
@ns_pinctrl_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register pinctrl\0A\00", [36 x i8] zeroinitializer }, align 32
@ns_pinctrl_probe._entry_ptr.9 = internal global ptr @ns_pinctrl_probe._entry.7, section ".printk_index", align 4
@ns_pinctrl_groups = internal constant { [11 x %struct.ns_pinctrl_group], [48 x i8] } { [11 x %struct.ns_pinctrl_group] [%struct.ns_pinctrl_group { ptr @.str.31, ptr @spi_pins, i32 4, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.32, ptr @i2c_pins, i32 2, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.33, ptr @mdio_pins, i32 2, i32 12 }, %struct.ns_pinctrl_group { ptr @.str.34, ptr @pwm0_pins, i32 1, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.35, ptr @pwm1_pins, i32 1, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.36, ptr @pwm2_pins, i32 1, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.37, ptr @pwm3_pins, i32 1, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.38, ptr @uart1_pins, i32 4, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.39, ptr @uart2_pins, i32 2, i32 12 }, %struct.ns_pinctrl_group { ptr @.str.40, ptr @sdio_pwr_pins, i32 1, i32 12 }, %struct.ns_pinctrl_group { ptr @.str.41, ptr @sdio_1p8v_pins, i32 1, i32 12 }], [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pinctrl-ns\00", [21 x i8] zeroinitializer }, align 32
@ns_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinconf_generic_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@ns_pinctrl_pmxops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @ns_pinctrl_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi_ss\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi_mosi\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi_miso\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_scl\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_sda\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdc\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm0\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart1_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart1_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_cts\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_rts\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart2_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart2_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio_pwr\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio_en_1p8v\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_grp\00", [24 x i8] zeroinitializer }, align 32
@spi_pins = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_grp\00", [24 x i8] zeroinitializer }, align 32
@i2c_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 5], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdio_grp\00", [23 x i8] zeroinitializer }, align 32
@mdio_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 6, i32 7], [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm0_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm0_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 8], [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm1_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 9], [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm2_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm2_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 10], [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm3_grp\00", [23 x i8] zeroinitializer }, align 32
@pwm3_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 11], [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_grp\00", [22 x i8] zeroinitializer }, align 32
@uart1_pins = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 13, i32 14, i32 15], [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_grp\00", [22 x i8] zeroinitializer }, align 32
@uart2_pins = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 17], [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdio_pwr_grp\00", [19 x i8] zeroinitializer }, align 32
@sdio_pwr_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 22], [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdio_1p8v_grp\00", [18 x i8] zeroinitializer }, align 32
@sdio_1p8v_pins = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 23], [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@spi_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.31], [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@i2c_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.32], [28 x i8] zeroinitializer }, align 32
@mdio_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@pwm_groups = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@uart2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.39], [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdio\00", [27 x i8] zeroinitializer }, align 32
@sdio_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.40, ptr @.str.41], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"ns_pinctrl_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 293, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 296, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"ns_pinctrl_of_match_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 201, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 234, i32 9 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 237, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"ns_pinctrl_desc\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 195, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"ns_pinctrl_pins\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 37, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 265, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"ns_pinctrl_groups\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 92, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 196, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"ns_pinctrl_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 148, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"ns_pinctrl_pmxops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 184, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 38, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 39, i32 7 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 40, i32 7 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 41, i32 7 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 42, i32 7 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 43, i32 7 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 44, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 45, i32 7 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 46, i32 7 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 47, i32 7 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 48, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 49, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 50, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 51, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 52, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 53, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 54, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 55, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 57, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 58, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 93, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [9 x i8] c"spi_pins\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 72, i32 21 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 94, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [9 x i8] c"i2c_pins\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 73, i32 21 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 95, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [10 x i8] c"mdio_pins\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 74, i32 21 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 96, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [10 x i8] c"pwm0_pins\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 75, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 97, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [10 x i8] c"pwm1_pins\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 76, i32 21 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 98, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"pwm2_pins\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 77, i32 21 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 99, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [10 x i8] c"pwm3_pins\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 78, i32 21 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 100, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [11 x i8] c"uart1_pins\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 79, i32 21 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 101, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [11 x i8] c"uart2_pins\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 80, i32 21 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 102, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [14 x i8] c"sdio_pwr_pins\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 81, i32 21 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 103, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [15 x i8] c"sdio_1p8v_pins\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 82, i32 21 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 135, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [11 x i8] c"spi_groups\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 117, i32 27 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 136, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [11 x i8] c"i2c_groups\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 118, i32 27 }
@___asan_gen_.240 = private unnamed_addr constant [12 x i8] c"mdio_groups\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 119, i32 27 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 138, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [11 x i8] c"pwm_groups\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 120, i32 27 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 139, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [13 x i8] c"uart1_groups\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 122, i32 27 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 140, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [13 x i8] c"uart2_groups\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 123, i32 27 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 141, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [12 x i8] c"sdio_groups\00", align 1
@___asan_gen_.265 = private constant [36 x i8] c"../drivers/pinctrl/bcm/pinctrl-ns.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 124, i32 27 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_ns_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_ns__223_301_ns_pinctrl_driver_init6, ptr @ns_pinctrl_driver_exit, ptr @ns_pinctrl_probe._entry, ptr @ns_pinctrl_probe._entry.7, ptr @ns_pinctrl_probe._entry_ptr, ptr @ns_pinctrl_probe._entry_ptr.9, ptr @ns_pinctrl_driver, ptr @.str, ptr @ns_pinctrl_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ns_pinctrl_desc, ptr @ns_pinctrl_pins, ptr @.str.8, ptr @ns_pinctrl_groups, ptr @.str.10, ptr @ns_pinctrl_ops, ptr @ns_pinctrl_pmxops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @spi_pins, ptr @.str.32, ptr @i2c_pins, ptr @.str.33, ptr @mdio_pins, ptr @.str.34, ptr @pwm0_pins, ptr @.str.35, ptr @pwm1_pins, ptr @.str.36, ptr @pwm2_pins, ptr @.str.37, ptr @pwm3_pins, ptr @.str.38, ptr @uart1_pins, ptr @.str.39, ptr @uart2_pins, ptr @.str.40, ptr @sdio_pwr_pins, ptr @.str.41, ptr @sdio_1p8v_pins, ptr @.str.42, ptr @spi_groups, ptr @.str.43, ptr @i2c_groups, ptr @mdio_groups, ptr @.str.44, ptr @pwm_groups, ptr @.str.45, ptr @uart1_groups, ptr @.str.46, ptr @uart2_groups, ptr @.str.47, ptr @sdio_groups], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_pinctrl_of_match_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_pinctrl_pins to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_pinctrl_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_pinctrl_groups to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_pinctrl_pmxops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_pwr_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_1p8v_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ns_pinctrl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ns_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ns_pinctrl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup73_crit_edge, label %if.end

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end:                                           ; preds = %entry
  %pctldesc2 = getelementptr inbounds %struct.ns_pinctrl, ptr %call.i, i32 0, i32 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call4 = tail call ptr @of_match_device(ptr noundef nonnull @ns_pinctrl_of_match_table, ptr noundef %dev1) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup73_crit_edge, label %if.end7

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end7:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  %chipset_flag = getelementptr inbounds %struct.ns_pinctrl, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %chipset_flag to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %chipset_flag, align 4
  %call8 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #6
  %call9 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call8) #6
  %base = getelementptr inbounds %struct.ns_pinctrl, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup73

if.end15:                                         ; preds = %if.end7
  %10 = call ptr @memcpy(ptr %pctldesc2, ptr @ns_pinctrl_desc, i32 44)
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 240, i32 noundef 3520) #6
  %pins = getelementptr inbounds %struct.ns_pinctrl, ptr %call.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %pins, align 4
  %tobool18.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool18.not, label %if.end15.cleanup73_crit_edge, label %for.cond.preheader

if.end15.cleanup73_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

for.cond.preheader:                               ; preds = %if.end15
  %npins = getelementptr inbounds %struct.ns_pinctrl, ptr %call.i, i32 0, i32 4, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.cond.preheader
  %i.0128 = phi i32 [ 0, %for.cond.preheader ], [ %inc27, %if.end26.for.body_crit_edge ]
  %pin.0127 = phi ptr [ %call5.i.i, %for.cond.preheader ], [ %pin.1, %if.end26.for.body_crit_edge ]
  %drv_data = getelementptr [20 x %struct.pinctrl_pin_desc], ptr @ns_pinctrl_pins, i32 0, i32 %i.0128, i32 2
  %12 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv_data, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %chipset_flag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chipset_flag, align 4
  %and = and i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %for.body.if.end26_crit_edge, label %if.then25

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22 = getelementptr [20 x %struct.pinctrl_pin_desc], ptr @ns_pinctrl_pins, i32 0, i32 %i.0128
  %incdec.ptr = getelementptr %struct.pinctrl_pin_desc, ptr %pin.0127, i32 1
  %17 = call ptr @memcpy(ptr %pin.0127, ptr %arrayidx22, i32 12)
  %18 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npins, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %npins, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.body.if.end26_crit_edge
  %pin.1 = phi ptr [ %incdec.ptr, %if.then25 ], [ %pin.0127, %for.body.if.end26_crit_edge ]
  %inc27 = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc27, 20
  br i1 %exitcond.not, label %for.end, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end26
  %call28 = tail call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef %pctldesc2, ptr noundef nonnull %call.i) #6
  %pctldev = getelementptr inbounds %struct.ns_pinctrl, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %pctldev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call28, ptr %pctldev, align 4
  %cmp.i126 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %do.end34, label %for.end.for.body40_crit_edge

for.end.for.body40_crit_edge:                     ; preds = %for.end
  br label %for.body40

do.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %21 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pctldev, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup73

for.body40:                                       ; preds = %cleanup.for.body40_crit_edge, %for.end.for.body40_crit_edge
  %i.1130 = phi i32 [ %inc52, %cleanup.for.body40_crit_edge ], [ 0, %for.end.for.body40_crit_edge ]
  %chipsets42 = getelementptr [11 x %struct.ns_pinctrl_group], ptr @ns_pinctrl_groups, i32 0, i32 %i.1130, i32 3
  %24 = ptrtoint ptr %chipsets42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chipsets42, align 4
  %26 = ptrtoint ptr %chipset_flag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chipset_flag, align 4
  %and44 = and i32 %27, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %for.body40.cleanup_crit_edge, label %if.end47

for.body40.cleanup_crit_edge:                     ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx41 = getelementptr [11 x %struct.ns_pinctrl_group], ptr @ns_pinctrl_groups, i32 0, i32 %i.1130
  %28 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pctldev, align 4
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx41, align 4
  %pins49 = getelementptr [11 x %struct.ns_pinctrl_group], ptr @ns_pinctrl_groups, i32 0, i32 %i.1130, i32 1
  %32 = ptrtoint ptr %pins49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pins49, align 4
  %num_pins = getelementptr [11 x %struct.ns_pinctrl_group], ptr @ns_pinctrl_groups, i32 0, i32 %i.1130, i32 2
  %34 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_pins, align 4
  %call50 = tail call i32 @pinctrl_generic_add_group(ptr noundef %29, ptr noundef %31, ptr noundef %33, i32 noundef %35, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %for.body40.cleanup_crit_edge
  %inc52 = add nuw nsw i32 %i.1130, 1
  %exitcond134.not = icmp eq i32 %inc52, 11
  br i1 %exitcond134.not, label %for.body56.preheader, label %cleanup.for.body40_crit_edge

cleanup.for.body40_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body40

for.body56.preheader:                             ; preds = %cleanup
  %36 = ptrtoint ptr %chipset_flag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chipset_flag, align 4
  %and60 = and i32 %37, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %for.body56.preheader.cleanup67_crit_edge, label %if.end63

for.body56.preheader.cleanup67_crit_edge:         ; preds = %for.body56.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67

if.end63:                                         ; preds = %for.body56.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pctldev, align 4
  %call66 = tail call i32 @pinmux_generic_add_function(ptr noundef %39, ptr noundef nonnull @.str.42, ptr noundef nonnull @spi_groups, i32 noundef 1, ptr noundef null) #6
  br label %cleanup67

cleanup67:                                        ; preds = %if.end63, %for.body56.preheader.cleanup67_crit_edge
  %40 = ptrtoint ptr %chipset_flag to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chipset_flag, align 4
  %and60.1 = and i32 %41, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.1)
  %tobool61.not.1 = icmp eq i32 %and60.1, 0
  br i1 %tobool61.not.1, label %cleanup67.cleanup67.1_crit_edge, label %if.end63.1

cleanup67.cleanup67.1_crit_edge:                  ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67.1

if.end63.1:                                       ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pctldev, align 4
  %call66.1 = tail call i32 @pinmux_generic_add_function(ptr noundef %43, ptr noundef nonnull @.str.43, ptr noundef nonnull @i2c_groups, i32 noundef 1, ptr noundef null) #6
  br label %cleanup67.1

cleanup67.1:                                      ; preds = %if.end63.1, %cleanup67.cleanup67.1_crit_edge
  %44 = ptrtoint ptr %chipset_flag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chipset_flag, align 4
  %and60.2 = and i32 %45, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.2)
  %tobool61.not.2 = icmp eq i32 %and60.2, 0
  br i1 %tobool61.not.2, label %cleanup67.1.cleanup67.2_crit_edge, label %if.end63.2

cleanup67.1.cleanup67.2_crit_edge:                ; preds = %cleanup67.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67.2

if.end63.2:                                       ; preds = %cleanup67.1
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pctldev, align 4
  %call66.2 = tail call i32 @pinmux_generic_add_function(ptr noundef %47, ptr noundef nonnull @.str.18, ptr noundef nonnull @mdio_groups, i32 noundef 1, ptr noundef null) #6
  br label %cleanup67.2

cleanup67.2:                                      ; preds = %if.end63.2, %cleanup67.1.cleanup67.2_crit_edge
  %48 = ptrtoint ptr %chipset_flag to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chipset_flag, align 4
  %and60.3 = and i32 %49, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.3)
  %tobool61.not.3 = icmp eq i32 %and60.3, 0
  br i1 %tobool61.not.3, label %cleanup67.2.cleanup67.3_crit_edge, label %if.end63.3

cleanup67.2.cleanup67.3_crit_edge:                ; preds = %cleanup67.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67.3

if.end63.3:                                       ; preds = %cleanup67.2
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pctldev, align 4
  %call66.3 = tail call i32 @pinmux_generic_add_function(ptr noundef %51, ptr noundef nonnull @.str.44, ptr noundef nonnull @pwm_groups, i32 noundef 4, ptr noundef null) #6
  br label %cleanup67.3

cleanup67.3:                                      ; preds = %if.end63.3, %cleanup67.2.cleanup67.3_crit_edge
  %52 = ptrtoint ptr %chipset_flag to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chipset_flag, align 4
  %and60.4 = and i32 %53, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.4)
  %tobool61.not.4 = icmp eq i32 %and60.4, 0
  br i1 %tobool61.not.4, label %cleanup67.3.cleanup67.4_crit_edge, label %if.end63.4

cleanup67.3.cleanup67.4_crit_edge:                ; preds = %cleanup67.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67.4

if.end63.4:                                       ; preds = %cleanup67.3
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pctldev, align 4
  %call66.4 = tail call i32 @pinmux_generic_add_function(ptr noundef %55, ptr noundef nonnull @.str.45, ptr noundef nonnull @uart1_groups, i32 noundef 1, ptr noundef null) #6
  br label %cleanup67.4

cleanup67.4:                                      ; preds = %if.end63.4, %cleanup67.3.cleanup67.4_crit_edge
  %56 = ptrtoint ptr %chipset_flag to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %chipset_flag, align 4
  %and60.5 = and i32 %57, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.5)
  %tobool61.not.5 = icmp eq i32 %and60.5, 0
  br i1 %tobool61.not.5, label %cleanup67.4.cleanup67.5_crit_edge, label %if.end63.5

cleanup67.4.cleanup67.5_crit_edge:                ; preds = %cleanup67.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup67.5

if.end63.5:                                       ; preds = %cleanup67.4
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pctldev, align 4
  %call66.5 = tail call i32 @pinmux_generic_add_function(ptr noundef %59, ptr noundef nonnull @.str.46, ptr noundef nonnull @uart2_groups, i32 noundef 1, ptr noundef null) #6
  br label %cleanup67.5

cleanup67.5:                                      ; preds = %if.end63.5, %cleanup67.4.cleanup67.5_crit_edge
  %60 = ptrtoint ptr %chipset_flag to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %chipset_flag, align 4
  %and60.6 = and i32 %61, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.6)
  %tobool61.not.6 = icmp eq i32 %and60.6, 0
  br i1 %tobool61.not.6, label %cleanup67.5.cleanup73_crit_edge, label %if.end63.6

cleanup67.5.cleanup73_crit_edge:                  ; preds = %cleanup67.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end63.6:                                       ; preds = %cleanup67.5
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pctldev, align 4
  %call66.6 = tail call i32 @pinmux_generic_add_function(ptr noundef %63, ptr noundef nonnull @.str.47, ptr noundef nonnull @sdio_groups, i32 noundef 2, ptr noundef null) #6
  br label %cleanup73

cleanup73:                                        ; preds = %if.end63.6, %cleanup67.5.cleanup73_crit_edge, %do.end34, %if.end15.cleanup73_crit_edge, %do.end, %if.end.cleanup73_crit_edge, %entry.cleanup73_crit_edge
  %retval.0 = phi i32 [ %9, %do.end ], [ %23, %do.end34 ], [ -12, %entry.cleanup73_crit_edge ], [ -22, %if.end.cleanup73_crit_edge ], [ -12, %if.end15.cleanup73_crit_edge ], [ 0, %if.end63.6 ], [ 0, %cleanup67.5.cleanup73_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #6
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
define internal i32 @ns_pinctrl_set_mux(ptr noundef %pctrl_dev, i32 noundef %func_select, i32 noundef %group_selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #6
  %call1 = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctrl_dev, i32 noundef %group_selector) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_pins = getelementptr inbounds %struct.group_desc, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18 = icmp sgt i32 %1, 0
  br i1 %cmp18, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pins = getelementptr inbounds %struct.group_desc, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %unset.020 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %3, i32 %i.019
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %5
  %or = or i32 %shl, %unset.020
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = xor i32 %or, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %unset.0.lcssa = phi i32 [ -1, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %base = getelementptr inbounds %struct.ns_pinctrl, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !161
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %and = and i32 %9, %unset.0.lcssa
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !164
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @__initcall__kmod_pinctrl_ns__223_301_ns_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_ns__223_301_ns_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 301, i32 1}
!2 = !{ptr @__exitcall_ns_pinctrl_driver_exit, !1, !"__exitcall_ns_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 303, i32 1}
!5 = !{ptr @__UNIQUE_ID_file225, !6, !"__UNIQUE_ID_file225", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 304, i32 1}
!7 = !{ptr @__UNIQUE_ID_license226, !6, !"__UNIQUE_ID_license226", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 296, i32 11}
!10 = !{ptr @ns_pinctrl_driver, !11, !"ns_pinctrl_driver", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 293, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 234, i32 9}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 237, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ns_pinctrl_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ns_pinctrl_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 265, i32 3}
!24 = !{ptr @ns_pinctrl_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ns_pinctrl_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 196, i32 10}
!28 = !{ptr @ns_pinctrl_desc, !29, !"ns_pinctrl_desc", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 195, i32 28}
!30 = !{ptr @ns_pinctrl_ops, !31, !"ns_pinctrl_ops", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 148, i32 33}
!32 = !{ptr @ns_pinctrl_pmxops, !33, !"ns_pinctrl_pmxops", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 184, i32 32}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 38, i32 7}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 39, i32 7}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 40, i32 7}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 41, i32 7}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 42, i32 7}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 43, i32 7}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 44, i32 7}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 45, i32 7}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 46, i32 7}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 47, i32 7}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 48, i32 8}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 49, i32 8}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 50, i32 8}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 51, i32 8}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 52, i32 8}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 53, i32 8}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 54, i32 8}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 55, i32 8}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 57, i32 8}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 58, i32 8}
!74 = !{ptr @ns_pinctrl_pins, !75, !"ns_pinctrl_pins", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 37, i32 38}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 93, i32 2}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 94, i32 2}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 95, i32 2}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 96, i32 2}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 97, i32 2}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 98, i32 2}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 99, i32 2}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 100, i32 2}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 101, i32 2}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 102, i32 2}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 103, i32 2}
!98 = !{ptr @ns_pinctrl_groups, !99, !"ns_pinctrl_groups", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 92, i32 38}
!100 = !{ptr @spi_pins, !101, !"spi_pins", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 72, i32 21}
!102 = !{ptr @i2c_pins, !103, !"i2c_pins", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 73, i32 21}
!104 = !{ptr @mdio_pins, !105, !"mdio_pins", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 74, i32 21}
!106 = !{ptr @pwm0_pins, !107, !"pwm0_pins", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 75, i32 21}
!108 = !{ptr @pwm1_pins, !109, !"pwm1_pins", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 76, i32 21}
!110 = !{ptr @pwm2_pins, !111, !"pwm2_pins", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 77, i32 21}
!112 = !{ptr @pwm3_pins, !113, !"pwm3_pins", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 78, i32 21}
!114 = !{ptr @uart1_pins, !115, !"uart1_pins", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 79, i32 21}
!116 = !{ptr @uart2_pins, !117, !"uart2_pins", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 80, i32 21}
!118 = !{ptr @sdio_pwr_pins, !119, !"sdio_pwr_pins", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 81, i32 21}
!120 = !{ptr @sdio_1p8v_pins, !121, !"sdio_1p8v_pins", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 82, i32 21}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 135, i32 2}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 136, i32 2}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 138, i32 2}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 139, i32 2}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 140, i32 2}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 141, i32 2}
!134 = distinct !{null, !135, !"ns_pinctrl_functions", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 134, i32 41}
!136 = !{ptr @spi_groups, !137, !"spi_groups", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 117, i32 27}
!138 = !{ptr @i2c_groups, !139, !"i2c_groups", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 118, i32 27}
!140 = !{ptr @mdio_groups, !141, !"mdio_groups", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 119, i32 27}
!142 = !{ptr @pwm_groups, !143, !"pwm_groups", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 120, i32 27}
!144 = !{ptr @uart1_groups, !145, !"uart1_groups", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 122, i32 27}
!146 = !{ptr @uart2_groups, !147, !"uart2_groups", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 123, i32 27}
!148 = !{ptr @sdio_groups, !149, !"sdio_groups", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 124, i32 27}
!150 = !{ptr @ns_pinctrl_of_match_table, !151, !"ns_pinctrl_of_match_table", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/bcm/pinctrl-ns.c", i32 201, i32 34}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i64 693197}
!162 = !{i64 2153723677}
!163 = !{i64 2153723890}
!164 = !{i64 692779}
