; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/uniphier/pinctrl-uniphier-core.c_pt.bc'
source_filename = "../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.uniphier_pinctrl_priv = type { %struct.pinctrl_desc, ptr, ptr, ptr, %struct.list_head }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.uniphier_pinctrl_reg_region = type { %struct.list_head, i32, i32, [0 x i32] }
%struct.uniphier_pinctrl_socdata = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.uniphier_pinctrl_group = type { ptr, ptr, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }
%struct.uniphier_pinmux_function = type { ptr, ptr, i32 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }

@uniphier_pinctrl_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_pinctrl_suspend, ptr @uniphier_pinctrl_resume, ptr @uniphier_pinctrl_suspend, ptr @uniphier_pinctrl_resume, ptr @uniphier_pinctrl_suspend, ptr @uniphier_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@uniphier_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 873, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pinctrl socdata lacks necessary members\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uniphier_pinctrl_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_pinctrl_probe._entry_ptr = internal global ptr @uniphier_pinctrl_probe._entry, section ".printk_index", align 4
@uniphier_pinctrl_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 886, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get regmap\0A\00", [42 x i8] zeroinitializer }, align 32
@uniphier_pinctrl_probe._entry_ptr.7 = internal global ptr @uniphier_pinctrl_probe._entry.5, section ".printk_index", align 4
@uniphier_pctlops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @uniphier_pctl_get_groups_count, ptr @uniphier_pctl_get_group_name, ptr @uniphier_pctl_get_group_pins, ptr @uniphier_pctl_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@uniphier_pmxops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @uniphier_pmx_get_functions_count, ptr @uniphier_pmx_get_function_name, ptr @uniphier_pmx_get_function_groups, ptr @uniphier_pmx_set_mux, ptr @uniphier_pmx_gpio_request_enable, ptr null, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@uniphier_confops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @uniphier_conf_pin_config_get, ptr @uniphier_conf_pin_config_set, ptr null, ptr @uniphier_conf_pin_config_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uniphier_pinctrl_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 905, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to register UniPhier pinctrl driver\0A\00", [52 x i8] zeroinitializer }, align 32
@uniphier_pinctrl_probe._entry_ptr.10 = internal global ptr @uniphier_pinctrl_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UP\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UP(FIXED)\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DOWN(FIXED)\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"4/8(mA)\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"8/12/16/20(mA)\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"4/5/7/9/11/12/14/16(mA)\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4(mA)\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5(mA)\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8(mA)\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" PULL_DIR=%s  DRV_TYPE=%s\00", [38 x i8] zeroinitializer }, align 32
@uniphier_conf_drv_strengths_1bit = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 8], [24 x i8] zeroinitializer }, align 32
@uniphier_conf_drv_strengths_2bit = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 12, i32 16, i32 20], [16 x i8] zeroinitializer }, align 32
@uniphier_conf_drv_strengths_3bit = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 5, i32 7, i32 9, i32 11, i32 12, i32 14, i32 16], [32 x i8] zeroinitializer }, align 32
@uniphier_conf_drv_strengths_fixed4 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@uniphier_conf_drv_strengths_fixed5 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 5], [28 x i8] zeroinitializer }, align 32
@uniphier_conf_drv_strengths_fixed8 = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 8], [28 x i8] zeroinitializer }, align 32
@uniphier_conf_pin_config_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 512, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unsupported configuration parameter %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"uniphier_conf_pin_config_set\00", [35 x i8] zeroinitializer }, align 32
@uniphier_conf_pin_config_set._entry_ptr = internal global ptr @uniphier_conf_pin_config_set._entry, section ".printk_index", align 4
@uniphier_conf_pin_bias_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 360, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can not disable pull register for pin %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"uniphier_conf_pin_bias_set\00", [37 x i8] zeroinitializer }, align 32
@uniphier_conf_pin_bias_set._entry_ptr = internal global ptr @uniphier_conf_pin_bias_set._entry, section ".printk_index", align 4
@uniphier_conf_pin_bias_set._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pull-up is unsupported for pin %s\0A\00", [61 x i8] zeroinitializer }, align 32
@uniphier_conf_pin_bias_set._entry_ptr.29 = internal global ptr @uniphier_conf_pin_bias_set._entry.27, section ".printk_index", align 4
@uniphier_conf_pin_bias_set._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pull-up can not be total\0A\00", [38 x i8] zeroinitializer }, align 32
@uniphier_conf_pin_bias_set._entry_ptr.32 = internal global ptr @uniphier_conf_pin_bias_set._entry.30, section ".printk_index", align 4
@uniphier_conf_pin_bias_set._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 385, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pull-down is unsupported for pin %s\0A\00", [59 x i8] zeroinitializer }, align 32
@uniphier_conf_pin_bias_set._entry_ptr.35 = internal global ptr @uniphier_conf_pin_bias_set._entry.33, section ".printk_index", align 4
@uniphier_conf_pin_bias_set._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.2, i32 389, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pull-down can not be total\0A\00", [36 x i8] zeroinitializer }, align 32
@uniphier_conf_pin_bias_set._entry_ptr.38 = internal global ptr @uniphier_conf_pin_bias_set._entry.36, section ".printk_index", align 4
@uniphier_conf_pin_bias_set._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.2, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pull-up/down is unsupported for pin %s\0A\00", [56 x i8] zeroinitializer }, align 32
@uniphier_conf_pin_bias_set._entry_ptr.41 = internal global ptr @uniphier_conf_pin_bias_set._entry.39, section ".printk_index", align 4
@uniphier_conf_pin_drive_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 429, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cannot set drive strength for pin %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"uniphier_conf_pin_drive_set\00", [36 x i8] zeroinitializer }, align 32
@uniphier_conf_pin_drive_set._entry_ptr = internal global ptr @uniphier_conf_pin_drive_set._entry, section ".printk_index", align 4
@uniphier_conf_pin_drive_set._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unsupported drive strength %u mA for pin %s\0A\00", [51 x i8] zeroinitializer }, align 32
@uniphier_conf_pin_drive_set._entry_ptr.46 = internal global ptr @uniphier_conf_pin_drive_set._entry.44, section ".printk_index", align 4
@switch.table.uniphier_pctl_pin_dbg_show = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [44 x i8] zeroinitializer }, align 32
@switch.table.uniphier_pctl_pin_dbg_show.47 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.15], [36 x i8] zeroinitializer }, align 32
@switch.table.uniphier_conf_pin_config_get = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -22, i32 -22, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 4, i64 5, i64 9, i64 12]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.57 = private unnamed_addr constant [24 x i8] c"uniphier_pinctrl_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 856, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 873, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 886, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"uniphier_pctlops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 128, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"uniphier_pmxops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 689, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"uniphier_confops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 543, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 905, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 80, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 83, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 86, i32 14 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 89, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 92, i32 14 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 100, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 103, i32 14 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 106, i32 14 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 109, i32 14 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 112, i32 14 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 115, i32 14 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 124, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant [33 x i8] c"uniphier_conf_drv_strengths_1bit\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 139, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant [33 x i8] c"uniphier_conf_drv_strengths_2bit\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 140, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant [33 x i8] c"uniphier_conf_drv_strengths_3bit\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 141, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant [35 x i8] c"uniphier_conf_drv_strengths_fixed4\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 143, i32 27 }
@___asan_gen_.147 = private unnamed_addr constant [35 x i8] c"uniphier_conf_drv_strengths_fixed5\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 144, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant [35 x i8] c"uniphier_conf_drv_strengths_fixed8\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 145, i32 27 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 510, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 358, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 369, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 375, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 383, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 389, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 395, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 428, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [52 x i8] c"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 439, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [40 x i8] c"switch.table.uniphier_pctl_pin_dbg_show\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [43 x i8] c"switch.table.uniphier_pctl_pin_dbg_show.47\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [42 x i8] c"switch.table.uniphier_conf_pin_config_get\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @uniphier_conf_pin_bias_set._entry, ptr @uniphier_conf_pin_bias_set._entry.27, ptr @uniphier_conf_pin_bias_set._entry.30, ptr @uniphier_conf_pin_bias_set._entry.33, ptr @uniphier_conf_pin_bias_set._entry.36, ptr @uniphier_conf_pin_bias_set._entry.39, ptr @uniphier_conf_pin_bias_set._entry_ptr, ptr @uniphier_conf_pin_bias_set._entry_ptr.29, ptr @uniphier_conf_pin_bias_set._entry_ptr.32, ptr @uniphier_conf_pin_bias_set._entry_ptr.35, ptr @uniphier_conf_pin_bias_set._entry_ptr.38, ptr @uniphier_conf_pin_bias_set._entry_ptr.41, ptr @uniphier_conf_pin_config_set._entry, ptr @uniphier_conf_pin_config_set._entry_ptr, ptr @uniphier_conf_pin_drive_set._entry, ptr @uniphier_conf_pin_drive_set._entry.44, ptr @uniphier_conf_pin_drive_set._entry_ptr, ptr @uniphier_conf_pin_drive_set._entry_ptr.46, ptr @uniphier_pinctrl_probe._entry, ptr @uniphier_pinctrl_probe._entry.5, ptr @uniphier_pinctrl_probe._entry.8, ptr @uniphier_pinctrl_probe._entry_ptr, ptr @uniphier_pinctrl_probe._entry_ptr.10, ptr @uniphier_pinctrl_probe._entry_ptr.7, ptr @uniphier_pinctrl_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @uniphier_pctlops, ptr @uniphier_pmxops, ptr @uniphier_confops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @uniphier_conf_drv_strengths_1bit, ptr @uniphier_conf_drv_strengths_2bit, ptr @uniphier_conf_drv_strengths_3bit, ptr @uniphier_conf_drv_strengths_fixed4, ptr @uniphier_conf_drv_strengths_fixed5, ptr @uniphier_conf_drv_strengths_fixed8, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @switch.table.uniphier_pctl_pin_dbg_show, ptr @switch.table.uniphier_pctl_pin_dbg_show.47, ptr @switch.table.uniphier_conf_pin_config_get], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pinctrl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pinctrl_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pctlops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pmxops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_confops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pinctrl_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_drv_strengths_1bit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_drv_strengths_2bit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_drv_strengths_3bit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_drv_strengths_fixed4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_drv_strengths_fixed5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_drv_strengths_fixed8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_pin_config_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_pin_bias_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_pin_bias_set._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_pin_bias_set._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_pin_bias_set._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_pin_bias_set._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_pin_bias_set._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_pin_drive_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_conf_pin_drive_set._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uniphier_pctl_pin_dbg_show to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uniphier_pctl_pin_dbg_show.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uniphier_conf_pin_config_get to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pinctrl_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_regions = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %1, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %r.0.in = phi ptr [ %reg_regions, %entry ], [ %r.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %r.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %r.0 = load ptr, ptr %r.0.in, align 4
  %cmp.not = icmp eq ptr %r.0, %reg_regions
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %base = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %r.0, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 4
  %vals = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %r.0, i32 0, i32 3
  %nregs = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %r.0, i32 0, i32 2
  %7 = ptrtoint ptr %nregs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nregs, align 4
  %call2 = tail call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %6, ptr noundef %vals, i32 noundef %8) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pinctrl_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_regions = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %1, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %r.0.in = phi ptr [ %reg_regions, %entry ], [ %r.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %r.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %r.0 = load ptr, ptr %r.0.in, align 4
  %cmp.not = icmp eq ptr %r.0, %reg_regions
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %base = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %r.0, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 4
  %vals = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %r.0, i32 0, i32 3
  %nregs = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %r.0, i32 0, i32 2
  %7 = ptrtoint ptr %nregs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nregs, align 4
  %call2 = tail call i32 @regmap_bulk_write(ptr noundef %4, i32 noundef %6, ptr noundef %vals, i32 noundef %8) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socdata, align 4
  %caps = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.end.if.end15_crit_edge, label %if.then9

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then9:                                         ; preds = %for.end
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 5888, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %for.end.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call11, %if.then9.cleanup_crit_edge ], [ %call2, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uniphier_pinctrl_probe(ptr noundef %pdev, ptr noundef %socdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not = icmp eq ptr %socdata, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false3

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %npins = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %socdata, i32 0, i32 1
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %lor.lhs.false3.do.end_crit_edge, label %lor.lhs.false5

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %groups = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %socdata, i32 0, i32 2
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false5.do.end_crit_edge, label %lor.lhs.false7

lor.lhs.false5.do.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %groups_count = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %socdata, i32 0, i32 3
  %6 = ptrtoint ptr %groups_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %groups_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %lor.lhs.false7.do.end_crit_edge, label %lor.lhs.false9

lor.lhs.false7.do.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %functions = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %socdata, i32 0, i32 4
  %8 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %lor.lhs.false9.do.end_crit_edge, label %lor.lhs.false11

lor.lhs.false9.do.end_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %functions_count = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %socdata, i32 0, i32 5
  %10 = ptrtoint ptr %functions_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %functions_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %lor.lhs.false11.do.end_crit_edge, label %if.end

lor.lhs.false11.do.end_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false11.do.end_crit_edge, %lor.lhs.false9.do.end_crit_edge, %lor.lhs.false7.do.end_crit_edge, %lor.lhs.false5.do.end_crit_edge, %lor.lhs.false3.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #6
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call16 = tail call ptr @of_get_parent(ptr noundef %13) #6
  %call17 = tail call ptr @syscon_node_to_regmap(ptr noundef %call16) #6
  %regmap = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call17, ptr %regmap, align 4
  tail call void @of_node_put(ptr noundef %call16) #6
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #9
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %socdata27 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %socdata27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %socdata, ptr %socdata27, align 4
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %19 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %call.i, align 4
  %24 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %socdata, align 4
  %pins31 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %pins31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %pins31, align 4
  %27 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %npins, align 4
  %npins34 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %npins34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %npins34, align 4
  %pctlops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @uniphier_pctlops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @uniphier_pmxops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @uniphier_confops, ptr %confops, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %20, i32 0, i32 2
  %33 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %owner, align 4
  %owner40 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %owner40 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %owner40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp221.not.i = icmp eq i32 %28, 0
  br i1 %cmp221.not.i, label %if.end65.i.thread, label %for.body.lr.ph.i

if.end65.i.thread:                                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %reg_regions.i108 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %reg_regions.i108 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %reg_regions.i108, ptr %reg_regions.i108, align 4
  %prev.i.i109 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i.i109 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %reg_regions.i108, ptr %prev.i.i109, align 4
  br label %if.end44

for.body.lr.ph.i:                                 ; preds = %if.end26
  %caps.i = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %socdata, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end44.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %num_drvctrl.0228.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_drvctrl.1.i, %if.end44.i.for.body.i_crit_edge ]
  %num_drv2ctrl.0227.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_drv2ctrl.1.i, %if.end44.i.for.body.i_crit_edge ]
  %num_drv3ctrl.0226.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_drv3ctrl.1.i, %if.end44.i.for.body.i_crit_edge ]
  %num_pupdctrl.0225.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_pupdctrl.1.i, %if.end44.i.for.body.i_crit_edge ]
  %i.0223.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end44.i.for.body.i_crit_edge ]
  %num_iectrl.0222.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_iectrl.1.i, %if.end44.i.for.body.i_crit_edge ]
  %drv_data2.i = getelementptr %struct.pinctrl_pin_desc, ptr %25, i32 %i.0223.i, i32 2
  %38 = ptrtoint ptr %drv_data2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drv_data2.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %shr.i.i = lshr i32 %40, 3
  %and.i.i = and i32 %shr.i.i, 511
  %shr.i134.i = lshr i32 %40, 12
  %and.i135.i = and i32 %shr.i134.i, 7
  %shr.i136.i = lshr i32 %40, 15
  %and.i137.i = and i32 %shr.i136.i, 511
  %and.i140.i = and i32 %40, 7
  %41 = zext i32 %and.i135.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i135.i, label %for.body.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb8.i
    i32 2, label %sw.bb16.i
  ]

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nuw nsw i32 %and.i.i, 1
  %42 = tail call i32 @llvm.umax.i32(i32 %num_drvctrl.0228.i, i32 %add.i) #6
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add9.i = add nuw nsw i32 %and.i.i, 1
  %43 = tail call i32 @llvm.umax.i32(i32 %num_drv2ctrl.0227.i, i32 %add9.i) #6
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add17.i = add nuw nsw i32 %and.i.i, 1
  %44 = tail call i32 @llvm.umax.i32(i32 %num_drv3ctrl.0226.i, i32 %add17.i) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb16.i, %sw.bb8.i, %sw.bb.i, %for.body.i.sw.epilog.i_crit_edge
  %num_drv3ctrl.1.i = phi i32 [ %num_drv3ctrl.0226.i, %for.body.i.sw.epilog.i_crit_edge ], [ %44, %sw.bb16.i ], [ %num_drv3ctrl.0226.i, %sw.bb8.i ], [ %num_drv3ctrl.0226.i, %sw.bb.i ]
  %num_drv2ctrl.1.i = phi i32 [ %num_drv2ctrl.0227.i, %for.body.i.sw.epilog.i_crit_edge ], [ %num_drv2ctrl.0227.i, %sw.bb16.i ], [ %43, %sw.bb8.i ], [ %num_drv2ctrl.0227.i, %sw.bb.i ]
  %num_drvctrl.1.i = phi i32 [ %num_drvctrl.0228.i, %for.body.i.sw.epilog.i_crit_edge ], [ %num_drvctrl.0228.i, %sw.bb16.i ], [ %num_drvctrl.0228.i, %sw.bb8.i ], [ %42, %sw.bb.i ]
  %45 = and i32 %40, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %switch.i = icmp eq i32 %45, 0
  %add26.i = add nuw nsw i32 %and.i137.i, 1
  %46 = tail call i32 @llvm.umax.i32(i32 %num_pupdctrl.0225.i, i32 %add26.i) #6
  %num_pupdctrl.1.i = select i1 %switch.i, i32 %46, i32 %num_pupdctrl.0225.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i140.i)
  %cmp33.not.i = icmp eq i32 %and.i140.i, 7
  br i1 %cmp33.not.i, label %sw.epilog.i.if.end44.i_crit_edge, label %if.then34.i

sw.epilog.i.if.end44.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then34.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %and.i140.i, i32 %i.0223.i
  %add37.i = add nuw i32 %spec.select.i, 1
  %49 = tail call i32 @llvm.umax.i32(i32 %num_iectrl.0222.i, i32 %add37.i) #6
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then34.i, %sw.epilog.i.if.end44.i_crit_edge
  %num_iectrl.1.i = phi i32 [ %49, %if.then34.i ], [ %num_iectrl.0222.i, %sw.epilog.i.if.end44.i_crit_edge ]
  %inc.i = add nuw i32 %i.0223.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %if.end.i.i, label %if.end44.i.for.body.i_crit_edge

if.end44.i.for.body.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.i:                                       ; preds = %if.end44.i
  %reg_regions.i = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %reg_regions.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %reg_regions.i, ptr %reg_regions.i, align 4
  %prev.i.i = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %reg_regions.i, ptr %prev.i.i, align 4
  %mul.i.i = shl i32 %28, 3
  %sub.i.i = add i32 %mul.i.i, 31
  %div13.i.i = lshr i32 %sub.i.i, 5
  %52 = shl nuw nsw i32 %div13.i.i, 2
  %spec.select.i14.i.i = add nuw nsw i32 %52, 16
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %spec.select.i14.i.i, i32 noundef 3520) #6
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %base5.i.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %base5.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4096, ptr %base5.i.i, align 4
  %nregs6.i.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %nregs6.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div13.i.i, ptr %nregs6.i.i, align 4
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i, ptr noundef %56, ptr noundef %reg_regions.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end4.i.i.if.end49.i_crit_edge

if.end4.i.i.if.end49.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i.i.i, ptr %prev.i.i, align 4
  %58 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %reg_regions.i, ptr %call.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call.i.i.i, ptr %56, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end.i.i.i.i, %if.end4.i.i.if.end49.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_drvctrl.1.i)
  %tobool.not.i141.i = icmp eq i32 %num_drvctrl.1.i, 0
  br i1 %tobool.not.i141.i, label %if.end49.i.if.end53.i_crit_edge, label %if.end.i147.i

if.end49.i.if.end53.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.end.i147.i:                                    ; preds = %if.end49.i
  %sub.i142.i = add i32 %num_drvctrl.1.i, 31
  %div13.i143.i = lshr i32 %sub.i142.i, 5
  %61 = shl nuw nsw i32 %div13.i143.i, 2
  %spec.select.i14.i144.i = add nuw nsw i32 %61, 16
  %call.i.i145.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %spec.select.i14.i144.i, i32 noundef 3520) #6
  %tobool2.not.i146.i = icmp eq ptr %call.i.i145.i, null
  br i1 %tobool2.not.i146.i, label %if.end.i147.i.cleanup_crit_edge, label %if.end4.i153.i

if.end.i147.i.cleanup_crit_edge:                  ; preds = %if.end.i147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i153.i:                                   ; preds = %if.end.i147.i
  %base5.i148.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i145.i, i32 0, i32 1
  %62 = ptrtoint ptr %base5.i148.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 6144, ptr %base5.i148.i, align 4
  %nregs6.i149.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i145.i, i32 0, i32 2
  %63 = ptrtoint ptr %nregs6.i149.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div13.i143.i, ptr %nregs6.i149.i, align 4
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i152.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i145.i, ptr noundef %65, ptr noundef %reg_regions.i) #6
  br i1 %call.i.i.i152.i, label %if.end.i.i.i155.i, label %if.end4.i153.i.if.end53.i_crit_edge

if.end4.i153.i.if.end53.i_crit_edge:              ; preds = %if.end4.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.end.i.i.i155.i:                                ; preds = %if.end4.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i.i145.i, ptr %prev.i.i, align 4
  %67 = ptrtoint ptr %call.i.i145.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %reg_regions.i, ptr %call.i.i145.i, align 4
  %prev3.i.i.i154.i = getelementptr inbounds %struct.list_head, ptr %call.i.i145.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i154.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i154.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %call.i.i145.i, ptr %65, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end.i.i.i155.i, %if.end4.i153.i.if.end53.i_crit_edge, %if.end49.i.if.end53.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_drv2ctrl.1.i)
  %tobool.not.i158.i = icmp eq i32 %num_drv2ctrl.1.i, 0
  br i1 %tobool.not.i158.i, label %if.end53.i.if.end57.i_crit_edge, label %if.end.i165.i

if.end53.i.if.end57.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.end.i165.i:                                    ; preds = %if.end53.i
  %mul.i159.i = shl i32 %num_drv2ctrl.1.i, 1
  %sub.i160.i = add i32 %mul.i159.i, 31
  %div13.i161.i = lshr i32 %sub.i160.i, 5
  %70 = shl nuw nsw i32 %div13.i161.i, 2
  %spec.select.i14.i162.i = add nuw nsw i32 %70, 16
  %call.i.i163.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %spec.select.i14.i162.i, i32 noundef 3520) #6
  %tobool2.not.i164.i = icmp eq ptr %call.i.i163.i, null
  br i1 %tobool2.not.i164.i, label %if.end.i165.i.cleanup_crit_edge, label %if.end4.i171.i

if.end.i165.i.cleanup_crit_edge:                  ; preds = %if.end.i165.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i171.i:                                   ; preds = %if.end.i165.i
  %base5.i166.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i163.i, i32 0, i32 1
  %71 = ptrtoint ptr %base5.i166.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 6400, ptr %base5.i166.i, align 4
  %nregs6.i167.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i163.i, i32 0, i32 2
  %72 = ptrtoint ptr %nregs6.i167.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div13.i161.i, ptr %nregs6.i167.i, align 4
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i170.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i163.i, ptr noundef %74, ptr noundef %reg_regions.i) #6
  br i1 %call.i.i.i170.i, label %if.end.i.i.i173.i, label %if.end4.i171.i.if.end57.i_crit_edge

if.end4.i171.i.if.end57.i_crit_edge:              ; preds = %if.end4.i171.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.end.i.i.i173.i:                                ; preds = %if.end4.i171.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i.i163.i, ptr %prev.i.i, align 4
  %76 = ptrtoint ptr %call.i.i163.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %reg_regions.i, ptr %call.i.i163.i, align 4
  %prev3.i.i.i172.i = getelementptr inbounds %struct.list_head, ptr %call.i.i163.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i172.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i172.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %call.i.i163.i, ptr %74, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end.i.i.i173.i, %if.end4.i171.i.if.end57.i_crit_edge, %if.end53.i.if.end57.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_drv3ctrl.1.i)
  %tobool.not.i176.i = icmp eq i32 %num_drv3ctrl.1.i, 0
  br i1 %tobool.not.i176.i, label %if.end57.i.if.end61.i_crit_edge, label %if.end.i183.i

if.end57.i.if.end61.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

if.end.i183.i:                                    ; preds = %if.end57.i
  %mul.i177.i = mul i32 %num_drv3ctrl.1.i, 3
  %sub.i178.i = add i32 %mul.i177.i, 31
  %div13.i179.i = lshr i32 %sub.i178.i, 5
  %79 = shl nuw nsw i32 %div13.i179.i, 2
  %spec.select.i14.i180.i = add nuw nsw i32 %79, 16
  %call.i.i181.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %spec.select.i14.i180.i, i32 noundef 3520) #6
  %tobool2.not.i182.i = icmp eq ptr %call.i.i181.i, null
  br i1 %tobool2.not.i182.i, label %if.end.i183.i.cleanup_crit_edge, label %if.end4.i189.i

if.end.i183.i.cleanup_crit_edge:                  ; preds = %if.end.i183.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i189.i:                                   ; preds = %if.end.i183.i
  %base5.i184.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i181.i, i32 0, i32 1
  %80 = ptrtoint ptr %base5.i184.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 6528, ptr %base5.i184.i, align 4
  %nregs6.i185.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i181.i, i32 0, i32 2
  %81 = ptrtoint ptr %nregs6.i185.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div13.i179.i, ptr %nregs6.i185.i, align 4
  %82 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i188.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i181.i, ptr noundef %83, ptr noundef %reg_regions.i) #6
  br i1 %call.i.i.i188.i, label %if.end.i.i.i191.i, label %if.end4.i189.i.if.end61.i_crit_edge

if.end4.i189.i.if.end61.i_crit_edge:              ; preds = %if.end4.i189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

if.end.i.i.i191.i:                                ; preds = %if.end4.i189.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i.i181.i, ptr %prev.i.i, align 4
  %85 = ptrtoint ptr %call.i.i181.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %reg_regions.i, ptr %call.i.i181.i, align 4
  %prev3.i.i.i190.i = getelementptr inbounds %struct.list_head, ptr %call.i.i181.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev3.i.i.i190.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev3.i.i.i190.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %call.i.i181.i, ptr %83, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end.i.i.i191.i, %if.end4.i189.i.if.end61.i_crit_edge, %if.end57.i.if.end61.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pupdctrl.1.i)
  %tobool.not.i194.i = icmp eq i32 %num_pupdctrl.1.i, 0
  br i1 %tobool.not.i194.i, label %if.end61.i.if.end65.i_crit_edge, label %if.end.i200.i

if.end61.i.if.end65.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

if.end.i200.i:                                    ; preds = %if.end61.i
  %sub.i195.i = add i32 %num_pupdctrl.1.i, 31
  %div13.i196.i = lshr i32 %sub.i195.i, 5
  %88 = shl nuw nsw i32 %div13.i196.i, 2
  %spec.select.i14.i197.i = add nuw nsw i32 %88, 16
  %call.i.i198.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %spec.select.i14.i197.i, i32 noundef 3520) #6
  %tobool2.not.i199.i = icmp eq ptr %call.i.i198.i, null
  br i1 %tobool2.not.i199.i, label %if.end.i200.i.cleanup_crit_edge, label %if.end4.i206.i

if.end.i200.i.cleanup_crit_edge:                  ; preds = %if.end.i200.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i206.i:                                   ; preds = %if.end.i200.i
  %base5.i201.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i198.i, i32 0, i32 1
  %89 = ptrtoint ptr %base5.i201.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 6656, ptr %base5.i201.i, align 4
  %nregs6.i202.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i198.i, i32 0, i32 2
  %90 = ptrtoint ptr %nregs6.i202.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %div13.i196.i, ptr %nregs6.i202.i, align 4
  %91 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i205.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i198.i, ptr noundef %92, ptr noundef %reg_regions.i) #6
  br i1 %call.i.i.i205.i, label %if.end.i.i.i208.i, label %if.end4.i206.i.if.end65.i_crit_edge

if.end4.i206.i.if.end65.i_crit_edge:              ; preds = %if.end4.i206.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

if.end.i.i.i208.i:                                ; preds = %if.end4.i206.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i198.i, ptr %prev.i.i, align 4
  %94 = ptrtoint ptr %call.i.i198.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %reg_regions.i, ptr %call.i.i198.i, align 4
  %prev3.i.i.i207.i = getelementptr inbounds %struct.list_head, ptr %call.i.i198.i, i32 0, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i207.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev3.i.i.i207.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %call.i.i198.i, ptr %92, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end.i.i.i208.i, %if.end4.i206.i.if.end65.i_crit_edge, %if.end61.i.if.end65.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_iectrl.1.i)
  %tobool.not.i98 = icmp eq i32 %num_iectrl.1.i, 0
  br i1 %tobool.not.i98, label %if.end65.i.if.end44_crit_edge, label %if.end.i

if.end65.i.if.end44_crit_edge:                    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end.i:                                         ; preds = %if.end65.i
  %sub.i = add i32 %num_iectrl.1.i, 31
  %div13.i = lshr i32 %sub.i, 5
  %97 = shl nuw nsw i32 %div13.i, 2
  %spec.select.i14.i = add nuw nsw i32 %97, 16
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %spec.select.i14.i, i32 noundef 3520) #6
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %base5.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %base5.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 7424, ptr %base5.i, align 4
  %nregs6.i = getelementptr inbounds %struct.uniphier_pinctrl_reg_region, ptr %call.i.i, i32 0, i32 2
  %99 = ptrtoint ptr %nregs6.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %div13.i, ptr %nregs6.i, align 4
  %100 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i101 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %101, ptr noundef %reg_regions.i) #6
  br i1 %call.i.i.i101, label %if.end.i.i.i, label %if.end4.i.if.end44_crit_edge

if.end4.i.if.end44_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %103 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %reg_regions.i, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %call.i.i, ptr %101, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end.i.i.i, %if.end4.i.if.end44_crit_edge, %if.end65.i.if.end44_crit_edge, %if.end65.i.thread
  %call46 = tail call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #6
  %pctldev = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 1
  %106 = ptrtoint ptr %pctldev to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call46, ptr %pctldev, align 4
  %cmp.i97 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %do.end52, label %if.end55

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  %107 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pctldev, align 4
  %109 = ptrtoint ptr %108 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %110 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end52, %if.end.i.cleanup_crit_edge, %if.end.i200.i.cleanup_crit_edge, %if.end.i183.i.cleanup_crit_edge, %if.end.i165.i.cleanup_crit_edge, %if.end.i147.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %do.end23, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %17, %do.end23 ], [ %109, %do.end52 ], [ 0, %if.end55 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end.i.i.cleanup_crit_edge ], [ -12, %if.end.i147.i.cleanup_crit_edge ], [ -12, %if.end.i165.i.cleanup_crit_edge ], [ -12, %if.end.i183.i.cleanup_crit_edge ], [ -12, %if.end.i200.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pctl_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %groups_count = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %groups_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %groups_count, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uniphier_pctl_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %groups = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.uniphier_pinctrl_group, ptr %3, i32 %selector
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pctl_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %groups = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.uniphier_pinctrl_group, ptr %3, i32 %selector, i32 1
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %socdata, align 4
  %groups3 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %groups3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %groups3, align 4
  %num_pins5 = getelementptr %struct.uniphier_pinctrl_group, ptr %9, i32 %selector, i32 2
  %10 = ptrtoint ptr %num_pins5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pins5, align 4
  %12 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_pctl_pin_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_desc_tree.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i, i32 noundef %offset) #6
  %drv_data = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %2 = ptrtoint ptr %1 to i32
  %shr.i = lshr i32 %2, 24
  %and.i = and i32 %shr.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %3 = icmp ult i32 %and.i, 5
  br i1 %3, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 95, 0\0A.popsection", ""() #6, !srcloc !108
  unreachable

switch.lookup:                                    ; preds = %entry
  %shr.i27 = lshr i32 %2, 12
  %and.i28 = and i32 %shr.i27, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i28)
  %.not = icmp eq i32 %and.i28, 7
  br i1 %.not, label %do.body19, label %switch.lookup29

do.body19:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #6, !srcloc !109
  unreachable

switch.lookup29:                                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.uniphier_pctl_pin_dbg_show, i32 0, i32 %and.i
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep30 = getelementptr inbounds [7 x ptr], ptr @switch.table.uniphier_pctl_pin_dbg_show.47, i32 0, i32 %and.i28
  %5 = ptrtoint ptr %switch.gep30 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load31 = load ptr, ptr %switch.gep30, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef nonnull %switch.load, ptr noundef nonnull %switch.load31) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pmx_get_functions_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %functions_count = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %functions_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %functions_count, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uniphier_pmx_get_function_name(ptr noundef %pctldev, i32 noundef %selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %functions = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.uniphier_pinmux_function, ptr %3, i32 %selector
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pmx_get_function_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %functions = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.uniphier_pinmux_function, ptr %3, i32 %selector, i32 1
  %4 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups1, align 4
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %groups, align 4
  %7 = load ptr, ptr %socdata, align 4
  %functions3 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions3, align 4
  %num_groups5 = getelementptr %struct.uniphier_pinmux_function, ptr %9, i32 %selector, i32 2
  %10 = ptrtoint ptr %num_groups5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_groups5, align 4
  %12 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pmx_set_mux(ptr noundef %pctldev, i32 noundef %func_selector, i32 noundef %group_selector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %groups = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins = getelementptr %struct.uniphier_pinctrl_group, ptr %3, i32 %group_selector, i32 1
  %num_pins = getelementptr %struct.uniphier_pinctrl_group, ptr %3, i32 %group_selector, i32 2
  %4 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14.not = icmp eq i32 %5, 0
  br i1 %cmp14.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %muxvals = getelementptr %struct.uniphier_pinctrl_group, ptr %3, i32 %group_selector, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.015, 1
  %6 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pins, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %arrayidx1 = getelementptr i32, ptr %9, i32 %i.015
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  %12 = ptrtoint ptr %muxvals to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %muxvals, align 4
  %arrayidx2 = getelementptr i32, ptr %13, i32 %i.015
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call fastcc i32 @uniphier_pmx_set_one_mux(ptr noundef %pctldev, i32 noundef %11, i32 noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call3, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_pmx_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readonly %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pins = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 6
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %npins = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 5
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp51.not = icmp eq i32 %3, 0
  br i1 %cmp51.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %1, i32 %i.052
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %offset)
  %cmp2 = icmp eq i32 %5, %offset
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.052, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %3)
  %cmp5 = icmp eq i32 %i.0.lcssa, %3
  br i1 %cmp5, label %for.end.do.end_crit_edge, label %for.end.if.end30_crit_edge, !prof !110

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 674, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pin_base = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 4
  %6 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin_base, align 4
  %sub = sub i32 %offset, %7
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.end.if.end30_crit_edge
  %gpio_offset.0 = phi i32 [ %sub, %if.else ], [ %i.0.lcssa, %for.end.if.end30_crit_edge ]
  %id = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %add = add i32 %9, %gpio_offset.0
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socdata, align 4
  %get_gpio_muxval = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %get_gpio_muxval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_gpio_muxval, align 4
  %call31 = tail call i32 %13(i32 noundef %offset, i32 noundef %add) #6
  %call32 = tail call fastcc i32 @uniphier_pmx_set_one_mux(ptr noundef %pctldev, i32 noundef %offset, i32 noundef %call31)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call32, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uniphier_pmx_set_one_mux(ptr noundef %pctldev, i32 noundef %pin, i32 noundef %muxval) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pin_desc_tree.i.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i, i32 noundef %pin) #6
  %drv_data.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i.i = and i32 %2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 7
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %uniphier_conf_pin_input_enable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

uniphier_conf_pin_input_enable.exit:              ; preds = %entry
  %socdata.i = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socdata.i, align 4
  %caps.i = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %and.i.i, i32 %pin
  %7 = lshr i32 %spec.select.i, 3
  %mul.i = and i32 %7, 536870908
  %add.i = add nuw nsw i32 %mul.i, 7424
  %rem.i = and i32 %spec.select.i, 31
  %shl.i = shl nuw i32 1, %rem.i
  %regmap.i = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i30.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not, label %uniphier_conf_pin_input_enable.exit.if.end_crit_edge, label %uniphier_conf_pin_input_enable.exit.cleanup_crit_edge

uniphier_conf_pin_input_enable.exit.cleanup_crit_edge: ; preds = %uniphier_conf_pin_input_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

uniphier_conf_pin_input_enable.exit.if.end_crit_edge: ; preds = %uniphier_conf_pin_input_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %uniphier_conf_pin_input_enable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %muxval)
  %cmp = icmp slt i32 %muxval, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socdata, align 4
  %caps = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %. = select i1 %tobool4.not, i32 8, i32 4
  %.55 = select i1 %tobool4.not, i32 4, i32 8
  %mul = mul i32 %., %pin
  %div54 = lshr i32 %mul, 5
  %mul7 = mul nuw nsw i32 %div54, %.55
  %add = add nuw nsw i32 %mul7, 4096
  %add8 = add nuw nsw i32 %add, %.55
  %rem = and i32 %mul, 28
  %notmask = shl nsw i32 -1, %.
  %sub = xor i32 %notmask, -1
  %regmap = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 2
  %shl11 = shl i32 %sub, %rem
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %if.end3
  %reg.060 = phi i32 [ %add, %if.end3 ], [ %add17, %if.end16.for.body_crit_edge ]
  %muxval.addr.059 = phi i32 [ %muxval, %if.end3 ], [ %shr, %if.end16.for.body_crit_edge ]
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %shl12 = shl i32 %muxval.addr.059, %rem
  %call.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %reg.060, i32 noundef %shl11, i32 noundef %shl12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool14.not = icmp eq i32 %call.i56, 0
  br i1 %tobool14.not, label %if.end16, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %shr = ashr i32 %muxval.addr.059, %.
  %add17 = add nuw nsw i32 %reg.060, 4
  %cmp10 = icmp ult i32 %add17, %add8
  br i1 %cmp10, label %if.end16.for.body_crit_edge, label %for.end

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end16
  br i1 %tobool4.not, label %for.end.if.end25_crit_edge, label %if.then19

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19:                                        ; preds = %for.end
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 5888, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then19.if.end25_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %for.end.if.end25_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then19.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uniphier_conf_pin_input_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %call.i30.i, %uniphier_conf_pin_input_enable.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call21, %if.then19.cleanup_crit_edge ], [ %call.i56, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_conf_pin_config_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %configs) #0 align 64 {
entry:
  %val.i22 = alloca i32, align 4
  %val.i16 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %configs, align 4
  %and.i = and i32 %1, 255
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %trunc, label %entry.if.end_crit_edge [
    i8 1, label %entry.sw.bb_crit_edge
    i8 5, label %entry.sw.bb_crit_edge55
    i8 3, label %entry.sw.bb_crit_edge56
    i8 9, label %sw.bb2
    i8 12, label %sw.bb4
  ]

entry.sw.bb_crit_edge56:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge55:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge55, %entry.sw.bb_crit_edge56
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pin_desc_tree.i.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i, i32 noundef %pin) #6
  %drv_data.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %shr.i.i = lshr i32 %5, 24
  %and.i.i = and i32 %shr.i.i, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !111
  %7 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %trunc, label %do.body.i [
    i8 1, label %sw.bb.i
    i8 5, label %sw.bb7.i
    i8 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %sw.bb
  %switch.tableidx = add nsw i32 %and.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %sw.bb
  %9 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and.i.i, label %if.then12.i [
    i32 2, label %sw.bb7.i.uniphier_conf_pin_bias_get.exit_crit_edge
    i32 0, label %sw.bb7.i.sw.epilog.i_crit_edge
  ]

sw.bb7.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb7.i.uniphier_conf_pin_bias_get.exit_crit_edge: ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_pin_bias_get.exit

if.then12.i:                                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_pin_bias_get.exit

sw.bb14.i:                                        ; preds = %sw.bb
  %10 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %and.i.i, label %if.then19.i [
    i32 3, label %sw.bb14.i.uniphier_conf_pin_bias_get.exit_crit_edge
    i32 1, label %sw.bb14.i.sw.epilog.i_crit_edge
  ]

sw.bb14.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb14.i.uniphier_conf_pin_bias_get.exit_crit_edge: ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_pin_bias_get.exit

if.then19.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_pin_bias_get.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #6, !srcloc !112
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb14.i.sw.epilog.i_crit_edge, %sw.bb7.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %expected.0.i = phi i32 [ 0, %sw.bb.i.sw.epilog.i_crit_edge ], [ 1, %sw.bb7.i.sw.epilog.i_crit_edge ], [ %and.i.i, %sw.bb14.i.sw.epilog.i_crit_edge ]
  %11 = lshr i32 %5, 18
  %mul.i = and i32 %11, 60
  %add.i = or i32 %mul.i, 6656
  %regmap.i = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call26.i = call i32 @regmap_read(ptr noundef %13, i32 noundef %add.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool.not.i, label %if.end28.i, label %sw.epilog.i.uniphier_conf_pin_bias_get.exit_crit_edge

sw.epilog.i.uniphier_conf_pin_bias_get.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_pin_bias_get.exit

if.end28.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i49.i = lshr i32 %5, 15
  %rem.i = and i32 %shr.i49.i, 31
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %shr.i = lshr i32 %15, %rem.i
  %and.i15 = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i15, i32 %expected.0.i)
  %cmp29.i = icmp eq i32 %and.i15, %expected.0.i
  %cond.i = select i1 %cmp29.i, i32 0, i32 -22
  br label %uniphier_conf_pin_bias_get.exit

switch.lookup:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.uniphier_conf_pin_config_get, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %uniphier_conf_pin_bias_get.exit

uniphier_conf_pin_bias_get.exit:                  ; preds = %switch.lookup, %if.end28.i, %sw.epilog.i.uniphier_conf_pin_bias_get.exit_crit_edge, %if.then19.i, %sw.bb14.i.uniphier_conf_pin_bias_get.exit_crit_edge, %if.then12.i, %sw.bb7.i.uniphier_conf_pin_bias_get.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then19.i ], [ %cond.i, %if.end28.i ], [ -22, %if.then12.i ], [ 0, %sw.bb7.i.uniphier_conf_pin_bias_get.exit_crit_edge ], [ 0, %sw.bb14.i.uniphier_conf_pin_bias_get.exit_crit_edge ], [ %call26.i, %sw.epilog.i.uniphier_conf_pin_bias_get.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end

sw.bb2:                                           ; preds = %entry
  %call.i17 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i16) #6
  %17 = ptrtoint ptr %val.i16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i16, align 4, !annotation !111
  %pin_desc_tree.i.i.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  %call.i.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i.i, i32 noundef %pin) #6
  %drv_data.i.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drv_data.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %shr.i.i.i = lshr i32 %20, 12
  %and.i.i.i = and i32 %shr.i.i.i, 7
  %21 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and.i.i.i, label %sw.bb2.sw.epilog.thread47_crit_edge [
    i32 0, label %sw.bb2.if.then3.i_crit_edge
    i32 1, label %sw.bb2.i.i
    i32 2, label %sw.bb3.i.i
    i32 3, label %sw.bb2.if.else.i_crit_edge
    i32 4, label %sw.bb5.i.i
    i32 5, label %sw.bb6.i.i
  ]

sw.bb2.if.else.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

sw.bb2.if.then3.i_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

sw.bb2.sw.epilog.thread47_crit_edge:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread47

sw.bb2.i.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

sw.bb3.i.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

sw.bb5.i.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

sw.bb6.i.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then3.i:                                       ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb2.if.then3.i_crit_edge
  %uniphier_conf_drv_strengths_fixed8.sink.i.i = phi ptr [ @uniphier_conf_drv_strengths_3bit, %sw.bb3.i.i ], [ @uniphier_conf_drv_strengths_2bit, %sw.bb2.i.i ], [ @uniphier_conf_drv_strengths_1bit, %sw.bb2.if.then3.i_crit_edge ]
  %base.0.i.i = phi i32 [ 6528, %sw.bb3.i.i ], [ 6400, %sw.bb2.i.i ], [ 6144, %sw.bb2.if.then3.i_crit_edge ]
  %stride.0.i.i = phi i32 [ 4, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb2.if.then3.i_crit_edge ]
  %width.0.i.i = phi i32 [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb2.if.then3.i_crit_edge ]
  %shr.i24.i.i = lshr i32 %20, 3
  %and.i25.i.i = and i32 %shr.i24.i.i, 511
  %mul.i.i = mul nuw nsw i32 %stride.0.i.i, %and.i25.i.i
  %rem.i.i = and i32 %mul.i.i, 31
  %notmask.i.i = shl nsw i32 -1, %width.0.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %22 = lshr i32 %mul.i.i, 3
  %mul9.i.i = and i32 %22, 508
  %add.i.i = add nuw nsw i32 %mul9.i.i, %base.0.i.i
  %regmap.i18 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i17, i32 0, i32 2
  %23 = ptrtoint ptr %regmap.i18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i18, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %24, i32 noundef %add.i.i, ptr noundef nonnull %val.i16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.sw.epilog_crit_edge, label %if.then3.i.sw.epilog.thread47_crit_edge

if.then3.i.sw.epilog.thread47_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread47

if.then3.i.sw.epilog_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb2.if.else.i_crit_edge
  %uniphier_conf_drv_strengths_fixed8.sink.i.ph.i = phi ptr [ @uniphier_conf_drv_strengths_fixed5, %sw.bb5.i.i ], [ @uniphier_conf_drv_strengths_fixed8, %sw.bb6.i.i ], [ @uniphier_conf_drv_strengths_fixed4, %sw.bb2.if.else.i_crit_edge ]
  %25 = ptrtoint ptr %val.i16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %val.i16, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call.i23 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %pin_desc_tree.i.i24 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  %call.i.i25 = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i24, i32 noundef %pin) #6
  %drv_data.i26 = getelementptr inbounds %struct.pin_desc, ptr %call.i.i25, i32 0, i32 3
  %26 = ptrtoint ptr %drv_data.i26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drv_data.i26, align 4
  %28 = ptrtoint ptr %27 to i32
  %and.i.i27 = and i32 %28, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i22) #6
  %29 = ptrtoint ptr %val.i22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %val.i22, align 4, !annotation !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i.i27)
  %cmp.i = icmp eq i32 %and.i.i27, 7
  br i1 %cmp.i, label %sw.bb4.uniphier_conf_pin_input_enable_get.exit_crit_edge, label %if.end.i

sw.bb4.uniphier_conf_pin_input_enable_get.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_pin_input_enable_get.exit

if.end.i:                                         ; preds = %sw.bb4
  %socdata.i = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i23, i32 0, i32 3
  %30 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %socdata.i, align 4
  %caps.i = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %caps.i, align 4
  %and.i28 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  %spec.select.i = select i1 %tobool.not.i29, i32 %and.i.i27, i32 %pin
  %34 = lshr i32 %spec.select.i, 3
  %mul.i30 = and i32 %34, 536870908
  %add.i31 = add nuw nsw i32 %mul.i30, 7424
  %regmap.i32 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i23, i32 0, i32 2
  %35 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i32, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %36, i32 noundef %add.i31, ptr noundef nonnull %val.i22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i35, label %if.end.i.uniphier_conf_pin_input_enable_get.exit_crit_edge

if.end.i.uniphier_conf_pin_input_enable_get.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_pin_input_enable_get.exit

if.end8.i35:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %rem.i33 = and i32 %spec.select.i, 31
  %shl.i = shl nuw i32 1, %rem.i33
  %37 = ptrtoint ptr %val.i22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i22, align 4
  %and9.i = and i32 %38, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %cond.i34 = select i1 %tobool10.not.i, i32 -22, i32 0
  br label %uniphier_conf_pin_input_enable_get.exit

uniphier_conf_pin_input_enable_get.exit:          ; preds = %if.end8.i35, %if.end.i.uniphier_conf_pin_input_enable_get.exit_crit_edge, %sw.bb4.uniphier_conf_pin_input_enable_get.exit_crit_edge
  %retval.0.i36 = phi i32 [ %cond.i34, %if.end8.i35 ], [ 0, %sw.bb4.uniphier_conf_pin_input_enable_get.exit_crit_edge ], [ %call5.i, %if.end.i.uniphier_conf_pin_input_enable_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i22) #6
  br label %if.end

sw.epilog.thread47:                               ; preds = %if.then3.i.sw.epilog.thread47_crit_edge, %sw.bb2.sw.epilog.thread47_crit_edge
  %retval.0.i21.ph = phi i32 [ -22, %sw.bb2.sw.epilog.thread47_crit_edge ], [ %call4.i, %if.then3.i.sw.epilog.thread47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i16) #6
  br label %if.end

sw.epilog:                                        ; preds = %if.else.i, %if.then3.i.sw.epilog_crit_edge
  %sub.i45.i = phi i32 [ %sub.i.i, %if.then3.i.sw.epilog_crit_edge ], [ 0, %if.else.i ]
  %rem.i43.i = phi i32 [ %rem.i.i, %if.then3.i.sw.epilog_crit_edge ], [ 0, %if.else.i ]
  %uniphier_conf_drv_strengths_fixed8.sink.i41.i = phi ptr [ %uniphier_conf_drv_strengths_fixed8.sink.i.i, %if.then3.i.sw.epilog_crit_edge ], [ %uniphier_conf_drv_strengths_fixed8.sink.i.ph.i, %if.else.i ]
  %39 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i16, align 4
  %shr.i19 = lshr i32 %40, %rem.i43.i
  %and.i20 = and i32 %shr.i19, %sub.i45.i
  %arrayidx.i = getelementptr i32, ptr %uniphier_conf_drv_strengths_fixed8.sink.i41.i, i32 %and.i20
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i16) #6
  %shl.i37 = shl i32 %42, 8
  %or.i = or i32 %shl.i37, %and.i
  %43 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.i, ptr %configs, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %sw.epilog.thread47, %uniphier_conf_pin_input_enable_get.exit, %uniphier_conf_pin_bias_get.exit, %entry.if.end_crit_edge
  %ret.045 = phi i32 [ 0, %sw.epilog ], [ %retval.0.i21.ph, %sw.epilog.thread47 ], [ -22, %entry.if.end_crit_edge ], [ %retval.0.i, %uniphier_conf_pin_bias_get.exit ], [ %retval.0.i36, %uniphier_conf_pin_input_enable_get.exit ]
  ret i32 %ret.045
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_conf_pin_config_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp85.not = icmp eq i32 %num_configs, 0
  br i1 %cmp85.not, label %entry.cleanup9_crit_edge, label %for.body.lr.ph

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

for.body.lr.ph:                                   ; preds = %entry
  %pin_desc_tree.i.i35 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.086
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %1, 8
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %trunc, label %cleanup.thread [
    i8 1, label %for.body.sw.bb_crit_edge
    i8 5, label %for.body.sw.bb_crit_edge229
    i8 3, label %for.body.sw.bb_crit_edge230
    i8 4, label %for.body.sw.bb_crit_edge231
    i8 9, label %sw.bb4
    i8 12, label %sw.bb6
  ]

for.body.sw.bb_crit_edge231:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body.sw.bb_crit_edge230:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body.sw.bb_crit_edge229:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge229, %for.body.sw.bb_crit_edge230, %for.body.sw.bb_crit_edge231
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i35, i32 noundef %pin) #6
  %drv_data.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %shr.i.i = lshr i32 %5, 24
  %and.i.i = and i32 %shr.i.i, 7
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %trunc, label %do.body60.i [
    i8 1, label %sw.bb.i
    i8 5, label %sw.bb7.i
    i8 3, label %sw.bb27.i
    i8 4, label %sw.bb48.i
  ]

sw.bb.i:                                          ; preds = %sw.bb
  %7 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and.i.i, label %sw.bb.i.sw.epilog.i_crit_edge [
    i32 4, label %sw.bb.i.for.inc_crit_edge
    i32 2, label %sw.bb.i.do.end.i_crit_edge
    i32 3, label %sw.bb.i.do.end.i_crit_edge232
  ]

sw.bb.i.do.end.i_crit_edge232:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

sw.bb.i.do.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

sw.bb.i.for.inc_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb.i.do.end.i_crit_edge, %sw.bb.i.do.end.i_crit_edge232
  %dev.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.25, ptr noundef %11) #9
  br label %cleanup9

sw.bb7.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp8.i = icmp ne i32 %and.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp9.not.i = icmp ult i32 %1, 256
  %or.cond.i = or i1 %cmp9.not.i, %cmp8.i
  br i1 %or.cond.i, label %if.end11.i, label %sw.bb7.i.for.inc_crit_edge

sw.bb7.i.for.inc_crit_edge:                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end11.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp12.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp12.not.i, label %if.end19.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev17.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %12 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17.i, align 4
  %name18.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %name18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name18.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.28, ptr noundef %15) #9
  br label %cleanup9

if.end19.i:                                       ; preds = %if.end11.i
  br i1 %cmp9.not.i, label %do.end24.i, label %if.end19.i.sw.epilog.i_crit_edge

if.end19.i.sw.epilog.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end24.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev25.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %16 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev25.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.31) #9
  br label %cleanup9

sw.bb27.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp28.i = icmp ne i32 %and.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp30.not.i = icmp ult i32 %1, 256
  %or.cond102.i = or i1 %cmp30.not.i, %cmp28.i
  br i1 %or.cond102.i, label %if.end32.i, label %sw.bb27.i.for.inc_crit_edge

sw.bb27.i.for.inc_crit_edge:                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end32.i:                                       ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp33.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp33.not.i, label %if.end40.i, label %do.end37.i

do.end37.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev38.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %18 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev38.i, align 4
  %name39.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %name39.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name39.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.34, ptr noundef %21) #9
  br label %cleanup9

if.end40.i:                                       ; preds = %if.end32.i
  br i1 %cmp30.not.i, label %do.end45.i, label %if.end40.i.sw.epilog.i_crit_edge

if.end40.i.sw.epilog.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end45.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev46.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %22 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev46.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.37) #9
  br label %cleanup9

sw.bb48.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %cmp49.i = icmp eq i32 %and.i.i, 4
  br i1 %cmp49.i, label %do.end53.i, label %if.end56.i

do.end53.i:                                       ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev54.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %24 = ptrtoint ptr %dev54.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev54.i, align 4
  %name55.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %name55.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name55.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.40, ptr noundef %27) #9
  br label %cleanup9

if.end56.i:                                       ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp57.i = icmp ult i32 %1, 256
  br i1 %cmp57.i, label %if.end56.i.for.inc_crit_edge, label %if.end56.i.sw.epilog.i_crit_edge

if.end56.i.sw.epilog.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end56.i.for.inc_crit_edge:                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body60.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/uniphier/pinctrl-uniphier-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 405, 0\0A.popsection", ""() #6, !srcloc !113
  unreachable

sw.epilog.i:                                      ; preds = %if.end56.i.sw.epilog.i_crit_edge, %if.end40.i.sw.epilog.i_crit_edge, %if.end19.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ 1, %if.end56.i.sw.epilog.i_crit_edge ], [ 1, %if.end40.i.sw.epilog.i_crit_edge ], [ 1, %if.end19.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge ]
  %shr.i103.i = lshr i32 %5, 15
  %28 = lshr i32 %5, 18
  %mul.i = and i32 %28, 60
  %add.i = or i32 %mul.i, 6656
  %rem.i = and i32 %shr.i103.i, 31
  %regmap.i = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %shl.i = shl nuw i32 1, %rem.i
  %shl68.i = shl nuw i32 %val.0.i, %rem.i
  %call.i105.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef %shl68.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb4:                                           ; preds = %for.body
  %call.i25 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %call.i.i27 = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i35, i32 noundef %pin) #6
  %call.i.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i35, i32 noundef %pin) #6
  %drv_data.i.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drv_data.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %shr.i.i.i = lshr i32 %33, 12
  %and.i.i.i = and i32 %shr.i.i.i, 7
  %34 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and.i.i.i, label %do.end.i30 [
    i32 0, label %sw.bb4.uniphier_conf_get_drvctrl_data.exit.i_crit_edge
    i32 1, label %sw.bb2.i.i
    i32 2, label %sw.bb3.i.i
    i32 3, label %sw.bb4.i.i
    i32 4, label %sw.bb5.i.i
    i32 5, label %sw.bb6.i.i
  ]

sw.bb4.uniphier_conf_get_drvctrl_data.exit.i_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_get_drvctrl_data.exit.i

sw.bb2.i.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_get_drvctrl_data.exit.i

sw.bb3.i.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_get_drvctrl_data.exit.i

sw.bb4.i.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_get_drvctrl_data.exit.i

sw.bb5.i.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_get_drvctrl_data.exit.i

sw.bb6.i.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_conf_get_drvctrl_data.exit.i

uniphier_conf_get_drvctrl_data.exit.i:            ; preds = %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb4.uniphier_conf_get_drvctrl_data.exit.i_crit_edge
  %uniphier_conf_drv_strengths_fixed8.sink.i.i = phi ptr [ @uniphier_conf_drv_strengths_fixed8, %sw.bb6.i.i ], [ @uniphier_conf_drv_strengths_fixed5, %sw.bb5.i.i ], [ @uniphier_conf_drv_strengths_fixed4, %sw.bb4.i.i ], [ @uniphier_conf_drv_strengths_3bit, %sw.bb3.i.i ], [ @uniphier_conf_drv_strengths_2bit, %sw.bb2.i.i ], [ @uniphier_conf_drv_strengths_1bit, %sw.bb4.uniphier_conf_get_drvctrl_data.exit.i_crit_edge ]
  %base.0.i.i = phi i32 [ 0, %sw.bb6.i.i ], [ 0, %sw.bb5.i.i ], [ 0, %sw.bb4.i.i ], [ 6528, %sw.bb3.i.i ], [ 6400, %sw.bb2.i.i ], [ 6144, %sw.bb4.uniphier_conf_get_drvctrl_data.exit.i_crit_edge ]
  %stride.0.i.i = phi i32 [ 0, %sw.bb6.i.i ], [ 0, %sw.bb5.i.i ], [ 0, %sw.bb4.i.i ], [ 4, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb4.uniphier_conf_get_drvctrl_data.exit.i_crit_edge ]
  %tobool14.not.i = phi i1 [ true, %sw.bb6.i.i ], [ true, %sw.bb5.i.i ], [ true, %sw.bb4.i.i ], [ false, %sw.bb3.i.i ], [ false, %sw.bb2.i.i ], [ false, %sw.bb4.uniphier_conf_get_drvctrl_data.exit.i_crit_edge ]
  %exitcond.i.1 = phi i1 [ false, %sw.bb6.i.i ], [ false, %sw.bb5.i.i ], [ false, %sw.bb4.i.i ], [ false, %sw.bb3.i.i ], [ false, %sw.bb2.i.i ], [ true, %sw.bb4.uniphier_conf_get_drvctrl_data.exit.i_crit_edge ]
  %exitcond.i.3 = phi i1 [ false, %sw.bb6.i.i ], [ false, %sw.bb5.i.i ], [ false, %sw.bb4.i.i ], [ false, %sw.bb3.i.i ], [ true, %sw.bb2.i.i ], [ false, %sw.bb4.uniphier_conf_get_drvctrl_data.exit.i_crit_edge ]
  %width.0.i.i = phi i32 [ 0, %sw.bb6.i.i ], [ 0, %sw.bb5.i.i ], [ 0, %sw.bb4.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb4.uniphier_conf_get_drvctrl_data.exit.i_crit_edge ]
  %shr.i24.i.i = lshr i32 %33, 3
  %and.i25.i.i = and i32 %shr.i24.i.i, 511
  %mul.i.i = mul nuw nsw i32 %stride.0.i.i, %and.i25.i.i
  %35 = lshr i32 %mul.i.i, 3
  %mul9.i.i = and i32 %35, 508
  %add.i.i = add nuw nsw i32 %mul9.i.i, %base.0.i.i
  %rem.i.i = and i32 %mul.i.i, 31
  %notmask.i.i = shl nsw i32 -1, %width.0.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %36 = sub nsw i32 0, %notmask.i.i
  %37 = ptrtoint ptr %uniphier_conf_drv_strengths_fixed8.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %uniphier_conf_drv_strengths_fixed8.sink.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %shr.i)
  %cmp3.i = icmp ugt i32 %38, %shr.i
  br i1 %cmp3.i, label %uniphier_conf_get_drvctrl_data.exit.i.for.end.i_crit_edge, label %for.inc.i

uniphier_conf_get_drvctrl_data.exit.i.for.end.i_crit_edge: ; preds = %uniphier_conf_get_drvctrl_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.end.i30:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i28 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %39 = ptrtoint ptr %dev.i28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i28, align 4
  %name.i29 = getelementptr inbounds %struct.pin_desc, ptr %call.i.i27, i32 0, i32 1
  %41 = ptrtoint ptr %name.i29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.42, ptr noundef %42) #9
  br label %cleanup9

for.inc.i:                                        ; preds = %uniphier_conf_get_drvctrl_data.exit.i
  br i1 %tobool14.not.i, label %for.inc.i.if.end13.i_crit_edge, label %for.body.i.1

for.inc.i.if.end13.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.body.i.1:                                     ; preds = %for.inc.i
  %arrayidx.i.1 = getelementptr i32, ptr %uniphier_conf_drv_strengths_fixed8.sink.i.i, i32 1
  %43 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %shr.i)
  %cmp3.i.1 = icmp ugt i32 %44, %shr.i
  br i1 %cmp3.i.1, label %for.body.i.1.for.end.i_crit_edge, label %for.inc.i.1

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.1:                                      ; preds = %for.body.i.1
  br i1 %exitcond.i.1, label %for.inc.i.1.if.end13.i_crit_edge, label %for.body.i.2

for.inc.i.1.if.end13.i_crit_edge:                 ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.body.i.2:                                     ; preds = %for.inc.i.1
  %arrayidx.i.2 = getelementptr i32, ptr %uniphier_conf_drv_strengths_fixed8.sink.i.i, i32 2
  %45 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %shr.i)
  %cmp3.i.2 = icmp ugt i32 %46, %shr.i
  br i1 %cmp3.i.2, label %for.body.i.2.for.end.i_crit_edge, label %for.body.i.3

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.body.i.2
  %arrayidx.i.3 = getelementptr i32, ptr %uniphier_conf_drv_strengths_fixed8.sink.i.i, i32 3
  %47 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %shr.i)
  %cmp3.i.3 = icmp ugt i32 %48, %shr.i
  br i1 %cmp3.i.3, label %for.body.i.3.for.end.i_crit_edge, label %for.inc.i.3

for.body.i.3.for.end.i_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.3:                                      ; preds = %for.body.i.3
  br i1 %exitcond.i.3, label %for.inc.i.3.if.end13.i_crit_edge, label %for.body.i.4

for.inc.i.3.if.end13.i_crit_edge:                 ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.body.i.4:                                     ; preds = %for.inc.i.3
  %arrayidx.i.4 = getelementptr i32, ptr %uniphier_conf_drv_strengths_fixed8.sink.i.i, i32 4
  %49 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %shr.i)
  %cmp3.i.4 = icmp ugt i32 %50, %shr.i
  br i1 %cmp3.i.4, label %for.body.i.4.for.end.i_crit_edge, label %for.body.i.5

for.body.i.4.for.end.i_crit_edge:                 ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.5:                                     ; preds = %for.body.i.4
  %arrayidx.i.5 = getelementptr i32, ptr %uniphier_conf_drv_strengths_fixed8.sink.i.i, i32 5
  %51 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %shr.i)
  %cmp3.i.5 = icmp ugt i32 %52, %shr.i
  br i1 %cmp3.i.5, label %for.body.i.5.for.end.i_crit_edge, label %for.body.i.6

for.body.i.5.for.end.i_crit_edge:                 ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.6:                                     ; preds = %for.body.i.5
  %arrayidx.i.6 = getelementptr i32, ptr %uniphier_conf_drv_strengths_fixed8.sink.i.i, i32 6
  %53 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %shr.i)
  %cmp3.i.6 = icmp ugt i32 %54, %shr.i
  br i1 %cmp3.i.6, label %for.body.i.6.for.end.i_crit_edge, label %for.body.i.7

for.body.i.6.for.end.i_crit_edge:                 ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.7:                                     ; preds = %for.body.i.6
  %arrayidx.i.7 = getelementptr i32, ptr %uniphier_conf_drv_strengths_fixed8.sink.i.i, i32 7
  %55 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %shr.i)
  %cmp3.i.7 = icmp ugt i32 %56, %shr.i
  br i1 %cmp3.i.7, label %for.body.i.7.for.end.i_crit_edge, label %for.body.i.7.if.end13.i_crit_edge

for.body.i.7.if.end13.i_crit_edge:                ; preds = %for.body.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.body.i.7.for.end.i_crit_edge:                 ; preds = %for.body.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.7.for.end.i_crit_edge, %for.body.i.6.for.end.i_crit_edge, %for.body.i.5.for.end.i_crit_edge, %for.body.i.4.for.end.i_crit_edge, %for.body.i.3.for.end.i_crit_edge, %for.body.i.2.for.end.i_crit_edge, %for.body.i.1.for.end.i_crit_edge, %uniphier_conf_get_drvctrl_data.exit.i.for.end.i_crit_edge
  %val.054.i.lcssa = phi i32 [ 0, %uniphier_conf_get_drvctrl_data.exit.i.for.end.i_crit_edge ], [ 1, %for.body.i.1.for.end.i_crit_edge ], [ 2, %for.body.i.2.for.end.i_crit_edge ], [ 3, %for.body.i.3.for.end.i_crit_edge ], [ 4, %for.body.i.4.for.end.i_crit_edge ], [ 5, %for.body.i.5.for.end.i_crit_edge ], [ 6, %for.body.i.6.for.end.i_crit_edge ], [ 7, %for.body.i.7.for.end.i_crit_edge ]
  br i1 %cmp3.i, label %do.end10.i, label %for.end.i.if.end13.i_crit_edge

for.end.i.if.end13.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

do.end10.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev11.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %57 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev11.i, align 4
  %name12.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i27, i32 0, i32 1
  %59 = ptrtoint ptr %name12.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.45, i32 noundef %shr.i, ptr noundef %60) #9
  br label %cleanup9

if.end13.i:                                       ; preds = %for.end.i.if.end13.i_crit_edge, %for.body.i.7.if.end13.i_crit_edge, %for.inc.i.3.if.end13.i_crit_edge, %for.inc.i.1.if.end13.i_crit_edge, %for.inc.i.if.end13.i_crit_edge
  %val.053.i = phi i32 [ %val.054.i.lcssa, %for.end.i.if.end13.i_crit_edge ], [ %36, %for.body.i.7.if.end13.i_crit_edge ], [ %36, %for.inc.i.3.if.end13.i_crit_edge ], [ %36, %for.inc.i.1.if.end13.i_crit_edge ], [ %36, %for.inc.i.if.end13.i_crit_edge ]
  br i1 %tobool14.not.i, label %if.end13.i.for.inc_crit_edge, label %if.end16.i

if.end13.i.for.inc_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end16.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add nsw i32 %val.053.i, -1
  %regmap.i31 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i25, i32 0, i32 2
  %61 = ptrtoint ptr %regmap.i31 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i31, align 4
  %shl.i32 = shl i32 %sub.i.i, %rem.i.i
  %shl17.i = shl i32 %dec.i, %rem.i.i
  %call.i39.i = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef %add.i.i, i32 noundef %shl.i32, i32 noundef %shl17.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb6:                                           ; preds = %for.body
  %call.i34 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %call.i.i36 = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i35, i32 noundef %pin) #6
  %drv_data.i37 = getelementptr inbounds %struct.pin_desc, ptr %call.i.i36, i32 0, i32 3
  %63 = ptrtoint ptr %drv_data.i37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drv_data.i37, align 4
  %65 = ptrtoint ptr %64 to i32
  %and.i.i38 = and i32 %65, 7
  %socdata.i = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i34, i32 0, i32 3
  %66 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %socdata.i, align 4
  %caps.i = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %caps.i, align 4
  %and.i39 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool.not.i = icmp eq i32 %and.i39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %tobool3.not.i = icmp ult i32 %1, 256
  %70 = or i32 %and.i39, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %sw.bb6.cleanup9_crit_edge, label %if.end.i

sw.bb6.cleanup9_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

if.end.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i.i38)
  %cmp.i = icmp eq i32 %and.i.i38, 7
  br i1 %cmp.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  br i1 %tobool3.not.i, label %if.then4.i.cleanup9_crit_edge, label %if.then4.i.for.inc_crit_edge

if.then4.i.for.inc_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then4.i.cleanup9_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select.i = select i1 %tobool.not.i, i32 %and.i.i38, i32 %pin
  %72 = lshr i32 %spec.select.i, 3
  %mul.i40 = and i32 %72, 536870908
  %add.i41 = add nuw nsw i32 %mul.i40, 7424
  %rem.i42 = and i32 %spec.select.i, 31
  %shl.i43 = shl nuw i32 1, %rem.i42
  %regmap.i44 = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call.i34, i32 0, i32 2
  %73 = ptrtoint ptr %regmap.i44 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i44, align 4
  %cond14.i = select i1 %tobool3.not.i, i32 0, i32 %shl.i43
  %call.i30.i = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef %add.i41, i32 noundef %shl.i43, i32 noundef %cond14.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %1, 255
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.23, i32 noundef %and.i) #9
  br label %cleanup9

cleanup:                                          ; preds = %if.end6.i, %if.end16.i, %sw.epilog.i
  %ret.0 = phi i32 [ %call.i105.i, %sw.epilog.i ], [ %call.i39.i, %if.end16.i ], [ %call.i30.i, %if.end6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %cleanup.for.inc_crit_edge, label %cleanup.cleanup9_crit_edge

cleanup.cleanup9_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %if.then4.i.for.inc_crit_edge, %if.end13.i.for.inc_crit_edge, %if.end56.i.for.inc_crit_edge, %sw.bb27.i.for.inc_crit_edge, %sw.bb7.i.for.inc_crit_edge, %sw.bb.i.for.inc_crit_edge
  %inc = add nuw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

cleanup9:                                         ; preds = %for.inc.cleanup9_crit_edge, %cleanup.cleanup9_crit_edge, %cleanup.thread, %if.then4.i.cleanup9_crit_edge, %sw.bb6.cleanup9_crit_edge, %do.end10.i, %do.end.i30, %do.end53.i, %do.end45.i, %do.end37.i, %do.end24.i, %do.end16.i, %do.end.i, %entry.cleanup9_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup.thread ], [ -22, %do.end53.i ], [ -22, %do.end37.i ], [ -22, %do.end45.i ], [ -22, %do.end16.i ], [ -22, %do.end24.i ], [ -22, %do.end.i ], [ -22, %do.end.i30 ], [ -22, %do.end10.i ], [ 0, %entry.cleanup9_crit_edge ], [ %ret.0, %cleanup.cleanup9_crit_edge ], [ 0, %for.inc.cleanup9_crit_edge ], [ -22, %sw.bb6.cleanup9_crit_edge ], [ -22, %if.then4.i.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_conf_pin_config_group_set(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #6
  %socdata = getelementptr inbounds %struct.uniphier_pinctrl_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %groups = getelementptr inbounds %struct.uniphier_pinctrl_socdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.uniphier_pinctrl_group, ptr %3, i32 %selector, i32 1
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %num_pins5 = getelementptr %struct.uniphier_pinctrl_group, ptr %3, i32 %selector, i32 2
  %6 = ptrtoint ptr %num_pins5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pins5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18.not = icmp eq i32 %7, 0
  br i1 %cmp18.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %5, i32 %i.019
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call i32 @uniphier_conf_pin_config_set(ptr noundef %pctldev, i32 noundef %9, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call7, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @uniphier_pinctrl_pm_ops, !1, !"uniphier_pinctrl_pm_ops", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 856, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 873, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @uniphier_pinctrl_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @uniphier_pinctrl_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 886, i32 3}
!12 = !{ptr @uniphier_pinctrl_probe._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @uniphier_pinctrl_probe._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 905, i32 3}
!16 = !{ptr @uniphier_pinctrl_probe._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @uniphier_pinctrl_probe._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @uniphier_pctlops, !19, !"uniphier_pctlops", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 128, i32 33}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 80, i32 14}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 83, i32 14}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 86, i32 14}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 89, i32 14}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 92, i32 14}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 100, i32 14}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 103, i32 14}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 106, i32 14}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 109, i32 14}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 112, i32 14}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 115, i32 14}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 124, i32 16}
!44 = !{ptr @uniphier_pmxops, !45, !"uniphier_pmxops", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 689, i32 32}
!46 = !{ptr @uniphier_confops, !47, !"uniphier_confops", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 543, i32 33}
!48 = !{ptr @uniphier_conf_drv_strengths_1bit, !49, !"uniphier_conf_drv_strengths_1bit", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 139, i32 27}
!50 = !{ptr @uniphier_conf_drv_strengths_2bit, !51, !"uniphier_conf_drv_strengths_2bit", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 140, i32 27}
!52 = !{ptr @uniphier_conf_drv_strengths_3bit, !53, !"uniphier_conf_drv_strengths_3bit", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 141, i32 27}
!54 = !{ptr @uniphier_conf_drv_strengths_fixed4, !55, !"uniphier_conf_drv_strengths_fixed4", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 143, i32 27}
!56 = !{ptr @uniphier_conf_drv_strengths_fixed5, !57, !"uniphier_conf_drv_strengths_fixed5", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 144, i32 27}
!58 = !{ptr @uniphier_conf_drv_strengths_fixed8, !59, !"uniphier_conf_drv_strengths_fixed8", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 145, i32 27}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 510, i32 4}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @uniphier_conf_pin_config_set._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @uniphier_conf_pin_config_set._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 358, i32 4}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @uniphier_conf_pin_bias_set._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @uniphier_conf_pin_bias_set._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 369, i32 4}
!72 = !{ptr @uniphier_conf_pin_bias_set._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @uniphier_conf_pin_bias_set._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 375, i32 4}
!76 = !{ptr @uniphier_conf_pin_bias_set._entry.30, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @uniphier_conf_pin_bias_set._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 383, i32 4}
!80 = !{ptr @uniphier_conf_pin_bias_set._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @uniphier_conf_pin_bias_set._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 389, i32 4}
!84 = !{ptr @uniphier_conf_pin_bias_set._entry.36, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @uniphier_conf_pin_bias_set._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 395, i32 4}
!88 = !{ptr @uniphier_conf_pin_bias_set._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @uniphier_conf_pin_bias_set._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 428, i32 3}
!92 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @uniphier_conf_pin_drive_set._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @uniphier_conf_pin_drive_set._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-core.c", i32 439, i32 3}
!97 = !{ptr @uniphier_conf_pin_drive_set._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @uniphier_conf_pin_drive_set._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 2153366378, i64 2153366890, i64 2153366415, i64 2153366471, i64 2153366505, i64 2153366529, i64 2153366570, i64 2153366591, i64 2153366619, i64 2153366653}
!109 = !{i64 2153367942, i64 2153368455, i64 2153367979, i64 2153368035, i64 2153368069, i64 2153368093, i64 2153368134, i64 2153368155, i64 2153368183, i64 2153368217}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{!"auto-init"}
!112 = !{i64 2153369540, i64 2153370053, i64 2153369577, i64 2153369633, i64 2153369667, i64 2153369691, i64 2153369732, i64 2153369753, i64 2153369781, i64 2153369815}
!113 = !{i64 2153381776, i64 2153382289, i64 2153381813, i64 2153381869, i64 2153381903, i64 2153381927, i64 2153381968, i64 2153381989, i64 2153382017, i64 2153382051}
