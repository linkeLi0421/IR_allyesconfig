; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/cirrus/pinctrl-madera-core.c_pt.bc'
source_filename = "../drivers/pinctrl/cirrus/pinctrl-madera-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.madera_pin_chip = type { i32, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.86 = type { ptr, ptr, i32 }
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
%struct.madera_pin_private = type { ptr, ptr, ptr, ptr }
%struct.madera = type { ptr, ptr, ptr, i32, i32, ptr, i32, [2 x %struct.regulator_bulk_data], ptr, i8, i8, %struct.madera_pdata, ptr, ptr, i32, [3 x %struct.clk_bulk_data], i32, [4 x i32], ptr, %struct.mutex, i32, [3 x i8], [3 x i8], %struct.blocking_notifier_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.madera_pdata = type { ptr, %struct.arizona_ldo1_pdata, %struct.arizona_micsupp_pdata, i32, i32, ptr, i32, [2 x i32], %struct.madera_codec_pdata }
%struct.arizona_ldo1_pdata = type { ptr }
%struct.arizona_micsupp_pdata = type { ptr }
%struct.madera_codec_pdata = type { [4 x i32], [6 x i32], [6 x [4 x i32]], [6 x i8], [2 x i32], [2 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.madera_pin_groups = type { ptr, ptr, i32 }

@__initcall__kmod_pinctrl_madera__297_1104_madera_pin_driver_init6 = internal global ptr @madera_pin_driver_init, section ".initcall6.init", align 4
@madera_pin_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @madera_pin_probe, ptr @madera_pin_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_madera_pin_driver_exit = internal global ptr @madera_pin_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [49 x i8] c"pinctrl_madera.description=Madera pinctrl driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [68 x i8] c"pinctrl_madera.author=Richard Fitzgerald <rf@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [58 x i8] c"pinctrl_madera.file=drivers/pinctrl/cirrus/pinctrl-madera\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [30 x i8] c"pinctrl_madera.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"madera-pinctrl\00", [17 x i8] zeroinitializer }, align 32
@madera_pin_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -5, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinctrl_madera\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"madera_pin_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/pinctrl/cirrus/pinctrl-madera-core.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@cs47l15_pin_chip = external dso_local constant %struct.madera_pin_chip, align 4
@cs47l35_pin_chip = external dso_local constant %struct.madera_pin_chip, align 4
@cs47l85_pin_chip = external dso_local constant %struct.madera_pin_chip, align 4
@cs47l90_pin_chip = external dso_local constant %struct.madera_pin_chip, align 4
@cs47l92_pin_chip = external dso_local constant %struct.madera_pin_chip, align 4
@madera_pin_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str, ptr @madera_pins, i32 0, ptr @madera_pin_group_ops, ptr @madera_pin_mux_ops, ptr @madera_pin_conf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@madera_pin_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1057, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed pinctrl register (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@madera_pin_probe._entry_ptr = internal global ptr @madera_pin_probe._entry, section ".printk_index", align 4
@madera_pin_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1068, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to register pdata mappings (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@madera_pin_probe._entry_ptr.10 = internal global ptr @madera_pin_probe._entry.8, section ".printk_index", align 4
@madera_pin_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1075, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable pinctrl (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@madera_pin_probe._entry_ptr.13 = internal global ptr @madera_pin_probe._entry.11, section ".printk_index", align 4
@madera_pin_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 1, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pinctrl probed ok\0A\00", [45 x i8] zeroinitializer }, align 32
@madera_pins = internal constant { [40 x %struct.pinctrl_pin_desc], [96 x i8] } { [40 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.54, ptr null }], [96 x i8] zeroinitializer }, align 32
@madera_pin_group_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @madera_get_groups_count, ptr @madera_get_group_name, ptr @madera_get_group_pins, ptr @madera_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@madera_pin_mux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @madera_mux_get_funcs_count, ptr @madera_mux_get_func_name, ptr @madera_mux_get_groups, ptr @madera_mux_set_mux, ptr @madera_gpio_request_enable, ptr @madera_gpio_disable_free, ptr @madera_gpio_set_direction, i8 1 }, [56 x i8] zeroinitializer }, align 32
@madera_pin_conf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @madera_pin_conf_get, ptr @madera_pin_conf_set, ptr null, ptr @madera_pin_conf_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio16\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio17\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio18\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio19\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio20\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio21\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio22\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio23\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio24\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio25\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio26\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio27\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio28\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio29\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio30\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio31\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio32\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio33\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio34\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio35\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio36\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio37\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio38\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio39\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio40\00", [25 x i8] zeroinitializer }, align 32
@madera_pin_single_group_names = internal constant { [40 x ptr], [32 x i8] } { [40 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], [32 x i8] zeroinitializer }, align 32
@madera_pin_single_group_pins = internal constant { [40 x i32], [32 x i8] } { [40 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39], [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%04x:%04x\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" IN\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" OUT\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" PU\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" PD\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" DB\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" OD\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" CMOS\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" DRV=%umA\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" SCHMITT\00", [23 x i8] zeroinitializer }, align 32
@madera_mux_funcs = internal constant { [57 x %struct.anon.86], [180 x i8] } { [57 x %struct.anon.86] [%struct.anon.86 { ptr @.str.66, ptr @madera_aif1_group_names, i32 0 }, %struct.anon.86 { ptr @.str.67, ptr @madera_aif2_group_names, i32 0 }, %struct.anon.86 { ptr @.str.68, ptr @madera_aif3_group_names, i32 0 }, %struct.anon.86 { ptr @.str.69, ptr @madera_aif4_group_names, i32 0 }, %struct.anon.86 { ptr @.str.70, ptr @madera_mif1_group_names, i32 0 }, %struct.anon.86 { ptr @.str.71, ptr @madera_mif2_group_names, i32 0 }, %struct.anon.86 { ptr @.str.72, ptr @madera_mif3_group_names, i32 0 }, %struct.anon.86 { ptr @.str.73, ptr @madera_dmic3_group_names, i32 0 }, %struct.anon.86 { ptr @.str.74, ptr @madera_dmic4_group_names, i32 0 }, %struct.anon.86 { ptr @.str.75, ptr @madera_dmic5_group_names, i32 0 }, %struct.anon.86 { ptr @.str.76, ptr @madera_dmic6_group_names, i32 0 }, %struct.anon.86 { ptr @.str.77, ptr @madera_spk1_group_names, i32 0 }, %struct.anon.86 { ptr @.str.78, ptr @madera_spk2_group_names, i32 0 }, %struct.anon.86 { ptr @.str.79, ptr @madera_pin_single_group_names, i32 1 }, %struct.anon.86 { ptr @.str.80, ptr @madera_pin_single_group_names, i32 2 }, %struct.anon.86 { ptr @.str.81, ptr @madera_pin_single_group_names, i32 3 }, %struct.anon.86 { ptr @.str.82, ptr @madera_pin_single_group_names, i32 4 }, %struct.anon.86 { ptr @.str.83, ptr @madera_pin_single_group_names, i32 16 }, %struct.anon.86 { ptr @.str.84, ptr @madera_pin_single_group_names, i32 17 }, %struct.anon.86 { ptr @.str.85, ptr @madera_pin_single_group_names, i32 18 }, %struct.anon.86 { ptr @.str.86, ptr @madera_pin_single_group_names, i32 19 }, %struct.anon.86 { ptr @.str.87, ptr @madera_pin_single_group_names, i32 24 }, %struct.anon.86 { ptr @.str.88, ptr @madera_pin_single_group_names, i32 25 }, %struct.anon.86 { ptr @.str.89, ptr @madera_pin_single_group_names, i32 26 }, %struct.anon.86 { ptr @.str.90, ptr @madera_pin_single_group_names, i32 27 }, %struct.anon.86 { ptr @.str.91, ptr @madera_pin_single_group_names, i32 64 }, %struct.anon.86 { ptr @.str.92, ptr @madera_pin_single_group_names, i32 65 }, %struct.anon.86 { ptr @.str.93, ptr @madera_pin_single_group_names, i32 72 }, %struct.anon.86 { ptr @.str.94, ptr @madera_pin_single_group_names, i32 73 }, %struct.anon.86 { ptr @.str.95, ptr @madera_pin_single_group_names, i32 76 }, %struct.anon.86 { ptr @.str.96, ptr @madera_pin_single_group_names, i32 136 }, %struct.anon.86 { ptr @.str.97, ptr @madera_pin_single_group_names, i32 137 }, %struct.anon.86 { ptr @.str.98, ptr @madera_pin_single_group_names, i32 138 }, %struct.anon.86 { ptr @.str.99, ptr @madera_pin_single_group_names, i32 139 }, %struct.anon.86 { ptr @.str.100, ptr @madera_pin_single_group_names, i32 182 }, %struct.anon.86 { ptr @.str.101, ptr @madera_pin_single_group_names, i32 183 }, %struct.anon.86 { ptr @.str.102, ptr @madera_pin_single_group_names, i32 224 }, %struct.anon.86 { ptr @.str.103, ptr @madera_pin_single_group_names, i32 225 }, %struct.anon.86 { ptr @.str.104, ptr @madera_pin_single_group_names, i32 226 }, %struct.anon.86 { ptr @.str.105, ptr @madera_pin_single_group_names, i32 320 }, %struct.anon.86 { ptr @.str.106, ptr @madera_pin_single_group_names, i32 321 }, %struct.anon.86 { ptr @.str.107, ptr @madera_pin_single_group_names, i32 322 }, %struct.anon.86 { ptr @.str.108, ptr @madera_pin_single_group_names, i32 323 }, %struct.anon.86 { ptr @.str.109, ptr @madera_pin_single_group_names, i32 324 }, %struct.anon.86 { ptr @.str.110, ptr @madera_pin_single_group_names, i32 325 }, %struct.anon.86 { ptr @.str.111, ptr @madera_pin_single_group_names, i32 326 }, %struct.anon.86 { ptr @.str.112, ptr @madera_pin_single_group_names, i32 327 }, %struct.anon.86 { ptr @.str.113, ptr @madera_pin_single_group_names, i32 336 }, %struct.anon.86 { ptr @.str.114, ptr @madera_pin_single_group_names, i32 337 }, %struct.anon.86 { ptr @.str.115, ptr @madera_pin_single_group_names, i32 338 }, %struct.anon.86 { ptr @.str.116, ptr @madera_pin_single_group_names, i32 339 }, %struct.anon.86 { ptr @.str.117, ptr @madera_pin_single_group_names, i32 340 }, %struct.anon.86 { ptr @.str.118, ptr @madera_pin_single_group_names, i32 341 }, %struct.anon.86 { ptr @.str.119, ptr @madera_pin_single_group_names, i32 342 }, %struct.anon.86 { ptr @.str.120, ptr @madera_pin_single_group_names, i32 343 }, %struct.anon.86 { ptr @.str.121, ptr @madera_pin_single_group_names, i32 640 }, %struct.anon.86 { ptr @.str.122, ptr @madera_pin_single_group_names, i32 641 }], [180 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" FN=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif1\00", [27 x i8] zeroinitializer }, align 32
@madera_aif1_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.66], [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif2\00", [27 x i8] zeroinitializer }, align 32
@madera_aif2_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif3\00", [27 x i8] zeroinitializer }, align 32
@madera_aif3_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.68], [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif4\00", [27 x i8] zeroinitializer }, align 32
@madera_aif4_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.69], [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mif1\00", [27 x i8] zeroinitializer }, align 32
@madera_mif1_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.70], [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mif2\00", [27 x i8] zeroinitializer }, align 32
@madera_mif2_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.71], [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mif3\00", [27 x i8] zeroinitializer }, align 32
@madera_mif3_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.72], [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmic3\00", [26 x i8] zeroinitializer }, align 32
@madera_dmic3_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.73], [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmic4\00", [26 x i8] zeroinitializer }, align 32
@madera_dmic4_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.74], [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmic5\00", [26 x i8] zeroinitializer }, align 32
@madera_dmic5_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.75], [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmic6\00", [26 x i8] zeroinitializer }, align 32
@madera_dmic6_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.76], [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pdmspk1\00", [24 x i8] zeroinitializer }, align 32
@madera_spk1_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.77], [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pdmspk2\00", [24 x i8] zeroinitializer }, align 32
@madera_spk2_group_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.78], [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsp-gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irq1\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irq2\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fll1-clk\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fll2-clk\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fll3-clk\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fllao-clk\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fll1-lock\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fll2-lock\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fll3-lock\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fllao-lock\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"opclk\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"opclk-async\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asrc1-in1-lock\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asrc1-in2-lock\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asrc2-in1-lock\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asrc2-in2-lock\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spkl-short-circuit\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spkr-short-circuit\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spk-shutdown\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spk-overheat-shutdown\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spk-overheat-warn\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer1-sts\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer2-sts\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer3-sts\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer4-sts\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer5-sts\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer6-sts\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer7-sts\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer8-sts\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log1-fifo-ne\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log2-fifo-ne\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log3-fifo-ne\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log4-fifo-ne\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log5-fifo-ne\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log6-fifo-ne\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log7-fifo-ne\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log8-fifo-ne\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aux-pdm-clk\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aux-pdm-dat\00", [20 x i8] zeroinitializer }, align 32
@madera_mux_set_mux.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.123, ptr @.str.3, ptr @.str.124, i8 0, i8 -101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"madera_mux_set_mux\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s selecting %u (%s) for group %u (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@madera_mux_set_mux.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.123, ptr @.str.3, ptr @.str.125, i8 0, i8 -96, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s setting 0x%x func bits to 0\0A\00", [32 x i8] zeroinitializer }, align 32
@madera_mux_set_mux.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.123, ptr @.str.3, ptr @.str.126, i8 0, i8 -92, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s setting 0x%x func bits to 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@madera_mux_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.123, ptr @.str.3, i32 668, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write to 0x%x (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@madera_mux_set_mux._entry_ptr = internal global ptr @madera_mux_set_mux._entry, section ".printk_index", align 4
@madera_gpio_request_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 708, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"madera_gpio_request_enable\00", [37 x i8] zeroinitializer }, align 32
@madera_gpio_request_enable._entry_ptr = internal global ptr @madera_gpio_request_enable._entry, section ".printk_index", align 4
@madera_gpio_disable_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.129, ptr @.str.3, i32 727, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"madera_gpio_disable_free\00", [39 x i8] zeroinitializer }, align 32
@madera_gpio_disable_free._entry_ptr = internal global ptr @madera_gpio_disable_free._entry, section ".printk_index", align 4
@madera_gpio_set_direction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.130, ptr @.str.3, i32 691, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"madera_gpio_set_direction\00", [38 x i8] zeroinitializer }, align 32
@madera_gpio_set_direction._entry_ptr = internal global ptr @madera_gpio_set_direction._entry, section ".printk_index", align 4
@madera_pin_conf_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 757, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read GP%d conf (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"madera_pin_conf_get\00", [44 x i8] zeroinitializer }, align 32
@madera_pin_conf_get._entry_ptr = internal global ptr @madera_pin_conf_get._entry, section ".printk_index", align 4
@madera_pin_conf_set.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.133, ptr @.str.3, ptr @.str.134, i8 0, i8 -49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"madera_pin_conf_set\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s config 0x%lx\0A\00", [47 x i8] zeroinitializer }, align 32
@madera_pin_conf_set.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.133, ptr @.str.3, ptr @.str.135, i8 0, i8 -25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s gpio%d 0x%x:0x%x 0x%x:0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@madera_pin_conf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.133, ptr @.str.3, i32 941, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to write GPIO%d conf (%d) reg 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@madera_pin_conf_set._entry_ptr = internal global ptr @madera_pin_conf_set._entry, section ".printk_index", align 4
@madera_pin_make_drv_str._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 425, ptr @.str.139, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%u mA not a valid drive strength\00", [63 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"madera_pin_make_drv_str\00", [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@madera_pin_make_drv_str._entry_ptr = internal global ptr @madera_pin_make_drv_str._entry, section ".printk_index", align 4
@madera_pin_conf_group_set.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.140, ptr @.str.3, ptr @.str.141, i8 0, i8 -17, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"madera_pin_conf_group_set\00", [38 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s setting group %s\0A\00", [43 x i8] zeroinitializer }, align 32
@switch.table.madera_pin_probe = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @cs47l35_pin_chip, ptr @cs47l85_pin_chip, ptr @cs47l90_pin_chip, ptr @cs47l90_pin_chip, ptr @cs47l92_pin_chip, ptr @cs47l92_pin_chip, ptr @cs47l85_pin_chip, ptr @cs47l15_pin_chip, ptr @cs47l92_pin_chip], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 1, i64 3, i64 5, i64 6, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 17]
@__sancov_gen_cov_switch_values.142 = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 1, i64 3, i64 5, i64 6, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 17]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"madera_pin_driver\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1096, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1100, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1007, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"madera_pin_desc\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 988, i32 28 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1057, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1066, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1075, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1081, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"madera_pins\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 32, i32 38 }
@___asan_gen_.195 = private unnamed_addr constant [21 x i8] c"madera_pin_group_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 565, i32 33 }
@___asan_gen_.198 = private unnamed_addr constant [19 x i8] c"madera_pin_mux_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 730, i32 32 }
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c"madera_pin_conf_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 981, i32 33 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 33, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 34, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 35, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 36, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 37, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 38, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 39, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 40, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 41, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 42, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 43, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 44, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 45, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 46, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 47, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 48, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 49, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 50, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 51, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 52, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 53, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 54, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 55, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 56, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 57, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 58, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 59, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 60, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 61, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 62, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 63, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 64, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 65, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 66, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 67, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 68, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 69, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 70, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 71, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 72, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [30 x i8] c"madera_pin_single_group_names\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 84, i32 27 }
@___asan_gen_.327 = private unnamed_addr constant [29 x i8] c"madera_pin_single_group_pins\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 94, i32 27 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 532, i32 16 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 540, i32 16 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 542, i32 16 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 546, i32 15 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 549, i32 15 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 552, i32 15 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 555, i32 15 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 557, i32 15 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 559, i32 16 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 562, i32 15 }
@___asan_gen_.360 = private unnamed_addr constant [17 x i8] c"madera_mux_funcs\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 125, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 494, i32 19 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 127, i32 11 }
@___asan_gen_.369 = private unnamed_addr constant [24 x i8] c"madera_aif1_group_names\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 103, i32 27 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 132, i32 11 }
@___asan_gen_.375 = private unnamed_addr constant [24 x i8] c"madera_aif2_group_names\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 104, i32 27 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 137, i32 11 }
@___asan_gen_.381 = private unnamed_addr constant [24 x i8] c"madera_aif3_group_names\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 105, i32 27 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 142, i32 11 }
@___asan_gen_.387 = private unnamed_addr constant [24 x i8] c"madera_aif4_group_names\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 106, i32 27 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 147, i32 11 }
@___asan_gen_.393 = private unnamed_addr constant [24 x i8] c"madera_mif1_group_names\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 107, i32 27 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 152, i32 11 }
@___asan_gen_.399 = private unnamed_addr constant [24 x i8] c"madera_mif2_group_names\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 108, i32 27 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 157, i32 11 }
@___asan_gen_.405 = private unnamed_addr constant [24 x i8] c"madera_mif3_group_names\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 109, i32 27 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 162, i32 11 }
@___asan_gen_.411 = private unnamed_addr constant [25 x i8] c"madera_dmic3_group_names\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 110, i32 27 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 167, i32 11 }
@___asan_gen_.417 = private unnamed_addr constant [25 x i8] c"madera_dmic4_group_names\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 111, i32 27 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 172, i32 11 }
@___asan_gen_.423 = private unnamed_addr constant [25 x i8] c"madera_dmic5_group_names\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 112, i32 27 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 177, i32 11 }
@___asan_gen_.429 = private unnamed_addr constant [25 x i8] c"madera_dmic6_group_names\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 113, i32 27 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 182, i32 11 }
@___asan_gen_.435 = private unnamed_addr constant [24 x i8] c"madera_spk1_group_names\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 114, i32 27 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 187, i32 11 }
@___asan_gen_.441 = private unnamed_addr constant [24 x i8] c"madera_spk2_group_names\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 115, i32 27 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 192, i32 11 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 197, i32 11 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 202, i32 11 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 207, i32 11 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 212, i32 11 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 217, i32 11 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 222, i32 11 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 227, i32 11 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 232, i32 11 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 237, i32 11 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 242, i32 11 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 247, i32 11 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 252, i32 11 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 257, i32 11 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 262, i32 11 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 267, i32 11 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 272, i32 11 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 277, i32 11 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 282, i32 11 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 287, i32 11 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 292, i32 11 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 297, i32 11 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 302, i32 11 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 307, i32 11 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 312, i32 11 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 317, i32 11 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 322, i32 11 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 327, i32 11 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 332, i32 11 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 337, i32 11 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 342, i32 11 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 347, i32 11 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 352, i32 11 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 357, i32 11 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 362, i32 11 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 367, i32 11 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 372, i32 11 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 377, i32 11 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 382, i32 11 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 387, i32 11 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 392, i32 11 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 397, i32 11 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 402, i32 11 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 407, i32 11 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 621, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 640, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 658, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 668, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 708, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 727, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 691, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 756, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 831, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 923, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 939, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 425, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.652 = private constant [48 x i8] c"../drivers/pinctrl/cirrus/pinctrl-madera-core.c\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 956, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant [30 x i8] c"switch.table.madera_pin_probe\00", align 1
@llvm.compiler.used = appending global [188 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_madera_pin_driver_exit, ptr @__initcall__kmod_pinctrl_madera__297_1104_madera_pin_driver_init6, ptr @madera_gpio_disable_free._entry, ptr @madera_gpio_disable_free._entry_ptr, ptr @madera_gpio_request_enable._entry, ptr @madera_gpio_request_enable._entry_ptr, ptr @madera_gpio_set_direction._entry, ptr @madera_gpio_set_direction._entry_ptr, ptr @madera_mux_set_mux._entry, ptr @madera_mux_set_mux._entry_ptr, ptr @madera_pin_conf_get._entry, ptr @madera_pin_conf_get._entry_ptr, ptr @madera_pin_conf_set._entry, ptr @madera_pin_conf_set._entry_ptr, ptr @madera_pin_driver_exit, ptr @madera_pin_make_drv_str._entry, ptr @madera_pin_make_drv_str._entry_ptr, ptr @madera_pin_probe._entry, ptr @madera_pin_probe._entry.11, ptr @madera_pin_probe._entry.8, ptr @madera_pin_probe._entry_ptr, ptr @madera_pin_probe._entry_ptr.10, ptr @madera_pin_probe._entry_ptr.13, ptr @madera_pin_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @madera_pin_desc, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @madera_pins, ptr @madera_pin_group_ops, ptr @madera_pin_mux_ops, ptr @madera_pin_conf_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @madera_pin_single_group_names, ptr @madera_pin_single_group_pins, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @madera_mux_funcs, ptr @.str.65, ptr @.str.66, ptr @madera_aif1_group_names, ptr @.str.67, ptr @madera_aif2_group_names, ptr @.str.68, ptr @madera_aif3_group_names, ptr @.str.69, ptr @madera_aif4_group_names, ptr @.str.70, ptr @madera_mif1_group_names, ptr @.str.71, ptr @madera_mif2_group_names, ptr @.str.72, ptr @madera_mif3_group_names, ptr @.str.73, ptr @madera_dmic3_group_names, ptr @.str.74, ptr @madera_dmic4_group_names, ptr @.str.75, ptr @madera_dmic5_group_names, ptr @.str.76, ptr @madera_dmic6_group_names, ptr @.str.77, ptr @madera_spk1_group_names, ptr @.str.78, ptr @madera_spk2_group_names, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @switch.table.madera_pin_probe], section "llvm.metadata"
@0 = internal global [171 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pins to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_group_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_mux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_conf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_single_group_names to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_single_group_pins to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_mux_funcs to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_aif1_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_aif2_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_aif3_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_aif4_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_mif1_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_mif2_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_mif3_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dmic3_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dmic4_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dmic5_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_dmic6_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_spk1_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_spk2_group_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_mux_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_gpio_request_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_gpio_disable_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_gpio_set_direction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_conf_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_conf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_pin_make_drv_str._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.madera_pin_probe to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_pin_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @madera_pin_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @madera_pin_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @madera_pin_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_pin_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_pin_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@madera_pin_probe, %do.end9)) #8
          to label %if.then [label %do.end9], !srcloc !356

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_pin_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call13 = tail call ptr @dev_fwnode(ptr noundef %5) #8
  tail call void @device_set_node(ptr noundef %dev, ptr noundef %call13) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #8
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %do.end9.cleanup_crit_edge, label %if.end18

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %do.end9
  %dev20 = getelementptr inbounds %struct.madera_pin_private, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev20, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %call.i, align 4
  %type = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 9
  br i1 %10, label %switch.lookup, label %if.end18.sw.epilog_crit_edge

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.madera_pin_probe, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %chip29 = getelementptr inbounds %struct.madera_pin_private, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %chip29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %switch.load, ptr %chip29, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end18.sw.epilog_crit_edge
  %chip30 = getelementptr inbounds %struct.madera_pin_private, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %chip30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip30, align 4
  %tobool31.not = icmp eq ptr %14, null
  br i1 %tobool31.not, label %sw.epilog.cleanup_crit_edge, label %if.end33

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %sw.epilog
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  store i32 %16, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @madera_pin_desc, i32 0, i32 2), align 4
  %pctl = getelementptr inbounds %struct.madera_pin_private, ptr %call.i, i32 0, i32 3
  %call36 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %dev, ptr noundef nonnull @madera_pin_desc, ptr noundef nonnull %call.i, ptr noundef %pctl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.5, i32 noundef %call36) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %gpio_configs = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 11, i32 5
  %19 = ptrtoint ptr %gpio_configs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpio_configs, align 4
  %tobool44.not = icmp eq ptr %20, null
  br i1 %tobool44.not, label %if.end43.if.end55_crit_edge, label %if.then45

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then45:                                        ; preds = %if.end43
  %n_gpio_configs = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 11, i32 6
  %21 = ptrtoint ptr %n_gpio_configs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_gpio_configs, align 4
  %call47 = tail call i32 @pinctrl_register_mappings(ptr noundef nonnull %20, i32 noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then45.if.end55_crit_edge, label %do.end52

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end52:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.9, i32 noundef %call47) #11
  br label %cleanup

if.end55:                                         ; preds = %if.then45.if.end55_crit_edge, %if.end43.if.end55_crit_edge
  %25 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pctl, align 4
  %call57 = tail call i32 @pinctrl_enable(ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.12, i32 noundef %call57) #11
  br label %cleanup

if.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_pin_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@madera_pin_probe, %cleanup)) #8
          to label %if.then79 [label %cleanup], !srcloc !356

if.then79:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_pin_probe.__UNIQUE_ID_ddebug296, ptr noundef %31, ptr noundef nonnull @.str.14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.end64, %do.end62, %do.end52, %do.end41, %sw.epilog.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %do.end41 ], [ %call47, %do.end52 ], [ %call57, %do.end62 ], [ -12, %do.end9.cleanup_crit_edge ], [ -19, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then79 ], [ 0, %if.end64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_pin_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %gpio_configs = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 11, i32 5
  %4 = ptrtoint ptr %gpio_configs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_configs, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pinctrl_unregister_mappings(ptr noundef nonnull %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_register_mappings(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %chip = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %n_pin_groups = getelementptr inbounds %struct.madera_pin_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_pin_groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_pin_groups, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add = add i32 %5, %3
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @madera_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %chip = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %n_pin_groups = getelementptr inbounds %struct.madera_pin_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_pin_groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_pin_groups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %selector)
  %cmp = icmp ugt i32 %3, %selector
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pin_groups = getelementptr inbounds %struct.madera_pin_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_groups, align 4
  %arrayidx = getelementptr %struct.madera_pin_groups, ptr %5, i32 %selector
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %selector, %3
  %arrayidx4 = getelementptr [40 x ptr], ptr @madera_pin_single_group_names, i32 0, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi ptr [ %arrayidx, %if.then ], [ %arrayidx4, %if.end ]
  %6 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0 = load ptr, ptr %retval.0.in, align 4
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %chip = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %n_pin_groups = getelementptr inbounds %struct.madera_pin_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_pin_groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_pin_groups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %selector)
  %cmp = icmp ugt i32 %3, %selector
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pin_groups = getelementptr inbounds %struct.madera_pin_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_groups, align 4
  %pins2 = getelementptr %struct.madera_pin_groups, ptr %5, i32 %selector, i32 1
  %6 = ptrtoint ptr %pins2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins2, align 4
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pins, align 4
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %pin_groups4 = getelementptr inbounds %struct.madera_pin_chip, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pin_groups4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pin_groups4, align 4
  %n_pins = getelementptr %struct.madera_pin_groups, ptr %12, i32 %selector, i32 2
  %13 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_pins, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %selector, %3
  %arrayidx8 = getelementptr [40 x i32], ptr @madera_pin_single_group_pins, i32 0, i32 %sub
  %15 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx8, ptr %pins, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 1, %if.else ], [ %14, %if.then ]
  %16 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @madera_pin_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin) #2 align 64 {
entry:
  %conf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conf) #8
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %conf, align 4, !annotation !357
  %1 = getelementptr inbounds [2 x i32], ptr %conf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !357
  %mul = shl i32 %pin, 1
  %add = add i32 %mul, 5888
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef %add, ptr noundef nonnull %conf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add4 = add i32 %mul, 5889
  %call6 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add4, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %conf, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %12, i32 noundef %14) #8
  %15 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %conf, align 4
  %and = and i32 %16, 1023
  %chip1.i = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not.i = icmp eq i32 %and, 0
  br i1 %cmp.not.i, label %for.cond7.preheader.i, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

for.cond7.preheader.i:                            ; preds = %if.end9
  %n_pin_groups.i = getelementptr inbounds %struct.madera_pin_chip, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %n_pin_groups.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_pin_groups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp852.not.i = icmp eq i32 %20, 0
  br i1 %cmp852.not.i, label %for.cond7.preheader.i.if.end19_crit_edge, label %for.cond10.preheader.lr.ph.i

for.cond7.preheader.i.if.end19_crit_edge:         ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

for.cond10.preheader.lr.ph.i:                     ; preds = %for.cond7.preheader.i
  %pin_groups.i = getelementptr inbounds %struct.madera_pin_chip, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %pin_groups.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pin_groups.i, align 4
  br label %for.cond10.preheader.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %i.049.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %func.i = getelementptr [57 x %struct.anon.86], ptr @madera_mux_funcs, i32 0, i32 %i.049.i, i32 2
  %23 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %func.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %and)
  %cmp3.i = icmp eq i32 %24, %and
  br i1 %cmp3.i, label %if.then4.i, label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [57 x %struct.anon.86], ptr @madera_mux_funcs, i32 0, i32 %i.049.i
  br label %cleanup.sink.split.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 57
  br i1 %exitcond.not.i, label %for.inc.i.madera_pin_dbg_show_fn.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.madera_pin_dbg_show_fn.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %madera_pin_dbg_show_fn.exit

for.cond10.preheader.i:                           ; preds = %for.inc26.i.for.cond10.preheader.i_crit_edge, %for.cond10.preheader.lr.ph.i
  %i.153.i = phi i32 [ 0, %for.cond10.preheader.lr.ph.i ], [ %inc27.i, %for.inc26.i.for.cond10.preheader.i_crit_edge ]
  %n_pins.i = getelementptr %struct.madera_pin_groups, ptr %22, i32 %i.153.i, i32 2
  %25 = ptrtoint ptr %n_pins.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1250.not.i = icmp eq i32 %26, 0
  br i1 %cmp1250.not.i, label %for.cond10.preheader.i.for.inc26.i_crit_edge, label %for.body13.lr.ph.i

for.cond10.preheader.i.for.inc26.i_crit_edge:     ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc26.i

for.body13.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  %pins.i = getelementptr %struct.madera_pin_groups, ptr %22, i32 %i.153.i, i32 1
  %27 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pins.i, align 4
  br label %for.body13.i

for.cond10.i:                                     ; preds = %for.body13.i
  %inc24.i = add nuw i32 %g_pin.051.i, 1
  %exitcond58.not.i = icmp eq i32 %inc24.i, %26
  br i1 %exitcond58.not.i, label %for.cond10.i.for.inc26.i_crit_edge, label %for.cond10.i.for.body13.i_crit_edge

for.cond10.i.for.body13.i_crit_edge:              ; preds = %for.cond10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13.i

for.cond10.i.for.inc26.i_crit_edge:               ; preds = %for.cond10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc26.i

for.body13.i:                                     ; preds = %for.cond10.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %g_pin.051.i = phi i32 [ 0, %for.body13.lr.ph.i ], [ %inc24.i, %for.cond10.i.for.body13.i_crit_edge ]
  %arrayidx16.i = getelementptr i32, ptr %28, i32 %g_pin.051.i
  %29 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %pin)
  %cmp17.i = icmp eq i32 %30, %pin
  br i1 %cmp17.i, label %if.then18.i, label %for.cond10.i

if.then18.i:                                      ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.le.i = getelementptr %struct.madera_pin_groups, ptr %22, i32 %i.153.i
  br label %cleanup.sink.split.i

for.inc26.i:                                      ; preds = %for.cond10.i.for.inc26.i_crit_edge, %for.cond10.preheader.i.for.inc26.i_crit_edge
  %inc27.i = add nuw i32 %i.153.i, 1
  %exitcond59.not.i = icmp eq i32 %inc27.i, %20
  br i1 %exitcond59.not.i, label %for.inc26.i.madera_pin_dbg_show_fn.exit_crit_edge, label %for.inc26.i.for.cond10.preheader.i_crit_edge

for.inc26.i.for.cond10.preheader.i_crit_edge:     ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10.preheader.i

for.inc26.i.madera_pin_dbg_show_fn.exit_crit_edge: ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %madera_pin_dbg_show_fn.exit

cleanup.sink.split.i:                             ; preds = %if.then18.i, %if.then4.i
  %arrayidx11.le.sink.i = phi ptr [ %arrayidx11.le.i, %if.then18.i ], [ %arrayidx.i, %if.then4.i ]
  %31 = ptrtoint ptr %arrayidx11.le.sink.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx11.le.sink.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, ptr noundef %32) #8
  br label %madera_pin_dbg_show_fn.exit

madera_pin_dbg_show_fn.exit:                      ; preds = %cleanup.sink.split.i, %for.inc26.i.madera_pin_dbg_show_fn.exit_crit_edge, %for.inc.i.madera_pin_dbg_show_fn.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then13, label %madera_pin_dbg_show_fn.exit.if.end19_crit_edge

madera_pin_dbg_show_fn.exit.if.end19_crit_edge:   ; preds = %madera_pin_dbg_show_fn.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then13:                                        ; preds = %madera_pin_dbg_show_fn.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %and15 = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %.str.57..str.56 = select i1 %tobool16.not, ptr @.str.57, ptr @.str.56
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.57..str.56) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %madera_pin_dbg_show_fn.exit.if.end19_crit_edge, %for.cond7.preheader.i.if.end19_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  %and21 = and i32 %36, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end24_crit_edge, label %if.then23

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.58) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %and26 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end29_crit_edge, label %if.then28

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.59) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24.if.end29_crit_edge
  %39 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %conf, align 4
  %and31 = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end34_crit_edge, label %if.then33

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.60) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29.if.end34_crit_edge
  %41 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %conf, align 4
  %and36 = and i32 %42, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %.str.62..str.61 = select i1 %tobool37.not, ptr @.str.62, ptr @.str.61
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.62..str.61) #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %conv = trunc i32 %44 to i16
  %45 = lshr i16 %conv, 11
  %46 = and i16 %45, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %46)
  %switch.selectcmp.i = icmp eq i16 %46, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %switch.selectcmp1.i = icmp eq i16 %46, 0
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 4, i32 %switch.select.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %switch.select2.i) #8
  %47 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %conf, align 4
  %and44 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end34.cleanup_crit_edge, label %if.then46

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.64) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end34.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conf) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @madera_mux_get_funcs_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @madera_mux_get_func_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [57 x %struct.anon.86], ptr @madera_mux_funcs, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_mux_get_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %group_names = getelementptr [57 x %struct.anon.86], ptr @madera_mux_funcs, i32 0, i32 %selector, i32 1
  %0 = ptrtoint ptr %group_names to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group_names, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %3 = and i32 %selector, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %3)
  %cmp = icmp ult i32 %3, 13
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %7, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_mux_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %chip = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %pin_groups = getelementptr inbounds %struct.madera_pin_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_groups, align 4
  %n_pin_groups = getelementptr inbounds %struct.madera_pin_chip, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %n_pin_groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_pin_groups, align 4
  %arrayidx = getelementptr [57 x %struct.anon.86], ptr @madera_mux_funcs, i32 0, i32 %selector
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_mux_set_mux.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@madera_mux_set_mux, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !356

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %chip.i = getelementptr inbounds %struct.madera_pin_private, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i, align 4
  %n_pin_groups.i = getelementptr inbounds %struct.madera_pin_chip, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %n_pin_groups.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_pin_groups.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %group)
  %cmp.i = icmp ugt i32 %15, %group
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %pin_groups.i = getelementptr inbounds %struct.madera_pin_chip, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %pin_groups.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pin_groups.i, align 4
  %arrayidx.i = getelementptr %struct.madera_pin_groups, ptr %17, i32 %group
  br label %madera_get_group_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %group, %15
  %arrayidx4.i = getelementptr [40 x ptr], ptr @madera_pin_single_group_names, i32 0, i32 %sub.i
  br label %madera_get_group_name.exit

madera_get_group_name.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.in.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %arrayidx4.i, %if.end.i ]
  %18 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i130 = load ptr, ptr %retval.0.in.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_mux_set_mux.__UNIQUE_ID_ddebug288, ptr noundef %11, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, i32 noundef %selector, ptr noundef %9, i32 noundef %group, ptr noundef %retval.0.i130) #8
  br label %do.end

do.end:                                           ; preds = %madera_get_group_name.exit, %entry
  %func = getelementptr [57 x %struct.anon.86], ptr @madera_mux_funcs, i32 0, i32 %selector, i32 2
  %19 = and i32 %selector, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %19)
  %cmp = icmp ult i32 %19, 13
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10145.not = icmp eq i32 %7, 0
  br i1 %cmp10145.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pin_group.0147 = phi ptr [ %incdec.ptr, %if.end15.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %i.0146 = phi i32 [ %inc, %if.end15.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %20 = ptrtoint ptr %pin_group.0147 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pin_group.0147, align 4
  %call12 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %for.body.for.end_crit_edge, label %if.end15

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end15:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.madera_pin_groups, ptr %pin_group.0147, i32 1
  %inc = add nuw i32 %i.0146, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %if.end15.cleanup_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0146, %for.body.for.end_crit_edge ]
  %pin_group.0.lcssa = phi ptr [ %5, %for.cond.preheader.for.end_crit_edge ], [ %pin_group.0147, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %7)
  %cmp16 = icmp eq i32 %i.0.lcssa, %7
  br i1 %cmp16, label %for.end.cleanup_crit_edge, label %for.cond19.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond19.preheader:                             ; preds = %for.end
  %n_pins = getelementptr inbounds %struct.madera_pin_groups, ptr %pin_group.0.lcssa, i32 0, i32 2
  %22 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp20151.not = icmp eq i32 %23, 0
  br i1 %cmp20151.not, label %for.cond19.preheader.cleanup_crit_edge, label %for.body21.lr.ph

for.cond19.preheader.cleanup_crit_edge:           ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %pins = getelementptr inbounds %struct.madera_pin_groups, ptr %pin_group.0.lcssa, i32 0, i32 1
  %dev38 = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  br label %for.body21

for.cond19:                                       ; preds = %do.end41
  %inc47 = add nuw i32 %i.1152, 1
  %24 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_pins, align 4
  %cmp20 = icmp ult i32 %inc47, %25
  br i1 %cmp20, label %for.cond19.for.body21_crit_edge, label %for.cond19.cleanup_crit_edge

for.cond19.cleanup_crit_edge:                     ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond19.for.body21_crit_edge:                  ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

for.body21:                                       ; preds = %for.cond19.for.body21_crit_edge, %for.body21.lr.ph
  %i.1152 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc47, %for.cond19.for.body21_crit_edge ]
  %26 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pins, align 4
  %arrayidx22 = getelementptr i32, ptr %27, i32 %i.1152
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx22, align 4
  %mul = shl i32 %29, 1
  %add = add i32 %mul, 5888
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_mux_set_mux.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@madera_mux_set_mux, %do.end41)) #8
          to label %if.then37 [label %do.end41], !srcloc !356

if.then37:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_mux_set_mux.__UNIQUE_ID_ddebug289, ptr noundef %31, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.123, i32 noundef %add) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %for.body21
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i131 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef %add, i32 noundef 1023, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool43.not = icmp eq i32 %call.i131, 0
  br i1 %tobool43.not, label %for.cond19, label %do.end41.do.end81_crit_edge

do.end41.do.end81_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end81

if.else:                                          ; preds = %do.end
  %sub = sub i32 %group, %7
  %mul49 = shl i32 %sub, 1
  %add50 = add i32 %mul49, 5888
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_mux_set_mux.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@madera_mux_set_mux, %if.end76)) #8
          to label %if.then65 [label %if.end76], !srcloc !356

if.then65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev66 = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  %34 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev66, align 4
  %36 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %func, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_mux_set_mux.__UNIQUE_ID_ddebug290, ptr noundef %35, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.123, i32 noundef %add50, i32 noundef %37) #8
  br label %if.end76

if.end76:                                         ; preds = %if.then65, %if.else
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %func, align 4
  %call.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %add50, i32 noundef 1023, i32 noundef %41, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool77.not = icmp eq i32 %call.i132, 0
  br i1 %tobool77.not, label %if.end76.cleanup_crit_edge, label %if.end76.do.end81_crit_edge

if.end76.do.end81_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end81

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end81:                                         ; preds = %if.end76.do.end81_crit_edge, %do.end41.do.end81_crit_edge
  %ret.1144 = phi i32 [ %call.i132, %if.end76.do.end81_crit_edge ], [ %call.i131, %do.end41.do.end81_crit_edge ]
  %reg.1143 = phi i32 [ %add50, %if.end76.do.end81_crit_edge ], [ %add, %do.end41.do.end81_crit_edge ]
  %dev82 = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  %42 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev82, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.127, i32 noundef %reg.1143, i32 noundef %ret.1144) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %if.end76.cleanup_crit_edge, %for.cond19.cleanup_crit_edge, %for.cond19.preheader.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.end.cleanup_crit_edge ], [ %ret.1144, %do.end81 ], [ 0, %if.end76.cleanup_crit_edge ], [ 0, %for.cond19.preheader.cleanup_crit_edge ], [ 0, %for.cond19.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %mul = shl i32 %offset, 1
  %add = add i32 %mul, 5888
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 1023, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.127, i32 noundef %add, i32 noundef %call.i) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @madera_gpio_disable_free(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %mul = shl i32 %offset, 1
  %add = add i32 %mul, 5888
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %add.i = add i32 %mul, 5889
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %entry.madera_gpio_set_direction.exit_crit_edge, label %do.end.i

entry.madera_gpio_set_direction.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %madera_gpio_set_direction.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.madera_pin_private, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.127, i32 noundef %add.i, i32 noundef %call.i.i) #11
  br label %madera_gpio_set_direction.exit

madera_gpio_set_direction.exit:                   ; preds = %do.end.i, %entry.madera_gpio_set_direction.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add, i32 noundef 1023, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not = icmp eq i32 %call.i9, 0
  br i1 %tobool.not, label %madera_gpio_set_direction.exit.if.end_crit_edge, label %do.end

madera_gpio_set_direction.exit.if.end_crit_edge:  ; preds = %madera_gpio_set_direction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %madera_gpio_set_direction.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.127, i32 noundef %add, i32 noundef %call.i9) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %madera_gpio_set_direction.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %mul = shl i32 %offset, 1
  %add = add i32 %mul, 5889
  %. = select i1 %input, i32 32768, i32 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 32768, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %entry.if.end5_crit_edge, label %do.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.127, i32 noundef %add, i32 noundef %call.i) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry.if.end5_crit_edge
  ret i32 %call.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_pin_conf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %conf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %mul = shl i32 %pin, 1
  %add = add i32 %mul, 5888
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conf) #8
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %conf, align 4, !annotation !357
  %3 = getelementptr inbounds [2 x i32], ptr %conf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !357
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef %add, ptr noundef nonnull %conf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %add5 = add i32 %mul, 5889
  %call7 = call i32 @regmap_read(ptr noundef %12, i32 noundef %add5, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0106 = phi i32 [ %call7, %if.end.do.end_crit_edge ], [ %call2, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %add10 = add i32 %pin, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.131, i32 noundef %add10, i32 noundef %ret.0106) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %trunc = trunc i32 %1 to i8
  %15 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end11.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb16
    i8 3, label %sw.bb23
    i8 5, label %sw.bb30
    i8 6, label %sw.bb37
    i8 8, label %sw.bb43
    i8 9, label %sw.bb49
    i8 11, label %sw.bb52
    i8 12, label %sw.bb58
    i8 13, label %if.end11.sw.bb64_crit_edge
    i8 14, label %if.end11.sw.bb64_crit_edge107
    i8 17, label %sw.bb70
  ]

if.end11.sw.bb64_crit_edge107:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb64

if.end11.sw.bb64_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb64

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %and = and i32 %17, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %and)
  %cmp = icmp eq i32 %and, 24576
  %spec.select = zext i1 %cmp to i32
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %and18 = and i32 %19, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool20.not = icmp eq i32 %and18, 0
  %spec.select95 = zext i1 %tobool20.not to i32
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %and25 = and i32 %21, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and25)
  %cmp27 = icmp eq i32 %and25, 8192
  %spec.select96 = zext i1 %cmp27 to i32
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %and32 = and i32 %23, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and32)
  %cmp34 = icmp eq i32 %and32, 16384
  %spec.select97 = zext i1 %cmp34 to i32
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %conf, align 4
  %and39 = lshr i32 %25, 14
  %and39.lobit = and i32 %and39, 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %conf, align 4
  %and45 = lshr i32 %27, 14
  %and45.lobit = and i32 %and45, 1
  %28 = xor i32 %and45.lobit, 1
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  %conv = trunc i32 %30 to i16
  %31 = lshr i16 %conv, 11
  %32 = and i16 %31, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %32)
  %switch.selectcmp.i = icmp eq i16 %32, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %switch.selectcmp1.i = icmp eq i16 %32, 0
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 4, i32 %switch.select.i
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %conf, align 4
  %and54 = lshr i32 %34, 13
  %and54.lobit = and i32 %and54, 1
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %conf, align 4
  %and60 = lshr i32 %36, 15
  %and60.lobit = and i32 %and60, 1
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end11.sw.bb64_crit_edge, %if.end11.sw.bb64_crit_edge107
  %37 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %conf, align 4
  %and66 = lshr i32 %38, 11
  %and66.lobit = and i32 %and66, 1
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end11
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %3, align 4
  %and72 = and i32 %40, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %sw.bb70.sw.epilog_crit_edge, label %land.lhs.true

sw.bb70.sw.epilog_crit_edge:                      ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %conf, align 4
  %and75 = lshr i32 %42, 15
  %and75.lobit = and i32 %and75, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true, %sw.bb70.sw.epilog_crit_edge, %sw.bb64, %sw.bb58, %sw.bb52, %sw.bb49, %sw.bb43, %sw.bb37, %sw.bb30, %sw.bb23, %sw.bb16, %sw.bb
  %result.0 = phi i32 [ 0, %sw.bb70.sw.epilog_crit_edge ], [ %switch.select2.i, %sw.bb49 ], [ %spec.select, %sw.bb ], [ %spec.select95, %sw.bb16 ], [ %spec.select96, %sw.bb23 ], [ %spec.select97, %sw.bb30 ], [ %and39.lobit, %sw.bb37 ], [ %28, %sw.bb43 ], [ %and54.lobit, %sw.bb52 ], [ %and60.lobit, %sw.bb58 ], [ %and66.lobit, %sw.bb64 ], [ %and75.lobit, %land.lhs.true ]
  %shl.i = shl nuw nsw i32 %result.0, 8
  %or.i = or i32 %shl.i, %and.i
  %43 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0106, %do.end ], [ 0, %sw.epilog ], [ -524, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_pin_conf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %mul = shl i32 %pin, 1
  %add = add i32 %mul, 5888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %tobool.not336 = icmp eq i32 %num_configs, 0
  br i1 %tobool.not336, label %entry.do.body184_crit_edge, label %do.body.lr.ph

entry.do.body184_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body184

do.body.lr.ph:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %do.body.lr.ph
  %configs.addr.0342 = phi ptr [ %configs, %do.body.lr.ph ], [ %incdec.ptr, %sw.epilog.do.body_crit_edge ]
  %num_configs.addr.0341 = phi i32 [ %num_configs, %do.body.lr.ph ], [ %dec, %sw.epilog.do.body_crit_edge ]
  %mask.sroa.16.0340 = phi i16 [ 0, %do.body.lr.ph ], [ %mask.sroa.16.1, %sw.epilog.do.body_crit_edge ]
  %mask.sroa.0.0339 = phi i16 [ 0, %do.body.lr.ph ], [ %mask.sroa.0.1, %sw.epilog.do.body_crit_edge ]
  %conf.sroa.23.0338 = phi i16 [ 0, %do.body.lr.ph ], [ %conf.sroa.23.1, %sw.epilog.do.body_crit_edge ]
  %conf.sroa.0.0337 = phi i16 [ 0, %do.body.lr.ph ], [ %conf.sroa.0.3, %sw.epilog.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_pin_conf_set.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@madera_pin_conf_set, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !356

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %configs.addr.0342 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %configs.addr.0342, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_pin_conf_set.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.133, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %4 = ptrtoint ptr %configs.addr.0342 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %configs.addr.0342, align 4
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %trunc, label %do.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb12
    i8 3, label %sw.bb20
    i8 5, label %sw.bb33
    i8 6, label %sw.bb46
    i8 8, label %sw.bb55
    i8 9, label %sw.bb64
    i8 11, label %sw.bb80
    i8 12, label %sw.bb97
    i8 13, label %sw.bb115
    i8 14, label %sw.bb141
    i8 17, label %sw.bb158
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = or i16 %mask.sroa.16.0340, 24576
  %8 = or i16 %conf.sroa.23.0338, 24576
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = or i16 %mask.sroa.16.0340, 24576
  %10 = and i16 %conf.sroa.23.0338, -24577
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = or i16 %mask.sroa.16.0340, 24576
  %12 = and i16 %conf.sroa.23.0338, -24577
  %13 = or i16 %12, 8192
  br label %sw.epilog

sw.bb33:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = or i16 %mask.sroa.16.0340, 24576
  %15 = and i16 %conf.sroa.23.0338, -24577
  %16 = or i16 %15, 16384
  br label %sw.epilog

sw.bb46:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = or i16 %mask.sroa.0.0339, 16384
  %18 = or i16 %conf.sroa.0.0337, 16384
  br label %sw.epilog

sw.bb55:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = or i16 %mask.sroa.0.0339, 16384
  %20 = and i16 %conf.sroa.0.0337, -16385
  br label %sw.epilog

sw.bb64:                                          ; preds = %do.end
  %shr.i = lshr i32 %5, 8
  %21 = or i16 %mask.sroa.16.0340, 6144
  %22 = and i16 %conf.sroa.23.0338, -6145
  %23 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %shr.i, label %do.end.i [
    i32 4, label %sw.bb64.madera_pin_make_drv_str.exit_crit_edge
    i32 8, label %sw.bb1.i
  ]

sw.bb64.madera_pin_make_drv_str.exit_crit_edge:   ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  br label %madera_pin_make_drv_str.exit

sw.bb1.i:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  br label %madera_pin_make_drv_str.exit

do.end.i:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.137, i32 noundef %shr.i) #11
  br label %madera_pin_make_drv_str.exit

madera_pin_make_drv_str.exit:                     ; preds = %do.end.i, %sw.bb1.i, %sw.bb64.madera_pin_make_drv_str.exit_crit_edge
  %retval.0.i323 = phi i16 [ 0, %do.end.i ], [ 4096, %sw.bb1.i ], [ 0, %sw.bb64.madera_pin_make_drv_str.exit_crit_edge ]
  %or78319 = or i16 %retval.0.i323, %22
  br label %sw.epilog

sw.bb80:                                          ; preds = %do.end
  %26 = or i16 %mask.sroa.0.0339, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %tobool86.not = icmp ult i32 %5, 256
  br i1 %tobool86.not, label %if.else, label %if.then87

if.then87:                                        ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #10
  %27 = or i16 %conf.sroa.0.0337, 8192
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #10
  %28 = and i16 %conf.sroa.0.0337, -8193
  br label %sw.epilog

sw.bb97:                                          ; preds = %do.end
  %29 = or i16 %mask.sroa.16.0340, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %tobool103.not = icmp ult i32 %5, 256
  br i1 %tobool103.not, label %if.else109, label %if.then104

if.then104:                                       ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #10
  %30 = or i16 %conf.sroa.23.0338, -32768
  br label %sw.epilog

if.else109:                                       ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #10
  %31 = and i16 %conf.sroa.23.0338, 32767
  br label %sw.epilog

sw.bb115:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %32 = or i16 %mask.sroa.0.0339, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %tobool121.not = icmp ult i32 %5, 256
  %33 = and i16 %conf.sroa.0.0337, -2049
  %masksel331 = select i1 %tobool121.not, i16 0, i16 2048
  %conf.sroa.0.1 = or i16 %masksel331, %33
  %34 = or i16 %mask.sroa.16.0340, -32768
  %35 = or i16 %conf.sroa.23.0338, -32768
  br label %sw.epilog

sw.bb141:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %36 = or i16 %mask.sroa.0.0339, 2048
  %37 = or i16 %conf.sroa.0.0337, 2048
  %38 = or i16 %mask.sroa.16.0340, -32768
  %39 = or i16 %conf.sroa.23.0338, -32768
  br label %sw.epilog

sw.bb158:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %40 = or i16 %mask.sroa.0.0339, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %tobool164.not = icmp ult i32 %5, 256
  %41 = and i16 %conf.sroa.0.0337, 32767
  %masksel = select i1 %tobool164.not, i16 0, i16 -32768
  %conf.sroa.0.2 = or i16 %masksel, %41
  %42 = or i16 %mask.sroa.16.0340, -32768
  %43 = and i16 %conf.sroa.23.0338, 32767
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb158, %sw.bb141, %sw.bb115, %if.else109, %if.then104, %if.else, %if.then87, %madera_pin_make_drv_str.exit, %sw.bb55, %sw.bb46, %sw.bb33, %sw.bb20, %sw.bb12, %sw.bb
  %conf.sroa.0.3 = phi i16 [ %conf.sroa.0.2, %sw.bb158 ], [ %37, %sw.bb141 ], [ %conf.sroa.0.1, %sw.bb115 ], [ %conf.sroa.0.0337, %if.then104 ], [ %conf.sroa.0.0337, %if.else109 ], [ %27, %if.then87 ], [ %28, %if.else ], [ %conf.sroa.0.0337, %madera_pin_make_drv_str.exit ], [ %20, %sw.bb55 ], [ %18, %sw.bb46 ], [ %conf.sroa.0.0337, %sw.bb33 ], [ %conf.sroa.0.0337, %sw.bb20 ], [ %conf.sroa.0.0337, %sw.bb12 ], [ %conf.sroa.0.0337, %sw.bb ]
  %conf.sroa.23.1 = phi i16 [ %43, %sw.bb158 ], [ %39, %sw.bb141 ], [ %35, %sw.bb115 ], [ %30, %if.then104 ], [ %31, %if.else109 ], [ %conf.sroa.23.0338, %if.then87 ], [ %conf.sroa.23.0338, %if.else ], [ %or78319, %madera_pin_make_drv_str.exit ], [ %conf.sroa.23.0338, %sw.bb55 ], [ %conf.sroa.23.0338, %sw.bb46 ], [ %16, %sw.bb33 ], [ %13, %sw.bb20 ], [ %10, %sw.bb12 ], [ %8, %sw.bb ]
  %mask.sroa.0.1 = phi i16 [ %40, %sw.bb158 ], [ %36, %sw.bb141 ], [ %32, %sw.bb115 ], [ %mask.sroa.0.0339, %if.then104 ], [ %mask.sroa.0.0339, %if.else109 ], [ %26, %if.then87 ], [ %26, %if.else ], [ %mask.sroa.0.0339, %madera_pin_make_drv_str.exit ], [ %19, %sw.bb55 ], [ %17, %sw.bb46 ], [ %mask.sroa.0.0339, %sw.bb33 ], [ %mask.sroa.0.0339, %sw.bb20 ], [ %mask.sroa.0.0339, %sw.bb12 ], [ %mask.sroa.0.0339, %sw.bb ]
  %mask.sroa.16.1 = phi i16 [ %42, %sw.bb158 ], [ %38, %sw.bb141 ], [ %34, %sw.bb115 ], [ %29, %if.then104 ], [ %29, %if.else109 ], [ %mask.sroa.16.0340, %if.then87 ], [ %mask.sroa.16.0340, %if.else ], [ %21, %madera_pin_make_drv_str.exit ], [ %mask.sroa.16.0340, %sw.bb55 ], [ %mask.sroa.16.0340, %sw.bb46 ], [ %14, %sw.bb33 ], [ %11, %sw.bb20 ], [ %9, %sw.bb12 ], [ %7, %sw.bb ]
  %incdec.ptr = getelementptr i32, ptr %configs.addr.0342, i32 1
  %dec = add i32 %num_configs.addr.0341, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %sw.epilog.do.body184_crit_edge, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.epilog.do.body184_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body184

do.body184:                                       ; preds = %sw.epilog.do.body184_crit_edge, %entry.do.body184_crit_edge
  %conf.sroa.0.0.lcssa = phi i16 [ 0, %entry.do.body184_crit_edge ], [ %conf.sroa.0.3, %sw.epilog.do.body184_crit_edge ]
  %conf.sroa.23.0.lcssa = phi i16 [ 0, %entry.do.body184_crit_edge ], [ %conf.sroa.23.1, %sw.epilog.do.body184_crit_edge ]
  %mask.sroa.0.0.lcssa = phi i16 [ 0, %entry.do.body184_crit_edge ], [ %mask.sroa.0.1, %sw.epilog.do.body184_crit_edge ]
  %mask.sroa.16.0.lcssa = phi i16 [ 0, %entry.do.body184_crit_edge ], [ %mask.sroa.16.1, %sw.epilog.do.body184_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_pin_conf_set.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@madera_pin_conf_set, %do.end208)) #8
          to label %if.then198 [label %do.end208], !srcloc !356

if.then198:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #10
  %dev199 = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  %44 = ptrtoint ptr %dev199 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev199, align 4
  %add200 = add i32 %pin, 1
  %conv202 = zext i16 %conf.sroa.0.0.lcssa to i32
  %add203 = add i32 %mul, 5889
  %conv205 = zext i16 %conf.sroa.23.0.lcssa to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_pin_conf_set.__UNIQUE_ID_ddebug292, ptr noundef %45, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.133, i32 noundef %add200, i32 noundef %add, i32 noundef %conv202, i32 noundef %add203, i32 noundef %conv205) #8
  br label %do.end208

do.end208:                                        ; preds = %if.then198, %do.body184
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %conv210 = zext i16 %mask.sroa.0.0.lcssa to i32
  %conv212 = zext i16 %conf.sroa.0.0.lcssa to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %add, i32 noundef %conv210, i32 noundef %conv212, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool214.not = icmp eq i32 %call.i, 0
  br i1 %tobool214.not, label %if.end216, label %do.end208.do.end229_crit_edge

do.end208.do.end229_crit_edge:                    ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end229

if.end216:                                        ; preds = %do.end208
  %inc = add i32 %mul, 5889
  %50 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %conv220 = zext i16 %mask.sroa.16.0.lcssa to i32
  %conv222 = zext i16 %conf.sroa.23.0.lcssa to i32
  %call.i328 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %inc, i32 noundef %conv220, i32 noundef %conv222, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328)
  %tobool224.not = icmp eq i32 %call.i328, 0
  br i1 %tobool224.not, label %if.end216.cleanup_crit_edge, label %if.end216.do.end229_crit_edge

if.end216.do.end229_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end229

if.end216.cleanup_crit_edge:                      ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end229:                                        ; preds = %if.end216.do.end229_crit_edge, %do.end208.do.end229_crit_edge
  %reg.0 = phi i32 [ %add, %do.end208.do.end229_crit_edge ], [ %inc, %if.end216.do.end229_crit_edge ]
  %ret.0 = phi i32 [ %call.i, %do.end208.do.end229_crit_edge ], [ %call.i328, %if.end216.do.end229_crit_edge ]
  %dev230 = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  %54 = ptrtoint ptr %dev230 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev230, align 4
  %add231 = add i32 %pin, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.136, i32 noundef %add231, i32 noundef %ret.0, i32 noundef %reg.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end229, %if.end216.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end229 ], [ 0, %if.end216.cleanup_crit_edge ], [ -524, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_pin_conf_group_set(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %chip = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %n_pin_groups = getelementptr inbounds %struct.madera_pin_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_pin_groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_pin_groups, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_pin_conf_group_set.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@madera_pin_conf_group_set, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !356

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.madera_pin_private, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %chip.i = getelementptr inbounds %struct.madera_pin_private, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 4
  %n_pin_groups.i = getelementptr inbounds %struct.madera_pin_chip, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %n_pin_groups.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_pin_groups.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %selector)
  %cmp.i = icmp ugt i32 %9, %selector
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %pin_groups.i = getelementptr inbounds %struct.madera_pin_chip, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %pin_groups.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pin_groups.i, align 4
  %arrayidx.i = getelementptr %struct.madera_pin_groups, ptr %11, i32 %selector
  br label %madera_get_group_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %selector, %9
  %arrayidx4.i = getelementptr [40 x ptr], ptr @madera_pin_single_group_names, i32 0, i32 %sub.i
  br label %madera_get_group_name.exit

madera_get_group_name.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.in.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %arrayidx4.i, %if.end.i ]
  %12 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %retval.0.i35 = load ptr, ptr %retval.0.in.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_pin_conf_group_set.__UNIQUE_ID_ddebug293, ptr noundef %5, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.140, ptr noundef %retval.0.i35) #8
  br label %do.end

do.end:                                           ; preds = %madera_get_group_name.exit, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %selector)
  %cmp.not = icmp ugt i32 %3, %selector
  br i1 %cmp.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %selector, %3
  %call7 = tail call i32 @madera_pin_conf_set(ptr noundef %pctldev, i32 noundef %sub, ptr noundef %configs, i32 noundef %num_configs)
  br label %cleanup

if.else:                                          ; preds = %do.end
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %pin_groups = getelementptr inbounds %struct.madera_pin_chip, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pin_groups to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pin_groups, align 4
  %pins = getelementptr %struct.madera_pin_groups, ptr %16, i32 %selector, i32 1
  %n_pins = getelementptr %struct.madera_pin_groups, ptr %16, i32 %selector, i32 2
  %17 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp937.not = icmp eq i32 %18, 0
  br i1 %cmp937.not, label %if.else.cleanup_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.038, 1
  %19 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_pins, align 4
  %cmp9 = icmp ult i32 %inc, %20
  br i1 %cmp9, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %21 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pins, align 4
  %arrayidx10 = getelementptr i32, ptr %22, i32 %i.038
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx10, align 4
  %call11 = tail call i32 @madera_pin_conf_set(ptr noundef %pctldev, i32 noundef %24, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ 0, %if.else.cleanup_crit_edge ], [ %call11, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_unregister_mappings(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !296, !297, !299, !300, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !323, !324, !325, !326, !328, !329, !330, !332, !333, !335, !336, !337, !339, !340, !341, !342, !343, !345, !346}
!llvm.module.flags = !{!347, !348, !349, !350, !351, !352, !353, !354}
!llvm.ident = !{!355}

!0 = !{ptr @__initcall__kmod_pinctrl_madera__297_1104_madera_pin_driver_init6, !1, !"__initcall__kmod_pinctrl_madera__297_1104_madera_pin_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1104, i32 1}
!2 = !{ptr @__exitcall_madera_pin_driver_exit, !1, !"__exitcall_madera_pin_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description298, !4, !"__UNIQUE_ID_description298", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1106, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1107, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1108, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1100, i32 11}
!12 = !{ptr @madera_pin_driver, !13, !"madera_pin_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1096, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1007, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @madera_pin_probe.__UNIQUE_ID_ddebug295, !15, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1057, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @madera_pin_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @madera_pin_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1066, i32 4}
!28 = !{ptr @madera_pin_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @madera_pin_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1075, i32 3}
!32 = !{ptr @madera_pin_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @madera_pin_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 1081, i32 2}
!36 = !{ptr @madera_pin_probe.__UNIQUE_ID_ddebug296, !35, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!37 = !{ptr @madera_pin_desc, !38, !"madera_pin_desc", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 988, i32 28}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 33, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 34, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 35, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 36, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 37, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 38, i32 2}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 39, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 40, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 41, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 42, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 43, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 44, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 45, i32 2}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 46, i32 2}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 47, i32 2}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 48, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 49, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 50, i32 2}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 51, i32 2}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 52, i32 2}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 53, i32 2}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 54, i32 2}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 55, i32 2}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 56, i32 2}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 57, i32 2}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 58, i32 2}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 59, i32 2}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 60, i32 2}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 61, i32 2}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 62, i32 2}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 63, i32 2}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 64, i32 2}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 65, i32 2}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 66, i32 2}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 67, i32 2}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 68, i32 2}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 69, i32 2}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 70, i32 2}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 71, i32 2}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 72, i32 2}
!119 = !{ptr @madera_pins, !120, !"madera_pins", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 32, i32 38}
!121 = !{ptr @madera_pin_group_ops, !122, !"madera_pin_group_ops", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 565, i32 33}
!123 = !{ptr @madera_pin_single_group_names, !124, !"madera_pin_single_group_names", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 84, i32 27}
!125 = !{ptr @madera_pin_single_group_pins, !126, !"madera_pin_single_group_pins", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 94, i32 27}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 532, i32 16}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 540, i32 16}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 542, i32 16}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 546, i32 15}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 549, i32 15}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 552, i32 15}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 555, i32 15}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 557, i32 15}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 559, i32 16}
!145 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 562, i32 15}
!147 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 494, i32 19}
!149 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 127, i32 11}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 132, i32 11}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 137, i32 11}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 142, i32 11}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 147, i32 11}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 152, i32 11}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 157, i32 11}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 162, i32 11}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 167, i32 11}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 172, i32 11}
!169 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 177, i32 11}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 182, i32 11}
!173 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 187, i32 11}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 192, i32 11}
!177 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 197, i32 11}
!179 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 202, i32 11}
!181 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 207, i32 11}
!183 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 212, i32 11}
!185 = !{ptr @.str.84, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 217, i32 11}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 222, i32 11}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 227, i32 11}
!191 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 232, i32 11}
!193 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 237, i32 11}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 242, i32 11}
!197 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 247, i32 11}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 252, i32 11}
!201 = !{ptr @.str.92, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 257, i32 11}
!203 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 262, i32 11}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 267, i32 11}
!207 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 272, i32 11}
!209 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 277, i32 11}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 282, i32 11}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 287, i32 11}
!215 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 292, i32 11}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 297, i32 11}
!219 = !{ptr @.str.101, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 302, i32 11}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 307, i32 11}
!223 = !{ptr @.str.103, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 312, i32 11}
!225 = !{ptr @.str.104, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 317, i32 11}
!227 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 322, i32 11}
!229 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 327, i32 11}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 332, i32 11}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 337, i32 11}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 342, i32 11}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 347, i32 11}
!239 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 352, i32 11}
!241 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 357, i32 11}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 362, i32 11}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 367, i32 11}
!247 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 372, i32 11}
!249 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 377, i32 11}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 382, i32 11}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 387, i32 11}
!255 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 392, i32 11}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 397, i32 11}
!259 = !{ptr @.str.121, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 402, i32 11}
!261 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 407, i32 11}
!263 = !{ptr @madera_mux_funcs, !264, !"madera_mux_funcs", i1 false, i1 false}
!264 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 125, i32 3}
!265 = !{ptr @madera_aif1_group_names, !266, !"madera_aif1_group_names", i1 false, i1 false}
!266 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 103, i32 27}
!267 = !{ptr @madera_aif2_group_names, !268, !"madera_aif2_group_names", i1 false, i1 false}
!268 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 104, i32 27}
!269 = !{ptr @madera_aif3_group_names, !270, !"madera_aif3_group_names", i1 false, i1 false}
!270 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 105, i32 27}
!271 = !{ptr @madera_aif4_group_names, !272, !"madera_aif4_group_names", i1 false, i1 false}
!272 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 106, i32 27}
!273 = !{ptr @madera_mif1_group_names, !274, !"madera_mif1_group_names", i1 false, i1 false}
!274 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 107, i32 27}
!275 = !{ptr @madera_mif2_group_names, !276, !"madera_mif2_group_names", i1 false, i1 false}
!276 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 108, i32 27}
!277 = !{ptr @madera_mif3_group_names, !278, !"madera_mif3_group_names", i1 false, i1 false}
!278 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 109, i32 27}
!279 = !{ptr @madera_dmic3_group_names, !280, !"madera_dmic3_group_names", i1 false, i1 false}
!280 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 110, i32 27}
!281 = !{ptr @madera_dmic4_group_names, !282, !"madera_dmic4_group_names", i1 false, i1 false}
!282 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 111, i32 27}
!283 = !{ptr @madera_dmic5_group_names, !284, !"madera_dmic5_group_names", i1 false, i1 false}
!284 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 112, i32 27}
!285 = !{ptr @madera_dmic6_group_names, !286, !"madera_dmic6_group_names", i1 false, i1 false}
!286 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 113, i32 27}
!287 = !{ptr @madera_spk1_group_names, !288, !"madera_spk1_group_names", i1 false, i1 false}
!288 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 114, i32 27}
!289 = !{ptr @madera_spk2_group_names, !290, !"madera_spk2_group_names", i1 false, i1 false}
!290 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 115, i32 27}
!291 = !{ptr @madera_pin_mux_ops, !292, !"madera_pin_mux_ops", i1 false, i1 false}
!292 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 730, i32 32}
!293 = !{ptr @.str.123, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 621, i32 2}
!295 = !{ptr @.str.124, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @madera_mux_set_mux.__UNIQUE_ID_ddebug288, !294, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!297 = !{ptr @.str.125, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 640, i32 4}
!299 = !{ptr @madera_mux_set_mux.__UNIQUE_ID_ddebug289, !298, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!300 = !{ptr @.str.126, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 658, i32 3}
!302 = !{ptr @madera_mux_set_mux.__UNIQUE_ID_ddebug290, !301, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!303 = !{ptr @.str.127, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 668, i32 3}
!305 = !{ptr @madera_mux_set_mux._entry, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @madera_mux_set_mux._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.128, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 708, i32 3}
!309 = !{ptr @madera_gpio_request_enable._entry, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @madera_gpio_request_enable._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.129, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 727, i32 3}
!313 = !{ptr @madera_gpio_disable_free._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @madera_gpio_disable_free._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.130, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 691, i32 3}
!317 = !{ptr @madera_gpio_set_direction._entry, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @madera_gpio_set_direction._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @madera_pin_conf_ops, !320, !"madera_pin_conf_ops", i1 false, i1 false}
!320 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 981, i32 33}
!321 = !{ptr @.str.131, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 756, i32 3}
!323 = !{ptr @.str.132, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @madera_pin_conf_get._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @madera_pin_conf_get._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.133, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 831, i32 3}
!328 = !{ptr @.str.134, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @madera_pin_conf_set.__UNIQUE_ID_ddebug291, !327, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!330 = !{ptr @.str.135, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 923, i32 2}
!332 = !{ptr @madera_pin_conf_set.__UNIQUE_ID_ddebug292, !331, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!333 = !{ptr @.str.136, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 939, i32 2}
!335 = !{ptr @madera_pin_conf_set._entry, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @madera_pin_conf_set._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.137, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 425, i32 2}
!339 = !{ptr @.str.138, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.139, !338, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @madera_pin_make_drv_str._entry, !338, !"_entry", i1 false, i1 false}
!342 = !{ptr @madera_pin_make_drv_str._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.140, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/pinctrl/cirrus/pinctrl-madera-core.c", i32 956, i32 2}
!345 = !{ptr @.str.141, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @madera_pin_conf_group_set.__UNIQUE_ID_ddebug293, !344, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!347 = !{i32 1, !"wchar_size", i32 2}
!348 = !{i32 1, !"min_enum_size", i32 4}
!349 = !{i32 8, !"branch-target-enforcement", i32 0}
!350 = !{i32 8, !"sign-return-address", i32 0}
!351 = !{i32 8, !"sign-return-address-all", i32 0}
!352 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!353 = !{i32 7, !"uwtable", i32 1}
!354 = !{i32 7, !"frame-pointer", i32 2}
!355 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!356 = !{i64 2148978957, i64 2148978962, i64 2148978975, i64 2148979019, i64 2148979053, i64 2148979074}
!357 = !{!"auto-init"}
